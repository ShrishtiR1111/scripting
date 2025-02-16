`timescale 1ns / 1ps

module minterm(
  input a, b, c, d,
    output f
);
 wire a1, a2, a3, a4, a5, a6, a7;


and(a1, ~a, ~b, ~c, ~d); 
and(a2, ~a, ~b, c, ~d);   
and(a3, ~a, c, ~d, b);   
and(a4, a, ~b, ~c, d);    
and(a5, a, ~b, c, d);    
and(a6, a, b, ~c, d);   
and(a7, a, b, c, d);     

or(f, a1, a2, a3, a4, a5, a6, a7);

endmodule
module expression(
    input a, b, c, d,
    output f
);
    assign f = (~a & ~b & ~c & ~d)| (~a & ~b & c & ~d)  |(~a & b & c & ~d)   | (a & ~b & ~c & d)   | 
                 (a & ~b & c & d)    |  (a & b & ~c & d)    |   (a & b & c & d);       

endmodule

