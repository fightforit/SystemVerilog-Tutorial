module AdderTB;

  // Example 1
  logic [7:0] a1, b1, s1;
  Adder adder1 (
      .iData0(a1),
      .iData1(b1),
      .oSum  (s1)
  );

  // Example 2
  localparam int Width2 = 16;
  logic [Width2-1:0] a2, b2, s2;
  Adder #(Width2) adder2 (
      .iData0(a2),
      .iData1(b2),
      .oSum  (s2)
  );

  // Example 3
  localparam int Width3 = 32;
  logic [Width3-1:0] a3, b3, s3;
  Adder #(
      .Width(Width3)
  ) adder3 (
      .iData0(a3),
      .iData1(b3),
      .oSum  (s3)
  );

  initial begin
    $display("Example 1");
    a1 = 8'h01;
    b1 = 8'h02;
    #10;
    $display("a1 = %02h", a1);
    $display("b1 = %02h", b1);
    $display("s1 = %02h", s1);

    $display("Example 2");
    a2 = 16'h0001;
    b2 = 16'h0002;
    #10;
    $display("a2 = %04h", a2);
    $display("b2 = %04h", b2);
    $display("s2 = %04h", s2);

    $display("Example 3");
    a3 = 32'h00000001;
    b3 = 32'h00000002;
    #10;
    $display("a3 = %08h", a3);
    $display("b3 = %08h", b3);
    $display("s3 = %08h", s3);

    $finish(0);
  end

endmodule : AdderTB
