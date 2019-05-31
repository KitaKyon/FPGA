`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:26:08 01/16/2014 
// Design Name: 
// Module Name:    timer 
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
module timer(
	CLK_I,
	SW_START_I,
	SW_RESET_I,
	SEG_O,
	DPOEN_O,
	LED1_O,
	LED2_O,
	LED3_O,
	LED4_O,
    );
	
	input	CLK_I;
	input	SW_START_I;
	input	SW_RESET_I;

	output	[7:0]		SEG_O;
	output	[3:0]		DPOEN_O;
	output				LED1_O;
	output				LED2_O;
	output				LED3_O;
	output				LED4_O;

	wire	[31:0]	sec1_counter;
	wire	[3:0]		TIM_3, TIM_2, TIM_1;
	wire				TIM_ZERO;
	wire				pulse_1sec;
	wire	[1:0]		OE_DIGIT;
	wire				TIM_START, TIMEOUT;
	wire				borrow_1, borrow_2, borrow_3;
	

	fsm I_fsm(
		.clk(CLK_I),
		.reset(SW_RESET_I),
		.start_i(SW_START_I),
		.tim_zero(TIM_ZERO),
		.start_o(TIM_START),
		.timeout(TIMEOUT)
	);

	assign TIM_ZERO = (TIM_1 == 0) && (TIM_2 == 0) && (TIM_3 == 0);

	pulse1sec I_pulse1sec(
		.clk(CLK_I),
		.reset(SW_RESET_I),
		.start(TIM_START),
		.sec1(pulse_1sec),
		.sec1_counter(sec1_counter)
	);
	
		down_counter #0 I_digit1(
		.clk(CLK_I),
		.reset(SW_RESET_I),
		.enable1(1'b1),
		.enable2(pulse_1sec),
		.timeout(TIMEOUT),
		.out(TIM_1),
		.borrow(borrow_1)
	);



	down_counter #1 I_digit10(
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

	
	oe_gen I_oe_gen(
		.clk(CLK_I),
		.OE_DIGIT(OE_DIGIT)
	);

	seg7out I_seg7out(
		.OE_DIGIT(OE_DIGIT),
		.TIM_1(TIM_1),
		.TIM_2(TIM_2),
		.TIM_3(TIM_3),
		.SEG_O(SEG_O)
	);

	seg7en I_seg7en(
		.OE_DIGIT(OE_DIGIT),
		.SEGEN_O(DPOEN_O)
	);

	assign LED1_O = (TIMEOUT == 1'b0) ? sec1_counter[21] : sec1_counter[24];
	assign LED2_O = (TIMEOUT == 1'b0) ? sec1_counter[22] : sec1_counter[24];
	assign LED3_O = (TIMEOUT == 1'b0) ? sec1_counter[23] : sec1_counter[24];
	assign LED4_O = (TIMEOUT == 1'b0) ? sec1_counter[24] : sec1_counter[24];


endmodule
