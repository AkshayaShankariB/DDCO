`timescale 1ns / 1ps

module bcdadder(A,B,Cin,Sum,Carry);
input [3:0] A,B;
input Cin;
output [3:0] Sum;
output Carry;
reg [4:0]temp;
reg [3:0]Sum;
reg Carry;
always @ (A,B,Cin)
begin
   temp=A+B+Cin;
	if(temp>9)
	begin 
	   temp=temp+6;
		Carry=1;
		Sum=temp[3:0];
	end
	else
   begin 
	  Carry=0;
	  Sum=temp[3:0];
	end  
end
endmodule
