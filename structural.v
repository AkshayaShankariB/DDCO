`timescale 1ns / 1ps
module structural(B,C,D,Y);
input B,C,D;
output Y;
wire s1,s2,s3;
not (s1,C);
and (s2,s1,D);
and (s3,B,D);
or (Y,s2,s3);
endmodule
