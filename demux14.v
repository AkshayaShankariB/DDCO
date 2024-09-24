`timescale 1ns / 1ps
module demux14(a,en,s,y);
input a,en;
input [1:0]s;
output[3:0]y;
reg[3:0]y;
always@(a,en,s)
begin
if(!en)
  y=4'b0000;
else 
begin
 y=4'b0000;
 case(s)
   2'b00:y[0]=a;
   2'b01:y[1]=a;	
	2'b10:y[2]=a;
   2'b11:y[3]=a;
	default:y=4'b0000;
 endcase
end
end
endmodule
