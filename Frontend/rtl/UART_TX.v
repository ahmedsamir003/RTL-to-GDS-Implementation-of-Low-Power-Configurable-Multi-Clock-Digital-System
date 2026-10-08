module UART_TX (
input [7:0] P_DATA,
input Data_Valid,
input PAR_TYP,
input PAR_EN,
input clk,
input rst,
output TX_OUT,
output busy
);

wire ser_en;
wire ser_load;
wire ser_done;
wire ser_data;
wire par_bit;
wire [2:0] mux_sel;
wire start_bit;
wire stop_bit;

assign start_bit = 1'b0;
assign stop_bit  = 1'b1;


serializer U_serializer (
    .P_DATA     (P_DATA),
    .ser_en     (ser_en),
    .ser_load   (ser_load),
    .clk        (clk),
    .rst        (rst),
    .ser_done   (ser_done),
    .ser_data   (ser_data)
);

parity_calc U_parity_calc (
    .P_DATA (P_DATA),
    .Data_Valid (Data_Valid),
    .PAR_TYP (PAR_TYP),
    .clk (clk),
    .rst (rst),
    .par_bit (par_bit)
);

MUX_TX U_MUX (
    .mux_sel (mux_sel),
    .start_bit (start_bit),
    .stop_bit (stop_bit),
    .ser_data (ser_data),
    .par_bit (par_bit),
    .TX_OUT (TX_OUT)
);

FSM_TX U_FSM (
    .Data_Valid (Data_Valid),
    .PAR_EN (PAR_EN),
    .ser_done (ser_done),
    .clk (clk),
    .rst (rst),
    .ser_en (ser_en),
    .busy (busy),
    .ser_load (ser_load),
    .mux_sel (mux_sel)
);

endmodule