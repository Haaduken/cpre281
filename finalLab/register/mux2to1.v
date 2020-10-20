module mux2to1(input w1, input w0, input s0, output reg f);
always @ (w0 | w1 | s0)
begin
case({s0})
1'b0:
	f = w0;
1'b1:
	f = w1;
endcase
end
endmodule