//Craig Hulsebus
`include "mux2_to_1.v"
module mux3_to_1(
  input [7:0] b, c, d,
  input s1, s2, 
  output [7:0] h  
);
wire [7:0] p;
mux2_to_1	mux (b[7:0], c[7:0], s1, p[7:0]);
mux2_to_1	mux2 (p[7:0], d[7:0], s2, h[7:0]);
endmodule

