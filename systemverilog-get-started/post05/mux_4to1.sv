// SystemVerilog 4 to 1 MUX
module Mux4To1 (
    input  logic [1:0] iSel,
    input  logic       iData0,
    input  logic       iData1,
    input  logic       iData2,
    input  logic       iData3,
    output logic       oData
);

  logic selResult01, selResult23;

  // Level 0 first 2 to 1 MUX to select a and b
  Mux2To1 u_mux_lv00 (
      .iSel  (iSel[1]),
      .iData0(iData0),
      .iData1(iData1),
      .oData (selResult01)
  );

  // Level 0 second 2 to 1 MUX to select c and d
  Mux2To1 u_mux_lv01 (
      .iSel  (iSel[1]),
      .iData0(iData2),
      .iData1(iData3),
      .oData (selResult23)
  );

  // Level 1 2 to 1 MUX to select final result
  Mux2To1 u_mux_lv10 (
      .iSel  (iSel[0]),
      .iData0(selResult01),
      .iData1(selResult23),
      .oData (oData)
  );

endmodule : Mux4To1
