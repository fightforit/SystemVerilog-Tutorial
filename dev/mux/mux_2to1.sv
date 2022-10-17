module mux_2to1 (
  input  logic iSel,
  input  logic iA,
  input  logic iB,
  output logic oY
);

  // Continuous assignment
  assign oY = iSel ? iB : iA;

endmodule : mux_2to1
