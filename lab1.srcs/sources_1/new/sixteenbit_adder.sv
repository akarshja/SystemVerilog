`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/23/2026 01:57:18 PM
// Design Name: 
// Module Name: sixteenbit_adder
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


module sixteenbit_adder(a,b,f,ovf);
    input logic [15:0] a;
    input logic [15:0] b;
    output logic [15:0] f;
    output logic ovf;
    
    assign f = a+b;
    assign ovf = ((~a[15])&(~b[15]&f[15])|(a[15]&b[15]&~f[15]));
    
    
endmodule
