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
