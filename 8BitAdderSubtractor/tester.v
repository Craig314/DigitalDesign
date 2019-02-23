`include "adder_subtractor_8bits.v"
module tester();
reg [7:0] a, b;
reg m;
wire [7:0] s;
wire ovf;
adder_subtractor_8bits addsub(a, b, m, s, ovf);
initial begin
$display("Time     a          b     m           s          ovf");
$monitor("%4d                               %b       %b", $time, s, ovf);
a = 8'hFF; b = 8'h01; m = 1'b0; $display("%4d  %b  %b  %b", $time, a, b, m);
#1;
a = 8'h7F; b = 8'h01; m = 1'b0; $display("%4d  %b  %b  %b", $time, a, b, m);
#1;
a = 8'h01; b = 8'hFF; m = 1'b0; $display("%4d  %b  %b  %b", $time, a, b, m);
#1;
a = 8'h55; b = 8'hAA; m = 1'b0; $display("%4d  %b  %b  %b", $time, a, b, m);
#1;
a = 8'h80; b = 8'h01; m = 1'b1; $display("%4d  %b  %b  %b", $time, a, b, m);
#1;
a = 8'h6C; b = 8'hCA; m = 1'b1; $display("%4d  %b  %b  %b", $time, a, b, m);
#1;
$finish;
end
endmodule
