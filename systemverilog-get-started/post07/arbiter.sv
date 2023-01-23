module Arbiter #(
    parameter int N = 4
) (
    input  logic [N-1:0] iRequest,
    output logic [N-1:0] oGrant
);

  logic granted;

  // request at smaller index has higher priority
  always_comb begin
    granted = 1'b0;
    oGrant  = '0;
    for (int i = 0; i < NumRequest; i++) begin
      if (iRequest[i] & ~granted) begin
        oGrant[i] = 1'b1;
        granted   = 1'b1;
      end
    end
  end

  // continuous assignment
  /*
    assign oGrant[0] = iRequest[0];
    for (genvar i = 1; i < N; i++) begin
      assign oGrant[i] = iRequest[i] & ~|oGrant[i-1:0];
    end
  */

  // break method
  /*
  always_comb begin
    oGrant = '0;
    for (int i = 0; i < N; i++) begin
      if (iRequest[i]) begin
        oGrant[i] = 1'b1;
        break;
      end
    end
  end
  */

endmodule : Arbiter
