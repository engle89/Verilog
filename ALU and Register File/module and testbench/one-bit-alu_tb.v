module main;
reg a, b, CarryIn, Binvert;
wire sum, CarryOut, Result;
reg[1:0] Operation;

ALU1 test(a, b, CarryIn, CarryOut, Binvert, Operation, Result);

always @ (*) begin
	$display("time=%d:%b+%b = %b, carry = %b \n", $time, a, b, CarryIn, Result, CarryOut);
end
	
initial begin
	a = 0;
	b = 0;
	CarryIn = 0;
	
	// Add
	Operation = 2'b10; 
	#5 a = 0; b = 0; CarryIn = 0; // result = 0
	#5 a = 0; b = 1; CarryIn = 0; // result = 1
	#5 a = 1; b = 0; CarryIn = 1; // result = 0
	#5 a = 1; b = 1; CarryIn = 1; // result = 1
	
	// Subtract
	#5 Binvert = 1; 
	a = 0; b = 1; CarryIn = 0; // result = 0
	#5 a = 0; b = 0; CarryIn = 0; // result = 1
	#5 a = 1; b = 1; CarryIn = 1; // result = 0
	#5 a = 1; b = 0; CarryIn = 1; // result = 1
	
	// And
	#5 Operation = 2'b00;
	Binvert = 0;
	a = 0; b = 0;
	#5 a = 0; b = 1;
	#5 a = 1; b = 0;
	#5 a = 1; b = 1;
	
	// Or
	#5 Operation = 2'b01;
	Binvert = 0;
	a = 0; b = 0;
	#5 a = 0; b = 1;
	#5 a = 1; b = 0;
	#5 a = 1; b = 1;
	
	#5 $finish;
end
	
endmodule