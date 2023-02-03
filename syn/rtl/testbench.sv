
module Addertb;
  reg [3:0]A,B;
  reg CI;
  wire [3:0]S;
  wire CO;
  int count=0;
  int total=0;
  
  FullAdder Fulladder(S,CO,A,B,CI);
  
  initial 
    begin
      for(int i=0;i<16;i++)
        begin
          for(int j=0;j<16;j++)
            begin
              for(int k=0;k<2;k++)
                begin
                  A=i;
                  B=j;
                  CI=k;
                  #2;
                  total= A+B+CI;
                  if(total === {CO,S})
                    begin
                  		count ++;
                    end
       			  else
                    begin
                      $display("I/p A=%b B=%b  CI=%b O/p Sum=%b CO=%b expected out=%b",A,B,CI,S,CO,total); 
                    end
                  
                end
            end
        end
      $display("count:%d",count);
    end
endmodule

