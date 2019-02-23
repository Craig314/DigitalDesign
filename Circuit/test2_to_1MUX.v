module test2_to_1MUX(
  input [1:0] a, s,
  input s0,
  output [1:0] g
);
assign g = (~s0 & a)|(s0 & s) 
endmodule
