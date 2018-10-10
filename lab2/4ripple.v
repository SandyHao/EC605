`timescale 1ns / 1ns

module ripplefour(Cin, A1, B1, S1, A2, B2, S2, A3, B3, S3, A4, B4, S4, Cout);
input Cin, A1, B1, A2, B2, A3, B3, A4, B4;
output S1, S2, S3, S4, Cout;
wire w1,w2,w3;
        
fulladder fulladder1(A1, B1, Cin, S1, w1);
fulladder fulladder2(A2, B2, w1, S2, w2);
fulladder fulladder3(A3, B3, w2, S3, w3);
fulladder fulladder4(A4, B4, w3, S4, Cout);

endmodule

