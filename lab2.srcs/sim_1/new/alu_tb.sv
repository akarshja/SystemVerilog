`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2026 02:16:30 PM
// Design Name: 
// Module Name: alu_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu_tb();
    logic signed [15:0] a;
    logic signed [15:0] b;
    logic [3:0] s;
    logic [15:0] f;
    logic ovf;
    logic take_branch;
    
    alu myalu_testbench(.a(a),.b(b),.s(s),.f(f),.ovf(ovf),.take_branch(take_branch));
        initial 
            begin
   
                #0  s=4'b0000; a=16'h7FFF; b=16'h0001;
                #10 s=4'b0000; a=16'h8000; b=16'hFFFF;
                #10 s=4'b0000; a=16'h0003; b=16'h0004;
                #10 s=4'b0001; a=16'h0000; b=16'h00F0;               
                #10 s=4'b0010; a=16'hAAAA; b=16'h0F0F;    
                #10 s=4'b0011; a=16'h1234; b=16'h00F0;              
                #10 s=4'b1000; a=16'hF0F0; b=16'h0FF0;         
                #10 s=4'b0100; a=16'h8001; b=16'h0001;
                #10 s=4'b0100; a=16'h7FFF; b=16'h0001;    
                #10 s=4'b0101; a=16'h0001; b=16'h000F;          
                #10 s=4'b0110; a=16'h0000; b=16'h0000;
                #10 s=4'b0110; a=16'h0001; b=16'h0000;           
                #10 s=4'b0111; a=16'h0000; b=16'h0000;
                #10 s=4'b0111; a=16'h0001; b=16'h0000;       
                #10 $stop;
             end

     initial
    $monitor("time=%0t  s=%b  a=%h  b=%h  f=%h  ovf=%b  take_branch=%b",s, a, b, f, ovf, take_branch,$time);

endmodule
