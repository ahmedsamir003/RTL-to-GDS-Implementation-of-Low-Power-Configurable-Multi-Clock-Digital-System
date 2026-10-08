module deserializer (
    input wire sampled_bit,
    input wire deser_en,
    input wire clk,
    input wire rst,

    output reg [7:0] P_DATA
);

always @(posedge clk or negedge rst) begin
    if (!rst) begin
        P_DATA <= 8'd0;
    end else if (deser_en) begin
        P_DATA <= {sampled_bit, P_DATA[7:1]};
    end
end
endmodule