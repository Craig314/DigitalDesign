`include "mux2_to_1.v"
module mux8_bit_2
(
  input [7:0] a, s,
  input s0,
  output [7:0] g 

);

mux2_to_1		2mux (a[0], s[0], s0, g[0]);
mux2_to_1		2mux (a[1], s[1], s0, g[1]);
mux2_to_1		2mux (a[2], s[2], s0, g[2]);
mux2_to_1		2mux (a[3], s[3], s0, g[3]);
mux2_to_1		2mux (a[4], s[4], s0, g[4]);
mux2_to_1		2mux (a[5], s[5], s0, g[5]);
mux2_to_1		2mux (a[6], s[6], s0, g[6]);
mux2_to_1		2mux (a[7], s[7], s0, g[7]);

endmodule 
