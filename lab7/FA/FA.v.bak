module lab7 (Cin, x, y, s, Cout);
input Cin, y, x;
output Cout, s;
assign s = ~x & (y ^ Cin) | x & ~y & ~Cin | x & y & Cin;
assign Cout = x & y | x & ~y & Cin | ~x & y & Cin | x & ~y & Cin;
endmodule