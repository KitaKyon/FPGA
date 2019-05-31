`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:45:08 01/16/2014 
// Design Name: 
// Module Name:    seg7en 
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
module seg7en(
	OE_DIGIT,
	SEGEN_O   
	);

	input   [1:0]   OE_DIGIT;
	output  [3:0]   SEGEN_O;
	
	reg     [3:0]   SEGEN;

	always @(OE_DIGIT)

   begin
		case (OE_DIGIT)
			2'b00   : SEGEN <= 4'b0001;
			2'b01   : SEGEN <= 4'b0010;
			2'b10   : SEGEN <= 4'b0100;

         default : SEGEN <= 4'b1000;

         endcase

     end
	assign SEGEN_O = ~SEGEN;

endmodule
