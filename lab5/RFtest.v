module RFtest;

parameter BITSIZE = 64;
parameter REGSIZE = 32;
reg [$clog2(REGSIZE)-1:0] ReadSelect1, ReadSelect2, WriteSelect;//three input   Rd, Rt/Rn, Rm
reg [BITSIZE-1:0] WriteData;//from DataMemory
reg WriteEnable;
wire [BITSIZE-1:0] ReadData1, ReadData2;
reg clk, rst;

Register_File RF1(ReadSelect1, ReadSelect2, WriteSelect, WriteData, WriteEnable, ReadData1, ReadData2, clk, rst);

initial
    begin
    rst = 0;
    clk = 0;
    ReadSelect1 = 0;
    ReadSelect2 = 0;
    WriteSelect = 0;
    WriteData = 0;
    WriteEnable = 0;
    #10;
    rst = 1;
    #10;
    rst = 0;
    ReadSelect1 = 0;
    ReadSelect2 = 0;
    WriteSelect = 0;
    WriteData = 0;
    WriteEnable = 0;
    #100;
    ReadSelect1 = 32'b110;
    ReadSelect2 = 32'b1101;
    WriteSelect = 32'b10;
    WriteData = 0;
    WriteEnable = 0;
    #100;
    ReadSelect1 = 32'b110;
    ReadSelect2 = 32'b1101;
    WriteSelect = 32'b10;
    WriteData = 32'b1;
    WriteEnable = 1;
    #100
    $finish;
    end
always #5 clk=~clk;
endmodule


    

    
