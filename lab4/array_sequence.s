	.8byte				//    PRESERVE8

	.global array_sequence	       // Export symbol

array_sequence:                    // X0 -> first parameter

/************Begin Implementation here**************/
//task1
//assume array in x0
           orr x14, xzr, xzr        //i=0
           lsl x11, x14, #3         //i*8
           add x12, x0, x11
           ldur x13, [x12, 0]      //
           add x13, xzr, xzr       //A[0]=0
           stur x13, [x12, 0]      //
           ldur x13, [x12, 8]      //
           add x13, xzr, xzr
           add x13, x13, #1        //A[1]=1
           stur x13, [x12, 8]      //

           orr x14, xzr, xzr        //i=0
LOOP:      sub x10, x14, #30        //i=3
           cbz x10, END            //32 elements in total, when i+2=32 stop

           lsl x11, x14, #3         //i*8
           add x12, x0, x11        //x12 is the address
           ldur x13, [x12, 0]      //
           lsl x15, x13, #1        //x14=2*A[i-2]
           add x13, x15, #2        //x13=A[i]=2*A[i-2]+2
           stur x13, [x12, 16]     //
           add x14, x14, #1        //i=i+1
           b LOOP

END:
/************End Implementation here****************/
// This returns back to C code
	BR x30
