module mux_2to1_tb ();

  localparam int BIT_WIDTH = 8;

  logic [BIT_WIDTH-1:0] a_i;
  logic [BIT_WIDTH-1:0] b_i;
  logic                 sel_i;
  logic [BIT_WIDTH-1:0] y_o;

  mux_2to1_conti #(
      .BIT_WIDTH(BIT_WIDTH)
  ) u_mux_2to1_conti (
      .sel_i(sel_i),
      .a_i  (a_i),
      .b_i  (b_i),
      .y_o  (y_o)
  );

  initial begin
    for (int i = 0; i < 10; i++) begin
      a_i   = $urandom_range(0, BIT_WIDTH'('1));
      b_i   = $urandom_range(0, BIT_WIDTH'('1));
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
