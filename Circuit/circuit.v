//Craig Hulsebus
`include "fsmMealy.v"
`include "data_path.v"
`include "adder_subtractor_8bits.v"
`include "Register.v"
`include "mux3_to_1.v"
`include "cla.v"
`include "inverter.v"
`include "su.v"
`include "cgu.v"
`include "pgu.v"


module circuit(
  input reset, clk, start, mode,
  input [7:0] a, b, c, d,
  output [7:0] i,
  output done
);
wire s2, s1, s0, m, e;
wire [7:0] g, h, j;


fsmMealy	fsm (start, mode, clk, reset, e, m, s2, s1, s0, done);
data_path	path (reset, clk, start, s2, s1, s0, m, e, a[7:0], b[7:0], c[7:0], d[7:0], i[7:0]); 

endmodule
