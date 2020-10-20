module lab3step3(F,C,G,W,A);
	input F, C, W, G;
	output A;
	
	assign A = ((~F&G&W)|(~F&C&G)|(F&~C&~G)|(F&~G&~W));
endmodule
