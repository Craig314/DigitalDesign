`include "cla_adder_2bits.v"
`include "inverter.v"
`include "sum_unit_2bits.v"
`include "carry_generate_2bits.v"
`include "pg_unit_2bits.v"

module adder_subtractor_8bits(
  input [7:0] a, b,
  input m,
  output [7:0] s,
  output ovf
);
wire [7:0] c;
wire [7:0] bn;
inverter		inv (b[7:0], m, bn[7:0]);
cla_adder_2bits		cla1 (a[1:0], bn[1:0], m, c[1], s[1:0]);
cla_adder_2bits 	cla2 (a[3:2], bn[3:2], c[1], c[3], s[3:2]);
cla_adder_2bits		cla3 (a[5:4], bn[5:4], c[3], c[5], s[5:4]);
cla_adder_2bits		cla4 (a[7:6], bn[7:6], c[5], c[7:6], s[7:6]);
assign ovf = c[6] ~^ c[7];
endmodule
