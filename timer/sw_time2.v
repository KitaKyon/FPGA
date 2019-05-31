`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:10:46 01/22/2014 
// Design Name: 
// Module Name:    sw_time2 
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
module sw_time2(
CLK_I,
	SW_RESET_I,
	TIMEOUT,
	TIM_1,
	borrow_1,
	pulse_1sec,
	TIM_2,
	borrow_2,
	TIM_3,
	borrow_3,
    );
	 
	input	CLK_I;
	input	SW_RESET_I;
	
	output reg	[3:0]   TIM_1;
	output reg	[3:0]   TIM_2;
	output reg	[3:0]   TIM_3;
   output borrow_1;
	output borrow_2;
	output borrow_3;
	inout	 pulse_1sec;
	inout TIMEOUT;

down_counter #0 I_digit1(
		.clk(CLK_I),
		.reset(SW_RESET_I),
		.enable1(1'b1),
		.enable2(pulse_1sec),
		.timeout(TIMEOUT),
		.out(TIM_1),
		.borrow(borrow_1)
	);



	down_counter #2 I_digit10(
		.clk(CLK_I),
		.reset(SW_RESET_I),
		.enable1(borrow_1),
		.enable2(pulse_1sec),
		.timeout(TIMEOUT),
		.out(TIM_2),
		.borrow(borrow_2)
	);

	down_counter #0 I_digit100(
		.clk(CLK_I),
		.reset(SW_RESET_I),
		.enable1(borrow_2),
		.enable2(pulse_1sec),
		.timeout(TIMEOUT),
		.out(TIM_3),
		.borrow(borrow_3)
	);

endmodule
