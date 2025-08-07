#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <input_file.mlir>"
    exit 1
fi

INPUT_FILE="$1"
DIRNAME=$(dirname "$INPUT_FILE")
BASENAME=$(basename "$INPUT_FILE" .mlir)
ERROR_LOG_DIR="simulation-error-logs"
ARCILATOR_BIN="../build/bin/arcilator"

OUTPUT_SIM="$DIRNAME/${BASENAME}-simulation.ll"
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

echo "Simulating file: $INPUT_FILE"

# Lower handshake to dc
run_pass "$ARCILATOR_BIN \"$INPUT_FILE\" > \"$OUTPUT_SIM\""

echo "Final Simulation output is in: $OUTPUT_SIM"