module carry_generate_2bits (p, g, ci, c);

input [1:0] p, g;
input ci;
output [1:0] c;
wire [2:0] e;

assign c[0] = g[0] | p[0] & ci;

nor n4 (e[0], g[1], g[0], ci);
nor n5 (e[1], g[1], g[0], p[0]);
nor n6 (e[2], g[1], p[1]);
nor n7 (c[1], e[0], e[1], e[2]);

endmodule
