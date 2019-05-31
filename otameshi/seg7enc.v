`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:42:54 01/16/2014 
// Design Name: 
// Module Name:    seg7enc 
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
module seg7enc(
   hex4_in,
	seg7_out );

	 input	[3:0]   hex4_in;

    output reg      [7:0]   seg7_out;

	always @*
	begin
		case (hex4_in)
			4'b0000 : seg7_out <= 8'b00111111;
			4'b0001 : seg7_out <= 8'b00000110;
			4'b0010 : seg7_out <= 8'b01011011;
			4'b0011 : seg7_out <= 8'b01001111;
			4'b0100 : seg7_out <= 8'b01100110;
			4'b0101 : seg7_out <= 8'b01101101;
			4'b0110 : seg7_out <= 8'b01111101;
			4'b0111 : seg7_out <= 8'b00100111;
			4'b1000 : seg7_out <= 8'b01111111;
			4'b1001 : seg7_out <= 8'b01101111;
			default : seg7_out <= 8'b00000000;

       endcase
	end
endmodule
