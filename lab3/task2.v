`timescale 1ns / 1ps
module task2(clk, rst, clkout,counter);

input clk,rst;
output wire clkout;
output wire [30:0]counter;
reg clko;
reg [30:0]con;
    
always @(posedge clk or posedge rst)
begin
    con<=0;
	if(rst)
		  begin
			con<= 0;
		  end
	else
		begin
			if(con>=99999999)
				con <= 0;
			else
				con <= con+1;
        end
    if(con<=50000000)
             begin
                  clko = 0;
             end
        else
             begin
                   clko = 1;
             end
     end

assign counter=con;
assign clkout=clko;

endmodule
