module fifo_wr #(
    parameter P_WIDTH = 4                           // Pointer Width
)(
    input   wire                    w_clk,          // write domian operating clock
    input   wire                    w_rstn,         // write domian active low reset
    input   wire                    w_inc,          // write control signal (enable)
    input   wire  [P_WIDTH-1:0]     wq2_rptr,       // synced gray coded read pointer
    output  wire  [P_WIDTH-2:0]     w_addr,         // generated binary write address
    output  reg   [P_WIDTH-1:0]     gray_w_ptr,     // generated gray coded write address [registered]
    output  wire                    full            // fifo full flag
);

reg  [P_WIDTH-1:0]  w_ptr;                          // binary pointer
wire [P_WIDTH-1:0]  comb_gray_w_ptr;                // generated gray coded write address [combinational]

assign comb_gray_w_ptr = w_ptr ^ (w_ptr >> 1);

// increment binary pointer 
always@(posedge w_clk or negedge w_rstn)
    begin
        if(!w_rstn)
            begin
                w_ptr  <= 4'd0;
            end
        else if(!full && w_inc)
            begin
                w_ptr <= w_ptr + 1'b1;
            end
    end

// generation of write address
assign w_addr = w_ptr[P_WIDTH-2:0];

// converting binary write pointer to gray coded
always@(posedge w_clk or negedge w_rstn)
    begin
        if(!w_rstn)
            begin
                gray_w_ptr <= {P_WIDTH{1'b0}};
            end
        else
            begin
                gray_w_ptr <= comb_gray_w_ptr;
            end
    end

// generation of full flag
assign full =   (comb_gray_w_ptr[3]   != wq2_rptr[3] &&
                 comb_gray_w_ptr[2]   != wq2_rptr[2] &&
                 comb_gray_w_ptr[1:0] == wq2_rptr [1:0]);

endmodule