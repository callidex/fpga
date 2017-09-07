`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:  Paul Beet
// 
// Create Date:    17:18:37 09/06/2017 
// Design Name: 
// Module Name:    svn_seg 
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
module svn_seg(
    input CLK,
    input [3:0] D,
    output reg [7:0] SEG
    );

always @(posedge CLK)
begin
case (D)
    4'd0: SEG <=     8'h3F;
	 4'd1: SEG <=     8'h06;
	 4'd2: SEG <=     8'h5B;
	 4'd3: SEG <=     8'h4F;
	 4'd4: SEG <=     8'h66;
	 4'd5: SEG <=     8'h6D;
	 4'd6: SEG <=     8'h7D;
	 4'd7: SEG <=     8'h07;
	 4'd8: SEG <=     8'h7F;
	 4'd9: SEG <=     8'h7B;
	 default : SEG <= 8'b01111111;
endcase
end


endmodule
