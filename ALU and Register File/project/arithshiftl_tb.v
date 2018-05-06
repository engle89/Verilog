`timescale 1ns / 1ps

module arithshiftl_tb();
	
	wire [15:0] s;
	wire overflow; //output

	reg [15:0] a,b; //input
	
	arithshiftl uut(a, b, s, overflow);
	
	initial begin
		a = 0;
		b = 0;
		#100 a = 16'b0000000000000001; b=16'b000000000000001;
		#10 a = 16'b0000000000000001; b=16'b000000000000010;
		#10 a = 16'b1000000000000000; b=16'b000000000000001;
	end

endmodule
