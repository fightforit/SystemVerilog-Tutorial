module Mux2To1TB;

  logic sel;
  logic data0;
  logic data1;
  logic data;

  Mux2To1 u_mux_2to1_conti (
      .iSel  (sel),
      .iData0(data0),
      .iData1(data1),
      .oData (data)
  );

  initial begin
    // Test 1
    data0 = 1'b0;
    data1 = 1'b1;
    sel   = 1'b0;
    #10ns;
    $display("data0=%b, data1=%b, sel=%b, data=%b", data0, data1, sel, data);

    // Test 2
    data0 = 1'b0;
    data1 = 1'b1;
    sel   = 1'b1;
    #10ns;
    $display("data0=%b, data1=%b, sel=%b, data=%b", data0, data1, sel, data);

    $finish(0);
  end

  initial begin
`ifdef VCS
    $fsdbDumpfile("mux_2to1_tb.fsdb");
    $fsdbDumpvars(0, Mux2To1TB);
`else
    $dumpfile("mux_2to1_tb.vcd");
    $dumpvars(0, Mux2To1TB);
`endif
  end

endmodule : Mux2To1TB
