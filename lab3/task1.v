`timescale 1ns / 1ps
module task1(clk, rst, direction, max8, pauswitch, count8);

input clk,rst;
input direction;
input wire [7:0]max8;				
input pauswitch;		
output reg [7:0] count8;
assign max8[7:0]=8'b11111111;
always @(posedge clk)
begin
   
    if(rst==1)
        begin
            count8 <= 0;
        end
    else
        begin
            if(pauswitch==1)
	           begin
		          count8 = count8;
	           end
            else
		       begin
		          if(direction==0)
			         begin
				        count8 = count8+1;
				            if(count8==max8)
					           begin
                                    count8=count8;
                                end
			         end
    		      else if(direction==1)
			         begin
				        count8 = count8-1;
				            if(count8==0)
				                begin
				                    count8=count8;
				                end
			         end
               end
	     end
   
end

endmodule
