`timescale 1ns / 1ps
module PC_branch(shiftleft2, branch, flagz, uncondbranch, pcadd, clk, rst);

    parameter BITSIZE = 64;
    parameter REGSIZE = 32;
    input [BITSIZE-1:0] shiftleft2;
    input branch, flagz;
    input uncondbranch;
    output reg [BITSIZE-1:0] pcadd;
    input clk, rst;
    reg select;
    reg [BITSIZE-1:0] reg_file [REGSIZE-1:0];   // Entire list of registers
    
    integer i;                                  // Used below to rst all registers
    
always @(posedge clk)
begin
    if(rst==1)
        begin
            pcadd <= 0;
        end
    else
        begin
            select <= branch&flagz + uncondbranch;
            if(select)
		        pcadd = pcadd + shiftleft2;
            else
		        pcadd = pcadd + 1;
	    end
end

endmodule
