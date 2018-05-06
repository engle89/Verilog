`timescale 1ns / 1ps
module registerfile(clk, rst, Ra, Rb, Rw, WrEn, busW, busA, busB);

input clk, rst;

input [4:0] Ra, Rb, Rw; 
input WrEn;
input [15:0] busW;

output reg [15:0] busA, busB;

reg [15:0] data [31:0];
integer i;

initial begin
 	for (i = 0; i < 32; i = i+1) begin
		data[i] = 16'b0000000000000000;
	end
end

always @(posedge clk) begin
	// Reset
	if (rst) begin
		for (i = 0; i < 32; i = i+1) begin
			data[i] = 16'b0000000000000000;
		end
	end
	
	// Write Enabled
	if (WrEn == 1) begin
		data[Rw] = busW;
	end
	
	// Read
	busA = (Ra == Rw && WrEn == 1) ? busW : data[Ra];
	busB = (Rb == Rw && WrEn == 1) ? busW : data[Rb];
	
end

endmodule
