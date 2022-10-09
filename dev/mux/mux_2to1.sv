module mux_2to1 #(
    parameter int BIT_WIDTH = 8
) (
    input  logic                 sel_i,
    input  logic [BIT_WIDTH-1:0] a_i,
    input  logic [BIT_WIDTH-1:0] b_i,
    output logic [BIT_WIDTH-1:0] y_o
);

  // Continuous assignment
  assign y = sel ? b : a;

  // Procedural 1
  always_comb begin
    y = sel ? b : a;
  end

  // Procedural 2
  always_comb begin
    if (sel) begin
      y = b;
    end else begin
      y = a;
    end
  end

endmodule : mux_2to1
