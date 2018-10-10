`timescale 1ns / 1ps
/********* EXAMPLE SEVEN SEGMENT DISPLAY MODULE **********/
/* This function would be used to convert a decimal digit*/
/* into a proper seven segment display value. Refer to   */
/* reference manual for seven segment led configuration  */
module sevenseg(Y,seven_seg);
input [3:0] Y;
output reg [6:0] seven_seg;

always @(*)begin
case (Y[3:0])
	   4'b0000:	seven_seg= 7'b0000001 ;
	   4'b0001:	seven_seg= 7'b1001111 ;
	   4'b0010:	seven_seg= 7'b0010010 ;
	   4'b0011:	seven_seg= 7'b0000110 ;
	   4'b0100:	seven_seg= 7'b1001100 ;
	   4'b0101:	seven_seg= 7'b0100100 ;
	   4'b0110:	seven_seg= 7'b0100000 ;
	   4'b0111:	seven_seg= 7'b0001111 ;
	   4'b1000:	seven_seg= 7'b0000000 ;
	   4'b1001:	seven_seg= 7'b0000100 ;
	   4'b1010:	seven_seg= 7'b0001000 ;
	   4'b1011:	seven_seg= 7'b1100000 ;
	   4'b1100:	seven_seg= 7'b0110001 ;
	   4'b1101:	seven_seg= 7'b1000010 ;
	   4'b1110:	seven_seg= 7'b0110000 ;
	   4'b1111:	seven_seg= 7'b0111000 ;
endcase
end
endmodule