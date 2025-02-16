`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2025 21:15:11
// Design Name: 
// Module Name: sorting_sort
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

module sorting_sort(
input [7:0] A0,
    input [7:0] A1,
    input [7:0] A2,
    output reg [7:0] F1,
    output reg [7:0] F2,
    output reg [7:0] F3

    );
    wire x, y, z, p, q, r, L, m, n;

    COMPARATOR compare1 (.A(A0), .B(A1), .A_gt_B(x), .A_lt_B(y), .A_equal_B(z));
    COMPARATOR compare2 (.A(A0), .B(A2), .A_gt_B(p), .A_lt_B(q), .A_equal_B(r));
    COMPARATOR compare3 (.A(A1), .B(A2), .A_gt_B(L), .A_lt_B(m), .A_equal_B(n));

    always @(*) begin
        if (x == 1 && p == 1 && m == 1) begin
            F1 = A1;
            F2 = A2;
            F3 = A0;
end else if (y == 1 && q == 1 && m == 1) begin
            F1 = A0;
            F2 = A1;
            F3 = A2;
        end else if (y == 1 && q == 1 && L == 1) begin
            F1 = A0;
            F2 = A2;
            F3 = A1;
        end else if (x == 1 && p == 1 && L == 1) begin
            F1 = A2;
            F2 = A1;
            F3 = A0;
        end else if (y == 1 && p == 1 && L == 1) begin
            F1 = A2;
            F2 = A0;
            F3 = A1;
        end else if (x == 1 && q == 1 && m == 1) begin
            F1 = A1;
            F2 = A0;
            F3 = A2;
        end
    end
endmodule

