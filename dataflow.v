`timescale 1ns / 1ps
module dataflow(input B, input C, input D, output Y);
assign Y=(~C&D) | (B&D);
endmodule
