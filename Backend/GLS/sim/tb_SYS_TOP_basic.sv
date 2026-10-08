`timescale 1ns/1ps

module tb_SYS_TOP_basic;

    //===================================================================
    // Signals
    //===================================================================
    reg  RST_N;
    reg  UART_CLK;
    reg  REF_CLK;
    reg  UART_RX_IN;
    
    wire UART_TX_O;
    wire parity_error;
    wire framing_error;

    localparam BIT_PERIOD = 8680.55; // 115200 Baud rate period in ns
    
    integer i, j;
    reg [7:0] tx_byte;
    reg [7:0] sequence_array [0:16]; 
    reg       calc_parity;
    reg       tb_parity_en;

    // Self-checking variables & tracking
    integer error_count = 0;
    integer pass_count  = 0;
    reg [7:0] rx_received_byte;
    reg       rx_parity_err;
    reg       rx_frame_err;

    //===================================================================
    // System Instantiation (Netlist/GLS compatible)
    //===================================================================
    system_top UUT (
        .RST_N(RST_N),
        .UART_CLK(UART_CLK),
        .REF_CLK(REF_CLK),
        .UART_RX_IN(UART_RX_IN),
        .UART_TX_O(UART_TX_O),
        .parity_error(parity_error),
        .framing_error(framing_error)
    );

    //===================================================================
    // Clock Generators
    //===================================================================
    // 50 MHz Ref Clock
    initial begin
        REF_CLK = 0;
        forever #10 REF_CLK = ~REF_CLK; 
    end

    // 3.6864 MHz UART Clock
    initial begin
        UART_CLK = 0;
        forever #135.63 UART_CLK = ~UART_CLK;
    end

    //===================================================================
    // Self-Checking Tasks
    //===================================================================

    // Task to transmit a single byte over UART_RX_IN
    task send_uart_byte(input [7:0] data, input parity_enable);
        integer k;
        begin
            // START Bit
            UART_RX_IN = 1'b0;
            #(BIT_PERIOD);
            
            // 8 DATA Bits (LSB First)
            calc_parity = 1'b0;
            for (k = 0; k < 8; k = k + 1) begin
                UART_RX_IN = data[k];
                calc_parity = calc_parity ^ data[k];
                #(BIT_PERIOD);
            end
            
            // PARITY Bit
            if (parity_enable) begin
                UART_RX_IN = calc_parity;
                #(BIT_PERIOD);
            end
            
            // STOP Bit & Idle
            UART_RX_IN = 1'b1;
            #(BIT_PERIOD * 3);
        end
    endtask

    // Task to receive a byte sent back by DUT on UART_TX_O
    task receive_uart_byte(output [7:0] data, output p_err, output f_err);
        integer k;
        reg calc_rx_p;
        begin
            p_err = 0;
            f_err = 0;
            
            // Wait for Start bit (falling edge)
            @(negedge UART_TX_O);
            #(BIT_PERIOD / 2.0); // Sample in middle of Start Bit
            
            if (UART_TX_O != 0) f_err = 1; // Framing error on start bit
            
            // Sample 8 Data Bits
            calc_rx_p = 0;
            for (k = 0; k < 8; k = k + 1) begin
                #(BIT_PERIOD);
                data[k] = UART_TX_O;
                calc_rx_p = calc_rx_p ^ data[k];
            end
            
            // Sample Parity Bit (if enabled in protocol, default even)
            if (tb_parity_en) begin
                #(BIT_PERIOD);
                if (UART_TX_O != calc_rx_p) p_err = 1;
            end
            
            // Sample Stop Bit
            #(BIT_PERIOD);
            if (UART_TX_O != 1'b1) f_err = 1;
        end
    endtask

    // Helper Task: Verify internal error flags from DUT
    task check_dut_flags(input exp_p_err, input exp_f_err, input [256*8:1] step_name);
        begin
            if (parity_error !== exp_p_err) begin
                $display("[ERROR at %t] %s: Parity Error Flag Mismatch! Expected: %b, Got: %b", $time, step_name, exp_p_err, parity_error);
                error_count = error_count + 1;
            end else if (framing_error !== exp_f_err) begin
                $display("[ERROR at %t] %s: Framing Error Flag Mismatch! Expected: %b, Got: %b", $time, step_name, exp_f_err, framing_error);
                error_count = error_count + 1;
            end else begin
                pass_count = pass_count + 1;
            end
        end
    endtask

    //===================================================================
    // Main Test Sequence
    //===================================================================
    initial begin
        // --- Test Sequence Setup ---
        // Config: Write 0x80 to UART_Config (Addr 0x2), Disable Parity
        sequence_array[0] = 8'hAA; 
        sequence_array[1] = 8'h02; 
        sequence_array[2] = 8'h80;
        
        // Config: Write 0x20 to DIV_RATIO (Addr 0x3)
        sequence_array[3] = 8'hAA; 
        sequence_array[4] = 8'h03; 
        sequence_array[5] = 8'h20;
        
        // RF Test: Write 0x55 to Addr 0x4
        sequence_array[6] = 8'hAA; 
        sequence_array[7] = 8'h04; 
        sequence_array[8] = 8'h55;
        
        // RF Test: Read from Addr 0x4 (Expect DUT TX: 0x55)
        sequence_array[9] = 8'hBB; 
        sequence_array[10]= 8'h04; 
        
        // ALU Test: OP (0xCC) -> 15 + 20 (FUN=0) (Expect DUT TX: 35 / 0x23)
        sequence_array[11]= 8'hCC; 
        sequence_array[12]= 8'd15; 
        sequence_array[13]= 8'd20; 
        sequence_array[14]= 8'd0;
        
        // ALU Test: NOP (0xDD) -> Uses previous A&B, FUN=1 (SUB 15 - 20)
        sequence_array[15]= 8'hDD; 
        sequence_array[16]= 8'd1;

	// Initialize and Reset
	UART_RX_IN   = 1'b1;   
	RST_N        = 1'b0;
	tb_parity_en = 1'b1;   

	#1000; 
	@(posedge REF_CLK); 
	#1;                 
	RST_N        = 1'b1;
	#1000;

        $display("---------------------------------------------------------");
        $display("   STARTING SELF-CHECKING SYSTEM SIMULATION");
        $display("---------------------------------------------------------");
        
        // --- Loop through test sequence ---
        for (j = 0; j < 17; j = j + 1) begin
            tx_byte = sequence_array[j];
            
            if (j == 3) begin
                tb_parity_en = 1'b0; // Parity disabled starting frame 3
            end
            
            $display("[INFO at %t] Transmitting Byte [%0d]: 0x%0h", $time, j, tx_byte);
            
            // Transmit byte to DUT
            send_uart_byte(tx_byte, tb_parity_en);
            
            // Verify DUT flags
            check_dut_flags(1'b0, 1'b0, "TX Flag Check");

            // --- Checks for DUT Response Outputs ---
            
            // Case 1: Register Read Check (After sending index 10)
            if (j == 10) begin
                receive_uart_byte(rx_received_byte, rx_parity_err, rx_frame_err);
                if (rx_received_byte === 8'h55 && !rx_parity_err && !rx_frame_err) begin
                    $display("[PASS at %t] RF Read Check Passed! Expected: 0x55, Received: 0x%0h", $time, rx_received_byte);
                    pass_count = pass_count + 1;
                end else begin
                    $display("[FAIL at %t] RF Read Check Failed! Expected: 0x55, Received: 0x%0h", $time, rx_received_byte);
                    error_count = error_count + 1;
                end
            end
            
            // Case 2: ALU ADD Result Check (15 + 20 = 35 / 0x23) (After sending index 14)
            if (j == 14) begin
                receive_uart_byte(rx_received_byte, rx_parity_err, rx_frame_err);
                if (rx_received_byte === 8'd35 && !rx_parity_err && !rx_frame_err) begin
                    $display("[PASS at %t] ALU ADD Check Passed! Expected: 35, Received: %0d", $time, rx_received_byte);
                    pass_count = pass_count + 1;
                end else begin
                    $display("[FAIL at %t] ALU ADD Check Failed! Expected: 35, Received: %0d", $time, rx_received_byte);
                    error_count = error_count + 1;
                end
            end

            // Case 3: ALU SUB Result Check (15 - 20 = -5 / 8'hFB / 251) (After sending index 16)
            if (j == 16) begin
                receive_uart_byte(rx_received_byte, rx_parity_err, rx_frame_err);
                if (rx_received_byte === 8'd251 && !rx_parity_err && !rx_frame_err) begin
                    $display("[PASS at %t] ALU SUB Check Passed! Expected: 251 (-5), Received: %0d", $time, rx_received_byte);
                    pass_count = pass_count + 1;
                end else begin
                    $display("[FAIL at %t] ALU SUB Check Failed! Expected: 251 (-5), Received: %0d", $time, rx_received_byte);
                    error_count = error_count + 1;
                end
            end
        end

        #(BIT_PERIOD * 10);
        
        // --- Final Test Report ---
        $display("---------------------------------------------------------");
        $display("   TEST SUMMARY");
        $display("---------------------------------------------------------");
        $display(" TOTAL PASSED CHECKS: %0d", pass_count);
        $display(" TOTAL FAILED CHECKS: %0d", error_count);
        
        if (error_count == 0) begin
            $display(" STATUS: SIMULATION PASSED SUCCESSFULLY!");
        end else begin
            $display(" STATUS: SIMULATION FAILED WITH %0d ERROR(S).", error_count);
        end
        $display("---------------------------------------------------------");

        $stop;
    end

endmodule
