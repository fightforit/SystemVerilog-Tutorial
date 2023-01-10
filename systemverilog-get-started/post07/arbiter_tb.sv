module ArbiterTB;

  localparam int N = 4;
  logic [N-1:0] request;
  logic [N-1:0] grant;

  Arbiter #(
      .N(N)
  ) u_arbiter (
      .iRequest(request),
      .oGrant  (grant)
  );

  initial begin
    for (int i = 0; i < N; i++) begin
      request = $random();

      #10ns;
      $display("Request = %b, Grant = %b", request, grant);
    end

    $finish(0);
  end

endmodule : ArbiterTB
