module mux_2to1_proc2 #(
) (
    input  logic       sel_i,
    input  logic [7:0] a_i,
    input  logic [7:0] b_i,
    output logic [7:0] y_o
);

  // Procedural 2
  always_comb begin
    if (sel_i) begin
      y_o = b_i;
    end else begin
      y_o = a_i;
    end
  end

endmodule : mux_2to1_proc2
