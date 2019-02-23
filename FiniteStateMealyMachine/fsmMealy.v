module fsmMealy (
  input clock, reset, x,
  output reg z
  );

parameter size = 4;
parameter A = 2'b00, B = 2'b01, C = 2'b10, D = 2'b11;
reg [1:0]   currentState, nextState;

always@(*)
begin
  casex (currentState)
   A: if (x == 1'b1) begin
              nextState = B;
	      z = 0;
          end else begin
              nextState = A;
              z = 0;
          end
   B: if (x == 1'b1) begin
              nextState = B;
              z = 0;
          end else begin
              nextState = C;
              z = 0;
          end
   C: if (x == 1'b1) begin
              nextState = B;
              z = 0;
          end else begin
              nextState = D;
              z = 0;
          end
   D: if (x == 1'b1) begin
              nextState = B;
              z = 1;
          end else begin
              nextState = A;
              z = 0;
          end
   default: begin
	  	nextState = 2'bxx;
		z = 1'bx;
	    end
  endcase
end
//Flip Flop
always @ (posedge clock, posedge reset)
begin
  if (reset == 1) 
    currentState <= A;
  else
    currentState <= nextState;
end
endmodule



