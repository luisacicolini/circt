## order of passes

### starting file: long-datapath-handshake.mlir (handshake + comb)

- bin/circt-opt --lower-handshake-to-dc ../hs-dc-hw-examples/long-datapath-handshake.mlir > ../hs-dc-hw-examples/long-datapath-dc.mlir

### materialize forks and sinks (guarantee single uses) and canonicalize: 

- bin/circt-opt --dc-materialize-forks-sinks ../hs-dc-hw-examples/long-datapath-dc.mlir > ../hs-dc-hw-examples/long-datapath-dc-materialized-1.mlir

- bin/circt-opt --canonicalize ../hs-dc-hw-examples/long-datapath-dc-materialized-1.mlir > ../hs-dc-hw-examples/long-datapath-dc-canonicalized.mlir

-bin/circt-opt --dc-materialize-forks-sinks ../hs-dc-hw-examples/long-datapath-dc-canonicalized.mlir > ../hs-dc-hw-examples/long-datapath-dc-materialized-2.mlir

### lower dc to core:

- bin/circt-opt --lower-dc-to-hw ../hs-dc-hw-examples/long-datapath-dc-materialized-2.mlir > ../hs-dc-hw-examples/long-datapath-dc-to-hw.mlir

### now manage esi connections:

- bin/circt-opt --lower-esi-ports ../hs-dc-hw-examples/long-datapath-dc-to-hw.mlir > ../hs-dc-hw-examples/long-datapath-dc-esi-ports-to-hw.mlir

- bin/circt-opt --lower-esi-to-hw ../hs-dc-hw-examples/long-datapath-dc-esi-ports-to-hw.mlir > ../hs-dc-hw-examples/long-datapath-dc-esi-to-hw.mlir

#### current problem with export verilog: 
need to replace arith.select, since --export-verilog can't digest it

#### current solution: 
replace arith.select with comb.mux for now, done in long-datapath-dc-esi-to-hw-arith-to-comb.mlir

### lower to systemverilog and prettify:

- bin/circt-opt --lower-hw-to-sv ../hs-dc-hw-examples/long-datapath-dc-esi-to-hw-arith-to-comb.mlir  > ../hs-dc-hw-examples/long-datapath-sv.mlir

- bin/circt-opt --prettify-verilog ../hs-dc-hw-examples/long-datapath-sv.mlir > ../hs-dc-hw-examples/long-datapath-sv-prettified.mlir

- bin/circt-opt --lower-seq-to-sv ../hs-dc-hw-examples/long-data
path-sv-prettified.mlir > ../hs-dc-hw-examples/long-datapath-sv-seq-sv.mlir

### export verilog

- bin/circt-opt --export-verilog ../hs-dc-hw-examples/long-datap
ath-sv-seq-sv.mlir > ../hs-dc-hw-examples/long-datapath-verilog.v