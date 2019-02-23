//Craig Hulsebus
module fsm1 (
  input clock, reset, x,
  output reg z
  );

parameter A = 3'b000, B = 3'b001, C = 3'b010, D = 3'b011, E = 3'b100;
reg [2:0]   currentState;
wire [2:0]  nextState;

//NSG
assign nextState = nsFunction(currentState, x);
function [2:0] nsFunction;
  input [2:0]  currentState;
  input x;
  casex (currentState)
   A: if (x == 1) 
              nsFunction = B;
      else 
              nsFunction = A;
   B: if (x == 1) 
              nsFunction = B;
      else 
              nsFunction = C;
          
   C: if (x == 1) 
              nsFunction = B;
      else 
              nsFunction = D;
          
   D: if (x == 1) 
              nsFunction = E;
      else 
              nsFunction = A;
          
   E: if (x == 1) 
              nsFunction = B;
      else 
              nsFunction = C;
          
   default: nsFunction = A;
  endcase
endfunction

//OG
always@(*)
begin
  if (currentState == E)
    assign z = 1;
  else
    assign z = 0;
end


//FF
always@ (posedge clock, posedge reset)
begin
  if (reset == 1'b1)
    currentState <= A;
  else
    currentState <= nextState;
end
endmodule



