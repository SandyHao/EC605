`timescale 1ns / 1ns
module Instruction_Memory(Address, ReadData1);
parameter BITSIZE = 32;
parameter REGSIZE = 64;
input [REGSIZE-1:0] Address;
output reg [BITSIZE-1:0] ReadData1;

reg [BITSIZE-1:0] memory_file [0:REGSIZE-1];	// Entire list of memory

// Asyncronous read of memory. Was not specified.
always @(Address, memory_file[Address])
begin
	ReadData1 = memory_file[Address];
end

integer i;
//MY method of filling the memory instead of through a test bench
initial
	begin
	    i = 0;
		memory_file[i] = 32'b11010010100_0000000000000001_00000; //MOVZ
		i = i+1;
		memory_file[i] = 32'b11010010100_0000000000000001_00001; //MOVZ
		i = i+1;
		memory_file[i] = 32'b10001011000_00001_000000_00000_00010; //ADD
		i = i+1;
		memory_file[i] = 32'b000101_000000101100001010000100;//branch
		i = i+1;
        memory_file[i] = 32'b10001010000_00001_000000_00100_00010;//and
        i = i+1;
        memory_file[i] = 32'b10101010000_00001_000000_00100_00100;//eor
        i = i+1;
        memory_file[i] = 32'b10110100000_0000100000100000_00010;//cbz
        i = i+1;
        memory_file[i] = 32'b11001011000_00001_000000_00010_00010;//sub
        i = i+1;
        memory_file[i] = 32'b11111000000_00001000000_01000_00010;//stur
        i = i+1;
        memory_file[i] = 32'b11111000010_00001000000_00100_00010;//ldur
        i = i+1;
        memory_file[i] = 32'b00111000000_00001000000_01000_00010;//sturb
        i = i+1;
        memory_file[i] = 32'b00111000010_00001000000_00100_00010;//ldurb		
 	end

endmodule
