`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:33:07 01/16/2014 
// Design Name: 
// Module Name:    down_counter 
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
module down_counter(
    clk,
    reset,
    enable1,
	 enable2,
    timeout,
    out,
	 borrow    );
    parameter	init = 0;

    input	clk;
    input   reset;
    input   enable1, enable2;
    input   timeout;

    output reg	[3:0]   out;

    output borrow;


    always @(posedge clk) begin
		if (reset == 1'b1) begin
			out    <= init;
		end else begin
			if (enable2 == 1'b1) begin
				if (timeout == 1'b1) begin
					out <= 4'b1111;
				end else begin
					if (enable1 == 1'b1) begin
						if (out == 0) begin
							out <= 9;
						end else begin
							out <= out - 1;

                  end
					end
				end
			end
		end
	end

	assign borrow = (enable1 == 1'b1) && (out == 0);

endmodule
