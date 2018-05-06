`timescale 1ns / 1ps
module arithshiftl(a, b, s, overflow);

	input signed [15:0] a, b;
	output signed [15:0] s;
	output overflow;
	
//	wire sign;
//	assign sign = s[15];
//	wire [15:0] mask = 16'b0111111111111111;
//	
//	assign s = (a <<< b) & mask;
//	assign s[15] = sign <<< 15;
	
	wire [15:0] temp;
	assign s = a <<< b;
	assign overflow = s[15] ^ a[15];
	
endmodule
