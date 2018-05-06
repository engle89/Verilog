module asynch_mux(in_0, in_1, sel, out);

input in_0, in_1, sel;
output mux_out;
reg mux_out;

always @ (sel or in_0 or in_1)
begin
if (sel == 1'b0) begin
out <= in0;
end else begin
out <= in1;
end
end

endmodule
