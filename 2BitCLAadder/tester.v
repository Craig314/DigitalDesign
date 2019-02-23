`include "cla_adder_2bits.v"

module tester();
reg [1:0] a, b;
reg ci;

wire [1:0] c, s;


cla_adder_2bits cla(a, b, ci, c, s); //instantiate FA(CLA)

initial begin //start test
$display("Time  a   b  cin   c   s"); //header for the output
$monitor("%4d               %b  %b", $time, c, s);

a = 2'b10; b = 2'b10; ci = 1'b0; $display("%4d  %b  %b  %b", $time, a, b, ci); 
#1; //test1
a = 2'b01; b = 2'b10; ci = 1'b1; $display("%4d  %b  %b  %b", $time, a, b, ci); 
#1; //test2
a = 2'b11; b = 2'b01; ci = 1'b0; $display("%4d  %b  %b  %b", $time, a, b, ci); 
#1; //test3
a = 2'b00; b = 2'b01; ci = 1'b0; $display("%4d  %b  %b  %b", $time, a, b, ci); 
#1; //test4

$finish; //stop simulation
end
endmodule
