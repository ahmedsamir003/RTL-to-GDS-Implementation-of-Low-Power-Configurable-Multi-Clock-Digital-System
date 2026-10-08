module fifo_rd #(
    parameter P_WIDTH = 4                           // Pointer Width
)(
    input   wire                    r_clk,          // read domian operating clock
    input   wire                    r_rst_n,        // read domian active low reset
    input   wire                    r_inc,          // read control signal (enable)
    input   wire  [P_WIDTH-1:0]     rq2_wptr,       // synced gray coded read pointer
    output  wire  [P_WIDTH-2:0]     r_addr,         // generated binary read address
    output  wire                    empty,          // fifo empty flag
    output  reg   [P_WIDTH-1:0]     gray_rd_ptr     // generated gray coded read address [registered]
);

reg  [P_WIDTH-1:0] rd_ptr;
wire [P_WIDTH-1:0] comb_gray_rd_ptr;

assign comb_gray_rd_ptr = rd_ptr ^ (rd_ptr >> 1);

// increment binary pointer
always@(posedge r_clk or negedge r_rst_n)
    begin
        if(!r_rst_n)
            begin
                rd_ptr <= {P_WIDTH{1'b0}};
            end
        else if(!empty && r_inc)
            begin
                rd_ptr <= rd_ptr + 1'b1;
            end
    end

// generation of read address
assign r_addr = rd_ptr[P_WIDTH-2:0];

// converting binary read pointer to gray coded
always@(posedge r_clk or negedge r_rst_n)
    begin
        if(!r_rst_n)
            begin
                gray_rd_ptr <= {P_WIDTH{1'b0}};
            end
        else
            begin
                gray_rd_ptr <= comb_gray_rd_ptr;
        end
    end

// generation of empty flag
assign empty = (rq2_wptr == comb_gray_rd_ptr);

endmodule
