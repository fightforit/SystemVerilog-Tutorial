module mux_2to1_tb ();

  localparam int BIT_WIDTH = 8;

  logic [7:0] a_i;
  logic [7:0] b_i;
  logic       sel_i;
  logic [7:0] y_o;

  mux_2to1 #(
      /* parameter int */.BIT_WIDTH(BIT_WIDTH)
  ) u_mux_2to1 (
      /* input  logic                 */.sel_i(sel_i),
      /* input  logic [BIT_WIDTH-1:0] */.a_i  (a_i),
      /* input  logic [BIT_WIDTH-1:0] */.b_i  (b_i),
      /* output logic [BIT_WIDTH-1:0] */.y_o  (y_o)
  );

  initial begin
    for (int i = 0; i < 10; i++) begin
      a_i   = $urandom_range(0, 8'hFF);
      b_i   = $urandom_range(0, 8'hFF);
      sel_i = $urandom() % 2;
      #10.0;
    end
  end

endmodule : mux_2to1_tb
