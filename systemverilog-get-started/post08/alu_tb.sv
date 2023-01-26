module ALUTB;
  import alu_pkg::*;

  localparam int DataWidth = 32;

  logic    [DataWidth-1:0] operandA;
  logic    [DataWidth-1:0] operandB;
  opcode_e                 opcode;
  logic    [DataWidth-1:0] result;

  ALU #(
      .DataWidth(DataWidth)
  ) u_alu (
      .operandA(operandA),
      .operandB(operandB),
      .opcode  (opcode),
      .result  (result)
  );

  initial begin
    #10;
    $display("%25s | Expression", "Operation");

    // Add
    operandA = $urandom();
    operandB = $urandom();
    opcode   = kAddition;
    #1;
    $display("%25s | %0h + %0h = %8h", "Addition", operandA, operandB, result);

    // Subtraction
    operandA = $urandom();
    operandB = $urandom();
    opcode   = kSubtraction;
    #1;
    $display("%25s | %0h - %0h = %8h", "Subtraction", operandA, operandB, result);

    // kShiftLeftLogical
    operandA = $urandom_range(0, 65536);
    operandB = 8;
    opcode   = kShiftLeftLogical;
    #1;
    $display("%25s | %0h << %0h = %8h", "Shift Left Logical", operandA, operandB, result);

    // kShiftRightLogical
    operandA = $urandom_range(2 ** 31, 2 ** 32 - 1);
    operandB = 4;
    opcode   = kShiftRightLogical;
    #1;
    $display("%25s | %0h >>  %0h = %8h", "Shift Right Logical", operandA, operandB, result);


    // kShiftRightArith
    opcode = kShiftRightArith;
    #1;
    $display("%25s | %0h >>> %0h = %8h", "Shift Right Arith", operandA, operandB, result);

    // kBinaryOr
    operandA = $urandom();
    operandB = $urandom();
    opcode   = kBinaryOr;
    #1;
    $display("%25s | %0h | %0h = %8h", "Binary Or", operandA, operandB, result);


    // kBinaryAnd
    operandA = $urandom();
    operandB = $urandom();
    opcode   = kBinaryAnd;
    #1;
    $display("%25s | %0h & %0h = %8h", "Binary And", operandA, operandB, result);

    // kBinaryXor
    operandA = $urandom();
    operandB = $urandom();
    opcode   = kBinaryXor;
    #1;
    $display("%25s | %0h ^ %0h = %8h", "Binary Xor", operandA, operandB, result);

    // kEqualTo
    operandA = $urandom();
    operandB = $urandom();
    opcode   = kEqualTo;
    #1;
    $display("%25s | %0h == %8h = %8h", "Equal To", operandA, operandB, result);


    // kGreaterThanUnsigned
    operandA = $urandom_range(2 ** 31, 2 ** 32 - 1);
    operandB = $urandom_range(2 ** 30, 2 ** 31);
    opcode   = kGreaterThanUnsigned;
    #1;
    $display("%25s | %0h > %0h = %8h", "Greater Than Unsigned", operandA, operandB, result);


    // kGreaterThanSigned
    opcode = kGreaterThanSigned;
    #1;
    $display("%25s | %0h > %0h = %8h", "Greater Than Signed", operandA, operandB, result);


    // kLessThanUnsigned
    operandA = $urandom_range(2 ** 31 - 1, 2 ** 32 - 1);
    operandB = $urandom_range(2 ** 31, 2 ** 32 - 1);
    opcode   = kLessThanUnsigned;
    #1;
    $display("%25s | %0h < %0h = %8h", "Less Than Unsigned", operandA, operandB, result);


    // kLessThanSigned
    opcode = kLessThanSigned;
    #1;
    $display("%25s | %0h < %0h = %8h", "Less Than Signed", operandA, operandB, result);


    $finish(0);
  end

endmodule : ALUTB
