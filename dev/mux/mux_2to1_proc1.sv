module mux_2to1_proc1 #(
    parameter int BIT_WIDTH = 8
) (
    input  logic                 sel_i,
    input  logic [BIT_WIDTH-1:0] a_i,
    input  logic [BIT_WIDTH-1:0] b_i,
    output logic [BIT_WIDTH-1:0] y_o
);

  // Procedural 1
  always_comb begin
    y_o = sel_i ? b_i : a_i;
  end

endmodule : mux_2to1_proc1
