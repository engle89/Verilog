`timescale 1ns / 1ps

module arithshiftr_tb();
	
	wire [15:0] s; //output

	reg [15:0] a,b; //input
	
	arithshiftr uut(a, b, s);
	
	initial begin
		a = 0;
		b = 0;
		#100 a = 16'b1000000000000010; b=16'b000000000000001;
		#10 a = 16'b0000000000000100; b=16'b000000000000010;
	end

endmodule
