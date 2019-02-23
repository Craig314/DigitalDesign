module sum_unit_2bits (p, c0, ci, s);

input [1:0] p;
input ci;
input c0;
output [1:0] s;

assign s = p ^ {c0, ci};

endmodule
