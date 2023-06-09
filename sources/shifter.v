`timescale 1ns / 1ps
/*  * Module: shifter.v  
* Project: milestone 2  
* Author: laila khashaba -lailakhashaba@aucegypt.edu
jannah soliman- jannahsoliman9@aucegypt.edu
* Description: shifter module to be used in alu  
*  
* Change history: 13/4/23 -  implemented module
               
*  **********************************************************************/


module shifter( input [31:0] a, input [4:0] shamt, input[1:0] type, output reg [31:0] r

    );
    always @(*)
    begin 
   case(type)
            2'b00: r=a>>shamt;
            2'b01: r=a<<shamt;
            2'b10: r=$signed(a)>>shamt;
            default: r=a;
        endcase
    end 
endmodule
