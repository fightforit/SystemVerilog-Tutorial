module mux_2to1_tb ();

  logic iSel;
  logic iA;
  logic iB;
  logic oY;

  mux_2to1 #() u_mux_2to1_conti (
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
    $fsdbDumpfile("mux_2to1_tb.fsdb");
    $fsdbDumpvars();
`else
    $dumpfile("mux_2to1_tb.vcd");
    $dumpvars(0, mux_2to1_tb);
`endif
  end

endmodule : mux_2to1_tb
