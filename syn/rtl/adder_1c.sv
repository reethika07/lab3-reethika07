module adder_1c(S,CO,A,B,CI);
  output CO;
  input [3:0]A,B;
  input CI;
  output [3:0]S;
  
  wire C0,C1,C2;
  
  Adder FA1(S[0],C0,A[0],B[0],CI);
  Adder FA2(S[1],C1,A[1],B[1],C0);
  Adder FA3(S[2],C2,A[2],B[2],C1);
  Adder FA4(S[3],CO,A[3],B[3],C2);
endmodule

module Adder(S,CO,A,B,CI);
  input A,B,CI;
  output reg S,CO;
  wire w0,w1,w2,w3,w4;

   
  always_comb 
    begin
      case ({A,B,CI})
        3'd0: begin S=0 ; CO=0; end
        3'd1: begin S=1 ; CO=0; end
        3'd2: begin S=1 ; CO=0; end
        3'd3: begin S=0 ; CO=1; end
        3'd4: begin S=1 ; CO=0; end
        3'd5: begin S=0 ; CO=1; end
        3'd6: begin S=0 ; CO=1; end
        3'd7: begin S=1 ; CO=1; end
        default: begin S=1'bz ; CO=1'bz; end
      endcase
    end
  
endmodule


