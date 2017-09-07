`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:       Paul Beet
// 
// Create Date:    17:23:39 09/06/2017 
// Design Name: 
// Module Name:    seg_test 
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
module seg_test(
input CLK,
output [7:0] SEG,
output [3:0] DIGIT
//,output LED1,LED2,LED3,LED4
    );


assign DIGIT = 4'b1110;
reg [3:0] D;


svn_seg testmod(
		.CLK(CLK), 
		.SEG(SEG), 
		.D(D)
		);


always @(posedge CLK)
begin
		D=D+2;
end 

 
 
 


		
//assign LED1 = D[3];
//assign LED2 = D[2];
//assign LED3 = D[1];
//assign LED4 = D[0];


endmodule

 