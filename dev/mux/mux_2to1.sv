module mux_2to1 (
  input  logic sel_i,
  input  logic a_i,
  input  logic b_i,
  output logic y_o
);

  // Continuous assignment
  assign y_o = sel_i ? b_i : a_i;

endmodule : mux_2to1
