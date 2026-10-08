module UART (
    input  wire       RST,
    input  wire       TX_CLK,
    input  wire       RX_CLK,
    input  wire       RX_IN_S,
    output wire [7:0] RX_OUT_P,
    output wire       RX_OUT_V,
    input  wire [7:0] TX_IN_P,
    input  wire       TX_IN_V,
    output wire       TX_OUT_S,
    output wire       TX_OUT_V,
    input  wire [5:0] Prescale,
    input  wire       parity_enable,
    input  wire       parity_type,
    output wire       parity_error,
    output wire       framing_error
);

    // UART Transmitter Submodule Instantiation
    UART_TX U0_UART_TX (
        .P_DATA     (TX_IN_P),
        .Data_Valid (TX_IN_V),
        .PAR_TYP    (parity_type),
        .PAR_EN     (parity_enable),
        .clk        (TX_CLK),
        .rst        (RST),
        .TX_OUT     (TX_OUT_S),
        .busy       (TX_OUT_V)
    );

    // UART Receiver Submodule Instantiation
    UART_RX U0_UART_RX (
        .clk          (RX_CLK),
        .rst          (RST),
        .RX_IN        (RX_IN_S),
        .PAR_EN       (parity_enable),
        .PAR_TYP      (parity_type),
        .Prescale     (Prescale),
        .Stop_Error   (framing_error),
        .data_valid   (RX_OUT_V),
        .Parity_Error (parity_error),
        .P_DATA       (RX_OUT_P)
    );

endmodule