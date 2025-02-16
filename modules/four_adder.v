`timescale 1ns / 1ps


module four_bit_fa(
 input [3:0] a, b,
    input cin,
    output [3:0] sum,
    output cout
);
    wire c1, c2, c3;

 adder a0(.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(c1));
 adder a1(.a(a[1]), .b(b[1]), .cin(c1), .sum(sum[1]), .cout(c2));
 adder a2(.a(a[2]), .b(b[2]), .cin(c2), .sum(sum[2]), .cout(c3));
  adder a3(.a(a[3]), .b(b[3]), .cin(c3), .sum(sum[3]), .cout(cout));
endmodule

module adder(
input a,b,cin,
output sum, cout
);
wire w1, w2, w3;

 xor G1(w1, a, b);
xor G2(sum, w1, cin);
and G3(w2, w1, cin);
 and G4(w3, a, b);
or G5(cout, w2, w3);
endmodule
