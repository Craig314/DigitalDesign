//Craig Hulsebus
module Register(
  input [7:0] g,
  input e, reset, clk,
  output reg [7:0] i
);
always@(posedge clk or posedge reset)
begin 
  if (reset == 1) 
  begin
    i <= 0;
  end
  else if (e == 1)
  begin
    i <= g;
  end
end 
endmodule
