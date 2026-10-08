module ALU #(
    parameter OPER_WIDTH = 8,
    parameter OUT_WIDTH  = OPER_WIDTH * 2
)(
    input wire [OPER_WIDTH-1:0] A,
    input wire [OPER_WIDTH-1:0] B,
    input wire                  EN,
    input wire [3:0]            ALU_FUN,
    input wire                  clk,
    input wire                  rst,
    output reg [OUT_WIDTH-1:0]  ALU_OUT,
    output reg                  OUT_VALID
);

reg [OUT_WIDTH-1:0] ALU_OUT_Comb;
reg                 OUT_VALID_Comb;

always@(posedge clk or negedge rst) begin
    if (!rst) begin
        ALU_OUT    <= {OUT_WIDTH{1'd0}};
        OUT_VALID  <= 1'd0;
    end else begin
        ALU_OUT    <= ALU_OUT_Comb;
        OUT_VALID  <= OUT_VALID_Comb;
    end
end

always@(*) begin
    OUT_VALID_Comb = 1'b0;
    ALU_OUT_Comb = {OUT_WIDTH{1'd0}};
    if (EN) begin
        OUT_VALID_Comb = 1'd1;
        case(ALU_FUN)
            4'b0000 : ALU_OUT_Comb = A + B ;

            4'b0001 : ALU_OUT_Comb = A - B ;

            4'b0010 : ALU_OUT_Comb = A * B ;

            4'b0011 :
                if (B != 0)
                    ALU_OUT_Comb = A / B ;
                else
                    ALU_OUT_Comb = 0;

            4'b0100 : ALU_OUT_Comb = A & B ;

            4'b0101 : ALU_OUT_Comb = A | B ;

            4'b0110 : ALU_OUT_Comb = ~(A & B) ;

            4'b0111 : ALU_OUT_Comb = ~(A | B) ;

            4'b1000 : ALU_OUT_Comb = A ^ B ;

            4'b1001 : ALU_OUT_Comb = ~(A ^ B) ;
            
            4'b1010 :
                if (A == B)
                    ALU_OUT_Comb = 1;
                else
                    ALU_OUT_Comb = 0;

            4'b1011 :
                if (A > B)
                    ALU_OUT_Comb = 2;
                else
                    ALU_OUT_Comb = 0;

            4'b1100 :
                if (A < B)
                    ALU_OUT_Comb = 3;
                else
                    ALU_OUT_Comb = 0;

            4'b1101 : ALU_OUT_Comb = A >> 1 ;

            4'b1110 : ALU_OUT_Comb = A << 1 ;

            default : ALU_OUT_Comb = 0;
        endcase
    end
    else begin
        OUT_VALID_Comb = 1'b0;
    end
end

endmodule
