`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 	Paul Beet	
// 
// Create Date:    14:17:43 09/06/2017 
// Design Name: 
// Module Name:    vlog_mod1 
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
module vlog_mod1(
   input A,
   input B,
   input SEL,
   output req Q
   );
		 
	always @(A or B or SEL)
	begin
		if(SEL)
			Q = A;
		else
			Q = B;
	end
endmodule

module counter(  
	input Clock, 
	output reg [3:0] Q 
	);

always @(posedge Clock)
	begin
		Q <= Q + 1;
	end
endmodule;

