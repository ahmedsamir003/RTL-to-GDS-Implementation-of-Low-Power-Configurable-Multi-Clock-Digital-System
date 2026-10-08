module Data_Sync # (
    parameter BUS_WIDTH  = 8 ,
    parameter NUM_STAGES = 2
    )(
        input       wire    [BUS_WIDTH-1:0] unsync_bus,
        input       wire                    bus_enable,
        input       wire                    clk,
        input       wire                    rst,
        output      reg     [BUS_WIDTH-1:0] sync_bus,
        output      reg                     enable_pulse
    );

    reg     [NUM_STAGES-1:0]         sync_flop;
    reg                              enable_flop;

    wire                            generated_pulse;

    assign generated_pulse = sync_flop[NUM_STAGES-1] && !enable_flop;

    always@(posedge clk or negedge rst)
        begin
            if(!rst)
                begin
                    sync_flop <= {NUM_STAGES{1'b0}};
                end
            else
                begin
                    sync_flop <= {sync_flop[NUM_STAGES-2:0],bus_enable};
                end
        end
    
    always@(posedge clk or negedge rst)
        begin
            if(!rst)
                begin
                    enable_flop  <= 1'b0;
                    enable_pulse <= 1'b0;
                end
            else
                begin
                    enable_flop  <= sync_flop[NUM_STAGES-1];
                    enable_pulse <=generated_pulse;
                end
        end

    always@(posedge clk or negedge rst)
        begin
            if(!rst)
                begin
                    sync_bus <= {BUS_WIDTH{1'b0}};
                end
            else if(generated_pulse)
                begin
                    sync_bus <= unsync_bus;
                end
        end
endmodule