module mux4to1(input w3, input w2, input w1, input w0, input s1, input s0, output reg f);
always @ (w0 | w1 | w2 | w3 | s1 | s0)
begin
case({s1, s0})
2'b00:
	f = w0;
2'b01:
	f = w1;
2'b10: 
	f = w2;
2'b11:
	f = w3;
endcase
end
endmodule