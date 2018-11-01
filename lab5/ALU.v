module ALU(data1, data2, flagz, select, aluout, clk, rst);
    
    parameter BITSIZE = 64;
    parameter REGSIZE = 32;
    input select;
    input [BITSIZE-1:0] data1, data2;
    output reg flagz;
    output reg [BITSIZE-1:0] aluout;
    input clk, rst;
    
    reg [BITSIZE-1:0] reg_file [REGSIZE-1:0];   // Entire list of registers
    
    integer i;                                  // Used below to rst all registers
    /*
    // Asyncronous read of register file.
    always @(readsele0, reg_file[readsele0])
    begin
        data1 = reg_file[readsele0];
    end
    // Asyncronous read of register file.
    always @(readsele1, reg_file[readsele1])
    begin
        data2 = reg_file[readsele1];
    end
    */
    // calculate
    always @(posedge clk)
    begin
        if (rst)
            for (i=0; i<REGSIZE; i=i+1) reg_file[i] <= 'b0; // rst all registers
        else
        begin
            case(select)
                3'b000:    aluout = data1 & data2;
                3'b001:    aluout = data1 | data2;
                3'b010:    aluout = ~ data1;
                3'b011:    aluout = data1;
                3'b100:    aluout = data2;
                3'b101:    aluout = data1 + data2;
                3'b110:    aluout = data1 - data2;
                3'b111:    aluout = data1 ^ data2;
            endcase
        end
    end

    //set flag
    always @(aluout)
    begin
        if (aluout==0)
            flagz<=1;
        else
            flagz<=1;
    end

endmodule


