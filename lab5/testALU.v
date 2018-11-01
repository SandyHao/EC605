module ALUtest;

parameter BITSIZE = 64;
parameter REGSIZE = 32;
reg [2:0]select;
reg [BITSIZE-1:0] data1, data2;
wire flagz;
wire [BITSIZE-1:0] aluout;
reg clk, rst;

ALU ALU1(data1, data2, flagz, select, aluout, clk, rst);

initial
    begin
    rst = 0;
    clk = 0;
    data1 = 0;
    data2 = 0;
    select = 0;
    #10;
    rst = 1;
    #10;
    rst = 0;
    data1 = 0;
    data2 = 0;
    select = 0;
    #100;
    data1 = 64'b1101;
    data2 = 64'b01;
    select = 3'b000;
    #100;
    data1 = 64'b1101;
    data2 = 64'b01;
    select = 3'b001;
    #100;
    data1 = 64'b1101;
    data2 = 64'b01;
    select = 3'b010;
    #100;
    data1 = 64'b1101;
    data2 = 64'b01;
    select = 3'b011;
    #100;
    data1 = 64'b1101;
    data2 = 64'b01;
    select = 3'b100;
    #100;
    data1 = 64'b1101;
    data2 = 64'b01;
    select = 3'b101;
    #100;
    data1 = 64'b1101;
    data2 = 64'b01;
    select = 3'b110;
    #100;
    data1 = 64'b1101;
    data2 = 64'b01;
    select = 3'b111;
    #100
    $finish;
    end
always #5 clk=~clk;
endmodule
