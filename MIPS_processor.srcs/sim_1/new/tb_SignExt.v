`timescale 1ns / 1ps

module tb_SignExt();
    reg [15:0] D;
    wire [31:0] Y;
    
    SignExt uut (.Y(Y), .X(D));
    
    initial begin
        D = 0;
        #20 D = 16'b0011_0000_0110_0000;
        #20 D = 16'b1110_0000_0110_0011;
        #20 $stop;
    end
endmodule
