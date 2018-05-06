`timescale 1ns / 1ps

module invert(a, b, s);
	
	input [15:0] a, b;
	output [15:0] s;
	
	assign s[0] = ~a[0];
	assign s[1] = ~a[1];
	assign s[2] = ~a[2];
	assign s[3] = ~a[3];
	assign s[4] = ~a[4];
	assign s[5] = ~a[5];
	assign s[6] = ~a[6];
	assign s[7] = ~a[7];
	assign s[8] = ~a[8];
	assign s[9] = ~a[9];
	assign s[10] = ~a[10];
	assign s[11] = ~a[11];
	assign s[12] = ~a[12];
	assign s[13] = ~a[13];
	assign s[14] = ~a[14];
	assign s[15] = ~a[15];

endmodule
