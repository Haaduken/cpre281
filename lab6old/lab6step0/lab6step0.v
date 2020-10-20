module lab6step0(S0, S1, S2, S3, C0, N2X3, N2X2, N2X1, N2X0, N1X3, N1X2, N1X1, N1X0);

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

	assign N2X3 = 0;
	assign N2X2 = 0;
	assign N2X1 = C0 &S3 | C0 & S2;
	assign N2X0 = ~C0 & S3 & S2 | ~C0 & S3 & S1 | C0 & ~S3 & ~S2 | S3 & S2 & S1;
	assign N1X3 = ~C0 & S3 & ~S2 & ~S1 | C0 & ~S3 & ~S2 & S1 | C0 & S3 & S2 & S1;
	assign N1X2 = ~C0 & ~S3 & S2 | ~C0 & S2 & S1 | C0 & S2 & ~S1 | C0 & S3 & ~S2;
	assign N1X1 = ~C0 & S3 & S2 & ~S1 & ~C0 & ~S3 & S1 | C0 & ~S3 & ~S2 & ~S1 | C0 & S3 & ~S2 & S1 | ~S3 & S2 & S1;
	assign N1X0 = S0;


endmodule
