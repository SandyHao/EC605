`timescale 1ns / 1ns

module select(A, B, S, Y);
input A, B, S;
output Y;

    wire w1,w2,w3;
    not not1(w1,S);    
    and and1(w2, A, w1);
    and and2(w3, B, S);

    or or1(Y, w2, w3);

endmodule
