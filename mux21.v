`timescale 1ns / 1ps

module mux21(en,a,y,s);
input en,s;
input [1:0]a;
output y;
reg y;
always @ (en or s or a)
begin 
if(!en)
   y=1'b0;
else
   case(s)
    1'b0:y=a[0];	
	 1'b1:y=a[1];
	endcase
end	
endmodule
