module edge_bit_counter (
    input wire clk,
    input wire rst,
    input wire Clear,
    input wire enable,
    input wire [5:0] Prescale,

    output reg [3:0] bit_cnt,
    output reg [5:0] edge_cnt
);

always@(posedge clk or negedge rst)
begin
    if(!rst)
        begin
            bit_cnt  <= 4'd0;
            edge_cnt <= 6'd0;
        end

    else if(Clear)
        begin
            bit_cnt  <= 4'd0;
            edge_cnt <= 6'd0;
        end
    
    else if(enable)
        begin

            if(edge_cnt == Prescale - 1)
                begin
                    edge_cnt <= 6'd0;
                    bit_cnt <= bit_cnt + 4'd1;
                end

            else
                begin
                    edge_cnt <= edge_cnt + 1;
                end
        end
    else
        begin
            edge_cnt <= 6'd0;
            bit_cnt  <= 4'd0;
        end
end
endmodule