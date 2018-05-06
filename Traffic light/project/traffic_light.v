`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:25:16 04/20/2018 
// Design Name: 
// Module Name:    traffic_light 
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
//module traffic_light(fast_clock, slow_clock, main, side);
 module traffic_light(fast_clock, main, side, led_clock, walk_button, side_sensor, walk_light, reset, reset_apply);
	input wire fast_clock;
	wire slow_clock;
	reg [4:0] counter = 5'b00001; // count upto 32 second.
	reg [1:0] walk_counter = 2'b0;
	output reg [2:0] main; // Main St. traffic lights
	output reg [2:0] side; // Side St. traffic lights
	//wire slow_clock;
	clock traffic_clk(.f_clock(fast_clock), .s_clock(slow_clock));
	output led_clock;
	output reg walk_light;
	assign led_clock = slow_clock;
	input walk_button;
	input side_sensor;
	reg walk_flag = 1'b0;
	reg walk_flag_apply = 1'b0;
	reg sensor_flag = 1'b0;
	reg sensor_flag_apply = 1'b0;
	reg i_flag = 1'b1;
	input reset;
	input reset_apply;
	
	
	always @(posedge slow_clock) begin
		if (reset == 1) begin
			counter = 0;
		end
		if (walk_flag_apply == 1) begin
			walk_flag = 1;
		end
		if (walk_flag_apply == 0) begin
			walk_flag = 0;
		end
		if (sensor_flag_apply == 1) begin
			sensor_flag = 1;
		end
		
		if (sensor_flag_apply == 0) begin
			sensor_flag = 0;
		end
		
		if (counter <= 12) begin  
			main = 3'b100;
			side = 3'b001;
			walk_light = 1'b0;
		end
		
		else if ((counter > 12) && (counter <= 14)) begin
			main = 3'b010;
			side = 3'b001;
			walk_light = 1'b0;			
		end// finished for all initial states.
		
		else if (counter > 14)begin
			if (walk_flag == 0 && sensor_flag == 0) begin
					if (main == 3'b100 && side == 3'b001 && walk_light == 1'b0) begin // main=green, side=red, walk=red
						main = 3'b100;
						side = 3'b001;
						walk_light = 1'b0;
						if (counter == 23) begin
							main = 3'b010;
							side = 3'b001;
							walk_light = 1'b0;
							counter = 14;//(counter - 4'b1001);// 23-9 =14//5'b01110; //14;
						end
					end
					
					else if (main == 3'b001 && side == 3'b100 && walk_light == 1'b0) begin // main=red, side=green, walk=red
						main = 3'b001;
						side = 3'b100;
						walk_light = 1'b0;
						if (counter == 20) begin
							main = 3'b001;
							side = 3'b010;
							walk_light = 1'b0;
							counter = 14;//(counter - 3'b111);//21-7=14//14
						end
					end
					
					//if (main == 3'b001 && side == 3'b001 && walk_light == 1'b1) begin // main=red, side=red, walk=green
					//if (main == 3'b001 && side == 3'b001 && walk_light == 1'b1) begin // main=red, side=red, walk=green
					//end
					
					else if (main == 3'b010 && side == 3'b001 && walk_light == 1'b0 && i_flag == 1) begin // main=yellow, side=red, walk=red
						main = 3'b001;
						side = 3'b100;
						walk_light = 1'b0;
						counter = 14;//(counter - 1'b1);//5'b01110; //14
						i_flag = 0;
					end
					
					else if (main == 3'b010 && side == 3'b001 && walk_light == 1'b0 && i_flag == 0) begin // main=yellow, side=red, walk=red
						main = 3'b010;
						side = 3'b001;
						walk_light = 1'b0;
						if (counter == 16) begin
							main = 3'b001;
							side = 3'b100;
							walk_light = 1'b0;
							counter = 14;//(counter - 2'b11);//5'b01110; //14;
						end
					end
					
					else if (main == 3'b001 && side == 3'b010 && walk_light == 1'b0) begin // main=red, side=yellow, walk=red
						main = 3'b001; // 001
						side = 3'b010; // 010
						walk_light = 1'b0;
						if (counter == 16) begin
							main = 3'b100;
							side = 3'b001;
							walk_light = 1'b0;
							counter = 14;//(counter - 2'b11);5'b01110; //14;
						end
					end
			end
			
			else if (walk_flag == 0 && sensor_flag == 1) begin
					if (main == 3'b100 && side == 3'b001 && walk_light == 1'b0) begin // main=green, side=red, walk=red 
						main = 3'b100;
						side = 3'b001;
						walk_light = 1'b0;
						if (counter == 20) begin
							main = 3'b010;
							side = 3'b001;
							walk_light = 1'b0;
							counter = 14;//5'b01110; //14
						end
					end
					
					else if (main == 3'b001 && side == 3'b100 && walk_light == 1'b0) begin // main=red, side=green, walk=red 
						main = 3'b001;
						side = 3'b100;
						walk_light = 1'b0;
						if (counter == 23) begin
							main = 3'b001;
							side = 3'b010;
							walk_light = 1'b0;
							sensor_flag = 1'b0;
							counter = 14;
						end
					end
					
					//if (main == 3'b001 && side == 3'b001 && walk_light == 1'b1) begin // main=red, side=red, walk=green 
					//end
					
					else if (main == 3'b010 && side == 3'b001 && walk_light == 1'b0) begin // main=yellow, side=red, walk=red
						main = 3'b010;
						side = 3'b001;
						walk_light = 1'b0;
						if (counter == 16) begin
							main = 3'b001;
							side = 3'b100;
							walk_light = 1'b0;
							counter = 14;
						end
					end
					
					else if (main == 3'b001 && side == 3'b010 && walk_light == 1'b0) begin // main=red, side=yellow, walk=red
						main = 3'b001;
						side = 3'b010;
						walk_light = 1'b0;
						if (counter == 16) begin
							main = 3'b100;
							side = 3'b001;
							walk_light = 1'b0;
							counter = 14;
						end
					end
				end
			
			else if (walk_flag == 1) begin
					if (main == 3'b100 && side == 3'b001 && walk_light == 1'b0) begin // main=green, side=red, walk=red 
						main = 3'b100;
						side = 3'b001;
						walk_light = 1'b0;
						if (counter == 20) begin
							main = 3'b010;
							side = 3'b001;
							walk_light = 1'b0;
							counter = 14;
						end
					end
					
					else if (main == 3'b001 && side == 3'b100 && walk_light == 1'b0) begin // main=red, side=green, walk=red 
						main = 3'b001;
						side = 3'b100;
						walk_light = 1'b0;
						if (counter == 20) begin
							main = 3'b001;
							side = 3'b010;
							walk_light = 1'b0;
							counter = 14;
						end
					end
					
					else if (main == 3'b001 && side == 3'b001 && walk_light == 1'b1) begin // main=red, side=red, walk=green 
						main = 3'b001;
						side = 3'b001;
						walk_light = 1'b1;
						if (counter == 17) begin
							main = 3'b001;
							side = 3'b100;
							walk_light = 1'b0;
							walk_flag = 0;
							counter = 14;
						end
					end
					
					else if (main == 3'b010 && side == 3'b001 && walk_light == 1'b0) begin // main=yellow, side=red, walk=red
						main = 3'b010;
						side = 3'b001;
						walk_light = 1'b0;
						if (counter == 16) begin
							main = 3'b001;
							side = 3'b001;
							walk_light = 1'b1;
							counter = 14;
						end
					end
					
					else if (main == 3'b001 && side == 3'b010 && walk_light == 1'b0) begin // main=red, side=yellow, walk=red
						main = 3'b001;
						side = 3'b010;
						walk_light = 1'b0;
						if (counter == 16) begin
							main = 3'b100;
							side = 3'b001;
							walk_light = 1'b0;
							counter = 14;
						end
					end
				end
		end
		counter = (counter + 1'b1);
	end
	
	
	always @(posedge fast_clock) begin
		if (walk_button == 1) begin
			walk_flag_apply = 1;
		end
		if (side_sensor == 1) begin
			sensor_flag_apply = 1;
		end
		if (side_sensor == 0) begin
			sensor_flag_apply = 0;
		end
		if (reset_apply == 1) begin
			walk_flag_apply = 0;
		end
	end
	
endmodule


module clock(f_clock, s_clock);
	input f_clock;
	output reg s_clock = 1'b0;
	reg [25:0] counter = 26'b0;
	
	always @(posedge f_clock) begin
		if (counter == 26'b10001111000011010001100000)begin 
			s_clock <= ~s_clock;
			counter <=  26'b0;
		end
		counter <= (counter + 1);
	end
endmodule
