module mux_2to1 #(
) (
    input  logic       sel_i,
    input  logic [7:0] a_i,
    input  logic [7:0] b_i,
    output logic [7:0] y_o
);

  // Continuous assignment
  assign y_o = sel_i ? b_i : a_i;

endmodule : mux_2to1
