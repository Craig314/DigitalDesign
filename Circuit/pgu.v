//Craig Hulsebus
module pgu(a, b, p, g);

  input [1:0] a, b;
  output [1:0] p, g;

  xor x1(p[1], a[1], b[1]);
  xor x2(p[0], a[0], b[0]);
  and a1(g[1], a[1], b[1]);
  and a2(g[0], a[0], b[0]);

endmodule
