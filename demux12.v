`timescale 1ns / 1ps
module demux12(a,en,s,y);
input a,en;
input s;
output[1:0]y;
reg[1:0]y;
always@(a,en,s)
begin
if(!en)
  y=2'b00;
else 
begin
 y=2'b00;
 case(s)
   1'b0:y[0]=a;
   1'b1:y[1]=a;
   default:y=2'b00;	
 endcase
end
end
endmodule
