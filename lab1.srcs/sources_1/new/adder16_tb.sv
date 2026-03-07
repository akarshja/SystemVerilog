`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/23/2026 02:07:05 PM
// Design Name: 
// Module Name: adder16_tb
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


module adder16_tb();
    logic [15:0] a,b,f;
    logic ovf;
    sixteenbit_adder myadder(.a(a),.b(b),.f(f),.ovf(ovf));
      initial 
        begin
                #0 a=16'h0025; b=16'h0045;
                #10 a=16'hA415; b=16'hA555;
                #10 a=16'hF115; b=16'hF215;
                #10 a=16'h9D00; b=16'h9E00;
                #10 a=16'hED00; b=16'hEF03;
                #10 a=16'h8A10; b=16'h7110;
                #10 a=16'h21AA; b=16'h21BB;
                #10 a=16'h9A00; b=16'h9F4F;
                #10 a=16'h0040; b=16'h0000;
                #10 a=16'h000F; b=16'h0001;
                #10 a=16'h007F; b=16'h0001;
                #10 $stop;
         end
      initial 
        $monitor("a=%b , b=%b , f=%b , ovf=%b , time=%d" , a,b,f,ovf,$time);
    
endmodule
