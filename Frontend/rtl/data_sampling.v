module data_sampling (
    input  wire clk,
    input  wire rst,
    input  wire RX_IN,
    input  wire [5:0] edge_cnt,
    input  wire dat_samp_en,
    input  wire [5:0] Prescale,


    output reg sampled_bit
);

reg [1:0] samples;

always@(posedge clk or negedge rst)
begin
    if(!rst)
        begin
            sampled_bit <= 1'b0;
            samples     <= 2'b00;
        end
    
    else if (dat_samp_en)
        begin
            case(Prescale)
            // 8x Oversampling
            6'd8:   begin
                    if(edge_cnt == 5'd3)        samples[0] <= RX_IN;
                    else if(edge_cnt == 5'd4)   samples[1] <= RX_IN;
                    else if(edge_cnt == 5'd5)   begin
                       sampled_bit <= (samples[0]&samples[1] | ((samples[0]^samples[1])&RX_IN));
                    end
                end
            // 16x Oversampling
            6'd16:
                begin
                    if(edge_cnt == 5'd7)        samples[0] <= RX_IN;
                    else if(edge_cnt == 5'd8)   samples[1] <= RX_IN;
                    else if(edge_cnt == 5'd9)   begin
                       sampled_bit <= (samples[0]&samples[1] | ((samples[0]^samples[1])&RX_IN));
                    end
                end
            // 32x Oversampling
            6'd32:
                begin
                    if(edge_cnt == 5'd15)        samples[0] <= RX_IN;
                    else if(edge_cnt == 5'd16)   samples[1] <= RX_IN;
                    else if(edge_cnt == 5'd17)   begin
                       sampled_bit <= (samples[0]&samples[1] | ((samples[0]^samples[1])&RX_IN));
                    end
                end
                
            default: sampled_bit <= 1'b0;
            endcase
        end
    else
        begin
            samples     <= 2'b00;
            sampled_bit <= 1'b0;
        end
end
endmodule