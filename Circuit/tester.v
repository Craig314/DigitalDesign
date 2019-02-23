//Craig Hulsebus
`include "circuit.v"
module tester();
reg reset, clk, start, mode;
reg [7:0] a, b, c, d;
wire [7:0] i;
wire done;

circuit    c1(reset, clk, start, mode, a, b, c, d, i, done);
initial begin
$display("Time     a          b         c         d   mode               i          reset  clk  start  done");
$monitor("%4d                                                            %b       %b   %b   %b   %b", $time, i, reset, clk, start, done);
clk = 0;
reset = 1;
#10 reset = 0;
end 
always
begin
#5clk = ~clk;
end
initial begin
a = 8'h01; b = 8'h02; c = 8'hFF; d = 8'hFE; mode = 1'b0; $display("%4d  %b  %b  %b  %b  %b", $time, a, b, c, d, mode);
start = 1;
#20 start = 0;
#200
a = 8'hFE; b = 8'h01; c = 8'h01; d = 8'h04; mode = 1'b1; $display("%4d  %b  %b  %b  %b  %b", $time, a, b, c, d, mode);
start = 1;
#20 start = 0;
#100
a = 8'h01; b = 8'hFF; c = 8'hFF; d = 8'hFF; mode = 1'b0; $display("%4d  %b  %b  %b  %b  %b", $time, a, b, c, d, mode);
start = 1;
#20 start = 0;
#100
a = 8'hFF; b = 8'h01; c = 8'hFF; d = 8'h01; mode = 1'b1; $display("%4d  %b  %b  %b  %b  %b", $time, a, b, c, d, mode);
start = 1;
#20 start = 0;
#100
$finish;
end
endmodule
