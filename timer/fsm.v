`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:29:37 01/16/2014 
// Design Name: 
// Module Name:    fsm 
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
module fsm(
	clk,
	reset,
	start_i,
	tim_zero,
	start_o,
	timeout
	 );
	
	input           clk;
	input           reset;
	input           start_i;
	input           tim_zero;

	output reg      start_o;
	output reg      timeout;

	always @( posedge clk )
		begin
			if (reset == 1'b1) begin
				start_o <= 1'b0;
				timeout <= 1'b0;
			end else begin
				if (start_i == 1'b1) begin
					start_o <= 1'b1;
				end else begin
					if (tim_zero == 1'b1) begin
						timeout <= 1'b1;

             end
			end
		end
	end
	 
endmodule
