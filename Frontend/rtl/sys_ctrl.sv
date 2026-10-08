module sys_ctrl #(
    parameter   DATA_WIDTH = 8,
    parameter   ADDR_WIDTH = 4,
    parameter   ALU_OUT_WIDTH  = 16,
    parameter   ALU_FUN_WIDTH  = 4,
    // Command Encoding
    parameter   RF_Wr_CMD    = 8'hAA,
    parameter   RF_Rd_CMD    = 8'hBB,
    parameter   ALU_CMD_OP   = 8'hCC,
    parameter   ALU_CMD_NOP  = 8'hDD,
    // Register File Operands Address
    parameter   RF_OP_A_ADDR = 4'h0,
    parameter   RF_OP_B_ADDR = 4'h1
)(
    // Clock & Reset
    input  logic                     CLK,
    input  logic                     RST,
    // RX Data Synchronizer Interface
    input  logic [7:0]               UART_RX_DATA,
    input  logic                     UART_RX_VLD,
    // Register File Interface
    output logic                     RF_WrEn,
    output logic                     RF_RdEn,
    output logic [ADDR_WIDTH-1:0]    RF_Address,
    output logic [DATA_WIDTH-1:0]    RF_WrData,
    input  logic [DATA_WIDTH-1:0]    RF_RdData,
    input  logic                     RF_RdData_VLD,
    // ALU Interface
    output logic [ALU_FUN_WIDTH-1:0] ALU_FUN,
    output logic                     ALU_EN,
    input  logic [ALU_OUT_WIDTH-1:0] ALU_OUT,
    input  logic                     ALU_OUT_VLD,
    // Clock Enables
    output logic                     CLKG_EN,
    output logic                     CLKDIV_EN,
    // TX / FIFO Interface
    input  logic                     FIFO_FULL,
    output logic [DATA_WIDTH-1:0]    UART_TX_DATA,
    output logic                     UART_TX_VLD
);

typedef enum logic [3:0] {
    IDLE         = 4'd0,
    // Register File Write Operation
    WAIT_WR_ADDR = 4'd1,
    WAIT_WR_DATA = 4'd2,
    // Register File Read Operation
    WAIT_RD_ADDR = 4'd3,
    WAIT_RD_VLD  = 4'd4,
    SEND_RD_DATA = 4'd5,   
    // ALU Operation
    WAIT_ALU_A   = 4'd6,
    WAIT_ALU_B   = 4'd7,
    WAIT_ALU_FUN = 4'd8,
    WAIT_ALU_OUT = 4'd9,
    SEND_ALU_LSB = 4'd10,  
    SEND_ALU_MSB = 4'd11
} state_t;

state_t current_state, next_state;

//---------------- Dynamic Clock Gating ----------------
assign CLKG_EN   = (current_state == WAIT_ALU_FUN) || (current_state == WAIT_ALU_OUT); 

// Tied high assuming UART requires a continuous divided clock.
assign CLKDIV_EN = 1'b1;

// Internal registers to latch valid pulses while waiting for FIFO
logic [DATA_WIDTH-1:0]    rd_data_reg;
logic [ALU_OUT_WIDTH-1:0] alu_out_reg;

//---------------- State Transition ----------------
always_ff @(posedge CLK or negedge RST) begin
    if (!RST) begin
        current_state <= IDLE;
    end else begin
        current_state <= next_state;
    end
end

//---------------- Next State Logic ----------------
always_comb begin
    next_state = current_state;
    case (current_state)
        IDLE: begin
            if (UART_RX_VLD) begin
                case (UART_RX_DATA)
                    RF_Wr_CMD:   next_state = WAIT_WR_ADDR;
                    RF_Rd_CMD:   next_state = WAIT_RD_ADDR;
                    ALU_CMD_OP:  next_state = WAIT_ALU_A;
                    ALU_CMD_NOP: next_state = WAIT_ALU_FUN;
                    default:     next_state = IDLE;
                endcase
            end
        end

        //---------------- Register File Write States ----------------
        WAIT_WR_ADDR: if (UART_RX_VLD) next_state = WAIT_WR_DATA;
        WAIT_WR_DATA: if (UART_RX_VLD) next_state = IDLE;

        //---------------- Register File Read States ----------------
        WAIT_RD_ADDR: if (UART_RX_VLD)   next_state = WAIT_RD_VLD;
        WAIT_RD_VLD:  if (RF_RdData_VLD) next_state = SEND_RD_DATA;
        SEND_RD_DATA: if (!FIFO_FULL)    next_state = IDLE;

        //---------------- ALU Operation States ----------------
        WAIT_ALU_A:   if (UART_RX_VLD) next_state = WAIT_ALU_B;
        WAIT_ALU_B:   if (UART_RX_VLD) next_state = WAIT_ALU_FUN;
        WAIT_ALU_FUN: if (UART_RX_VLD) next_state = WAIT_ALU_OUT;
        WAIT_ALU_OUT: if (ALU_OUT_VLD) next_state = SEND_ALU_LSB;
        SEND_ALU_LSB: if (!FIFO_FULL)  next_state = SEND_ALU_MSB;
        SEND_ALU_MSB: if (!FIFO_FULL)  next_state = IDLE;
        
        default: next_state = IDLE;
    endcase
