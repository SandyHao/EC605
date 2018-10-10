`timescale 1ns / 1ns

module ripplecarry(Cin, A1, B1, S1, A2, B2, S2, A3, B3, S3, A4, B4, S4, A5, B5, S5, A6, B6, S6, A7, B7, S7, A8, B8, S8, Cout);
input Cin, A1, B1, A2, B2, A3, B3, A4, B4, A5, B5, A6, B6, A7, B7, A8, B8;
output S1, S2, S3, S4, S5, S6, S7, S8, Cout;
wire w1, w2,w3,w4,w5,w6,w7;
        
fulladder fulladder1(A1, B1, Cin, S1, w1);
fulladder fulladder2(A2, B2, w1, S2, w2);
fulladder fulladder3(A3, B3, w2, S3, w3);
fulladder fulladder4(A4, B4, w3, S4, w4);
fulladder fulladder5(A5, B5, w4, S5, w5);
fulladder fulladder6(A6, B6, w5, S6, w6);
fulladder fulladder7(A7, B7, w6, S7, w7);
fulladder fulladder8(A8, B8, w7, S8, Cout);

endmodule
