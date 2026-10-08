module CLK_GATE (
input      clk_en,
input      clk,
output     gated_clk
);

/*

reg     Latch_Out ;

always @(clk or clk_en)
 begin
  if(!clk)
   begin
    Latch_Out <= clk_en ;
   end
 end
 
assign  gated_clk = clk && Latch_Out ;

*/


TLATNCAX12M U0_TLATNCAX12M (
.E(clk_en),
.CK(clk),
.ECK(gated_clk)
);



endmodule
