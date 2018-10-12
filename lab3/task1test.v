module task1test;

reg clk,rst;
reg direction;
wire [7:0]max8;					
reg pauswitch;
wire [7:0] count8;		
task1 aaa(clk, rst, direction, max8, pauswitch, count8);

initial
    begin
    clk=0;
    rst=0;
    pauswitch=0;
    direction=0;
    #4;
    rst=1;
    #4;
    rst=0;
    #40;
    direction=1;
    #20;
    pauswitch=1;
    #10;
    $finish;
    end
always #2 clk=~clk;
endmodule
