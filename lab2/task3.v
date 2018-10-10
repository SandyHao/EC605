`timescale 1ns / 1ns
module task3(Cin, A1, B1, S1, A2, B2, S2, A3, B3, S3, A4, B4, S4, A5, B5, S5, A6, B6, S6, A7, B7, S7, A8, B8, S8, Cout);
input Cin, A1, B1, A2, B2, A3, B3, A4, B4, A5, B5, A6, B6, A7, B7, A8, B8;
output S1, S2, S3, S4, S5, S6, S7, S8, Cout;
wire v5,v6,v7,v8,w8,w5,w6,w7,c1,c2,S;
ripplefour ripplefour1(Cin, A1, B1, S1, A2, B2, S2, A3, B3, S3, A4, B4, S4, S);        
ripplefour ripplefour2(0, A5, B5, w5, A6, B6, w6, A7, B7, w7, A8, B8, w8, c1);    
ripplefour ripplefour3(1, A5, B5, v5, A6, B6, v6, A7, B7, v7, A8, B8, v8, c2);    

select select1(w5,v5,S,S5);
select select2(w6,v6,S,S6);
select select3(w7,v7,S,S7);
select select4(w8,v8,S,S8);
select select5(c1,c2,S,Cout);

endmodule
