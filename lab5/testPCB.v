module PCBtest;
parameter BITSIZE = 64;
parameter REGSIZE = 32;
reg [BITSIZE-1:0] shiftleft2;
reg branch, flagz, uncondbranch;
wire [BITSIZE-1:0] pcadd;
reg clk, rst;

PC_branch PCB1(shiftleft2, branch, flagz, uncondbranch, pcadd, clk, rst);

initial
    begin
    rst = 0;
    clk = 0;
    shiftleft2 = 0;
    branch = 0;
    flagz = 0;
    uncondbranch = 0;
    #10;
    rst = 1;
    #10;
    rst = 0;
    shiftleft2 = 0;
    branch = 0;
    flagz = 0;
    uncondbranch = 0;
    #100;
    shiftleft2 = 64'b11010;
    branch = 1;
    flagz = 0;
    uncondbranch = 0;
    #100;
    shiftleft2 = 64'b11010;
    branch = 0;
    flagz = 0;
    uncondbranch = 1;
    #100
    shiftleft2 = 64'b11010;
    branch = 1;
    flagz = 0;
    uncondbranch = 1;
    #100
    shiftleft2 = 64'b11010;
    branch = 1;
    flagz = 1;
    uncondbranch = 1;
    #100
    $finish;
    end
always #5 clk=~clk;
endmodule


    

