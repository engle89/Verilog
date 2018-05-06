`timescale 1ns / 1ps

module registerfile_tb();

reg clk, rst;

reg [4:0] Ra, Rb, Rw; 
reg WrEn;
reg [15:0] busW;

wire [15:0] busA, busB;

registerfile UUT(clk, rst, Ra, Rb, Rw, WrEn, busW, busA, busB);

initial begin
	clk = 1;
	rst = 0;
	Ra = 5'b00000;
	Rb = 5'b00000;
	Rw = 5'b00000;
	WrEn = 0;
	busW = 16'b0000000000000000;
	#5 rst = 1; // clear values
	#5 rst = 0;
	
	#5 WrEn = 1;
	Rw = 5'b00001;
	busW = 16'b0000000000000001;
	#5 WrEn = 0;
	
	#5 Ra = 5'b00001;
	#5 Rb = 5'b00001;
	
	#5 WrEn = 1;
	Rw = 5'b11111;
	busW = 16'b1111111111111111;
	Ra = 5'b11111;
	#5 WrEn = 0;
	
	#5 rst = 1;
	
	#5 Ra = 5'b11111;
	Rb = 5'b00000;
	
end

always begin
	#1 clk = ~clk;
end

endmodule
