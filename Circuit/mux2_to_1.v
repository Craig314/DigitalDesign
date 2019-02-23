//Craig Hulsebus
module mux2_to_1(
  input [7:0] b, c,
  input s1,
  output reg [7:0] g
);
always@(*)
begin
if (s1 == 1'b0)
  begin
    g <= b;
  end
else
  begin
    g <= c;
  end
end
endmodule
