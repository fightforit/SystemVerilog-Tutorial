module mux_2to1_tb ();

  logic       sel_i;
  logic [7:0] a_i;
  logic [7:0] b_i;
  logic [7:0] y_o;

  mux_2to1 #() u_mux_2to1_conti (
      .sel_i(sel_i),
      .a_i  (a_i),
      .b_i  (b_i),
      .y_o  (y_o)
  );

  initial begin
    for (int i = 0; i < 10; i++) begin
      a_i   = $urandom_range(0, 8'hFF);
      b_i   = $urandom_range(0, 8'hFF);
      sel_i = $urandom() % 2;
      #10.0;
      $display("a = %h, b = %h, sel = %h, y = %h", a_i, b_i, sel_i, y_o);
    end
    $finish;
  end

  initial begin
    $fsdbDumpfile("mux_2to1_tb.fsdb");
    $fsdbDumpvars();
  end

endmodule : mux_2to1_tb
