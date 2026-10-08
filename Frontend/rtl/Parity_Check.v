module Parity_Check (
    input wire PAR_TYP,
    input wire par_chk_en,
    input wire sampled_bit,
    input wire [7:0] P_DATA,
    input wire clk,
    input wire rst,

    output reg par_err
);

wire expected_parity;
assign expected_parity = (PAR_TYP) ? ~(^P_DATA) : (^P_DATA);

always @(posedge clk or negedge rst) begin
    if (!rst)
        par_err <= 1'b0;
    else if (par_chk_en)
        par_err <= (expected_parity != sampled_bit);
end

endmodule