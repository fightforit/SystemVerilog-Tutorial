module mux_2to1 (
    input  logic iSel,
    input  logic iData0,
    input  logic iData1,
    output logic oData
);

  // Continuous assignment
  assign oData = iSel ? iData1 : iData0;

endmodule : mux_2to1
