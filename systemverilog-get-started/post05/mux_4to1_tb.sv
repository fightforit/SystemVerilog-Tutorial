module Mux4To1TB;

  logic [1:0] iSel;
  logic iData0;
  logic iData1;
  logic iData2;
  logic iData3;
  logic oData;


  Mux4To1 u_mux_4_to_1 (
      .iSel  (iSel),
      .iData0(iData0),
      .iData1(iData1),
      .iData2(iData2),
      .iData3(iData3),
      .oData (oData)
  );


  initial begin
    // Test 1
    iData0 = 1'b0;
    iData1 = 1'b1;
    iData2 = 1'b1;
    iData3 = 1'b0;
    iSel   = 2'b00;
    #10ns;
    $display("iData0=%b, iData1=%b, iData2=%b, iData3=%b, iSel=%02b, oData=%b", iData0, iData1,
             iData2, iData3, iSel, oData);

    // Test 2
    iData0 = 1'b0;
    iData1 = 1'b1;
    iData2 = 1'b1;
    iData3 = 1'b0;
    iSel   = 2'b01;
    #10ns;
    $display("iData0=%b, iData1=%b, iData2=%b, iData3=%b, iSel=%02b, oData=%b", iData0, iData1,
             iData2, iData3, iSel, oData);

    $finish(0);
  end

  initial begin
`ifdef VCS
    $fsdbDumpfile("mux_4to1_tb.fsdb");
    $fsdbDumpvars(0, Mux4To1TB);
`else
    $dumpfile("mux_4to1_tb.vcd");
    $dumpvars(0, Mux4To1TB);
`endif
  end

endmodule : Mux4To1TB
