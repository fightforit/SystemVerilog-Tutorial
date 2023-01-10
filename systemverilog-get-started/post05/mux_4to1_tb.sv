module Mux4To1TB;

  logic [1:0] sel;
  logic data0;
  logic data1;
  logic data2;
  logic data3;
  logic data;


  Mux4To1 u_mux_4_to_1 (
      .iSel  (sel),
      .iData0(data0),
      .iData1(data1),
      .iData2(data2),
      .iData3(data3),
      .oData (data)
  );


  initial begin
    // Test 1
    data0 = 1'b0;
    data1 = 1'b1;
    data2 = 1'b1;
    data3 = 1'b0;
    sel   = 2'b00;
    #10ns;
    $display("data0=%b, data1=%b, data2=%b, data3=%b, sel=%02b, data=%b", data0, data1, data2,
             data3, sel, data);

    // Test 2
    data0 = 1'b0;
    data1 = 1'b1;
    data2 = 1'b1;
    data3 = 1'b0;
    sel   = 2'b01;
    #10ns;
    $display("data0=%b, data1=%b, data2=%b, data3=%b, sel=%02b, data=%b", data0, data1, data2,
             data3, sel, data);

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
