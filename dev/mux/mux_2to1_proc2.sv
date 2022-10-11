module mux_2to1_proc2 #(
    parameter int BIT_WIDTH = 8
) (
    input  logic                 sel_i,
    input  logic [BIT_WIDTH-1:0] a_i,
    input  logic [BIT_WIDTH-1:0] b_i,
    output logic [BIT_WIDTH-1:0] y_o
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
