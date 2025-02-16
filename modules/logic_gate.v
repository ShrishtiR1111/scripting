`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2025 23:05:08
// Design Name: 
// Module Name: logic_gate
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


module logic_gate(
 input A, B, C,
output Y
);
    wire notB, G1, G2, notC, G4, G3;

    not #1 not1(notB, B);
    or #2 or1(G1, A, B);
    or #2 or2(G2, notB, C);
    not #1 not2(notC, C);
    nand #2 nand1(G4, notC, B);
    and #2 and1(G3, G1, G2);
    or #2 or3(Y, G3, G4);
endmodule
