`timescale 1ns / 1ps

module invert_tb();
	
	wire [15:0] s; //output

	reg [15:0] a,b; //input
	
	invert uut(a, b, s);
	
	initial begin
		a = 0;
		b = 0;
		#100 a = 16'b0000000000000000; b=16'b000000000000001;
		#10 a = 16'b1111111111111111; b=16'b000000000000001;
	end

endmodule
