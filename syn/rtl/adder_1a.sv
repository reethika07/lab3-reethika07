
module adder_1a(S,CO,A,B,CI);
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
  output S,CO;
  assign S = A ^ B ^ CI;
  assign CO = (A & B) | (B & CI) | (CI & A); 
endmodule

