`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2023 07:52:43 PM
// Design Name: 
// Module Name: vaddoflow
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


module vaddoflow(
    input [3:0] a,b,
    output [6:0] seg_L,
    output oflow
    );
    
    wire [4:0] x;
    assign x = a + b;
    
    vsevenseg gate (.x(x[3:0]),
                    .seg_L(seg_L));
                    
    assign oflow = x[4];

endmodule
