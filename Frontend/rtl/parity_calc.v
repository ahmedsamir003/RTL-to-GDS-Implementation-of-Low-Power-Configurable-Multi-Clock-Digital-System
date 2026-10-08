module parity_calc (
input [7:0] P_DATA,
input Data_Valid,
input PAR_TYP,
input clk,
input rst,
output reg par_bit
);

always@(posedge clk or negedge rst)
begin
if(!rst)
    par_bit    <= 0;

else if(Data_Valid)
begin
    if(PAR_TYP)
    par_bit <= ~(^P_DATA);
    else
    par_bit <= ^P_DATA;
end
end

endmodule