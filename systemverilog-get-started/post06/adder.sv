module Adder #(
    parameter int Width = 8
) (
    input  logic [Width-1:0] iData0,
    input  logic [Width-1:0] iData1,
    output logic [Width-1:0] oSum
);

  assign oSum = iData0 + iData1;

endmodule : Adder
