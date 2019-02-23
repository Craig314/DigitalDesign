//Craig Hulsebus
module data_path(
  input reset, clk, start, s2, s1, s0, m, e,
  input [7:0] a, b, c, d,
  output [7:0] i
);

wire [7:0] g, h, s;


mux2_to_1	mux2 (a[7:0], s[7:0], s0, g[7:0]);
Register	reg8 (g[7:0], e, reset, clk, i[7:0]);
mux3_to_1 	mux3 (b[7:0], c[7:0], d[7:0], s1, s2, h[7:0]);
adder_subtractor_8bits		addsub (i, h, m, s, ovf);

endmodule
