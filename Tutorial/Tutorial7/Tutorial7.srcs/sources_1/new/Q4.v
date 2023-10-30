`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2023 02:50:28 PM
// Design Name: 
// Module Name: Q4
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


module Q4(
    input [2:0] sel,
    input en,
    output reg [7:0] out);
    
    always @ *
    begin
    if (en)
        begin 
            case (sel)
                3'b000 : out = 7'b0000_001;
                3'b001 : out = 7'b0000_010;
                3'b010 : out = 7'b0000_100;
                3'b011 : out = 7'b0001_000;
                3'b100 : out = 7'b0010_000;
                3'b101 : out = 7'b0100_000;
                3'b111 : out = 7'b1000_000;
            endcase
        end
    else
        begin
            out = 7'b0000_000;
        end
    end
endmodule
