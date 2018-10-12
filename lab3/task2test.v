module task2test;

reg clk,rst;				
wire clkout;
wire [30:0]counter;		
task2 bbb(clk, rst, clkout,counter);

initial
    begin
    clk=0;
    rst=0;
    #2;
    rst=1;
    #2;
    rst=0;
    #1000000000;
    $finish;
    end
always #5 clk=~clk;
endmodule
