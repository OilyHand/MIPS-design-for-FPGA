module Mux_2(
    output reg [31:0] Y,
    input [31:0] X1, X2,
    input Sel
    );
    
    always @(Sel)
      case(Sel)
        0: Y = X1;
        default: Y = X2;
      endcase
endmodule
