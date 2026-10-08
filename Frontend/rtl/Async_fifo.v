module Async_fifo #(
    parameter D_WIDTH = 8,
    parameter A_WIDTH = 3,
    parameter F_DEPTH = 8,
    parameter P_WIDTH = 4
)(
    // Write Domain
    input  wire                 w_clk,
    input  wire                 w_rstn,
    input  wire                 w_inc,
    input  wire [D_WIDTH-1:0]   w_data,
    output wire                 full,

    // Read Domain
    input  wire                 r_clk,
    input  wire                 r_rst_n,
    input  wire                 r_inc,
    output wire [D_WIDTH-1:0]   r_data,
    output wire                 empty
);

    // Internal Signals
    wire [P_WIDTH-1:0] wptr_gray;
    wire [P_WIDTH-1:0] rptr_gray;
    wire [P_WIDTH-1:0] wq2_rptr;
    wire [P_WIDTH-1:0] rq2_wptr;
    wire [A_WIDTH-1:0] w_addr;
    wire [A_WIDTH-1:0] r_addr;

    // 1. Double-Flop Synchronizer: Read Pointer into Write Domain
    DF_Sync #(
        .DATA_WIDTH(P_WIDTH)
    ) sync_r2w (
        .clk   (w_clk),
        .rst   (w_rstn),
        .async (rptr_gray),
        .sync  (wq2_rptr)
    );

    // 2. Double-Flop Synchronizer: Write Pointer into Read Domain
    DF_Sync #(
        .DATA_WIDTH(P_WIDTH)
    ) sync_w2r (
        .clk   (r_clk),
        .rst   (r_rst_n),
        .async (wptr_gray),
        .sync  (rq2_wptr)
    );

    // 3. Write Domain Logic
    fifo_wr #(
        .P_WIDTH(P_WIDTH)
    ) u_fifo_wr (
        .w_clk      (w_clk),
        .w_rstn     (w_rstn),
        .w_inc      (w_inc),
        .wq2_rptr   (wq2_rptr),
        .w_addr     (w_addr),
        .gray_w_ptr (wptr_gray),
        .full       (full)
    );

    // 4. Read Domain Logic
    fifo_rd #(
        .P_WIDTH(P_WIDTH)
    ) u_fifo_rd (
        .r_clk       (r_clk),
        .r_rst_n     (r_rst_n),
        .r_inc       (r_inc),
        .rq2_wptr    (rq2_wptr),
        .r_addr      (r_addr),
        .empty       (empty),
        .gray_rd_ptr (rptr_gray)
    );

    // 5. Memory Core
    fifo_mem #(
        .D_WIDTH(D_WIDTH),
        .A_WIDTH(A_WIDTH),
        .F_DEPTH(F_DEPTH),
        .P_WIDTH(P_WIDTH)
    ) u_fifo_mem (
        .w_clk  (w_clk),
        .w_rstn (w_rstn),
        .w_full (full),
        .w_inc  (w_inc),
        .w_addr (w_addr),
        .r_addr (r_addr),
        .w_data (w_data),
        .r_data (r_data)
    );

endmodule
