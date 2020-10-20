module PrimeCircuit(p, w, x, y, z);
input w, x, y, z;
output p;

assign p = (x&~y&z)|(~w&x&z)|(~w&~x&y)|(~x&y&z);

endmodule