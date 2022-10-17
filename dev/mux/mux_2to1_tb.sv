module mux_2to1_tb ();

  logic sel_i;
  logic a_i;
  logic b_i;
  logic y_o;

  mux_2to1 #() u_mux_2to1_conti (
    .sel_i(sel_i),
    .a_i  (a_i),
    .b_i  (b_i),
    .y_o  (y_o)
  );

  initial begin
    a_i   = 1'b0;
    b_i   = 1'b1;
    sel_i = 1'b0;
    #10;
    $display("a_i = %b, b_i = %b, sel_i = %b, y_o = %b", a_i, b_i, sel_i, y_o);

    a_i   = 1'b0;
    b_i   = 1'b1;
    sel_i = 1'b1;
    #10;
    $display("a_i = %b, b_i = %b, sel_i = %b, y_o = %b", a_i, b_i, sel_i, y_o);

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
