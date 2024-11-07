`timescale 1ns / 1ps

module SR(clk,s,r,q,qb);
input clk,s,r;
output q,qb;
reg q,qb;
always@(posedge clk)
begin
case({s,r})
  2'b00:q=q;
  2'b01:q=0;
  2'b10:q=1;
  2'b11:q=1'bz;
endcase
qb=~q;
end  
endmodule
