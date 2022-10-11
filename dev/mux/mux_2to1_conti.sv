module mux_2to1_conti #(
    parameter int BIT_WIDTH = 8
) (
    input  logic                 sel_i,
    input  logic [BIT_WIDTH-1:0] a_i,
    input  logic [BIT_WIDTH-1:0] b_i,
    output logic [BIT_WIDTH-1:0] y_o
);

  // Continuous assignment
  assign y_o = sel_i ? b_i : a_i;

endmodule : mux_2to1_conti
