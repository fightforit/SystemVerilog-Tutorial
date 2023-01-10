module mux_2to1_tb;

  logic iSel;
  logic iData0;
  logic iData1;
  logic oData;

  mux_2to1 u_mux_2to1_conti (
      .iSel  (iSel),
      .iData0(iData0),
      .iData1(iData1),
      .oData (oData)
  );

  initial begin
    // Test 1
    iData0 = 1'b0;
    iData1 = 1'b1;
    iSel   = 1'b0;
    #10ns;
    $display("iData0=%b, iData1=%b, iSel=%b, oData=%b", iData0, iData1, iSel, oData);

    // Test 2
    iData0 = 1'b0;
    iData1 = 1'b1;
    iSel   = 1'b1;
    #10ns;
    $display("iData0=%b, iData1=%b, iSel=%b, oData=%b", iData0, iData1, iSel, oData);

    $finish(0);
  end

  initial begin
`ifdef VCS
    $fsdbDumpfile("mux_2to1_tb.fsdb");
    $fsdbDumpvars(0, mux_2to1_tb);
`else
    $dumpfile("mux_2to1_tb.vcd");
    $dumpvars(0, mux_2to1_tb);
`endif
  end

endmodule : mux_2to1_tb
