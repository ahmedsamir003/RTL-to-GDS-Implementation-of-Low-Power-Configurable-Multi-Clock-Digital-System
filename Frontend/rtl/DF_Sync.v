module DF_Sync # ( 
	parameter DATA_WIDTH = 2 
)(
input    wire                          clk,
input    wire                          rst,
input    wire    [DATA_WIDTH-1:0]      async,
output   reg     [DATA_WIDTH-1:0]      sync
);

reg   [DATA_WIDTH-1:0] sync_reg;
					 
always @(posedge clk or negedge rst)
    begin
        if(!rst)
            begin
                sync     <= 0; 
                sync_reg <= 0;
            end
        else
            begin
                sync_reg <= async;
                sync     <= sync_reg;
            end  
    end
endmodule
