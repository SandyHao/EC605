module Register_File(ReadSelect1, ReadSelect2, WriteSelect, WriteData, WriteEnable, ReadData1, ReadData2, clk, rst);
    
    parameter BITSIZE = 64;
    parameter REGSIZE = 32;
    input [$clog2(REGSIZE)-1:0] ReadSelect1, ReadSelect2, WriteSelect;//three input   Rd, Rt/Rn, Rm
    input [BITSIZE-1:0] WriteData;//from DataMemory
    input WriteEnable;
    output reg [BITSIZE-1:0] ReadData1, ReadData2;
    input clk, rst;
    
    reg [BITSIZE-1:0] reg_file [REGSIZE-1:0];   // Entire list of registers
    
    integer i;                                  // Used below to rst all registers
    
    //input to output
    // Asyncronous read of register file.
    always @(ReadSelect1, reg_file[ReadSelect1])
    begin
        ReadData1 = reg_file[ReadSelect1];
    end
    // Asyncronous read of register file.
    always @(ReadSelect2, reg_file[ReadSelect2])
    begin
        ReadData2 = reg_file[ReadSelect2];
    end
    
    // Write back to register file on clk edge.
    always @(posedge clk)
    begin
        if (rst)
            for (i=0; i<REGSIZE; i=i+1) reg_file[i] <= 'b0; // rst all registers
        else
        begin
            if (WriteEnable && WriteSelect != 31)
                reg_file[WriteSelect] <= WriteData; //If writeback is enabled and not 0 register.
        end
    end

endmodule

