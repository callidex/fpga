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
output [3:0] DIGIT,
output LED1,LED2,LED3,LED4
    );


assign DIGIT = 4'b1100;
reg [3:0] D;

always @(posedge CLK)
begin
		D<=D+1;
end 
svn_seg testmod(
		.CLK(CLK), 
		.SEG(SEG), 
		.D(D)
		);

I2CslaveWith8bitsIO slave(
		.SDA(SDA) , 
		.SCL(SCL), 
		.IOout(IOPORT)
		);
		
assign LED1 = 1;
assign LED2 = 0;
assign LED3 = 1;
assign LED4 = 0;


endmodule

