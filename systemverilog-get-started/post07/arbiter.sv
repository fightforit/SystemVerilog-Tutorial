module Arbiter #(
    parameter int N = 4
) (
    input  logic [N-1:0] iRequest,
    output logic [N-1:0] oGrant
);

  // request at smaller index has higher priority

  // the following does not work
  //   always_comb begin
  //     oGrant[0] = iRequest[0];
  //     for (int i = 1; i < N; i++) begin
  //       oGrant[i] = iRequest[i] & ~|oGrant[i-1:0];
  //     end
  //   end

  assign oGrant[0] = iRequest[0];

  for (genvar i = 1; i < N; i++) begin
    assign oGrant[i] = iRequest[i] & ~|oGrant[i-1:0];
  end

endmodule : Arbiter
