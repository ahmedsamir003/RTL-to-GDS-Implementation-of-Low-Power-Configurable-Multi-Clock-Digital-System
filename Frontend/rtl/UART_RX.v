module UART_RX(
    input  clk,
    input  rst,
    input  RX_IN,
    input  PAR_EN,
    input  PAR_TYP,
    input  [5:0] Prescale,


    output Stop_Error,
    output data_valid,
    output Parity_Error,
    output [7:0] P_DATA
);

wire    Clear;
wire    enable;
wire    stp_err;
wire    par_err;
wire    deser_en;
wire    stp_chk_en;
wire    par_chk_en;
wire    strt_chk_en;
wire    strt_glitch;
wire    dat_samp_en;
wire    sampled_bit;
wire    [3:0] bit_cnt;
wire    [5:0] edge_cnt;

assign Stop_Error   = stp_err;
assign Parity_Error = par_err;

edge_bit_counter U_edge_bit_counter (
    .clk(clk),
    .rst(rst),
    .Clear(Clear),
    .enable(enable),
    .Prescale(Prescale),
    .bit_cnt(bit_cnt),
    .edge_cnt(edge_cnt)
);

data_sampling U_data_sampling (
    .clk(clk),
    .rst(rst),
    .RX_IN(RX_IN),
    .edge_cnt(edge_cnt),
    .dat_samp_en(dat_samp_en),
    .Prescale(Prescale),
    .sampled_bit(sampled_bit)
);

deserializer U_deserializer(
    .sampled_bit(sampled_bit),
    .deser_en(deser_en),
    .clk(clk),
    .rst(rst),
    .P_DATA(P_DATA)
);

Start_Check U_Start_Check (
    .strt_chk_en(strt_chk_en),
    .sampled_bit(sampled_bit),
    .clk(clk),
    .rst(rst),
    .strt_glitch(strt_glitch)
);

Stop_Check U_Stop_Check (
    .stp_chk_en(stp_chk_en),
    .sampled_bit(sampled_bit),
    .clk(clk),
    .rst(rst),
    .stp_err(stp_err)
);

Parity_Check U_Parity_Check (
    .PAR_TYP(PAR_TYP),
    .par_chk_en(par_chk_en),
    .sampled_bit(sampled_bit),
    .P_DATA(P_DATA),
    .clk(clk),
    .rst(rst),
    .par_err(par_err)
);

FSM_RX U_FSM (
    .RX_IN(RX_IN),
    .PAR_EN(PAR_EN),
    .bit_cnt(bit_cnt),
    .edge_cnt(edge_cnt),
    .strt_glitch(strt_glitch),
    .Prescale(Prescale),
    .par_err(par_err),
    .stp_err(stp_err),
    .Clear(Clear),
    .clk(clk),
    .rst(rst),
    .dat_samp_en(dat_samp_en),
    .enable(enable),
    .deser_en(deser_en),
    .data_valid(data_valid),
    .strt_chk_en(strt_chk_en),
    .par_chk_en(par_chk_en),
    .stp_chk_en(stp_chk_en)
);
endmodule
