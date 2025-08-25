#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <input_file.mlir>"
    exit 1
fi

INPUT_FILE="$1"
DIRNAME=$(dirname "$INPUT_FILE")
BASENAME=$(basename "$INPUT_FILE" .v)
ERROR_LOG_DIR="simulation-error-logs"

ERROR_LOG="$ERROR_LOG_DIR/${BASENAME}-verilator-error.log"

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

# Create .cpp file for the simulation of $INPUT_FILE. 
# The output will live in `./obj_dir/`
run_pass "verilator -cc -exe -build $INPUT_FILE sim_main.cpp"

echo "Final Simulation output is in: ./obj_dir/"