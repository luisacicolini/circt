#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <input_file.mlir>"
    exit 1
fi

INPUT_FILE="$1"
DIRNAME=$(dirname "$INPUT_FILE")
BASENAME=$(basename "$INPUT_FILE" .mlir)
ERROR_LOG_DIR="lowering-error-logs"
CIRCT_BIN="../build/bin/circt-opt"

OUTPUT_DC="$DIRNAME/${BASENAME}-dc.mlir"
OUTPUT_MAT1="$DIRNAME/${BASENAME}-to-dc-m1.mlir"
OUTPUT_CAN="$DIRNAME/${BASENAME}-to-dc-m1-c.mlir"
OUTPUT_MAT2="$DIRNAME/${BASENAME}-to-dc-m1-c-m2.mlir"
OUTPUT_HW="$DIRNAME/${BASENAME}-to-dc-m1-c-m2-hw.mlir"
OUTPUT_ESI_PORTS="$DIRNAME/${BASENAME}-hw-esi.mlir"
OUTPUT_ESI_HW="$DIRNAME/${BASENAME}-hw-esi-hw.mlir"
OUTPUT_ESI_HW_COMB="$DIRNAME/${BASENAME}-hw-esi-hw-comb.mlir"
OUTPUT_SV="$DIRNAME/${BASENAME}-sv.mlir"
OUTPUT_SV_PRETTIFIED="$DIRNAME/${BASENAME}-sv-prettified.mlir"
OUTPUT_SV_SEQ="$DIRNAME/${BASENAME}-sv-prettified-sv.mlir"
OUTPUT_VERILOG="$DIRNAME/${BASENAME}-export.v"


ERROR_LOG="$ERROR_LOG_DIR/${BASENAME}-error.log"

mkdir -p "$ERROR_LOG_DIR"


> "$ERROR_LOG"
run_pass() {
    local command="$1"
    echo "Running: $command"
    eval "$command" 2>> "$ERROR_LOG"
    if [ $? -ne 0 ]; then
        echo "COMMAND FAILED" 
        echo "See $ERROR_LOG for details."
        exit 1
    fi
    echo "Success!"
}

echo "Lowering file: $INPUT_FILE"

# Lower handshake to dc
# run_pass "$CIRCT_BIN --lower-handshake-to-dc \"$INPUT_FILE\" > \"$OUTPUT_DC\""

# Materialize forks and sinks 
run_pass "$CIRCT_BIN --dc-materialize-forks-sinks \"$OUTPUT_DC\" > \"$OUTPUT_MAT1\""

# Canonicalize 
run_pass "$CIRCT_BIN --canonicalize \"$OUTPUT_MAT1\" > \"$OUTPUT_CAN\""

# Materialize forks and sinks, guarantee single uses
run_pass "$CIRCT_BIN --dc-materialize-forks-sinks \"$OUTPUT_CAN\" > \"$OUTPUT_MAT2\""

# Lower dc to hw
run_pass "$CIRCT_BIN --lower-dc-to-hw \"$OUTPUT_MAT2\" > \"$OUTPUT_HW\""

# Lower ESI connections to hw
run_pass "$CIRCT_BIN --lower-esi-ports \"$OUTPUT_HW\" > \"$OUTPUT_ESI_PORTS\""
run_pass "$CIRCT_BIN --lower-esi-to-hw \"$OUTPUT_ESI_PORTS\" > \"$OUTPUT_ESI_HW\""

# Map Arith to Comb
run_pass "$CIRCT_BIN --map-arith-to-comb \"$OUTPUT_ESI_HW\" > \"$OUTPUT_ESI_HW_COMB\""

# Lower to SystemVerilog and export
run_pass "$CIRCT_BIN --lower-hw-to-sv \"$OUTPUT_ESI_HW_COMB\" > \"$OUTPUT_SV\""

# Prettify SystemVerilog
run_pass "$CIRCT_BIN --prettify-verilog \"$OUTPUT_SV\" > \"$OUTPUT_SV_PRETTIFIED\""

# Lower `seq` to SystemVerilog
run_pass "$CIRCT_BIN --lower-seq-to-sv \"$OUTPUT_SV_PRETTIFIED\" > \"$OUTPUT_SV_SEQ\""

# Export Verilog
run_pass "$CIRCT_BIN --export-verilog \"$OUTPUT_SV_SEQ\" > \"$OUTPUT_VERILOG\""

