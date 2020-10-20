module step2(a, b, c, d, e, f, g, clk);
input clk;
output reg a, b, c, d, e, f, g;

always @ (clk)
begin
case ({clk})
3'b000: {a,b,c,d,e,f,g} = 7'b0000001;//0
3'b001: {a,b,c,d,e,f,g} = 7'b0000001;//1
3'b010: {a,b,c,d,e,f,g} = 7'b0010010;//2
3'b011: {a,b,c,d,e,f,g} = 7'b0010010;//3

3'b100: {a,b,c,d,e,f,g} = 7'b1001100;//4
3'b101: {a,b,c,d,e,f,g} = 7'b0100100;//5
3'b110: {a,b,c,d,e,f,g} = 7'b0100100;//6
3'b111: {a,b,c,d,e,f,g} = 7'b0100100;//7
endcase 
end
endmodule