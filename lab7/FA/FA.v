module FA (x, y, Cin, Cout, s);
input x, y, Cin;
output Cout, s;
assign s = ~x & (y ^ Cin) | x & ~y & ~Cin | x & y & Cin;
assign Cout = x & y | x & ~y & Cin | ~x & y & Cin | x & ~y & Cin;
endmodule