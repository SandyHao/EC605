module task4test;
reg [11:0]switches;
reg clk,rst;
wire [3:0]seven_enable;
//reg [3:0]A;					
//reg [3:0]B;
//reg [3:0] SEL;			// Input switches input [15:0] switches;
wire N,V,C,Z;				// Display N, V, C, Z
wire [6:0] seven_seg;		// Display outputs to seven segment

task4 qqq(clk,rst,switches,N,V,C,Z, seven_seg,seven_enable);


initial
begin
    clk=0;
    rst=0;
    #3;
    rst=1;
    #3
    rst=0;
	switches=12'b011110110001;
	#10;
	switches=switches+1;
	#10;
    switches=switches+1;
	#10;
	switches=switches+1;
	#10;
	switches=switches+1;
	#10;
	switches=switches+1;
	#10;
	switches=switches+1;
	#10;
	switches=switches+1;
	#10;
    switches=switches+1;
	#10;
	switches=switches+1;
	#10;
	switches=switches+1;
	#10;
    switches=switches+1;
	#10;
    switches=switches+1;
	#10;
    switches=switches+1;
    #10;


//	A=4'b0101;
//	B=4'b1001;
//	SEL=4'b0001;
//#10;
//	SEL=SEL+1;
//#10;
//	SEL=SEL+1;
//#10;
//	SEL=SEL+1;
//#10;
//	SEL=SEL+1;
//#10;
//	SEL=SEL+1;
//#10;
//	SEL=SEL+1;
//#10;
//	SEL=SEL+1;
//#10;
//	SEL=SEL+1;
//#10;
//	SEL=SEL+1;
//#10;
//	SEL=SEL+1;
//#10;
    $finish;
    end
endmodule