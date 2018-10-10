`timescale 1ns / 1ps

module diagramtop(switches, N,V,C,Z, seven_seg);

input [11:0]switches;
output reg N,V,C,Z;				// Display N, V, C, Z
output  [6:0] seven_seg;		// Display outputs to seven segment
wire [3:0]sel;
assign sel=SEL;
reg [3:0]A;					
reg [3:0]B;
reg [3:0] SEL;
reg [3:0] Y;
wire Cout;


always@(*)
begin
//if(rst)
//   begin
//     A <= 0;
//     B <= 0;
//     SEL <= 0;
//   end
//else
//   begin
     {A,B}<=switches[11:4];
     SEL<=switches[3:0];
//   end

    N=0;
	case(sel[3:0])
            1: Y = ~A;
            2: Y = A | B;
            3: Y = A ^ B;
            4: Y = A & B;
            5: Y = A<<B;
            6: Y = A>>B;
            7: Y = A>>>B;
            8: Y = A+B;
            9: Y = A+(~B+1);
        endcase
    N=Y[3];
    if (Y==0)
    begin
	   Z=1;
	end
	else
	begin
	   Z=0;
	end
    if (A[3]==B[3])
    begin
          if(A[3]!=Y[3])
	       begin
	           V=1;
	       end
	       else
	       begin
	           V=0;
	       end		
    end
    else
    begin
        V=0;
    end
end
ripplefour utt(0, A[0], B[0], S1, A[1], B[1], S2, A[2], B[2], S3, A[3], B[3], S4, Cout);
always@(*)
C=Cout;


sevenseg u(Y,seven_seg);
endmodule

