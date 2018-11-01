module DataMemory(addr, writedata, writenable, readenable, readdata, clk, rst);

    parameter BITSIZE = 64;
    parameter REGSIZE = 32;
    input [63:0] addr;
    input [BITSIZE-1:0] writedata;
    input writenable, readenable;
    input clk, rst;
    output reg [BITSIZE-1:0] readdata;
    reg [BITSIZE-1:0] memory_file [REGSIZE-1:0];   // Entire list of registers
    reg [BITSIZE-1:0] reg_file [REGSIZE-1:0];   // Entire list of registers
    integer i;                                  // Used below to rst all registers    

    // Write back to register file on clk edge.
    always @(posedge clk)
    begin
        if (rst)
            begin
            for (i=0; i<REGSIZE; i=i+1) reg_file[i] <= 'b0; // rst all registers
            end
        else
            begin
            if (writenable)
            //if (writenable && addr != 31)
                memory_file[addr[4:0]] <= writedata; //If writeback is enabled and not 0 register.
            else
                begin
                if(readenable)
                    readdata = memory_file[addr[4:0]];
                end

            end
    end
    
endmodule

