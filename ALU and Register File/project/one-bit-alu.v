module ALU1 (a, b, CarryIn, CarryOut, Binvert, Operation, Result);

input a;
input b;
input Binvert;
input [1:0] Operation;
input CarryIn;
output reg CarryOut;
output reg Result;

wire clock;
wire a;
wire b;
wire CarryIn;
wire Binvert;

reg bVal;

always @ (*)
	begin
		if (Binvert == 1'b1) begin
			bVal = !b;
		end
		else begin
			bVal = b;
		end
		
		// And
		if (Operation == 2'b00) begin
			Result = a & bVal;
		end
		
		// Or
		else if (Operation == 2'b01) begin
			Result = a | bVal;
		end
		
		// Add
		else if (Operation == 2'b10) begin
			Result = a ^ bVal ^ CarryIn;
			CarryOut = ((a&bVal) | (bVal&CarryIn) | (a & CarryIn));
		end
	end

endmodule