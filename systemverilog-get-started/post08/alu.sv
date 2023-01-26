module ALU
  import alu_pkg::*;
#(
    parameter int DataWidth = 32
) (
    input  logic    [DataWidth-1:0] operandA,
    input  logic    [DataWidth-1:0] operandB,
    input  opcode_e                 opcode,
    output logic    [DataWidth-1:0] result
);

  logic signed [DataWidth-1:0] signedA;
  logic signed [DataWidth-1:0] signedB;

  assign signedA = operandA;
  assign signedB = operandB;

  always_comb begin
    unique case (opcode)
      kAddition:            result = operandA + operandB;
      kSubtraction:         result = operandA - operandB;
      kShiftLeftLogical:    result = operandA << operandB;
      kShiftRightLogical:   result = operandA >> operandB;
      kShiftRightArith:     result = signedA >>> operandB;
      kBinaryOr:            result = operandA | operandB;
      kBinaryAnd:           result = operandA & operandB;
      kBinaryXor:           result = operandA ^ operandB;
      kEqualTo:             result = operandA == operandB;
      kLessThanUnsigned:    result = operandA < operandB;
      kGreaterThanUnsigned: result = operandA > operandB;
      kLessThanSigned:      result = signedA < signedB;
      kGreaterThanSigned:   result = signedA > signedB;
      default:              result = 'x;
    endcase
  end

endmodule : ALU
