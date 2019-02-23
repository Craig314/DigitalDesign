
module mux8_bit_3
(
  input [7:0] b, c, d,
  input s1, s2,
  output [7:0] h 
);
wire p;

2_to_1MUX		2mux (b[0], c[0], s1, p[0]);
3_to_1MUX		3mux (p[0], d[0], s2, h[0]);
2_to_1MUX		2mux (a[1], j[1], s0, g[1]);
3_to_1MUX		3mux (p[1], d[1], s2, h[1]);
2_to_1MUX		2mux (a[2], j[2], s0, g[2]);
3_to_1MUX		3mux (p[2], d[2], s2, h[2]);
2_to_1MUX		2mux (a[3], j[3], s0, g[3]);
3_to_1MUX		3mux (p[3], d[3], s2, h[3]);
2_to_1MUX		2mux (a[4], j[4], s0, g[4]);
3_to_1MUX		3mux (p[4], d[4], s2, h[4]);
2_to_1MUX		2mux (a[5], j[5], s0, g[5]);
3_to_1MUX		3mux (p[5], d[5], s2, h[5]);
2_to_1MUX		2mux (a[6], j[6], s0, g[6]);
3_to_1MUX		3mux (p[6], d[6], s2, h[6]);
2_to_1MUX		2mux (a[7], j[7], s0, g[7]);
3_to_1MUX		3mux (p[7], d[7], s2, h[7]);

endmodule 
