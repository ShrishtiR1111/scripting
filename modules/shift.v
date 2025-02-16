`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2025 18:54:41
// Design Name: 
// Module Name: shift
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


module shift_register(
    input CLK, 
    input RST, 
    input [2:0] S, 
    input [7:0] IN, 
    input [7:0] parallel_in, 
    output reg [7:0] OUT
);

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            OUT <= 8'b0; 
        end else begin
            case (S)
                3'b000: OUT <= OUT;               // No shift              
                3'b001: OUT <= IN << 1;           // Linear left shift by 1 bit                
                3'b010: OUT <= IN >> 1;           // Linear right shift by 1 bit
                3'b011: OUT <= parallel_in;      // Parallel load               
                3'b100: OUT <= {IN[6:0], IN[7]}; // circular left shift                
                3'b101: OUT <= {IN[0], IN[7:1]}; // circular right shift
                
                default: OUT <= OUT;           
            endcase
        end
    end

endmodule





