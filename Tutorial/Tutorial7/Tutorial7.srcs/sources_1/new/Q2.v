`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2023 02:36:43 PM
// Design Name: 
// Module Name: Q2
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


module Q2 #(parameter SIZE=8)(
    // Part a
    input [SIZE-1:0] Tset, Tact,
    output Hon, Con);
    
    //Part b
    thermo U1(.Tset(Tset), .Tact(Tact), .Hon(Hon), .Con(Con));
    
endmodule
