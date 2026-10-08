module Stop_Check (
    input wire stp_chk_en,
    input wire sampled_bit,
    input wire clk,
    input wire rst,
    
    output reg stp_err
);

always @(posedge clk or negedge rst) begin
    if (!rst)
        stp_err <= 1'b0;
    else if (stp_chk_en)
        stp_err <= ~sampled_bit;
end

endmodule