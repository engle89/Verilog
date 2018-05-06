`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:04:40 04/26/2018 
// Design Name: 
// Module Name:    traffic_light_tb 
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
module traffic_light_tb();

	reg fast_clock, slow_clock, walk_button, side_sensor;
	wire [4:0] counter = 5'b0;
	wire [2:0] main;
	wire [2:0] side;

initial begin
 $display ("time\t clk reset enable counter");
 $monitor ("%g\t %b %b %b %b",
 $time, clock, reset, enable, counter_out);
 counter = 0; // initial value of clock
 main = 3'b100; // initial value of reset
 side = 3'b001; // initial value of enable
 #5 reset = 1; // Assert the reset
 #10 reset = 0; // De-assert the reset
 #10 enable = 1; // Assert enable
 #1000000000 enable = 0; // De-assert enable
 #5 $finish; // Terminate simulation
end

traffic_light U_traffic_light(
fast_clock, 
main, 
side, 
led_clock, 
walk_button, 
side_sensor, 
walk_light, 
reset
);

endmodule
