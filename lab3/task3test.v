module task1test;

reg clk,rst;
reg sw,sw2;
wire [7:0]max8;					
wire [3:0]leds;
		
task3 ccc(clk, rst, sw, sw2, max8, leds);

initial
    begin
    clk=0;
    rst=0;
    sw2=0;
    sw=0;
    #1;
    rst=1;
    #1;
    rst=0;
    #1000000000;
    sw=1;
    #1000000000;
    sw2=1;
    #100;
    $finish;
    end
always #5 clk=~clk;
endmodule
