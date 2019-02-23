//Craig Hulsebus
module fsmMealy (
  input start, mode, clk, reset,
  output reg e, m, s2, s1, s0, done
  );

parameter size = 4;
parameter A = 2'b00, B = 2'b01, C = 2'b10, D = 2'b11;
reg [1:0]   currentState, nextState;

always@(*)
begin
  casex (currentState)
   A: if (start == 1) begin
              nextState = B;
	      done = 0;
	      e = 1;
              s0 = 0;
          end else begin
              nextState = A;
              done = 0;
              e = 0;
          end
   B: if (done == 0) begin
              nextState = C;
              done = 0;
              e = 1;
	      m = 0;
              s0 = 1;
              s1 = 0;
              s2 = 0;
          end
   C: if (done == 0) begin
              nextState = D;
              done = 0;
              e = 1;
	      m = 0;
              s0 = 1;
              s1 = 1;
              s2 = 0;
          end
   D: if (mode == 1) begin
              nextState = A;
	      done = 1;
	      e = 1;
	      m = 1;
              s0 = 1;
	      s1 = 0;
              s2 = 1;
          end else if (mode == 0) begin
              nextState = A;
              done = 1;
              e = 1;
	      m = 0;
              s0 = 1;
	      s1 = 0;
              s2 = 1;
          end
   default: begin
	  	nextState = 2'bxx;
		done = 0;
	    end
  endcase
end
//Flip Flop
always @ (posedge clk, posedge reset)
begin
  if (reset == 1) 
    currentState <= A;
  else
    currentState <= nextState;
end
endmodule



