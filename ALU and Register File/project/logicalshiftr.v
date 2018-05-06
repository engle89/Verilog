`timescale 1ns / 1ps
module logicalshiftr(a,b,s);

	input [15:0] a, b;
	output [15:0] s;
	
	assign s = a >>> b;
	
endmodule
