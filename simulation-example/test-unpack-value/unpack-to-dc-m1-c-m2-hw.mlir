module {
  hw.module @test_control_merge(in %0 "" : !esi.channel<i64>, out out0 : i64) {
    %rawOutput, %valid = esi.unwrap.vr %0, %ready : i64
    %c0_i0 = hw.constant 0 : i0
    %chanOutput, %ready = esi.wrap.vr %c0_i0, %valid : i0
    %rawOutput_0, %valid_1 = esi.unwrap.vr %chanOutput, %true : i0
    %true = hw.constant true
    hw.output %rawOutput : i64
  }
}

