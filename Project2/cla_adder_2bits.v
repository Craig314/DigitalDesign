module cla_adder_2bits
(
  input [1:0] a, b,
  input ci,
  output [1:0] c, s 

);
wire [1:0]  p, g;


pg_unit_2bits			pgu1 (a, b, p, g);
carry_generate_2bits		cgu1 (p, g, ci, c);
sum_unit_2bits			su1(p, c[0], ci, s);

endmodule 
