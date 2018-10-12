`timescale 1ns / 1ps
module task3(clk, rst, sw, sw2, max8, leds);
input clk,rst;
input sw, sw2;
input wire [7:0]max8;					
output [3:0] leds;
wire clkout;
wire [30:0]counter;
reg [2:0]state;
reg clko;
reg [30:0]con;
reg[7:0] count8;

always @(posedge clk)
begin
    con<=0;
//	if(rst)
//		  begin
//			con<= 0;
//		  end
//	else
//		begin
			if(con>=99999999)
				con <= 0;
			else
				con <= con+1;
//        end
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

always @(posedge clkout)
begin   
    if(rst)
        begin
            state <= 3'b000;
            count8 <= 0;
        end
    else
    begin
      if(sw2==0)
      begin
      count8=count8+1;
             if(count8==max8)
                   begin
                       case(state)
                       3'b000: state <= (sw==1'b0) ? 3'b001 : 3'b100;
                       3'b001: state <= (sw==1'b0) ? 3'b010 : 3'b000;
                       3'b010: state <= (sw==1'b0) ? 3'b011 : 3'b001;
                       3'b011: state <= (sw==1'b0) ? 3'b100 : 3'b010;
                       default: state <= (sw==1'b0) ? 3'b000 : 3'b011;
                       endcase
                       count8<=0;
                    end                  
	    end
	    else
	       begin
	       count8 <= count8;
	       state <= state;
	       end
	 end
end
assign leds[3]=(state==3'b100)? 1'b1:1'b0;
assign leds[2]=(state==3'b011)? 1'b1:1'b0;
assign leds[1]=(state==3'b010)? 1'b1:1'b0;
assign leds[0]=(state==3'b001)? 1'b1:1'b0;

endmodule
