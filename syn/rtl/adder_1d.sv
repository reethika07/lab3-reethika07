
module adder_1d(S,CO,A,B,CI);
  output reg CO;
  input reg [3:0]A,B;
  input reg CI;
  output reg [3:0]S;
   
always_comb
begin
	{CO,S} = A+B+CI;
end
endmodule
  

