module lab3step1(C,G,W, A);
	input C, G, W;
	output A;
	
	not(J,W);
	not(K,G);
	not(L,C);
	
	and(X,C,K,W);
	and(Y,J,G,L);
	nor(A,X,Y);
endmodule
