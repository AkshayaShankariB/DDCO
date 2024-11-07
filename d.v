`timescale 1ns / 1ps

module d(clk,d,q,qb);
input clk,d;
output q,qb;
reg q,qb;
always@(posedge clk)
begin 
q=d;
qb=~q;
end
endmodule
