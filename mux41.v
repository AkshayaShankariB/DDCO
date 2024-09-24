`timescale 1ns / 1ps

module mux41(en,a,y,s);
input en;
input [3:0]a;
input [1:0]s;
output y;
reg y;
always @ (en or s or a)
begin 
 if(!en)
  y=1'b0;
 else
  case(s)
  2'b00:y=a[0];
  2'b01:y=a[1];
  2'b10:y=a[2];
  2'b11:y=a[3]; 
  endcase
end  
endmodule
