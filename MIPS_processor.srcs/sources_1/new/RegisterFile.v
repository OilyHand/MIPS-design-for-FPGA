module RegisterFile(
    output [31:0] RD1, RD2,
    input [4:0] RR1, RR2, WR, 
    input [31:0] WD,
    input WriteReg, // control signal
    input clk
    );
    wire [31:0] WSel;
    wire [31:0] Q [31:0];
    
    Decoder_5to32   U0 (.Y(WSel), .X(WR), .En(WriteReg));
           Mux_32   U1 (.Y(RD1), .Sel(RR1), 
                        .X0(Q[0]),   .X1(Q[1]),   .X2(Q[2]),   .X3(Q[3]), 
                        .X4(Q[4]),   .X5(Q[5]),   .X6(Q[6]),   .X7(Q[7]),
                        .X8(Q[8]),   .X9(Q[9]),   .X10(Q[10]), .X11(Q[11]), 
                        .X12(Q[12]), .X13(Q[13]), .X14(Q[14]), .X15(Q[15]), 
                        .X16(Q[16]), .X17(Q[17]), .X18(Q[18]), .X19(Q[19]), 
                        .X20(Q[20]), .X21(Q[21]), .X22(Q[22]), .X23(Q[23]),
                        .X24(Q[24]), .X25(Q[25]), .X26(Q[26]), .X27(Q[27]), 
                        .X28(Q[28]), .X29(Q[29]), .X30(Q[30]), .X31(Q[31])
                       );
                        
           Mux_32   U2 (.Y(RD2), .Sel(RR2),
                        .X0(Q[0]),   .X1(Q[1]),   .X2(Q[2]),   .X3(Q[3]),
                        .X4(Q[4]),   .X5(Q[5]),   .X6(Q[6]),   .X7(Q[7]),
                        .X8(Q[8]),   .X9(Q[9]),   .X10(Q[10]), .X11(Q[11]),
                        .X12(Q[12]), .X13(Q[13]), .X14(Q[14]), .X15(Q[15]), 
                        .X16(Q[16]), .X17(Q[17]), .X18(Q[18]), .X19(Q[19]),
                        .X20(Q[20]), .X21(Q[21]), .X22(Q[22]), .X23(Q[23]),
                        .X24(Q[24]), .X25(Q[25]), .X26(Q[26]), .X27(Q[27]),
                        .X28(Q[28]), .X29(Q[29]), .X30(Q[30]), .X31(Q[31])
                       );
    
    dff Reg0  (.Q(Q[0]),  .D(WSel[0] & WD),  .En(WriteReg), .clk(clk));
    dff Reg1  (.Q(Q[1]),  .D(WSel[1] & WD),  .En(WriteReg), .clk(clk));
    dff Reg2  (.Q(Q[2]),  .D(WSel[2] & WD),  .En(WriteReg), .clk(clk));
    dff Reg3  (.Q(Q[3]),  .D(WSel[3] & WD),  .En(WriteReg), .clk(clk));
    dff Reg4  (.Q(Q[4]),  .D(WSel[4] & WD),  .En(WriteReg), .clk(clk));
    dff Reg5  (.Q(Q[5]),  .D(WSel[5] & WD),  .En(WriteReg), .clk(clk));
    dff Reg6  (.Q(Q[6]),  .D(WSel[6] & WD),  .En(WriteReg), .clk(clk));
    dff Reg7  (.Q(Q[7]),  .D(WSel[7] & WD),  .En(WriteReg), .clk(clk));
    dff Reg8  (.Q(Q[8]),  .D(WSel[8] & WD),  .En(WriteReg), .clk(clk));
    dff Reg9  (.Q(Q[9]),  .D(WSel[9] & WD),  .En(WriteReg), .clk(clk));
    dff Reg10 (.Q(Q[10]), .D(WSel[10] & WD), .En(WriteReg), .clk(clk));
    dff Reg11 (.Q(Q[11]), .D(WSel[11] & WD), .En(WriteReg), .clk(clk));
    dff Reg12 (.Q(Q[12]), .D(WSel[12] & WD), .En(WriteReg), .clk(clk));
    dff Reg13 (.Q(Q[13]), .D(WSel[13] & WD), .En(WriteReg), .clk(clk));
    dff Reg14 (.Q(Q[14]), .D(WSel[14] & WD), .En(WriteReg), .clk(clk));
    dff Reg15 (.Q(Q[15]), .D(WSel[15] & WD), .En(WriteReg), .clk(clk));
    dff Reg16 (.Q(Q[16]), .D(WSel[16] & WD), .En(WriteReg), .clk(clk));
    dff Reg17 (.Q(Q[17]), .D(WSel[17] & WD), .En(WriteReg), .clk(clk));
    dff Reg18 (.Q(Q[18]), .D(WSel[18] & WD), .En(WriteReg), .clk(clk));
    dff Reg19 (.Q(Q[19]), .D(WSel[19] & WD), .En(WriteReg), .clk(clk));
    dff Reg20 (.Q(Q[20]), .D(WSel[20] & WD), .En(WriteReg), .clk(clk));
    dff Reg21 (.Q(Q[21]), .D(WSel[21] & WD), .En(WriteReg), .clk(clk));
    dff Reg22 (.Q(Q[22]), .D(WSel[22] & WD), .En(WriteReg), .clk(clk));
    dff Reg23 (.Q(Q[23]), .D(WSel[23] & WD), .En(WriteReg), .clk(clk));
    dff Reg24 (.Q(Q[24]), .D(WSel[24] & WD), .En(WriteReg), .clk(clk));
    dff Reg25 (.Q(Q[25]), .D(WSel[25] & WD), .En(WriteReg), .clk(clk));
    dff Reg26 (.Q(Q[26]), .D(WSel[26] & WD), .En(WriteReg), .clk(clk));
    dff Reg27 (.Q(Q[27]), .D(WSel[27] & WD), .En(WriteReg), .clk(clk));
    dff Reg28 (.Q(Q[28]), .D(WSel[28] & WD), .En(WriteReg), .clk(clk));
    dff Reg29 (.Q(Q[29]), .D(WSel[29] & WD), .En(WriteReg), .clk(clk));
    dff Reg30 (.Q(Q[30]), .D(WSel[30] & WD), .En(WriteReg), .clk(clk));
    dff Reg31 (.Q(Q[31]), .D(WSel[31] & WD), .En(WriteReg), .clk(clk));
    
endmodule