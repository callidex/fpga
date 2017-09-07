////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: seg_test_synthesis.v
// /___/   /\     Timestamp: Thu Sep 07 11:25:41 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim seg_test.ngc seg_test_synthesis.v 
// Device	: xc6slx9-3-tqg144
// Input file	: seg_test.ngc
// Output file	: D:\GitHub\FPGA\netgen\synthesis\seg_test_synthesis.v
// # of Modules	: 1
// Design Name	: seg_test
// Xilinx        : D:\XilinxISE\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module seg_test (
  CLK, SEG, DIGIT
);
  input CLK;
  output [7 : 0] SEG;
  output [3 : 0] DIGIT;
  wire DIGIT_2_OBUF_0;
  wire DIGIT_0_OBUF_1;
  VCC   XST_VCC (
    .P(DIGIT_2_OBUF_0)
  );
  GND   XST_GND (
    .G(DIGIT_0_OBUF_1)
  );
  OBUF   SEG_7_OBUF (
    .I(DIGIT_0_OBUF_1),
    .O(SEG[7])
  );
  OBUF   SEG_6_OBUF (
    .I(DIGIT_0_OBUF_1),
    .O(SEG[6])
  );
  OBUF   SEG_5_OBUF (
    .I(DIGIT_0_OBUF_1),
    .O(SEG[5])
  );
  OBUF   SEG_4_OBUF (
    .I(DIGIT_0_OBUF_1),
    .O(SEG[4])
  );
  OBUF   SEG_3_OBUF (
    .I(DIGIT_0_OBUF_1),
    .O(SEG[3])
  );
  OBUF   SEG_2_OBUF (
    .I(DIGIT_0_OBUF_1),
    .O(SEG[2])
  );
  OBUF   SEG_1_OBUF (
    .I(DIGIT_2_OBUF_0),
    .O(SEG[1])
  );
  OBUF   SEG_0_OBUF (
    .I(DIGIT_2_OBUF_0),
    .O(SEG[0])
  );
  OBUF   DIGIT_3_OBUF (
    .I(DIGIT_2_OBUF_0),
    .O(DIGIT[3])
  );
  OBUF   DIGIT_2_OBUF (
    .I(DIGIT_2_OBUF_0),
    .O(DIGIT[2])
  );
  OBUF   DIGIT_1_OBUF (
    .I(DIGIT_0_OBUF_1),
    .O(DIGIT[1])
  );
  OBUF   DIGIT_0_OBUF (
    .I(DIGIT_0_OBUF_1),
    .O(DIGIT[0])
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

