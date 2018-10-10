module rippleaddertest;
    reg Cin, A1, B1, A2, B2, A3, B3, A4, B4, A5, B5, A6, B6, A7, B7, A8, B8;
    wire S1, S2, S3, S4, S5, S6, S7, S8, Cout;
    ripplecarry uut(Cin, A1, B1, S1, A2, B2, S2, A3, B3, S3, A4, B4, S4, A5, B5, S5, A6, B6, S6, A7, B7, S7, A8, B8, S8, Cout);
    initial
    begin
            Cin = 0;
            A1 = 0;
            B1 = 0;
            A2 = 0;
            B2 = 0;
	    A3 = 0;
            B3 = 0;
            A4 = 0;
            B4 = 0;
            A5 = 0;
            B5 = 0;
            A6 = 0;
            B6 = 0;
	    A7 = 0;
            B7 = 0;
            A8 = 0;
            B8 = 0;
            #10;
			{A8, A7, A6, A5, A4, A3, A2, A1, Cin} = 1;
                        {B8, B7, B6, B5, B4, B3, B2, B1} = 0;
            #10;
			{A8, A7, A6, A5, A4, A3, A2, A1, Cin} = 2;
                        {B8, B7, B6, B5, B4, B3, B2, B1} = 1;
            #10;
			{A8, A7, A6, A5, A4, A3, A2, A1, Cin} = 4;
                        {B8, B7, B6, B5, B4, B3, B2, B1} = 2;
            #10;
			{A8, A7, A6, A5, A4, A3, A2, A1, Cin} = 8;
                        {B8, B7, B6, B5, B4, B3, B2, B1} = 4;
            #10;
			{A8, A7, A6, A5, A4, A3, A2, A1, Cin} = 16;
                        {B8, B7, B6, B5, B4, B3, B2, B1} = 8;
            #10;
			{A8, A7, A6, A5, A4, A3, A2, A1, Cin} = 32;
                        {B8, B7, B6, B5, B4, B3, B2, B1} = 16;
            #10;
			{A8, A7, A6, A5, A4, A3, A2, A1, Cin} = 64;
                        {B8, B7, B6, B5, B4, B3, B2, B1} = 32;
            #10;
			{A8, A7, A6, A5, A4, A3, A2, A1, Cin} = 128;
                        {B8, B7, B6, B5, B4, B3, B2, B1} = 64;
            #10;
			{A8, A7, A6, A5, A4, A3, A2, A1, Cin} = 256;
                        {B8, B7, B6, B5, B4, B3, B2, B1} = 128;
            #10;
            $finish;
    end
endmodule
