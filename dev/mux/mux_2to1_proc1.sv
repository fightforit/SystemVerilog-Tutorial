module mux_2to1_proc1 (
  input  logic       sel_i,
  input  logic [7:0] a_i,
  input  logic [7:0] b_i,
  output logic [7:0] y_o
);

  // Procedural 1
  always_comb begin
    y_o = sel_i ? b_i : a_i;
  end

endmodule : mux_2to1_proc1
