module ALU2(A, B, ALU_Control, Overflow, Zero, S);

input [15:0] A;
input [15:0] B;
input [3:0] ALU_Control;

output Overflow;
output Zero;
output [15:0] S;

wire [15:0] sSub;
wire overflowSub;
wire [15:0] bInv;
wire [15:0] bNeg;
wire overflowBNeg;
invert b_Inv(.a(B), .b(1), .s(bInv));
adder add2(.a(bInv), .b(1), .cin(0), .sum(bNeg), .cout(overflowBNeg));
adder add3(.a(A), .b(bNeg), .cin(0), .sum(sSub), .cout(overflowSub));

wire [15:0] sAdd;
wire overflowAdd;
adder add(.a(A), .b(B), .cin(0), .sum(sAdd), .cout(overflowAdd));

wire [15:0] sOr;
bitwise_or or_mod(.a(A), .b(B), .s(sOr));

wire [15:0] sAnd;
bitwise_and and_mod(.a(A), .b(B), .s(sAnd));

wire [15:0] sDec;
wire overflowDec;
wire [15:0] neg_1 = 16'b1111111111111111;
adder dec_1(.a(A), .b(neg_1), .cin(0), .sum(sDec), .cout(overflowDec));

wire [15:0] sInc;
wire overflowInc;
wire [15:0] pos_1 = 16'b0000000000000001;
adder inc_1(.a(A), .b(pos_1), .cin(0), .sum(sInc), .cout(overflowInc));

wire [15:0] sInv;
invert invert_mod(.a(A), .b(B), .s(sInv));

wire [15:0] sArithShiftL;
wire overflowArithShiftL;
arithshiftl aleft_shift(.a(A), .b(B), .s(sArithShiftL), .overflow(overflowArithShiftL));

wire [15:0] sArithShiftR;
arithshiftr aright_shift(.a(A), .b(B), .s(sArithShiftR));

wire [15:0] sLogicalShiftL;
wire overflowLogicalShiftL;
logicalshiftl lleft_shift(.a(A), .b(B), .s(sLogicalShiftL));

wire [15:0] sLogicalShiftR;
logicalshiftr lright_shift(.a(A), .b(B), .s(sLogicalShiftR));

wire [15:0] sSLTE;
wire [15:0] aNeg;
wire [15:0] bInv2;
wire [15:0] bNeg2;
wire overflowBNeg2;
wire signed [15:0] res;
invert b_Inv2(.a(B), .b(1), .s(bInv2));
adder add4(.a(bInv2), .b(1), .cin(0), .sum(bNeg2), .cout(overflowBNeg2));
adder add5(.a(A), .b(bNeg2), .cin(0), .sum(res), .cout(overflowBNeg2));
assign sSLTE = (A[15] == 0 && B[15] == 1) ? 0 : // a is pos, b is neg
					(A[15] == 1 && B[15] == 0) ? 1 :  // a is neg, b is pos
					(res > 0) ? 0 : 1; // same sign


assign S = (ALU_Control == 4'b0000) ? sSub :
			  (ALU_Control == 4'b0001) ? sAdd :
			  (ALU_Control == 4'b0010) ? sOr :
			  (ALU_Control == 4'b0011) ? sAnd :
			  (ALU_Control == 4'b0100) ? sDec :
			  (ALU_Control == 4'b0101) ? sInc :
			  (ALU_Control == 4'b0110) ? sInv :
			  (ALU_Control == 4'b1100) ? sArithShiftL :
			  (ALU_Control == 4'b1110) ? sArithShiftR :
			  (ALU_Control == 4'b1000) ? sLogicalShiftL :
			  (ALU_Control == 4'b1010) ? sLogicalShiftR :
			  (ALU_Control == 4'b1001) ? sSLTE : 0;

assign Overflow = (ALU_Control == 4'b0000) ? overflowSub :
					   (ALU_Control == 4'b0001) ? overflowAdd :
					   (ALU_Control == 4'b0010) ? 0 :
					   (ALU_Control == 4'b0011) ? 0 :
					   (ALU_Control == 4'b0100) ? overflowDec :
					   (ALU_Control == 4'b0101) ? overflowInc :
					   (ALU_Control == 4'b0110) ? 0 :
					   (ALU_Control == 4'b1100) ? overflowArithShiftL :
					   (ALU_Control == 4'b1110) ? 0 :
					   (ALU_Control == 4'b1000) ? 0 :
					   (ALU_Control == 4'b1010) ? 0 :
					   (ALU_Control == 4'b1001) ? 0 : 0;
						
assign Zero = (S == 0) ? 1 : 0;

endmodule
