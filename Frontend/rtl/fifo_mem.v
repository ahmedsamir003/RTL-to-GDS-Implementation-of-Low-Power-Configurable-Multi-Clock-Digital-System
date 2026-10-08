module fifo_mem #(
    parameter D_WIDTH = 8,                           // Data Size
    parameter A_WIDTH = 3,                           // Address Size
    parameter F_DEPTH = 8,                           // Fifo Depth
    parameter P_WIDTH = 4                            // Pointer Width
)(
    input   wire                      w_clk,         // write domian operating clock
    input   wire                      w_rstn,        // write domian active low reset
    input   wire                      w_full,        // fifo buffer full flag
    input   wire                      w_inc,         // write control signal
    input   wire    [A_WIDTH-1:0]     w_addr,        // write address bus
    input   wire    [A_WIDTH-1:0]     r_addr,        // synchronized read pointer bus 
    input   wire    [D_WIDTH-1:0]     w_data,        // write data bus
    output  wire    [D_WIDTH-1:0]     r_data         // read data bus
);


integer i;
reg [D_WIDTH-1:0] FIFO_MEM [F_DEPTH-1:0];


always@(posedge w_clk or negedge w_rstn)
    begin
        if(!w_rstn)
            begin
                for(i = 0 ; i < F_DEPTH ; i = i + 1) 
                FIFO_MEM[i] <= {D_WIDTH{1'b0}} ;
            end
        else if(!w_full && w_inc)
            FIFO_MEM[w_addr] <= w_data ;            // writing domain
    end

// reading domain
assign r_data = FIFO_MEM[r_addr];

endmodule