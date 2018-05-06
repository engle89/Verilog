module ALU1 (a, b,CarryIn, Carryout, Binvert, Operation, Output);

input a;
input b;
input Binvert;
input Opeartion;
input CarryIn;
output Carryout;
output Output;

wire a;
wire b;
wire CarryIn;
reg Binvert;
reg[1:0] Opeartion;
reg CarryOut;
reg Output;

always @ (a or b or Binvert or Operation or CarryIn)
	begin
		if (Binvert == 1'b1) begin
			b = !b;
		end
		else begin
		end
		
		if (Operation == 2'b00) begin
			Output = a & b;
		end
		else if (Operation == 2'b01) begin
			Output = a | b;
		end
		else if (Operation == 2'b10) begin
			Output = a ^ b ^ CarryIn;
			CarryOut = ((a&b) | (b&CarryIn) | (a & CarryIn));
		end
	end

endmodule