module asynch_mux2(in_0, in_1, in_2, sel, mux_out);

input in_0, in_1, in_2;
input [1:0] sel;
output mux_out;
reg mux_out;

always @ (sel or in_0 or in_1 or in_2)
begin
if (sel == 2'b00) begin
out <= in0;
end 
else if (sel == 2'b01) begin
out <= in1;
end
else if (sel == 2'b10) begin
out <= in2;
end
else begin
end
end

endmodule