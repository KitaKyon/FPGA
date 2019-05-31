`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:41:26 01/16/2014 
// Design Name: 
// Module Name:    pulse1sec 
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
module pulse1sec(
	clk,
	reset,
	start,
	sec1,
	sec1_counter 
  );
  
	input	clk;
	input	reset;
	input	start;
	output reg	sec1;
	output reg	[31:0]	sec1_counter;
	
	//10M debug
	//parameter	[31:0]	param_1second = 32'h989680;
	
	//50M
	parameter	[31:0]	param_1second = 32'h2FAF080;


	always @(posedge clk)
		begin
		if (reset) begin
			sec1_counter <= 32'b0;
			sec1         <= 1'b0;
			end else begin
				if (start) begin
					if (sec1_counter == param_1second) begin
						sec1_counter <= 32'b0;
						sec1         <= 1'b1;
					end else begin
						sec1_counter <= sec1_counter + 1;
						sec1         <= 1'b0;
					end
				end
			end
		end

endmodule
