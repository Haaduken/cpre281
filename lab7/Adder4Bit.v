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

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"
// CREATED		"Fri Oct 25 12:25:14 2019"

module Adder4Bit(
	x3,
	y3,
	x2,
	y2,
	x1,
	y1,
	x0,
	y0,
	Cin,
	Cout,
	s3,
	s2,
	s1,
	s0,
	overflow
);


input wire	x3;
input wire	y3;
input wire	x2;
input wire	y2;
input wire	x1;
input wire	y1;
input wire	x0;
input wire	y0;
input wire	Cin;
output wire	Cout;
output wire	s3;
output wire	s2;
output wire	s1;
output wire	s0;
output wire	overflow;

wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;

assign	Cout = SYNTHESIZED_WIRE_3;




FA	b2v_inst(
	.x(x3),
	.y(y3),
	.Cin(SYNTHESIZED_WIRE_5),
	.Cout(SYNTHESIZED_WIRE_3),
	.s(s3));


FA	b2v_inst1(
	.x(x2),
	.y(y2),
	.Cin(SYNTHESIZED_WIRE_1),
	.Cout(SYNTHESIZED_WIRE_5),
	.s(s2));


FA	b2v_inst2(
	.x(x1),
	.y(y1),
	.Cin(SYNTHESIZED_WIRE_2),
	.Cout(SYNTHESIZED_WIRE_1),
	.s(s1));


FA	b2v_inst3(
	.x(x0),
	.y(y0),
	.Cin(Cin),
	.Cout(SYNTHESIZED_WIRE_2),
	.s(s0));

assign	overflow = SYNTHESIZED_WIRE_3 ^ SYNTHESIZED_WIRE_5;


endmodule
