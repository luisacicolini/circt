## order of passes

### starting file: long-datapath-handshake.mlir (handshake + comb)

### materialize forks and sinks (guarantee single uses) and canonicalize: 

- `bin/circt-opt --handshake-materialize-forks-sinks ../hs-hw-examples/long-datapath-handshake.mlir > ../hs-hw-examples/long-datapath-handshake-materialized.mlir`

### lower handshake to core:

- `bin/circt-opt --lower-handshake-to-hw ../hs-hw-examples/long-datapath-handshake-materialized.mlir > ../hs-hw-examples/long-datapath-handshake-to-hw
.mlir`

### now manage esi connections:

- `bin/circt-opt --lower-esi-ports ../hs-hw-examples/long-datapath-handshake-to-hw.mlir > ../hs-hw-examples/long-datapath-handshake-esi-ports-to-hw.mlir`

- `bin/circt-opt --lower-esi-to-hw ../hs-hw-examples/long-datapath-handshake-esi-ports-to-hw.mlir > ../hs-hw-examples/long-datapath-handshake-esi-to-hw.mlir` yields an error: 
```llvm 
../hs-hw-examples/long-datapath-handshake-esi-ports-to-hw.mlir:169:33: error: failed to legalize operation 'esi.wrap.vr' that was explicitly marked illegal
    %chanOutput_18, %ready_19 = esi.wrap.vr %handshake_merge0.out0, %handshake_merge0.out0_valid : i32
                                ^
../hs-hw-examples/long-datapath-handshake-esi-ports-to-hw.mlir:169:33: note: see current operation: %20:2 = "esi.wrap.vr"(%21#2, %21#3) : (i32, i1) -> (!esi.channel<i32>, i1)
```
this lowering works on the same operator in the dc flow so it's pretty weird. 
