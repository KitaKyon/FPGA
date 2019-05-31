`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:35:03 01/16/2014 
// Design Name: 
// Module Name:    oe_gen 
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
module oe_gen(
	clk,
	OE_DIGIT
	);
	input	clk;

	output	[1:0]	OE_DIGIT;

	reg      [19:0]  OEN_counter;
	//reg      [17:0]  OEN_counter;

	always @(posedge clk)
		begin
			OEN_counter <= OEN_counter + 1;
		end
	
	//assign OE_DIGIT = OEN_counter[19:18];
	assign OE_DIGIT = OEN_counter[17:16];
	
endmodule
