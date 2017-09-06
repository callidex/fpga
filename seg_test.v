`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
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
    );


assign DIGIT = 4'b1100;
assign D = 4'b0000;
svn_seg testmod(.CLK(CLK), .SEG(SEG), .D(D));

I2Cs;aveWith8bitsIO slave(.SDA(  , SCL, IOout);
assign LED1 = 1;
assign LED2 = 0;
assign LED3 = 1;
assign LED4 = 0;
endmodule

