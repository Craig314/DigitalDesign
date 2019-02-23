//Craig Hulsebus
module cla(a, b, cin, cout, s);
  input [1:0] a, b;
  input cin;
  output [1:0] cout;  
  output [1:0] s;
  
  wire [1:0] p, g;
  pgu pgu1(a, b, p, g);

  wire [1:0] c;
  assign cout = c;
  cgu cgu1(p, g, cin, c);

  su su1(p, {c[0], cin}, s);

endmodule
