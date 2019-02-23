//Craig Hulsebus
module adder_subtractor_8bits(
  input [7:0] i, h,
  input m,
  output [7:0] s,
  output ovf
);
wire [7:0] c;
wire [7:0] bn;
inverter	inv (h[7:0], m, bn[7:0]);
cla 		cla1 (i[1:0], bn[1:0], m, c[1], s[1:0]);
cla 		cla2 (i[3:2], bn[3:2], c[1], c[3], s[3:2]);
cla		cla3 (i[5:4], bn[5:4], c[3], c[5], s[5:4]);
cla		cla4 (i[7:6], bn[7:6], c[5], c[7:6], s[7:6]);
assign ovf = c[6] ^ c[7];
endmodule
