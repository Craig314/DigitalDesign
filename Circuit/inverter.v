//Craig Hulsebus
module inverter(
  input [7:0] b,
  input m,
  output reg [7:0] bn
);
always@(*)
begin 
  if (m == 1) begin
    bn = ~b;
  end else begin
    bn = b;
  end
end 
endmodule
