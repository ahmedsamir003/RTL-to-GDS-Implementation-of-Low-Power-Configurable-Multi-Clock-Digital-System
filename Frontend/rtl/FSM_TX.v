module FSM_TX (
    input  wire Data_Valid,
    input  wire PAR_EN,
    input  wire ser_done,
    input  wire clk,
    input  wire rst,
    output reg  ser_en,
    output reg  busy,
    output reg  ser_load,
    output reg  [2:0] mux_sel
);

    localparam [2:0] IDLE   = 3'b000,
                     START  = 3'b001,
                     PARITY = 3'b010,
                     DATA   = 3'b011,
                     STOP   = 3'b100;

    localparam [2:0] IDLE_SEL   = 3'b000,
                     START_SEL  = 3'b001,
                     DATA_SEL   = 3'b010,
                     PARITY_SEL = 3'b011,
                     STOP_SEL   = 3'b100;

    reg [2:0] current_state, next_state;

    always @(posedge clk or negedge rst) begin
        if (!rst)
            current_state <= IDLE;
        else
            current_state <= next_state;
    end

    always @(*) begin
        next_state = current_state;
        case (current_state)
            IDLE: begin
                if (Data_Valid)
                    next_state = START;
                else
                    next_state = IDLE;
            end
            START: begin
                next_state = DATA;
            end
            DATA: begin
                if (ser_done) begin
                    if (PAR_EN)
                        next_state = PARITY;
                    else
                        next_state = STOP;
                end else begin
                    next_state = DATA;
                end
            end
            PARITY: begin
                next_state = STOP;
            end
            STOP: begin
                next_state = IDLE;
            end
            default: next_state = IDLE;
        endcase
    end

    always @(*) begin
        busy     = 1'b0;
        ser_en   = 1'b0;
        ser_load = 1'b0;
        mux_sel  = IDLE_SEL;

        case (current_state)
            IDLE: begin
                busy     = 1'b0;
                ser_en   = 1'b0;
                ser_load = 1'b0;
                mux_sel  = IDLE_SEL;
            end
            START: begin
                busy     = 1'b1;
                ser_en   = 1'b0;
                ser_load = 1'b1;
                mux_sel  = START_SEL;
            end
            DATA: begin
                busy     = 1'b1;
                ser_en   = 1'b1;
                ser_load = 1'b0;
                mux_sel  = DATA_SEL;
            end
            PARITY: begin
                busy     = 1'b1;
                ser_en   = 1'b0;
                ser_load = 1'b0;
                mux_sel  = PARITY_SEL;
            end
            STOP: begin
                busy     = 1'b1;
                ser_en   = 1'b0;
                ser_load = 1'b0;
                mux_sel  = STOP_SEL;
            end
            default: begin
                busy     = 1'b0;
                ser_en   = 1'b0;
                ser_load = 1'b0;
                mux_sel  = IDLE_SEL;
            end
        endcase
    end

endmodule