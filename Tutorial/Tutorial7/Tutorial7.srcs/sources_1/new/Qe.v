`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2023 02:40:58 PM
// Design Name: 
// Module Name: Qe
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


module Q3(
    input [3:0] a,b,c,
    input [1:0] sel,
    output reg [3:0] result);
    
    always @ (a,b)
    begin
        case (sel)
            2'b00 : result = a;
            2'b01 : result = b;
            2'b10 : result = c;
        endcase
    end
    
endmodule
