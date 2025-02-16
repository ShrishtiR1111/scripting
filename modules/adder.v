
`timescale 1ns / 1ps

module full_adder(
input a, b, cin,
output sum, cout
);
wire w1, w2, w3;

 xor G1(w1, a, b);
xor G2(sum, w1, cin);
and G3(w2, w1, cin);
 and G4(w3, a, b);
or G5(cout, w2, w3);
endmodule

