`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:42:59 05/07/2018 
// Design Name: 
// Module Name:    adder4 
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
module adder4(
	 input [3:0] in_data1,
    input [3:0] in_data2,
    output [3:0] out_data,
    output cy
    );
	 
	 wire [4:0]rslt;
	 
	 assign rslt = in_data1+in_data2,
			  cy = rslt[4],
			  out_data = rslt[3:0];

endmodule

