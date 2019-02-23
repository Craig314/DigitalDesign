module pg_unit_2bits (a, b, p, g);

input [1:0] a, b;
output [1:0] p, g;

xor x1 (p[0], a[0], b[0]);
xor x2 (p[1], a[1], b[1]);
and aa1 (g[0], a[0], b[0]);
and aa2 (g[1], a[1], b[1]);

endmodule

