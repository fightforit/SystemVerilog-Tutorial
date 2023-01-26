package alu_pkg;
  typedef enum logic [3:0] {
    kAddition            = 4'h0,
    kSubtraction         = 4'h1,
    kShiftLeftLogical    = 4'h2,
    kShiftRightLogical   = 4'h3,
    kShiftRightArith     = 4'h4,
    kBinaryOr            = 4'h5,
    kBinaryAnd           = 4'h6,
    kBinaryXor           = 4'h7,
    kEqualTo             = 4'h8,
    kLessThanUnsigned    = 4'h9,
    kGreaterThanUnsigned = 4'ha,
    kLessThanSigned      = 4'hb,
    kGreaterThanSigned   = 4'hc
  } opcode_e;
endpackage : alu_pkg
