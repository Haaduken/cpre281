// WARNING: Do NOT edit the input and output ports in this file in a text
// editor if you plan to continue editing the block that represents it in
// the Block Editor! File corruption is VERY likely to occur.

// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions
// and other software and tools, and its AMPP partner logic
// functions, and any output files from any of the foregoing
// (including device programming or simulation files), and any
// associated documentation or information are expressly subject
// to the terms and conditions of the Intel Program License
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.


// Generated by Quartus Prime Version 18.1 (Build Build 625 09/12/2018)
// Created on Fri Oct 18 11:37:10 2019

//  Module Declaration
module bcd_converter
(
// {{ALTERA_ARGS_BEGIN}} DO NOT REMOVE THIS LINE!
S0, S1, S2, S3, C0, N2X3, N2X2, N2X1, N2X0, N1X3, N1X2, N1X1, N1X0
// {{ALTERA_ARGS_END}} DO NOT REMOVE THIS LINE!
);
// Port Declaration

// {{ALTERA_IO_BEGIN}} DO NOT REMOVE THIS LINE!
input S0;
input S1;
input S2;
input S3;
input C0;
output N2X3;
output N2X2;
output N2X1;
output N2X0;
output N1X3;
output N1X2;
output N1X1;
output N1X0;
// {{ALTERA_IO_END}} DO NOT REMOVE THIS LINE!
assign N2X3 = 0;
assign N2X2 = 0;
assign N2X1 = C0 & S3 | C0 & S2;
assign N2X0 = ~C0 & S3 & S2 | S3 & S1 & ~C0 | C0 & ~S3 & ~S2 | S3 & S2 & S1;
assign N1X3 = ~C0 & S3 &~S2 & ~S1 | C0 & ~S3 & ~S2 & S1 | C0 & S3 & S2 & S1;
assign N1X2 = ~C0 & ~S3 & S2 | ~C0 & S2 & S1 | C0 & ~S2 & ~S1 | C0 & S3 & ~S2;
assign N1X1 = ~C0 & S3 & S2 & ~S1 | ~~C0 & ~S3 & s1 | C0 & ~S3 & ~S2 & ~S1 | C0 & S3 & ~S2 & S1 | ~S3 & S2 & S1;
assign N1X0 = S0;


endmodule
