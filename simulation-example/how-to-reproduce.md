## order of passes

### starting file: handshake-merge.mlir (handshake + comb)

- `bin/circt-opt --lower-handshake-to-dc ../simulation-example/handshake-merge.mlir > ../simulation-example/handshake-to-dc.mlir`

### materialize forks and sinks (guarantee single uses) and canonicalize: 

- `bin/circt-opt --dc-materialize-forks-sinks ../simulation-example/handshake-to-dc.mlir > ../simulation-example/handshake-to-dc-materialized-1.mlir`

- `bin/circt-opt --canonicalize ../simulation-example/handshake-to-dc-materialized-1.mlir > ../simulation-example/handshake-to-dc-materialized-1-canonicalized.mlir`

- `bin/circt-opt --dc-materialize-forks-sinks ../simulation-example/handshake-to-dc-materialized-1-canonicalized.mlir > ../simulation-example/handshake-to-dc-materialized-1-canonicalized-materialized-2.mlir`

### lower dc to core:

- `bin/circt-opt --lower-dc-to-hw ../simulation-example/handshake-to-dc-materialized-1-canonicalized-materialized-2.mlir > ../simulation-example/dc-m1-c-m2-to-hw.mlir`

### now manage esi connections:

- `bin/circt-opt --lower-esi-ports ../simulation-example/dc-m1-c-m2-to-hw.mlir > ../simulation-example/dc-m1-c-m2-to-hw-lowered-esi.mlir`

- `bin/circt-opt --lower-esi-to-hw ../simulation-example/dc-m1-c-m2-to-hw-lowered-esi.mlir > ../simulation-example/dc-m1-c-m2-to-hw-esi-to-hw.mlir`

### run arcilator 

After manually replacing the `index` type with `i1`, run arcilator -> did not work 

## Change of plans: we lower to verilog, use a verilog simulator

### lower to systemverilog and prettify

- `bin/circt-opt --lower-hw-to-sv ../simulation-example/dc-m1-c-m2-to-hw-esi-to-hw.mlir > ../simulation-example/hw-to-sysv.mlir`

- `bin/circt-opt --prettify-verilog ../simulation-example/hw-to-sysv.mlir > ../simulation-example/hw-to-sv-prettified.mlir`

- `bin/circt-opt --lower-seq-to-sv ../simulation-example/hw-to-sv-prettified.mlir > ../simulation-example/sv-prettified-seq-to-sv.mlir`

### export verilog 

- `bin/circt-opt --export-verilog ../simulation-example/sv-prettified-seq-to-sv.mlir > ../simulation-example/merge-lowered.v` yielded: 
```
lc985@autobot:~/circt/build$ bin/circt-opt --export-verilog ../simulation-example/sv-prettified-seq-to-sv.mlir > ../simulation-example/merge-lowered.v
../simulation-example/sv-prettified-seq-to-sv.mlir:40:11: error: dialect "arith" not supported for direct Verilog emission
    %21 = arith.index_cast %20 : i1 to index
          ^
../simulation-example/sv-prettified-seq-to-sv.mlir:40:11: note: see current operation: %50 = "arith.index_cast"(%49) : (i1) -> index
../simulation-example/sv-prettified-seq-to-sv.mlir:40:11: note: ExportVerilog cannot emit this operation; it needs to be lowered before running ExportVerilog
```

### handshake runner 

the command is `../build/bin/handshake-runner test-branch/branch.mlir --top-level-function=test_conditional_branch 0 1` but it does not seem to work.