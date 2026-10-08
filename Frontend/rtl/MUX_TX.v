module MUX_TX (
input [2:0] mux_sel,
input start_bit,
input stop_bit,
input ser_data,
input par_bit,
output reg TX_OUT
);

localparam  [2:0]   IDLE_SEL   = 3'b000,
                    START_SEL  = 3'b001,
                    DATA_SEL   = 3'b010,
                    PARITY_SEL = 3'B011,
                    STOP_SEL   = 3'b100;

always@(*)
begin
case(mux_sel)
    IDLE_SEL:   TX_OUT = stop_bit;
    START_SEL:  TX_OUT = start_bit;
    DATA_SEL:   TX_OUT = ser_data;
    PARITY_SEL: TX_OUT = par_bit;
    STOP_SEL:   TX_OUT = stop_bit;
    default:    TX_OUT = stop_bit; 
endcase
end

endmodule