end

//---------------- Output Logic ----------------
always_ff @(posedge CLK or negedge RST) begin
    if (!RST) begin
        RF_WrEn      <= 1'b0;                           
        RF_RdEn      <= 1'b0;
        RF_Address   <= {ADDR_WIDTH{1'b0}};             
        RF_WrData    <= {DATA_WIDTH{1'b0}};
        UART_TX_DATA <= {DATA_WIDTH{1'b0}};             
        UART_TX_VLD  <= 1'b0;
        ALU_EN       <= 1'b0;                           
        ALU_FUN      <= {ALU_FUN_WIDTH{1'b0}};
        rd_data_reg  <= {DATA_WIDTH{1'b0}};
        alu_out_reg  <= {ALU_OUT_WIDTH{1'b0}};
    end else begin
        //---------------- Default Assignments ----------------
        RF_WrEn     <= 1'b0;   
        RF_RdEn     <= 1'b0;
        UART_TX_VLD <= 1'b0;
        ALU_EN      <= 1'b0;
        ALU_FUN     <= {ALU_FUN_WIDTH{1'b0}};

        case (current_state)
            //---------------- Register File Write States ----------------
            WAIT_WR_ADDR: begin
                if (UART_RX_VLD) begin
                    RF_Address <= UART_RX_DATA[ADDR_WIDTH-1:0];
                end
            end
            WAIT_WR_DATA: begin
                if (UART_RX_VLD) begin
                    RF_WrData <= UART_RX_DATA;
                    RF_WrEn   <= 1'b1;
                end
            end

            //---------------- Register File Read States ----------------
            WAIT_RD_ADDR: begin
                if (UART_RX_VLD) begin
                    RF_Address <= UART_RX_DATA[ADDR_WIDTH-1:0];
                    RF_RdEn    <= 1'b1;
                end
            end
            WAIT_RD_VLD: begin
                if (RF_RdData_VLD) begin
                    rd_data_reg <= RF_RdData; 
                end
            end
            SEND_RD_DATA: begin
                if (!FIFO_FULL) begin
                    UART_TX_DATA <= rd_data_reg;
                    UART_TX_VLD  <= 1'b1;
                end
            end

            //---------------- ALU Operation States ----------------
            WAIT_ALU_A: begin   
                if (UART_RX_VLD) begin
                    RF_Address <= RF_OP_A_ADDR;
                    RF_WrData  <= UART_RX_DATA;
                    RF_WrEn    <= 1'b1;
                end
            end
            WAIT_ALU_B: begin
                if (UART_RX_VLD) begin
                    RF_Address <= RF_OP_B_ADDR;
                    RF_WrData  <= UART_RX_DATA;
                    RF_WrEn    <= 1'b1;
                end
            end
            WAIT_ALU_FUN: begin
                if (UART_RX_VLD) begin
                    ALU_FUN <= UART_RX_DATA[ALU_FUN_WIDTH-1:0];
                    ALU_EN  <= 1'b1;
                end
            end
            WAIT_ALU_OUT: begin
                if (ALU_OUT_VLD) begin
                    alu_out_reg <= ALU_OUT; 
                end
            end
            SEND_ALU_LSB: begin
                if (!FIFO_FULL) begin
                    UART_TX_DATA <= alu_out_reg[DATA_WIDTH-1:0];
                    UART_TX_VLD  <= 1'b1;
                end
            end
            SEND_ALU_MSB: begin
                if (!FIFO_FULL) begin
                    UART_TX_DATA <= alu_out_reg[ALU_OUT_WIDTH-1 : ALU_OUT_WIDTH - DATA_WIDTH];
                    UART_TX_VLD  <= 1'b1;
                end
            end
        endcase
    end
end

endmodule
