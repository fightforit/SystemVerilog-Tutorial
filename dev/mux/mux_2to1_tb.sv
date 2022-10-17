module Mux2To1Tb ();

  logic iSel;
  logic iA;
  logic iB;
  logic oY;

  Mux2To1 #() u_mux_2to1_conti (
    .iSel(iSel),
    .iA  (iA),
    .iB  (iB),
    .oY  (oY)
  );

  initial begin
    iA   = 1'b0;
    iB   = 1'b1;
    iSel = 1'b0;
    #10;
    $display("iA = %b, iB = %b, iSel = %b, oY = %b", iA, iB, iSel, oY);

    iA   = 1'b0;
    iB   = 1'b1;
    iSel = 1'b1;
    #10;
    $display("iA = %b, iB = %b, iSel = %b, oY = %b", iA, iB, iSel, oY);

    $finish();
  end

  initial begin
`ifdef VCS
    $fsdbDumpfile("Mux2To1Tb.fsdb");
    $fsdbDumpvars();
`else
    $dumpfile("Mux2To1Tb.vcd");
    $dumpvars(0, Mux2To1Tb);
`endif
  end

endmodule : Mux2To1Tb
