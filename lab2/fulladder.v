`timescale 1ns / 1ns

module fulladder(A, B, Cin, S, Cout);
input A, B, Cin;
output S, Cout;

    wire wab, wabc;
    wire worab;
        
    and and1(wab, A, B);
    xor xor1(worab, A, B);
    and and2(wabc, worab, Cin);
    xor  xor2(S, worab, Cin);
    or or1(Cout, wab, wabc);

endmodule
