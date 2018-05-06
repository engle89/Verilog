`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:27:41 04/04/2018 
// Design Name: 
// Module Name:    counter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module counter (
clock , // Clock input of the design
reset , // active high, synchronous Reset input
enable , // Active high enable signal for counter
counter_out // 4 bit vector output of the counter
); // End of port list
//-------------IO Ports-----------------------------
input clock ;
input reset ;
input enable ;

output [3:0] counter_out ;
//-------------Input ports Data Type-------------------
// By rule all the input ports should be wires
wire clock ;
wire reset ;
wire enable ;
//-------------Output Ports Data Type------------------
// Output port can be a storage element (reg) or a wire
reg [3:0] counter_out ;
reg [25:0] clock_counter;

// We trigger the below block
// with respect to positive edge of the clock.
always @ (posedge clock)
begin
	if (reset == 1'b1)
		begin
			counter_out <= #1 4'b0000;
			clock_counter <= #1 26'b00000000000000000000000000;
		end
	else 
		begin
			clock_counter <= #1 clock_counter + 1;
			if (clock_counter == 26'b00000000000000000000000000)
				begin
					counter_out <= #1 counter_out + 1;
				end
		end
end
endmodule // End of Module counter
