module DMtest;

    parameter BITSIZE = 64;
    parameter REGSIZE = 32;
    reg [REGSIZE-1:0] addr;
    reg [BITSIZE-1:0] writedata;
    reg writenable, readenable;
    //wire [BITSIZE-1:0] dmout;
    reg clk, rst;
    wire [BITSIZE-1:0] readdata;

DataMemory DM1(addr, writedata, writenable, readenable, readdata, clk, rst);

initial
    begin
    rst = 0;
    clk = 0;
    addr = 0;
    writedata = 0;
    writenable = 0;
    readenable = 0;
    #10;
    rst = 1;
    #10;
    rst = 0;
    addr = 0;
    writedata = 0;
    writenable = 1;
    readenable = 0;
    #100;
    addr = 32'b110;
    writedata = 64'b1100110;
    writenable = 1;
    readenable = 0;
    #100;
    addr = 32'b110;
    writedata = 64'b1100110;
    writenable = 0;
    readenable = 1;
    #100
    addr = 32'b110;
    writedata = 64'b1100110;
    writenable = 0;
    readenable = 1;
    #100
    $finish;
    end
always #5 clk=~clk;
endmodule


    

    
