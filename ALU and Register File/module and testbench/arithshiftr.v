`timescale 1ns / 1ps
module arithshiftr(a,b,s);

	input signed [15:0] a, b;
	output signed [15:0] s;
	
//	wire [15:0] aAbs;
//	assign aAbs = a & 16'b0111111111111111;
	
//	assign s = (aAbs >>> b) | (a[15] <<< 15);
	assign s = a >>> b;
	
endmodule
