`timescale 1ns / 1ps

module test();
    wire [31:0] RD1, RD2;
    reg [31:0] RR1, RR2, WR, WD;
    reg clk; 
    
    RegisterFile uut (RD1, RD2, RR1, RR2, WR, WD, 1'b1, clk);
    
    always #10 clk = ~clk;  
    
    initial begin
      #0 
        clk = 0;
        WR = 0;
        WD = 32'b0000_0000_0000_0000_0000_0000_0000_1111;
      #20
        WR = 1; 
        WD = 32'b0000_0000_0000_0000_0000_0000_1111_0000;
      #20
        WR = 2; 
        WD = 32'b0000_0000_0000_0000_0000_1111_0000_0000;
      #20
        WR = 3; 
        WD = 32'b0000_0000_0000_0000_1111_0000_0000_0000;
      #20
        WR = 4; 
        WD = 32'b0000_0000_0000_1111_0000_0000_0000_0000;
      #20
        WR = 5; 
        WD = 32'b0000_0000_1111_0000_0000_0000_0000_0000;
      #20
        WR = 6; 
        WD = 32'b0000_1111_0000_0000_0000_0000_0000_0000;
      #20
        WR = 7; 
        WD = 32'b1111_0000_0000_0000_0000_0000_0000_0000;
      #20
        RR1 = 0; RR2 = 1;
      #20
        RR1 = 2; RR2 = 3;
      #20
        RR1 = 4; RR2 = 5;
      #20
        RR1 = 6; RR2 = 7;
      #20 $stop;
    end
endmodule
