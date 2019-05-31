`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:44:20 01/16/2014 
// Design Name: 
// Module Name:    seg7out 
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
module seg7out(
	OE_DIGIT,
	TIM_1,
	TIM_2,
	TIM_3,
	SEG_O
	);
 
	input   [1:0]   OE_DIGIT;
	input   [3:0]   TIM_1, TIM_2, TIM_3;

   output  [7:0]   SEG_O;

	reg     [3:0]   data;
	wire    [7:0]   seg7out;

	//always @(OE_DIGIT)
	always @*
		begin
			case (OE_DIGIT)
			2'b00   : data <= TIM_1;
			2'b01   : data <= TIM_2;
			2'b10   : data <= TIM_3;

         default : data <= 4'b1111;

         endcase

      end
	
	seg7enc I_seg7enc(
		.hex4_in(data),
		.seg7_out(seg7out)
			);

	assign SEG_O = ~seg7out;

endmodule
