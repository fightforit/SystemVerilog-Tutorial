module Mux4To1TB;

  logic [1:0] Sel;
  logic Data0;
  logic Data1;
  logic Data2;
  logic Data3;
  logic Data;


  Mux4To1 u_mux_4_to_1 (
      .iSel  (Sel),
      .iData0(Data0),
      .iData1(Data1),
      .iData2(Data2),
      .iData3(Data3),
      .oData (Data)
  );


  initial begin
    // Test 1
    Data0 = 1'b0;
    Data1 = 1'b1;
    Data2 = 1'b1;
    Data3 = 1'b0;
    Sel   = 2'b00;
    #10ns;
    $display("Data0=%b, Data1=%b, Data2=%b, Data3=%b, Sel=%02b, Data=%b", Data0, Data1, Data2,
             Data3, Sel, Data);

    // Test 2
    Data0 = 1'b0;
    Data1 = 1'b1;
    Data2 = 1'b1;
    Data3 = 1'b0;
    Sel   = 2'b01;
    #10ns;
    $display("Data0=%b, Data1=%b, Data2=%b, Data3=%b, Sel=%02b, Data=%b", Data0, Data1, Data2,
             Data3, Sel, Data);

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
