`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2023 03:15:06 PM
// Design Name: 
// Module Name: scroll
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


module scroll(
    input clk,
    input rst,
    output [15:0] display
    );
    
    reg [3:0] count; 
    wire [3:0] a,b,c,d;
    
    always @(posedge clk)
    begin
        if(rst)
            count <= 4'b0000;
        else
            count <= count + 1'b1;
    end
    
    assign a = count;
    assign b = count + 4'd1;
    assign c = count + 4'd2;
    assign d = count + 4'd3;
    
    convert A (.in(a), .out(display[15:12]));
    convert B (.in(b), .out(display[11:8]));
    convert C (.in(c), .out(display[7:4]));
    convert D (.in(d), .out(display[3:0]));
    
endmodule
