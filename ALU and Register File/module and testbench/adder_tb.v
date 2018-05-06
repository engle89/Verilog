`timescale 1ns / 1ps
module adder_tb();

	wire [15:0] sum;//output
	wire cout;//output

	reg [15:0] a,b;//input
	reg cin;//input
	 
	adder uut(a,b,cin,sum,cout);
	 
	initial begin
		a=0; b=0; cin=0;
		#100 a= 16'b0000000000000000; b=16'b000000000000001; cin=1'b0;
		#10 a= 16'b0000000000011111; b=16'b000000000001100; cin=1'b0;
		#10 a= 16'b1100011000011111; b=16'b000000110001100; cin=1'b1;
		#10 a= 16'b1111111111111111; b=16'b000000000000000; cin=1'b1;
		#10 a= 16'b1111111111111111; b=16'b000000000000001; cin=1'b0;
	end

endmodule
