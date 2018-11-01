module IMtest;

parameter BITSIZE = 32;
parameter REGSIZE = 64;
reg [REGSIZE-1:0] Address;
wire [BITSIZE-1:0] ReadData1;

Instruction_Memory IM1(Address, ReadData1);

initial
    begin
    Address=0;
    #100;
    Address=64'b10;
    #100;
    $finish;
    end
endmodule
