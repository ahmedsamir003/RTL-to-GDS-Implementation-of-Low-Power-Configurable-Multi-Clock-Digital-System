module SYS_TOP (
	SE, 
	scan_clk, 
	scan_rst, 
	test_mode, 
	SI, 
	SO, 
	RST_N, 
	UART_CLK, 
	REF_CLK, 
	UART_RX_IN, 
	UART_TX_O, 
	parity_error, 
	framing_error);
   input SE;
   input scan_clk;
   input scan_rst;
   input test_mode;
   input [3:0] SI;
   output [3:0] SO;
   input RST_N;
   input UART_CLK;
   input REF_CLK;
   input UART_RX_IN;
   output UART_TX_O;
   output parity_error;
   output framing_error;

   // Internal wires
   wire REF_CLK__L2_N0;
   wire REF_CLK__L1_N0;
   wire UART_CLK__L2_N0;
   wire UART_CLK__L1_N0;
   wire scan_clk__L12_N0;
   wire scan_clk__L11_N0;
   wire scan_clk__L10_N0;
   wire scan_clk__L9_N1;
   wire scan_clk__L9_N0;
   wire scan_clk__L8_N1;
   wire scan_clk__L8_N0;
   wire scan_clk__L7_N1;
   wire scan_clk__L7_N0;
   wire scan_clk__L6_N1;
   wire scan_clk__L6_N0;
   wire scan_clk__L5_N1;
   wire scan_clk__L5_N0;
   wire scan_clk__L4_N1;
   wire scan_clk__L4_N0;
   wire scan_clk__L3_N1;
   wire scan_clk__L3_N0;
   wire scan_clk__L2_N2;
   wire scan_clk__L2_N1;
   wire scan_clk__L2_N0;
   wire scan_clk__L1_N0;
   wire CLK_A__L7_N17;
   wire CLK_A__L7_N16;
   wire CLK_A__L7_N15;
   wire CLK_A__L7_N14;
   wire CLK_A__L7_N13;
   wire CLK_A__L7_N12;
   wire CLK_A__L7_N11;
   wire CLK_A__L7_N10;
   wire CLK_A__L7_N9;
   wire CLK_A__L7_N8;
   wire CLK_A__L7_N7;
   wire CLK_A__L7_N6;
   wire CLK_A__L7_N5;
   wire CLK_A__L7_N4;
   wire CLK_A__L7_N3;
   wire CLK_A__L7_N2;
   wire CLK_A__L7_N1;
   wire CLK_A__L7_N0;
   wire CLK_A__L6_N5;
   wire CLK_A__L6_N4;
   wire CLK_A__L6_N3;
   wire CLK_A__L6_N2;
   wire CLK_A__L6_N1;
   wire CLK_A__L6_N0;
   wire CLK_A__L5_N1;
   wire CLK_A__L5_N0;
   wire CLK_A__L4_N1;
   wire CLK_A__L4_N0;
   wire CLK_A__L3_N0;
   wire CLK_A__L2_N1;
   wire CLK_A__L2_N0;
   wire CLK_A__L1_N0;
   wire ALU_CLK__L3_N0;
   wire ALU_CLK__L2_N0;
   wire ALU_CLK__L1_N0;
   wire CLK_B__L13_N1;
   wire CLK_B__L13_N0;
   wire CLK_B__L12_N0;
   wire CLK_B__L11_N0;
   wire CLK_B__L10_N0;
   wire CLK_B__L9_N0;
   wire CLK_B__L8_N0;
   wire CLK_B__L7_N2;
   wire CLK_B__L7_N1;
   wire CLK_B__L7_N0;
   wire CLK_B__L6_N1;
   wire CLK_B__L6_N0;
   wire CLK_B__L5_N1;
   wire CLK_B__L5_N0;
   wire CLK_B__L4_N0;
   wire CLK_B__L3_N2;
   wire CLK_B__L3_N1;
   wire CLK_B__L3_N0;
   wire CLK_B__L2_N0;
   wire CLK_B__L1_N0;
   wire UART_RX_CLK_div__L1_N0;
   wire UART_TX_CLK__L3_N1;
   wire UART_TX_CLK__L3_N0;
   wire UART_TX_CLK__L2_N0;
   wire UART_TX_CLK__L1_N0;
   wire UART_RX_CLK__L3_N1;
   wire UART_RX_CLK__L3_N0;
   wire UART_RX_CLK__L2_N0;
   wire UART_RX_CLK__L1_N0;
   wire FE_OFN5_SYNC_UART_RST;
   wire FE_OFN2_SYNC_REF_RST;
   wire FE_OFN1_SYNC_REF_RST;
   wire CLKG_EN;
   wire SYNC_REF_RST;
   wire ALU_CLK_EN_DFT;
   wire CLK_A;
   wire CLK_B;
   wire SYNC_REF_RST_internal;
   wire SYNC_UART_RST_internal;
   wire SYNC_UART_RST;
   wire UART_RX_V_OUT;
   wire UART_RX_V_SYNC;
   wire UART_TX_VLD;
   wire UART_TX_IN_7_;
   wire UART_TX_IN_5_;
   wire UART_TX_IN_4_;
   wire UART_TX_IN_3_;
   wire UART_TX_IN_2_;
   wire UART_TX_IN_1_;
   wire UART_TX_IN_0_;
   wire UART_TX_CLK;
   wire UART_TX_Busy_PULSE;
   wire FIFO_FULL;
   wire UART_TX_V_SYNC;
   wire UART_TX_Busy;
   wire UART_TX_CLK_div;
   wire UART_RX_CLK_div;
   wire UART_RX_CLK;
   wire RF_RdData_VLD;
   wire RF_WrEn;
   wire RF_RdEn;
   wire ALU_EN;
   wire ALU_OUT_VLD;
   wire ALU_CLK;
   wire n2;
   wire n10;
   wire n11;
   wire n13;
   wire n14;
   wire n15;
   wire n17;
   wire n20;
   wire n21;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire SYNOPSYS_UNCONNECTED_1;
   wire SYNOPSYS_UNCONNECTED_2;
   wire SYNOPSYS_UNCONNECTED_3;
   wire SYNOPSYS_UNCONNECTED_4;
   wire [7:0] UART_RX_OUT;
   wire [7:0] UART_RX_SYNC;
   wire [7:0] UART_TX_SYNC;
   wire [7:0] DIV_RATIO;
   wire [7:0] UART_Config;
   wire [7:0] DIV_RATIO_RX;
   wire [7:0] RF_RdData;
   wire [3:0] RF_Address;
   wire [7:0] RF_WrData;
   wire [3:0] ALU_FUN;
   wire [15:0] ALU_OUT;
   wire [7:0] Operand_A;
   wire [7:0] Operand_B;

   CLKINVX8M REF_CLK__L2_I0 (.Y(REF_CLK__L2_N0), 
	.A(REF_CLK__L1_N0));
   CLKINVX40M REF_CLK__L1_I0 (.Y(REF_CLK__L1_N0), 
	.A(REF_CLK));
   CLKINVX8M UART_CLK__L2_I0 (.Y(UART_CLK__L2_N0), 
	.A(UART_CLK__L1_N0));
   CLKINVX40M UART_CLK__L1_I0 (.Y(UART_CLK__L1_N0), 
	.A(UART_CLK));
   CLKINVX6M scan_clk__L12_I0 (.Y(scan_clk__L12_N0), 
	.A(scan_clk__L11_N0));
   CLKBUFX20M scan_clk__L11_I0 (.Y(scan_clk__L11_N0), 
	.A(scan_clk__L10_N0));
   CLKBUFX20M scan_clk__L10_I0 (.Y(scan_clk__L10_N0), 
	.A(scan_clk__L9_N1));
   CLKBUFX20M scan_clk__L9_I1 (.Y(scan_clk__L9_N1), 
	.A(scan_clk__L8_N1));
   CLKINVX6M scan_clk__L9_I0 (.Y(scan_clk__L9_N0), 
	.A(scan_clk__L8_N0));
   CLKBUFX20M scan_clk__L8_I1 (.Y(scan_clk__L8_N1), 
	.A(scan_clk__L7_N1));
   CLKBUFX20M scan_clk__L8_I0 (.Y(scan_clk__L8_N0), 
	.A(scan_clk__L7_N0));
   CLKBUFX20M scan_clk__L7_I1 (.Y(scan_clk__L7_N1), 
	.A(scan_clk__L6_N1));
   CLKBUFX20M scan_clk__L7_I0 (.Y(scan_clk__L7_N0), 
	.A(scan_clk__L6_N0));
   CLKBUFX20M scan_clk__L6_I1 (.Y(scan_clk__L6_N1), 
	.A(scan_clk__L5_N1));
   CLKBUFX20M scan_clk__L6_I0 (.Y(scan_clk__L6_N0), 
	.A(scan_clk__L5_N0));
   CLKBUFX20M scan_clk__L5_I1 (.Y(scan_clk__L5_N1), 
	.A(scan_clk__L4_N1));
   CLKBUFX20M scan_clk__L5_I0 (.Y(scan_clk__L5_N0), 
	.A(scan_clk__L4_N0));
   CLKBUFX20M scan_clk__L4_I1 (.Y(scan_clk__L4_N1), 
	.A(scan_clk__L3_N1));
   CLKBUFX20M scan_clk__L4_I0 (.Y(scan_clk__L4_N0), 
	.A(scan_clk__L3_N0));
   CLKBUFX20M scan_clk__L3_I1 (.Y(scan_clk__L3_N1), 
	.A(scan_clk__L2_N2));
   CLKBUFX20M scan_clk__L3_I0 (.Y(scan_clk__L3_N0), 
	.A(scan_clk__L2_N1));
   CLKBUFX40M scan_clk__L2_I2 (.Y(scan_clk__L2_N2), 
	.A(scan_clk__L1_N0));
   CLKBUFX20M scan_clk__L2_I1 (.Y(scan_clk__L2_N1), 
	.A(scan_clk__L1_N0));
   CLKINVX6M scan_clk__L2_I0 (.Y(scan_clk__L2_N0), 
	.A(scan_clk__L1_N0));
   CLKINVX40M scan_clk__L1_I0 (.Y(scan_clk__L1_N0), 
	.A(scan_clk));
   CLKINVX32M CLK_A__L7_I17 (.Y(CLK_A__L7_N17), 
	.A(CLK_A__L6_N5));
   CLKINVX32M CLK_A__L7_I16 (.Y(CLK_A__L7_N16), 
	.A(CLK_A__L6_N5));
   CLKINVX32M CLK_A__L7_I15 (.Y(CLK_A__L7_N15), 
	.A(CLK_A__L6_N5));
   CLKINVX32M CLK_A__L7_I14 (.Y(CLK_A__L7_N14), 
	.A(CLK_A__L6_N4));
   CLKINVX32M CLK_A__L7_I13 (.Y(CLK_A__L7_N13), 
	.A(CLK_A__L6_N4));
   CLKINVX32M CLK_A__L7_I12 (.Y(CLK_A__L7_N12), 
	.A(CLK_A__L6_N4));
   CLKINVX32M CLK_A__L7_I11 (.Y(CLK_A__L7_N11), 
	.A(CLK_A__L6_N3));
   CLKINVX32M CLK_A__L7_I10 (.Y(CLK_A__L7_N10), 
	.A(CLK_A__L6_N3));
   CLKINVX32M CLK_A__L7_I9 (.Y(CLK_A__L7_N9), 
	.A(CLK_A__L6_N3));
   CLKINVX32M CLK_A__L7_I8 (.Y(CLK_A__L7_N8), 
	.A(CLK_A__L6_N2));
   CLKINVX32M CLK_A__L7_I7 (.Y(CLK_A__L7_N7), 
	.A(CLK_A__L6_N2));
   CLKINVX32M CLK_A__L7_I6 (.Y(CLK_A__L7_N6), 
	.A(CLK_A__L6_N2));
   CLKINVX32M CLK_A__L7_I5 (.Y(CLK_A__L7_N5), 
	.A(CLK_A__L6_N1));
   CLKINVX32M CLK_A__L7_I4 (.Y(CLK_A__L7_N4), 
	.A(CLK_A__L6_N1));
   CLKINVX32M CLK_A__L7_I3 (.Y(CLK_A__L7_N3), 
	.A(CLK_A__L6_N1));
   CLKINVX32M CLK_A__L7_I2 (.Y(CLK_A__L7_N2), 
	.A(CLK_A__L6_N0));
   CLKINVX32M CLK_A__L7_I1 (.Y(CLK_A__L7_N1), 
	.A(CLK_A__L6_N0));
   CLKINVX32M CLK_A__L7_I0 (.Y(CLK_A__L7_N0), 
	.A(CLK_A__L6_N0));
   CLKINVX40M CLK_A__L6_I5 (.Y(CLK_A__L6_N5), 
	.A(CLK_A__L5_N1));
   CLKINVX40M CLK_A__L6_I4 (.Y(CLK_A__L6_N4), 
	.A(CLK_A__L5_N1));
   CLKINVX40M CLK_A__L6_I3 (.Y(CLK_A__L6_N3), 
	.A(CLK_A__L5_N1));
   CLKINVX40M CLK_A__L6_I2 (.Y(CLK_A__L6_N2), 
	.A(CLK_A__L5_N0));
   CLKINVX40M CLK_A__L6_I1 (.Y(CLK_A__L6_N1), 
	.A(CLK_A__L5_N0));
   CLKINVX40M CLK_A__L6_I0 (.Y(CLK_A__L6_N0), 
	.A(CLK_A__L5_N0));
   CLKINVX40M CLK_A__L5_I1 (.Y(CLK_A__L5_N1), 
	.A(CLK_A__L4_N1));
   CLKINVX40M CLK_A__L5_I0 (.Y(CLK_A__L5_N0), 
	.A(CLK_A__L4_N0));
   CLKINVX40M CLK_A__L4_I1 (.Y(CLK_A__L4_N1), 
	.A(CLK_A__L3_N0));
   CLKINVX40M CLK_A__L4_I0 (.Y(CLK_A__L4_N0), 
	.A(CLK_A__L3_N0));
   CLKINVX40M CLK_A__L3_I0 (.Y(CLK_A__L3_N0), 
	.A(CLK_A__L2_N0));
   CLKINVX6M CLK_A__L2_I1 (.Y(CLK_A__L2_N1), 
	.A(CLK_A__L1_N0));
   CLKBUFX24M CLK_A__L2_I0 (.Y(CLK_A__L2_N0), 
	.A(CLK_A__L1_N0));
   CLKINVX6M CLK_A__L1_I0 (.Y(CLK_A__L1_N0), 
	.A(CLK_A));
   CLKINVX24M ALU_CLK__L3_I0 (.Y(ALU_CLK__L3_N0), 
	.A(ALU_CLK__L2_N0));
   BUFX14M ALU_CLK__L2_I0 (.Y(ALU_CLK__L2_N0), 
	.A(ALU_CLK__L1_N0));
   CLKINVX6M ALU_CLK__L1_I0 (.Y(ALU_CLK__L1_N0), 
	.A(ALU_CLK));
   CLKINVX32M CLK_B__L13_I1 (.Y(CLK_B__L13_N1), 
	.A(CLK_B__L12_N0));
   CLKINVX32M CLK_B__L13_I0 (.Y(CLK_B__L13_N0), 
	.A(CLK_B__L12_N0));
   CLKINVX24M CLK_B__L12_I0 (.Y(CLK_B__L12_N0), 
	.A(CLK_B__L11_N0));
   CLKINVX40M CLK_B__L11_I0 (.Y(CLK_B__L11_N0), 
	.A(CLK_B__L10_N0));
   CLKBUFX40M CLK_B__L10_I0 (.Y(CLK_B__L10_N0), 
	.A(CLK_B__L9_N0));
   CLKBUFX40M CLK_B__L9_I0 (.Y(CLK_B__L9_N0), 
	.A(CLK_B__L8_N0));
   CLKBUFX20M CLK_B__L8_I0 (.Y(CLK_B__L8_N0), 
	.A(CLK_B__L7_N2));
   CLKBUFX20M CLK_B__L7_I2 (.Y(CLK_B__L7_N2), 
	.A(CLK_B__L6_N1));
   CLKINVX32M CLK_B__L7_I1 (.Y(CLK_B__L7_N1), 
	.A(CLK_B__L6_N0));
   CLKINVX32M CLK_B__L7_I0 (.Y(CLK_B__L7_N0), 
	.A(CLK_B__L6_N0));
   CLKBUFX20M CLK_B__L6_I1 (.Y(CLK_B__L6_N1), 
	.A(CLK_B__L5_N1));
   CLKINVX40M CLK_B__L6_I0 (.Y(CLK_B__L6_N0), 
	.A(CLK_B__L5_N0));
   CLKBUFX20M CLK_B__L5_I1 (.Y(CLK_B__L5_N1), 
	.A(CLK_B__L4_N0));
   CLKINVX32M CLK_B__L5_I0 (.Y(CLK_B__L5_N0), 
	.A(CLK_B__L4_N0));
   CLKBUFX20M CLK_B__L4_I0 (.Y(CLK_B__L4_N0), 
	.A(CLK_B__L3_N2));
   CLKBUFX20M CLK_B__L3_I2 (.Y(CLK_B__L3_N2), 
	.A(CLK_B__L2_N0));
   CLKINVX32M CLK_B__L3_I1 (.Y(CLK_B__L3_N1), 
	.A(CLK_B__L2_N0));
   CLKINVX32M CLK_B__L3_I0 (.Y(CLK_B__L3_N0), 
	.A(CLK_B__L2_N0));
   CLKINVX40M CLK_B__L2_I0 (.Y(CLK_B__L2_N0), 
	.A(CLK_B__L1_N0));
   BUFX20M CLK_B__L1_I0 (.Y(CLK_B__L1_N0), 
	.A(CLK_B));
   CLKBUFX12M UART_RX_CLK_div__L1_I0 (.Y(UART_RX_CLK_div__L1_N0), 
	.A(UART_RX_CLK_div));
   CLKINVX32M UART_TX_CLK__L3_I1 (.Y(UART_TX_CLK__L3_N1), 
	.A(UART_TX_CLK__L2_N0));
   CLKINVX32M UART_TX_CLK__L3_I0 (.Y(UART_TX_CLK__L3_N0), 
	.A(UART_TX_CLK__L2_N0));
   CLKINVX20M UART_TX_CLK__L2_I0 (.Y(UART_TX_CLK__L2_N0), 
	.A(UART_TX_CLK__L1_N0));
   BUFX16M UART_TX_CLK__L1_I0 (.Y(UART_TX_CLK__L1_N0), 
	.A(UART_TX_CLK));
   CLKINVX32M UART_RX_CLK__L3_I1 (.Y(UART_RX_CLK__L3_N1), 
	.A(UART_RX_CLK__L2_N0));
   CLKINVX32M UART_RX_CLK__L3_I0 (.Y(UART_RX_CLK__L3_N0), 
	.A(UART_RX_CLK__L2_N0));
   CLKINVX40M UART_RX_CLK__L2_I0 (.Y(UART_RX_CLK__L2_N0), 
	.A(UART_RX_CLK__L1_N0));
   BUFX18M UART_RX_CLK__L1_I0 (.Y(UART_RX_CLK__L1_N0), 
	.A(UART_RX_CLK));
   CLKBUFX8M FE_OFC5_SYNC_UART_RST (.Y(FE_OFN5_SYNC_UART_RST), 
	.A(SYNC_UART_RST));
   BUFX5M FE_OFC2_SYNC_REF_RST (.Y(FE_OFN2_SYNC_REF_RST), 
	.A(SYNC_REF_RST));
   BUFX6M FE_OFC1_SYNC_REF_RST (.Y(FE_OFN1_SYNC_REF_RST), 
	.A(SYNC_REF_RST));
   CLK_GATE U0_CLK_GATE (.clk_en(ALU_CLK_EN_DFT), 
	.clk(CLK_A__L2_N1), 
	.gated_clk(ALU_CLK));
   CLKNAND2X2M U10 (.Y(ALU_CLK_EN_DFT), 
	.B(SYNC_REF_RST), 
	.A(n2));
   NOR2X2M U11 (.Y(n2), 
	.B(CLKG_EN), 
	.A(test_mode));
   DLY1X1M U18 (.Y(n25), 
	.A(SE));
   DLY1X1M U19 (.Y(n26), 
	.A(SE));
   DLY1X1M U20 (.Y(n27), 
	.A(SE));
   DLY1X1M U21 (.Y(n28), 
	.A(SE));
   DLY1X1M U22 (.Y(n29), 
	.A(n31));
   DLY1X1M U23 (.Y(n30), 
	.A(n32));
   DLY1X1M U24 (.Y(n31), 
	.A(n25));
   DLY1X1M U25 (.Y(n32), 
	.A(n25));
   mux2X1_1 U0_mux2X1 (.IN_0(REF_CLK__L2_N0), 
	.IN_1(scan_clk__L9_N0), 
	.SEL(test_mode), 
	.OUT(CLK_A));
   mux2X1_4 U1_mux2X1 (.IN_0(UART_CLK__L2_N0), 
	.IN_1(scan_clk__L2_N0), 
	.SEL(test_mode), 
	.OUT(CLK_B));
   mux2X1_0 U2_mux2X1 (.IN_0(SYNC_REF_RST_internal), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(SYNC_REF_RST));
   mux2X1_5 U3_mux2X1 (.IN_0(SYNC_UART_RST_internal), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(SYNC_UART_RST));
   RST_SYNC_NUM_STAGES2_0 U0_RST_SYNC (.clk(CLK_B__L13_N1), 
	.rst(RST_N), 
	.sync_rst(SYNC_UART_RST_internal));
   RST_SYNC_NUM_STAGES2_1 U1_RST_SYNC (.clk(CLK_A__L7_N10), 
	.rst(RST_N), 
	.sync_rst(SYNC_REF_RST_internal), 
	.CLK_A__L7_N11(CLK_A__L7_N11));
   Data_Sync_BUS_WIDTH8_NUM_STAGES2_test_1 U0_ref_sync (.unsync_bus({ UART_RX_OUT[7],
		UART_RX_OUT[6],
		UART_RX_OUT[5],
		UART_RX_OUT[4],
		UART_RX_OUT[3],
		UART_RX_OUT[2],
		UART_RX_OUT[1],
		UART_RX_OUT[0] }), 
	.bus_enable(UART_RX_V_OUT), 
	.clk(CLK_A__L7_N0), 
	.rst(FE_OFN1_SYNC_REF_RST), 
	.sync_bus({ UART_RX_SYNC[7],
		UART_RX_SYNC[6],
		UART_RX_SYNC[5],
		UART_RX_SYNC[4],
		UART_RX_SYNC[3],
		UART_RX_SYNC[2],
		UART_RX_SYNC[1],
		UART_RX_SYNC[0] }), 
	.enable_pulse(UART_RX_V_SYNC), 
	.test_si(n11), 
	.test_so(n10), 
	.test_se(n32));
   Async_fifo_D_WIDTH8_F_DEPTH8_P_WIDTH4_test_1 U0_UART_FIFO (.w_clk(CLK_A__L7_N10), 
	.w_rstn(SYNC_REF_RST), 
	.w_inc(UART_TX_VLD), 
	.w_data({ UART_TX_IN_7_,
		SO[2],
		UART_TX_IN_5_,
		UART_TX_IN_4_,
		UART_TX_IN_3_,
		UART_TX_IN_2_,
		UART_TX_IN_1_,
		UART_TX_IN_0_ }), 
	.full(FIFO_FULL), 
	.r_clk(UART_TX_CLK__L3_N0), 
	.r_rst_n(SYNC_UART_RST), 
	.r_inc(UART_TX_Busy_PULSE), 
	.r_data({ UART_TX_SYNC[7],
		UART_TX_SYNC[6],
		UART_TX_SYNC[5],
		UART_TX_SYNC[4],
		UART_TX_SYNC[3],
		UART_TX_SYNC[2],
		UART_TX_SYNC[1],
		UART_TX_SYNC[0] }), 
	.empty(UART_TX_V_SYNC), 
	.test_si2(SI[0]), 
	.test_si1(n14), 
	.test_so2(n11), 
	.test_so1(n13), 
	.test_se(n27), 
	.FE_OFN2_SYNC_REF_RST(FE_OFN2_SYNC_REF_RST), 
	.FE_OFN5_SYNC_UART_RST(FE_OFN5_SYNC_UART_RST), 
	.UART_TX_CLK__L3_N1(UART_TX_CLK__L3_N1), 
	.CLK_A__L7_N11(CLK_A__L7_N11), 
	.CLK_A__L7_N12(CLK_A__L7_N12), 
	.CLK_A__L7_N14(CLK_A__L7_N14), 
	.CLK_A__L7_N15(CLK_A__L7_N15), 
	.CLK_A__L7_N9(CLK_A__L7_N9));
   PULSE_GEN_test_1 U0_PULSE_GEN (.clk(UART_TX_CLK__L3_N0), 
	.rst(FE_OFN5_SYNC_UART_RST), 
	.lvl_sig(UART_TX_Busy), 
	.pulse_sig(UART_TX_Busy_PULSE), 
	.test_si(n21), 
	.test_so(n20), 
	.test_se(n30));
   ClkDiv_test_0 U0_ClkDiv (.i_ref_clk(CLK_B__L13_N0), 
	.i_rst_n(FE_OFN5_SYNC_UART_RST), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ DIV_RATIO[7],
		DIV_RATIO[6],
		DIV_RATIO[5],
		DIV_RATIO[4],
		DIV_RATIO[3],
		DIV_RATIO[2],
		DIV_RATIO[1],
		DIV_RATIO[0] }), 
	.o_div_clk(UART_TX_CLK_div), 
	.test_si(ALU_OUT_VLD), 
	.test_so(n21), 
	.test_se(n29), 
	.CLK_B__L13_N1(CLK_B__L13_N1), 
	.CLK_B__L3_N0(CLK_B__L3_N0), 
	.CLK_B__L7_N0(CLK_B__L7_N0));
   mux2X1_3 U_TX_CLK_MUX (.IN_0(UART_TX_CLK_div), 
	.IN_1(scan_clk__L12_N0), 
	.SEL(test_mode), 
	.OUT(UART_TX_CLK));
   ClkDiv_mux U0_CLKDIV_MUX (.in({ UART_Config[7],
		UART_Config[6],
		UART_Config[5],
		UART_Config[4],
		UART_Config[3],
		UART_Config[2] }), 
	.out({ SYNOPSYS_UNCONNECTED_1,
		SYNOPSYS_UNCONNECTED_2,
		SYNOPSYS_UNCONNECTED_3,
		SYNOPSYS_UNCONNECTED_4,
		DIV_RATIO_RX[3],
		DIV_RATIO_RX[2],
		DIV_RATIO_RX[1],
		DIV_RATIO_RX[0] }));
   ClkDiv_test_1 U1_ClkDiv (.i_ref_clk(CLK_B__L13_N0), 
	.i_rst_n(FE_OFN5_SYNC_UART_RST), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ 1'b0,
		1'b0,
		1'b0,
		1'b0,
		DIV_RATIO_RX[3],
		DIV_RATIO_RX[2],
		DIV_RATIO_RX[1],
		DIV_RATIO_RX[0] }), 
	.o_div_clk(UART_RX_CLK_div), 
	.test_si(n10), 
	.test_so(SO[0]), 
	.test_se(n29), 
	.CLK_B__L3_N1(CLK_B__L3_N1), 
	.CLK_B__L7_N1(CLK_B__L7_N1));
   mux2X1_2 U_RX_CLK_MUX (.IN_0(UART_RX_CLK_div__L1_N0), 
	.IN_1(scan_clk__L12_N0), 
	.SEL(test_mode), 
	.OUT(UART_RX_CLK));
   UART_test_1 U0_UART (.RST(SYNC_UART_RST), 
	.TX_CLK(UART_TX_CLK__L3_N1), 
	.RX_CLK(UART_RX_CLK__L3_N0), 
	.RX_IN_S(UART_RX_IN), 
	.RX_OUT_P({ UART_RX_OUT[7],
		UART_RX_OUT[6],
		UART_RX_OUT[5],
		UART_RX_OUT[4],
		UART_RX_OUT[3],
		UART_RX_OUT[2],
		UART_RX_OUT[1],
		UART_RX_OUT[0] }), 
	.RX_OUT_V(UART_RX_V_OUT), 
	.TX_IN_P({ UART_TX_SYNC[7],
		UART_TX_SYNC[6],
		UART_TX_SYNC[5],
		UART_TX_SYNC[4],
		UART_TX_SYNC[3],
		UART_TX_SYNC[2],
		UART_TX_SYNC[1],
		UART_TX_SYNC[0] }), 
	.TX_IN_V(UART_TX_V_SYNC), 
	.TX_OUT_S(UART_TX_O), 
	.TX_OUT_V(UART_TX_Busy), 
	.Prescale({ UART_Config[7],
		UART_Config[6],
		UART_Config[5],
		UART_Config[4],
		UART_Config[3],
		UART_Config[2] }), 
	.parity_enable(UART_Config[0]), 
	.parity_type(UART_Config[1]), 
	.parity_error(parity_error), 
	.framing_error(SO[1]), 
	.test_si2(n13), 
	.test_si1(n15), 
	.test_so1(n14), 
	.test_se(n26), 
	.FE_OFN5_SYNC_UART_RST(FE_OFN5_SYNC_UART_RST), 
	.UART_RX_CLK__L3_N1(UART_RX_CLK__L3_N1));
   sys_ctrl_test_1 U0_SYS_CTRL (.CLK(CLK_A__L7_N0), 
	.RST(SYNC_REF_RST), 
	.UART_RX_DATA({ UART_RX_SYNC[7],
		UART_RX_SYNC[6],
		UART_RX_SYNC[5],
		UART_RX_SYNC[4],
		UART_RX_SYNC[3],
		UART_RX_SYNC[2],
		UART_RX_SYNC[1],
		UART_RX_SYNC[0] }), 
	.UART_RX_VLD(UART_RX_V_SYNC), 
	.RF_WrEn(RF_WrEn), 
	.RF_RdEn(RF_RdEn), 
	.RF_Address({ RF_Address[3],
		RF_Address[2],
		RF_Address[1],
		RF_Address[0] }), 
	.RF_WrData({ RF_WrData[7],
		RF_WrData[6],
		RF_WrData[5],
		RF_WrData[4],
		RF_WrData[3],
		RF_WrData[2],
		RF_WrData[1],
		RF_WrData[0] }), 
	.RF_RdData({ RF_RdData[7],
		RF_RdData[6],
		RF_RdData[5],
		RF_RdData[4],
		RF_RdData[3],
		RF_RdData[2],
		RF_RdData[1],
		RF_RdData[0] }), 
	.RF_RdData_VLD(RF_RdData_VLD), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.ALU_EN(ALU_EN), 
	.ALU_OUT({ ALU_OUT[15],
		ALU_OUT[14],
		ALU_OUT[13],
		ALU_OUT[12],
		ALU_OUT[11],
		ALU_OUT[10],
		ALU_OUT[9],
		ALU_OUT[8],
		ALU_OUT[7],
		ALU_OUT[6],
		ALU_OUT[5],
		ALU_OUT[4],
		ALU_OUT[3],
		ALU_OUT[2],
		ALU_OUT[1],
		ALU_OUT[0] }), 
	.ALU_OUT_VLD(ALU_OUT_VLD), 
	.CLKG_EN(CLKG_EN), 
	.FIFO_FULL(FIFO_FULL), 
	.UART_TX_DATA({ UART_TX_IN_7_,
		SO[2],
		UART_TX_IN_5_,
		UART_TX_IN_4_,
		UART_TX_IN_3_,
		UART_TX_IN_2_,
		UART_TX_IN_1_,
		UART_TX_IN_0_ }), 
	.UART_TX_VLD(UART_TX_VLD), 
	.test_si2(SI[1]), 
	.test_si1(n17), 
	.test_so1(n15), 
	.test_se(n31), 
	.FE_OFN1_SYNC_REF_RST(FE_OFN1_SYNC_REF_RST), 
	.FE_OFN2_SYNC_REF_RST(FE_OFN2_SYNC_REF_RST), 
	.CLK_A__L7_N11(CLK_A__L7_N11), 
	.CLK_A__L7_N13(CLK_A__L7_N13), 
	.CLK_A__L7_N14(CLK_A__L7_N14), 
	.CLK_A__L7_N15(CLK_A__L7_N15), 
	.CLK_A__L7_N16(CLK_A__L7_N16), 
	.CLK_A__L7_N17(CLK_A__L7_N17));
   Register_File_test_1 U0_RegFile (.clk(CLK_A__L7_N1), 
	.rst(FE_OFN1_SYNC_REF_RST), 
	.WrEn(RF_WrEn), 
	.RdEn(RF_RdEn), 
	.Address({ RF_Address[3],
		RF_Address[2],
		RF_Address[1],
		RF_Address[0] }), 
	.WrData({ RF_WrData[7],
		RF_WrData[6],
		RF_WrData[5],
		RF_WrData[4],
		RF_WrData[3],
		RF_WrData[2],
		RF_WrData[1],
		RF_WrData[0] }), 
	.RdData({ RF_RdData[7],
		RF_RdData[6],
		RF_RdData[5],
		RF_RdData[4],
		RF_RdData[3],
		RF_RdData[2],
		RF_RdData[1],
		RF_RdData[0] }), 
	.RdData_VLD(RF_RdData_VLD), 
	.REG0({ Operand_A[7],
		Operand_A[6],
		Operand_A[5],
		Operand_A[4],
		Operand_A[3],
		Operand_A[2],
		Operand_A[1],
		Operand_A[0] }), 
	.REG1({ Operand_B[7],
		Operand_B[6],
		Operand_B[5],
		Operand_B[4],
		Operand_B[3],
		Operand_B[2],
		Operand_B[1],
		Operand_B[0] }), 
	.REG2({ UART_Config[7],
		UART_Config[6],
		UART_Config[5],
		UART_Config[4],
		UART_Config[3],
		UART_Config[2],
		UART_Config[1],
		UART_Config[0] }), 
	.REG3({ DIV_RATIO[7],
		DIV_RATIO[6],
		DIV_RATIO[5],
		DIV_RATIO[4],
		DIV_RATIO[3],
		DIV_RATIO[2],
		DIV_RATIO[1],
		DIV_RATIO[0] }), 
	.test_si2(SI[2]), 
	.test_si1(n20), 
	.test_so2(n17), 
	.test_so1(SO[3]), 
	.test_se(n28), 
	.FE_OFN2_SYNC_REF_RST(FE_OFN2_SYNC_REF_RST), 
	.CLK_A__L7_N16(CLK_A__L7_N16), 
	.CLK_A__L7_N2(CLK_A__L7_N2), 
	.CLK_A__L7_N3(CLK_A__L7_N3), 
	.CLK_A__L7_N4(CLK_A__L7_N4), 
	.CLK_A__L7_N5(CLK_A__L7_N5), 
	.CLK_A__L7_N6(CLK_A__L7_N6), 
	.CLK_A__L7_N7(CLK_A__L7_N7), 
	.CLK_A__L7_N8(CLK_A__L7_N8));
   ALU_test_1 U0_ALU (.A({ Operand_A[7],
		Operand_A[6],
		Operand_A[5],
		Operand_A[4],
		Operand_A[3],
		Operand_A[2],
		Operand_A[1],
		Operand_A[0] }), 
	.B({ Operand_B[7],
		Operand_B[6],
		Operand_B[5],
		Operand_B[4],
		Operand_B[3],
		Operand_B[2],
		Operand_B[1],
		Operand_B[0] }), 
	.EN(ALU_EN), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.clk(ALU_CLK__L3_N0), 
	.rst(SYNC_REF_RST), 
	.ALU_OUT({ ALU_OUT[15],
		ALU_OUT[14],
		ALU_OUT[13],
		ALU_OUT[12],
		ALU_OUT[11],
		ALU_OUT[10],
		ALU_OUT[9],
		ALU_OUT[8],
		ALU_OUT[7],
		ALU_OUT[6],
		ALU_OUT[5],
		ALU_OUT[4],
		ALU_OUT[3],
		ALU_OUT[2],
		ALU_OUT[1],
		ALU_OUT[0] }), 
	.OUT_VALID(ALU_OUT_VLD), 
	.test_si(SI[3]), 
	.test_se(n30), 
	.FE_OFN2_SYNC_REF_RST(FE_OFN2_SYNC_REF_RST));
   BUFX2M U17 (.Y(framing_error), 
	.A(SO[1]));
endmodule

/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Thu Oct  8 00:55:06 2026
/////////////////////////////////////////////////////////////
module CLK_GATE (
	clk_en, 
	clk, 
	gated_clk);
   input clk_en;
   input clk;
   output gated_clk;

   TLATNCAX12M U0_TLATNCAX12M (.ECK(gated_clk), 
	.E(clk_en), 
	.CK(clk));
endmodule

module mux2X1_1 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   MX2X6M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_4 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   MX2X6M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_0 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN3_scan_rst;
   wire FE_PHN1_scan_rst;

   DLY4X1M FE_PHC3_scan_rst (.Y(FE_PHN3_scan_rst), 
	.A(FE_PHN1_scan_rst));
   DLY4X1M FE_PHC1_scan_rst (.Y(FE_PHN1_scan_rst), 
	.A(IN_1));
   MX2X8M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(FE_PHN3_scan_rst), 
	.A(IN_0));
endmodule

module mux2X1_5 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN2_scan_rst;
   wire FE_PHN0_scan_rst;

   DLY4X1M FE_PHC2_scan_rst (.Y(FE_PHN2_scan_rst), 
	.A(FE_PHN0_scan_rst));
   DLY4X1M FE_PHC0_scan_rst (.Y(FE_PHN0_scan_rst), 
	.A(IN_1));
   CLKMX2X2M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(FE_PHN2_scan_rst), 
	.A(IN_0));
endmodule

module RST_SYNC_NUM_STAGES2_0 (
	clk, 
	rst, 
	sync_rst);
   input clk;
   input rst;
   output sync_rst;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire sync_reg_0_;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRQX1M sync_reg_reg_1_ (.SI(LTIE_LTIELO_NET), 
	.SE(LTIE_LTIELO_NET), 
	.RN(rst), 
	.Q(sync_rst), 
	.D(sync_reg_0_), 
	.CK(clk));
   SDFFRQX1M sync_reg_reg_0_ (.SI(LTIE_LTIELO_NET), 
	.SE(LTIE_LTIELO_NET), 
	.RN(rst), 
	.Q(sync_reg_0_), 
	.D(HTIE_LTIEHI_NET), 
	.CK(clk));
endmodule

module RST_SYNC_NUM_STAGES2_1 (
	clk, 
	rst, 
	sync_rst, 
	CLK_A__L7_N11);
   input clk;
   input rst;
   output sync_rst;
   input CLK_A__L7_N11;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire sync_reg_0_;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRQX2M sync_reg_reg_1_ (.SI(LTIE_LTIELO_NET), 
	.SE(LTIE_LTIELO_NET), 
	.RN(rst), 
	.Q(sync_rst), 
	.D(sync_reg_0_), 
	.CK(clk));
   SDFFRQX2M sync_reg_reg_0_ (.SI(LTIE_LTIELO_NET), 
	.SE(LTIE_LTIELO_NET), 
	.RN(rst), 
	.Q(sync_reg_0_), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK_A__L7_N11));
endmodule

module Data_Sync_BUS_WIDTH8_NUM_STAGES2_test_1 (
	unsync_bus, 
	bus_enable, 
	clk, 
	rst, 
	sync_bus, 
	enable_pulse, 
	test_si, 
	test_so, 
	test_se);
   input [7:0] unsync_bus;
   input bus_enable;
   input clk;
   input rst;
   output [7:0] sync_bus;
   output enable_pulse;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire sync_flop_0_;
   wire enable_flop;
   wire n1;
   wire n3;
   wire n5;
   wire n7;
   wire n9;
   wire n11;
   wire n13;
   wire n15;
   wire n17;
   wire n25;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;

   SDFFRQX2M enable_flop_reg (.SI(test_si), 
	.SE(n31), 
	.RN(rst), 
	.Q(enable_flop), 
	.D(test_so), 
	.CK(clk));
   SDFFRQX2M sync_flop_reg_1_ (.SI(sync_flop_0_), 
	.SE(n30), 
	.RN(rst), 
	.Q(test_so), 
	.D(sync_flop_0_), 
	.CK(clk));
   SDFFRQX2M sync_bus_reg_7_ (.SI(sync_bus[6]), 
	.SE(n31), 
	.RN(rst), 
	.Q(sync_bus[7]), 
	.D(n17), 
	.CK(clk));
   SDFFRQX2M sync_bus_reg_3_ (.SI(sync_bus[2]), 
	.SE(n30), 
	.RN(rst), 
	.Q(sync_bus[3]), 
	.D(n9), 
	.CK(clk));
   SDFFRQX2M sync_bus_reg_2_ (.SI(sync_bus[1]), 
	.SE(n38), 
	.RN(rst), 
	.Q(sync_bus[2]), 
	.D(n7), 
	.CK(clk));
   SDFFRQX2M sync_flop_reg_0_ (.SI(sync_bus[7]), 
	.SE(n37), 
	.RN(rst), 
	.Q(sync_flop_0_), 
	.D(bus_enable), 
	.CK(clk));
   SDFFRQX2M sync_bus_reg_0_ (.SI(enable_pulse), 
	.SE(n38), 
	.RN(rst), 
	.Q(sync_bus[0]), 
	.D(n3), 
	.CK(clk));
   SDFFRQX2M sync_bus_reg_4_ (.SI(sync_bus[3]), 
	.SE(n37), 
	.RN(rst), 
	.Q(sync_bus[4]), 
	.D(n11), 
	.CK(clk));
   SDFFRQX2M sync_bus_reg_6_ (.SI(sync_bus[5]), 
	.SE(n36), 
	.RN(rst), 
	.Q(sync_bus[6]), 
	.D(n15), 
	.CK(clk));
   SDFFRQX2M sync_bus_reg_5_ (.SI(sync_bus[4]), 
	.SE(n35), 
	.RN(rst), 
	.Q(sync_bus[5]), 
	.D(n13), 
	.CK(clk));
   SDFFRQX2M sync_bus_reg_1_ (.SI(sync_bus[0]), 
	.SE(n36), 
	.RN(rst), 
	.Q(sync_bus[1]), 
	.D(n5), 
	.CK(clk));
   SDFFRQX2M enable_pulse_reg (.SI(enable_flop), 
	.SE(n35), 
	.RN(rst), 
	.Q(enable_pulse), 
	.D(n25), 
	.CK(clk));
   CLKINVX2M U3 (.Y(n25), 
	.A(n1));
   NAND2BX2M U7 (.Y(n1), 
	.B(test_so), 
	.AN(enable_flop));
   AO22X1M U8 (.Y(n5), 
	.B1(n1), 
	.B0(sync_bus[1]), 
	.A1(n25), 
	.A0(unsync_bus[1]));
   AO22X1M U9 (.Y(n13), 
	.B1(sync_bus[5]), 
	.B0(n1), 
	.A1(n25), 
	.A0(unsync_bus[5]));
   AO22X1M U10 (.Y(n15), 
	.B1(n1), 
	.B0(sync_bus[6]), 
	.A1(n25), 
	.A0(unsync_bus[6]));
   AO22X1M U11 (.Y(n11), 
	.B1(n1), 
	.B0(sync_bus[4]), 
	.A1(n25), 
	.A0(unsync_bus[4]));
   AO22X1M U12 (.Y(n3), 
	.B1(n1), 
	.B0(sync_bus[0]), 
	.A1(n25), 
	.A0(unsync_bus[0]));
   AO22X1M U25 (.Y(n7), 
	.B1(n1), 
	.B0(sync_bus[2]), 
	.A1(n25), 
	.A0(unsync_bus[2]));
   AO22X1M U26 (.Y(n9), 
	.B1(n1), 
	.B0(sync_bus[3]), 
	.A1(n25), 
	.A0(unsync_bus[3]));
   AO22X1M U27 (.Y(n17), 
	.B1(n1), 
	.B0(sync_bus[7]), 
	.A1(n25), 
	.A0(unsync_bus[7]));
   DLY1X1M U28 (.Y(n28), 
	.A(n32));
   DLY1X1M U29 (.Y(n29), 
	.A(n32));
   DLY1X1M U30 (.Y(n30), 
	.A(n34));
   DLY1X1M U31 (.Y(n31), 
	.A(n34));
   DLY1X1M U32 (.Y(n32), 
	.A(test_se));
   DLY1X1M U33 (.Y(n33), 
	.A(n28));
   DLY1X1M U34 (.Y(n34), 
	.A(n28));
   DLY1X1M U35 (.Y(n35), 
	.A(n29));
   DLY1X1M U36 (.Y(n36), 
	.A(n33));
   DLY1X1M U37 (.Y(n37), 
	.A(n33));
   DLY1X1M U38 (.Y(n38), 
	.A(n29));
endmodule

module DF_Sync_DATA_WIDTH4_test_0 (
	clk, 
	rst, 
	async, 
	sync, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN0_SYNC_REF_RST);
   input clk;
   input rst;
   input [3:0] async;
   output [3:0] sync;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN0_SYNC_REF_RST;

   // Internal wires
   wire sync_reg_2_0;
   wire sync_reg_1_0;
   wire sync_reg_0_0;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;

   SDFFRQX2M sync_reg_3_ (.SI(sync[2]), 
	.SE(n15), 
	.RN(rst), 
	.Q(sync[3]), 
	.D(test_so), 
	.CK(clk));
   SDFFRQX2M sync_reg_2_ (.SI(sync[1]), 
	.SE(n14), 
	.RN(rst), 
	.Q(sync[2]), 
	.D(sync_reg_2_0), 
	.CK(clk));
   SDFFRQX2M sync_reg_1_ (.SI(sync[0]), 
	.SE(n18), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(sync[1]), 
	.D(sync_reg_1_0), 
	.CK(clk));
   SDFFRQX2M sync_reg_0_ (.SI(test_si), 
	.SE(n15), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(sync[0]), 
	.D(sync_reg_0_0), 
	.CK(clk));
   SDFFRQX2M sync_reg_reg_3_ (.SI(sync_reg_2_0), 
	.SE(n14), 
	.RN(rst), 
	.Q(test_so), 
	.D(async[3]), 
	.CK(clk));
   SDFFRQX2M sync_reg_reg_2_ (.SI(sync_reg_1_0), 
	.SE(n18), 
	.RN(rst), 
	.Q(sync_reg_2_0), 
	.D(async[2]), 
	.CK(clk));
   SDFFRQX2M sync_reg_reg_1_ (.SI(sync_reg_0_0), 
	.SE(n17), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(sync_reg_1_0), 
	.D(async[1]), 
	.CK(clk));
   SDFFRQX2M sync_reg_reg_0_ (.SI(sync[3]), 
	.SE(n16), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(sync_reg_0_0), 
	.D(async[0]), 
	.CK(clk));
   DLY1X1M U13 (.Y(n13), 
	.A(test_se));
   DLY1X1M U14 (.Y(n14), 
	.A(n16));
   DLY1X1M U15 (.Y(n15), 
	.A(n17));
   DLY1X1M U16 (.Y(n16), 
	.A(n13));
   DLY1X1M U17 (.Y(n17), 
	.A(test_se));
   DLY1X1M U18 (.Y(n18), 
	.A(n13));
endmodule

module DF_Sync_DATA_WIDTH4_test_1 (
	clk, 
	rst, 
	async, 
	sync, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input rst;
   input [3:0] async;
   output [3:0] sync;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire sync_reg_2_0;
   wire sync_reg_1_0;
   wire sync_reg_0_0;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;

   SDFFRQX2M sync_reg_3_ (.SI(sync[2]), 
	.SE(n23), 
	.RN(rst), 
	.Q(sync[3]), 
	.D(test_so), 
	.CK(clk));
   SDFFRQX2M sync_reg_2_ (.SI(sync[1]), 
	.SE(n22), 
	.RN(rst), 
	.Q(sync[2]), 
	.D(sync_reg_2_0), 
	.CK(clk));
   SDFFRQX2M sync_reg_1_ (.SI(sync[0]), 
	.SE(n26), 
	.RN(rst), 
	.Q(sync[1]), 
	.D(sync_reg_1_0), 
	.CK(clk));
   SDFFRQX2M sync_reg_0_ (.SI(test_si), 
	.SE(n23), 
	.RN(rst), 
	.Q(sync[0]), 
	.D(sync_reg_0_0), 
	.CK(clk));
   SDFFRQX2M sync_reg_reg_3_ (.SI(sync_reg_2_0), 
	.SE(n22), 
	.RN(rst), 
	.Q(test_so), 
	.D(async[3]), 
	.CK(clk));
   SDFFRQX2M sync_reg_reg_2_ (.SI(sync_reg_1_0), 
	.SE(n26), 
	.RN(rst), 
	.Q(sync_reg_2_0), 
	.D(async[2]), 
	.CK(clk));
   SDFFRQX2M sync_reg_reg_1_ (.SI(sync_reg_0_0), 
	.SE(n25), 
	.RN(rst), 
	.Q(sync_reg_1_0), 
	.D(async[1]), 
	.CK(clk));
   SDFFRQX2M sync_reg_reg_0_ (.SI(sync[3]), 
	.SE(n24), 
	.RN(rst), 
	.Q(sync_reg_0_0), 
	.D(async[0]), 
	.CK(clk));
   DLY1X1M U13 (.Y(n21), 
	.A(test_se));
   DLY1X1M U14 (.Y(n22), 
	.A(n24));
   DLY1X1M U15 (.Y(n23), 
	.A(n25));
   DLY1X1M U16 (.Y(n24), 
	.A(n21));
   DLY1X1M U17 (.Y(n25), 
	.A(test_se));
   DLY1X1M U18 (.Y(n26), 
	.A(n21));
endmodule

module fifo_wr_P_WIDTH4_test_1 (
	w_clk, 
	w_rstn, 
	w_inc, 
	wq2_rptr, 
	w_addr, 
	gray_w_ptr, 
	full, 
	test_si, 
	test_so, 
	test_se, 
	CLK_A__L7_N15);
   input w_clk;
   input w_rstn;
   input w_inc;
   input [3:0] wq2_rptr;
   output [2:0] w_addr;
   output [3:0] gray_w_ptr;
   output full;
   input test_si;
   output test_so;
   input test_se;
   input CLK_A__L7_N15;

   // Internal wires
   wire n5;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n3;
   wire [3:0] comb_gray_w_ptr;

   SDFFRQX2M gray_w_ptr_reg_3_ (.SI(gray_w_ptr[2]), 
	.SE(n36), 
	.RN(w_rstn), 
	.Q(gray_w_ptr[3]), 
	.D(test_so), 
	.CK(CLK_A__L7_N15));
   SDFFRQX2M gray_w_ptr_reg_2_ (.SI(gray_w_ptr[1]), 
	.SE(n33), 
	.RN(w_rstn), 
	.Q(gray_w_ptr[2]), 
	.D(comb_gray_w_ptr[2]), 
	.CK(CLK_A__L7_N15));
   SDFFRQX2M gray_w_ptr_reg_1_ (.SI(gray_w_ptr[0]), 
	.SE(n32), 
	.RN(w_rstn), 
	.Q(gray_w_ptr[1]), 
	.D(comb_gray_w_ptr[1]), 
	.CK(CLK_A__L7_N15));
   SDFFRQX2M gray_w_ptr_reg_0_ (.SI(test_si), 
	.SE(n36), 
	.RN(w_rstn), 
	.Q(gray_w_ptr[0]), 
	.D(comb_gray_w_ptr[0]), 
	.CK(CLK_A__L7_N15));
   SDFFRQX2M w_ptr_reg_3_ (.SI(w_addr[2]), 
	.SE(n35), 
	.RN(w_rstn), 
	.Q(test_so), 
	.D(n19), 
	.CK(CLK_A__L7_N15));
   SDFFRX1M w_ptr_reg_0_ (.SI(gray_w_ptr[3]), 
	.SE(n34), 
	.RN(w_rstn), 
	.QN(n23), 
	.D(n22), 
	.CK(CLK_A__L7_N15));
   CLKINVX2M U12 (.Y(w_addr[0]), 
	.A(n23));
   INVX2M U16 (.Y(full), 
	.A(n14));
   CLKXOR2X2M U17 (.Y(comb_gray_w_ptr[2]), 
	.B(test_so), 
	.A(w_addr[2]));
   CLKXOR2X2M U18 (.Y(comb_gray_w_ptr[1]), 
	.B(w_addr[2]), 
	.A(w_addr[1]));
   XNOR2X2M U19 (.Y(comb_gray_w_ptr[0]), 
	.B(w_addr[1]), 
	.A(n23));
   XNOR2X2M U20 (.Y(n15), 
	.B(wq2_rptr[1]), 
	.A(comb_gray_w_ptr[1]));
   NAND4X2M U21 (.Y(n14), 
	.D(n18), 
	.C(n17), 
	.B(n16), 
	.A(n15));
   CLKXOR2X2M U22 (.Y(n18), 
	.B(test_so), 
	.A(wq2_rptr[3]));
   CLKXOR2X2M U23 (.Y(n17), 
	.B(comb_gray_w_ptr[2]), 
	.A(wq2_rptr[2]));
   XNOR2X2M U24 (.Y(n16), 
	.B(wq2_rptr[0]), 
	.A(comb_gray_w_ptr[0]));
   NOR2X2M U25 (.Y(n12), 
	.B(n23), 
	.A(n13));
   XNOR2X2M U26 (.Y(n20), 
	.B(n11), 
	.A(w_addr[2]));
   XNOR2X2M U27 (.Y(n19), 
	.B(n10), 
	.A(test_so));
   NAND2BX2M U28 (.Y(n10), 
	.B(w_addr[2]), 
	.AN(n11));
   NAND2X2M U29 (.Y(n11), 
	.B(w_addr[1]), 
	.A(n12));
   NAND2X2M U30 (.Y(n13), 
	.B(n14), 
	.A(w_inc));
   CLKXOR2X2M U31 (.Y(n21), 
	.B(n12), 
	.A(w_addr[1]));
   CLKXOR2X2M U32 (.Y(n22), 
	.B(n13), 
	.A(n23));
   DLY1X1M U33 (.Y(n31), 
	.A(test_se));
   DLY1X1M U35 (.Y(n33), 
	.A(n35));
   DLY1X1M U36 (.Y(n34), 
	.A(n31));
   DLY1X1M U37 (.Y(n35), 
	.A(test_se));
   DLY1X1M U38 (.Y(n36), 
	.A(n31));
   SDFFRQX1M w_ptr_reg_1_ (.SI(n23), 
	.SE(n33), 
	.RN(w_rstn), 
	.Q(n5), 
	.D(n21), 
	.CK(w_clk));
   SDFFRQX4M w_ptr_reg_2_ (.SI(w_addr[1]), 
	.SE(n32), 
	.RN(w_rstn), 
	.Q(w_addr[2]), 
	.D(n20), 
	.CK(CLK_A__L7_N15));
   BUFX2M U3 (.Y(n32), 
	.A(n34));
   INVXLM U6 (.Y(n3), 
	.A(n5));
   CLKINVX2M U7 (.Y(w_addr[1]), 
	.A(n3));
endmodule

module fifo_rd_P_WIDTH4_test_1 (
	r_clk, 
	r_rst_n, 
	r_inc, 
	rq2_wptr, 
	r_addr, 
	empty, 
	gray_rd_ptr, 
	test_si, 
	test_so, 
	test_se, 
	UART_TX_CLK__L3_N1);
   input r_clk;
   input r_rst_n;
   input r_inc;
   input [3:0] rq2_wptr;
   output [2:0] r_addr;
   output empty;
   output [3:0] gray_rd_ptr;
   input test_si;
   output test_so;
   input test_se;
   input UART_TX_CLK__L3_N1;

   // Internal wires
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n9;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire [3:0] comb_gray_rd_ptr;

   SDFFRQX2M rd_ptr_reg_3_ (.SI(r_addr[2]), 
	.SE(n34), 
	.RN(r_rst_n), 
	.Q(test_so), 
	.D(n19), 
	.CK(r_clk));
   SDFFRQX2M gray_rd_ptr_reg_3_ (.SI(gray_rd_ptr[2]), 
	.SE(n30), 
	.RN(r_rst_n), 
	.Q(gray_rd_ptr[3]), 
	.D(test_so), 
	.CK(r_clk));
   SDFFRQX2M gray_rd_ptr_reg_2_ (.SI(gray_rd_ptr[1]), 
	.SE(n31), 
	.RN(r_rst_n), 
	.Q(gray_rd_ptr[2]), 
	.D(comb_gray_rd_ptr[2]), 
	.CK(r_clk));
   SDFFRQX2M gray_rd_ptr_reg_1_ (.SI(gray_rd_ptr[0]), 
	.SE(n34), 
	.RN(r_rst_n), 
	.Q(gray_rd_ptr[1]), 
	.D(comb_gray_rd_ptr[1]), 
	.CK(r_clk));
   SDFFRQX2M gray_rd_ptr_reg_0_ (.SI(test_si), 
	.SE(n30), 
	.RN(r_rst_n), 
	.Q(gray_rd_ptr[0]), 
	.D(comb_gray_rd_ptr[0]), 
	.CK(r_clk));
   SDFFRX1M rd_ptr_reg_0_ (.SI(gray_rd_ptr[3]), 
	.SE(n32), 
	.RN(r_rst_n), 
	.QN(n9), 
	.Q(r_addr[0]), 
	.D(n22), 
	.CK(UART_TX_CLK__L3_N1));
   INVX2M U15 (.Y(empty), 
	.A(n14));
   CLKXOR2X2M U17 (.Y(comb_gray_rd_ptr[2]), 
	.B(test_so), 
	.A(r_addr[2]));
   NOR2X2M U19 (.Y(n12), 
	.B(n9), 
	.A(n13));
   XNOR2X2M U20 (.Y(n15), 
	.B(rq2_wptr[1]), 
	.A(comb_gray_rd_ptr[1]));
   XNOR2X2M U21 (.Y(n19), 
	.B(n10), 
	.A(test_so));
   NAND2BX2M U22 (.Y(n10), 
	.B(r_addr[2]), 
	.AN(n11));
   NAND4X2M U23 (.Y(n14), 
	.D(n18), 
	.C(n17), 
	.B(n16), 
	.A(n15));
   XNOR2X2M U24 (.Y(n17), 
	.B(rq2_wptr[3]), 
	.A(test_so));
   XNOR2X2M U25 (.Y(n18), 
	.B(rq2_wptr[2]), 
	.A(comb_gray_rd_ptr[2]));
   XNOR2X2M U26 (.Y(n16), 
	.B(rq2_wptr[0]), 
	.A(comb_gray_rd_ptr[0]));
   NAND2X2M U28 (.Y(n13), 
	.B(n14), 
	.A(r_inc));
   CLKXOR2X2M U30 (.Y(n22), 
	.B(n13), 
	.A(n9));
   XNOR2X2M U31 (.Y(n20), 
	.B(n11), 
	.A(r_addr[2]));
   DLY1X1M U32 (.Y(n29), 
	.A(test_se));
   DLY1X1M U33 (.Y(n30), 
	.A(n33));
   DLY1X1M U34 (.Y(n31), 
	.A(n32));
   DLY1X1M U35 (.Y(n32), 
	.A(test_se));
   DLY1X1M U36 (.Y(n33), 
	.A(n29));
   DLY1X1M U37 (.Y(n34), 
	.A(n29));
   SDFFRQX4M rd_ptr_reg_2_ (.SI(r_addr[1]), 
	.SE(n31), 
	.RN(r_rst_n), 
	.Q(r_addr[2]), 
	.D(n20), 
	.CK(r_clk));
   SDFFRQX2M rd_ptr_reg_1_ (.SI(n9), 
	.SE(n33), 
	.RN(r_rst_n), 
	.Q(r_addr[1]), 
	.D(n21), 
	.CK(r_clk));
   CLKXOR2X2M U3 (.Y(n21), 
	.B(n12), 
	.A(r_addr[1]));
   XNOR2X2M U4 (.Y(comb_gray_rd_ptr[0]), 
	.B(r_addr[1]), 
	.A(n9));
   CLKXOR2X2M U5 (.Y(comb_gray_rd_ptr[1]), 
	.B(r_addr[2]), 
	.A(r_addr[1]));
   NAND2X1M U16 (.Y(n11), 
	.B(r_addr[1]), 
	.A(n12));
endmodule

module fifo_mem_D_WIDTH8_A_WIDTH3_F_DEPTH8_P_WIDTH4_test_1 (
	w_clk, 
	w_rstn, 
	w_full, 
	w_inc, 
	w_addr, 
	r_addr, 
	w_data, 
	r_data, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN2_SYNC_REF_RST, 
	FE_OFN0_SYNC_REF_RST, 
	CLK_A__L7_N11, 
	CLK_A__L7_N12, 
	CLK_A__L7_N14, 
	CLK_A__L7_N9);
   input w_clk;
   input w_rstn;
   input w_full;
   input w_inc;
   input [2:0] w_addr;
   input [2:0] r_addr;
   input [7:0] w_data;
   output [7:0] r_data;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN2_SYNC_REF_RST;
   input FE_OFN0_SYNC_REF_RST;
   input CLK_A__L7_N11;
   input CLK_A__L7_N12;
   input CLK_A__L7_N14;
   input CLK_A__L7_N9;

   // Internal wires
   wire FIFO_MEM_7__6_;
   wire FIFO_MEM_7__5_;
   wire FIFO_MEM_7__4_;
   wire FIFO_MEM_7__3_;
   wire FIFO_MEM_7__2_;
   wire FIFO_MEM_7__1_;
   wire FIFO_MEM_7__0_;
   wire FIFO_MEM_6__7_;
   wire FIFO_MEM_6__6_;
   wire FIFO_MEM_6__5_;
   wire FIFO_MEM_6__4_;
   wire FIFO_MEM_6__3_;
   wire FIFO_MEM_6__2_;
   wire FIFO_MEM_6__1_;
   wire FIFO_MEM_6__0_;
   wire FIFO_MEM_5__7_;
   wire FIFO_MEM_5__6_;
   wire FIFO_MEM_5__5_;
   wire FIFO_MEM_5__4_;
   wire FIFO_MEM_5__3_;
   wire FIFO_MEM_5__2_;
   wire FIFO_MEM_5__1_;
   wire FIFO_MEM_5__0_;
   wire FIFO_MEM_4__7_;
   wire FIFO_MEM_4__6_;
   wire FIFO_MEM_4__5_;
   wire FIFO_MEM_4__4_;
   wire FIFO_MEM_4__3_;
   wire FIFO_MEM_4__2_;
   wire FIFO_MEM_4__1_;
   wire FIFO_MEM_4__0_;
   wire FIFO_MEM_3__7_;
   wire FIFO_MEM_3__6_;
   wire FIFO_MEM_3__5_;
   wire FIFO_MEM_3__4_;
   wire FIFO_MEM_3__3_;
   wire FIFO_MEM_3__2_;
   wire FIFO_MEM_3__1_;
   wire FIFO_MEM_3__0_;
   wire FIFO_MEM_2__7_;
   wire FIFO_MEM_2__6_;
   wire FIFO_MEM_2__5_;
   wire FIFO_MEM_2__4_;
   wire FIFO_MEM_2__3_;
   wire FIFO_MEM_2__2_;
   wire FIFO_MEM_2__1_;
   wire FIFO_MEM_2__0_;
   wire FIFO_MEM_1__7_;
   wire FIFO_MEM_1__6_;
   wire FIFO_MEM_1__5_;
   wire FIFO_MEM_1__4_;
   wire FIFO_MEM_1__3_;
   wire FIFO_MEM_1__2_;
   wire FIFO_MEM_1__1_;
   wire FIFO_MEM_1__0_;
   wire FIFO_MEM_0__7_;
   wire FIFO_MEM_0__5_;
   wire FIFO_MEM_0__4_;
   wire FIFO_MEM_0__3_;
   wire FIFO_MEM_0__2_;
   wire FIFO_MEM_0__1_;
   wire FIFO_MEM_0__0_;
   wire n76;
   wire n79;
   wire n80;
   wire n82;
   wire n83;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n77;
   wire n78;
   wire n81;
   wire n84;
   wire n85;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n188;
   wire n190;
   wire n193;
   wire n196;
   wire n198;
   wire n200;
   wire n209;
   wire n210;
   wire n211;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;

   SDFFRQX2M FIFO_MEM_reg_4__1_ (.SI(FIFO_MEM_4__0_), 
	.SE(n270), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_4__1_), 
	.D(n119), 
	.CK(CLK_A__L7_N9));
   SDFFRQX2M FIFO_MEM_reg_4__0_ (.SI(FIFO_MEM_3__7_), 
	.SE(n270), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_4__0_), 
	.D(n118), 
	.CK(CLK_A__L7_N9));
   SDFFRQX2M FIFO_MEM_reg_1__3_ (.SI(FIFO_MEM_1__2_), 
	.SE(n285), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_1__3_), 
	.D(n97), 
	.CK(w_clk));
   SDFFRQX2M FIFO_MEM_reg_1__2_ (.SI(FIFO_MEM_1__1_), 
	.SE(n262), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_1__2_), 
	.D(n96), 
	.CK(w_clk));
   SDFFRQX2M FIFO_MEM_reg_1__1_ (.SI(FIFO_MEM_1__0_), 
	.SE(n262), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_1__1_), 
	.D(n95), 
	.CK(w_clk));
   SDFFRQX2M FIFO_MEM_reg_1__0_ (.SI(FIFO_MEM_0__7_), 
	.SE(n261), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_1__0_), 
	.D(n94), 
	.CK(w_clk));
   SDFFRQX2M FIFO_MEM_reg_0__7_ (.SI(test_si2), 
	.SE(n261), 
	.RN(w_rstn), 
	.Q(FIFO_MEM_0__7_), 
	.D(n93), 
	.CK(CLK_A__L7_N11));
   SDFFRQX2M FIFO_MEM_reg_0__5_ (.SI(FIFO_MEM_0__4_), 
	.SE(n269), 
	.RN(w_rstn), 
	.Q(FIFO_MEM_0__5_), 
	.D(n91), 
	.CK(CLK_A__L7_N11));
   SDFFRQX2M FIFO_MEM_reg_0__4_ (.SI(FIFO_MEM_0__3_), 
	.SE(n269), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(FIFO_MEM_0__4_), 
	.D(n90), 
	.CK(CLK_A__L7_N11));
   SDFFRQX2M FIFO_MEM_reg_0__3_ (.SI(FIFO_MEM_0__2_), 
	.SE(n282), 
	.RN(w_rstn), 
	.Q(FIFO_MEM_0__3_), 
	.D(n89), 
	.CK(CLK_A__L7_N11));
   SDFFRQX2M FIFO_MEM_reg_0__2_ (.SI(FIFO_MEM_0__1_), 
	.SE(n260), 
	.RN(w_rstn), 
	.Q(FIFO_MEM_0__2_), 
	.D(n88), 
	.CK(CLK_A__L7_N11));
   SDFFRQX2M FIFO_MEM_reg_0__1_ (.SI(FIFO_MEM_0__0_), 
	.SE(n260), 
	.RN(w_rstn), 
	.Q(FIFO_MEM_0__1_), 
	.D(n87), 
	.CK(CLK_A__L7_N11));
   SDFFRQX2M FIFO_MEM_reg_0__0_ (.SI(test_si1), 
	.SE(n259), 
	.RN(w_rstn), 
	.Q(FIFO_MEM_0__0_), 
	.D(n86), 
	.CK(CLK_A__L7_N14));
   SDFFRQX2M FIFO_MEM_reg_5__7_ (.SI(FIFO_MEM_5__6_), 
	.SE(n259), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_5__7_), 
	.D(n133), 
	.CK(CLK_A__L7_N12));
   SDFFRQX2M FIFO_MEM_reg_5__6_ (.SI(FIFO_MEM_5__5_), 
	.SE(n268), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_5__6_), 
	.D(n132), 
	.CK(CLK_A__L7_N12));
   SDFFRQX2M FIFO_MEM_reg_5__5_ (.SI(FIFO_MEM_5__4_), 
	.SE(n268), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_5__5_), 
	.D(n131), 
	.CK(CLK_A__L7_N12));
   SDFFRQX2M FIFO_MEM_reg_5__4_ (.SI(FIFO_MEM_5__3_), 
	.SE(n280), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_5__4_), 
	.D(n130), 
	.CK(CLK_A__L7_N12));
   SDFFRQX2M FIFO_MEM_reg_5__3_ (.SI(FIFO_MEM_5__2_), 
	.SE(n258), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_5__3_), 
	.D(n129), 
	.CK(CLK_A__L7_N12));
   SDFFRQX2M FIFO_MEM_reg_5__2_ (.SI(FIFO_MEM_5__1_), 
	.SE(n258), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_5__2_), 
	.D(n128), 
	.CK(CLK_A__L7_N12));
   SDFFRQX2M FIFO_MEM_reg_5__1_ (.SI(FIFO_MEM_5__0_), 
	.SE(n256), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_5__1_), 
	.D(n127), 
	.CK(CLK_A__L7_N12));
   SDFFRQX2M FIFO_MEM_reg_5__0_ (.SI(FIFO_MEM_4__7_), 
	.SE(n255), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_5__0_), 
	.D(n126), 
	.CK(CLK_A__L7_N9));
   SDFFRQX2M FIFO_MEM_reg_4__7_ (.SI(FIFO_MEM_4__6_), 
	.SE(n267), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_4__7_), 
	.D(n125), 
	.CK(CLK_A__L7_N9));
   SDFFRQX2M FIFO_MEM_reg_4__6_ (.SI(FIFO_MEM_4__5_), 
	.SE(n267), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_4__6_), 
	.D(n124), 
	.CK(w_clk));
   SDFFRQX2M FIFO_MEM_reg_4__5_ (.SI(FIFO_MEM_4__4_), 
	.SE(n278), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_4__5_), 
	.D(n123), 
	.CK(CLK_A__L7_N9));
   SDFFRQX2M FIFO_MEM_reg_4__4_ (.SI(FIFO_MEM_4__3_), 
	.SE(n254), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_4__4_), 
	.D(n122), 
	.CK(CLK_A__L7_N9));
   SDFFRQX2M FIFO_MEM_reg_4__3_ (.SI(FIFO_MEM_4__2_), 
	.SE(n252), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_4__3_), 
	.D(n121), 
	.CK(CLK_A__L7_N9));
   SDFFRQX2M FIFO_MEM_reg_4__2_ (.SI(FIFO_MEM_4__1_), 
	.SE(n266), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_4__2_), 
	.D(n120), 
	.CK(CLK_A__L7_N12));
   SDFFRQX2M FIFO_MEM_reg_7__7_ (.SI(FIFO_MEM_7__6_), 
	.SE(n266), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(test_so2), 
	.D(n149), 
	.CK(CLK_A__L7_N12));
   SDFFRQX2M FIFO_MEM_reg_7__6_ (.SI(FIFO_MEM_7__5_), 
	.SE(n247), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_7__6_), 
	.D(n148), 
	.CK(CLK_A__L7_N12));
   SDFFRQX2M FIFO_MEM_reg_7__5_ (.SI(FIFO_MEM_7__4_), 
	.SE(n251), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_7__5_), 
	.D(n147), 
	.CK(CLK_A__L7_N9));
   SDFFRQX2M FIFO_MEM_reg_7__4_ (.SI(FIFO_MEM_7__3_), 
	.SE(n256), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_7__4_), 
	.D(n146), 
	.CK(CLK_A__L7_N9));
   SDFFRQX2M FIFO_MEM_reg_7__3_ (.SI(FIFO_MEM_7__2_), 
	.SE(n265), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_7__3_), 
	.D(n145), 
	.CK(CLK_A__L7_N12));
   SDFFRQX2M FIFO_MEM_reg_7__2_ (.SI(FIFO_MEM_7__1_), 
	.SE(n265), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_7__2_), 
	.D(n144), 
	.CK(CLK_A__L7_N12));
   SDFFRQX2M FIFO_MEM_reg_7__1_ (.SI(FIFO_MEM_7__0_), 
	.SE(n275), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_7__1_), 
	.D(n143), 
	.CK(CLK_A__L7_N12));
   SDFFRQX2M FIFO_MEM_reg_7__0_ (.SI(FIFO_MEM_6__7_), 
	.SE(n255), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_7__0_), 
	.D(n142), 
	.CK(CLK_A__L7_N9));
   SDFFRQX2M FIFO_MEM_reg_6__7_ (.SI(FIFO_MEM_6__6_), 
	.SE(n253), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_6__7_), 
	.D(n141), 
	.CK(w_clk));
   SDFFRQX2M FIFO_MEM_reg_6__6_ (.SI(FIFO_MEM_6__5_), 
	.SE(n264), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_6__6_), 
	.D(n140), 
	.CK(CLK_A__L7_N9));
   SDFFRQX2M FIFO_MEM_reg_6__5_ (.SI(FIFO_MEM_6__4_), 
	.SE(n264), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_6__5_), 
	.D(n139), 
	.CK(w_clk));
   SDFFRQX2M FIFO_MEM_reg_6__4_ (.SI(FIFO_MEM_6__3_), 
	.SE(n274), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_6__4_), 
	.D(n138), 
	.CK(w_clk));
   SDFFRQX2M FIFO_MEM_reg_6__3_ (.SI(FIFO_MEM_6__2_), 
	.SE(n250), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_6__3_), 
	.D(n137), 
	.CK(w_clk));
   SDFFRQX2M FIFO_MEM_reg_6__2_ (.SI(FIFO_MEM_6__1_), 
	.SE(n254), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_6__2_), 
	.D(n136), 
	.CK(CLK_A__L7_N9));
   SDFFRQX2M FIFO_MEM_reg_6__1_ (.SI(FIFO_MEM_6__0_), 
	.SE(n263), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_6__1_), 
	.D(n135), 
	.CK(CLK_A__L7_N9));
   SDFFRQX2M FIFO_MEM_reg_6__0_ (.SI(FIFO_MEM_5__7_), 
	.SE(n263), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_6__0_), 
	.D(n134), 
	.CK(CLK_A__L7_N14));
   SDFFRQX2M FIFO_MEM_reg_3__7_ (.SI(FIFO_MEM_3__6_), 
	.SE(n246), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_3__7_), 
	.D(n117), 
	.CK(CLK_A__L7_N14));
   SDFFRQX2M FIFO_MEM_reg_3__5_ (.SI(FIFO_MEM_3__4_), 
	.SE(n251), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_3__5_), 
	.D(n115), 
	.CK(CLK_A__L7_N9));
   SDFFRQX2M FIFO_MEM_reg_3__4_ (.SI(FIFO_MEM_3__3_), 
	.SE(n257), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_3__4_), 
	.D(n114), 
	.CK(CLK_A__L7_N9));
   SDFFRQX2M FIFO_MEM_reg_3__3_ (.SI(FIFO_MEM_3__2_), 
	.SE(n242), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_3__3_), 
	.D(n113), 
	.CK(CLK_A__L7_N9));
   SDFFRQX2M FIFO_MEM_reg_3__2_ (.SI(FIFO_MEM_3__1_), 
	.SE(n226), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_3__2_), 
	.D(n112), 
	.CK(w_clk));
   SDFFRQX2M FIFO_MEM_reg_3__1_ (.SI(FIFO_MEM_3__0_), 
	.SE(n229), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_3__1_), 
	.D(n111), 
	.CK(w_clk));
   SDFFRQX2M FIFO_MEM_reg_3__0_ (.SI(FIFO_MEM_2__7_), 
	.SE(n231), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_3__0_), 
	.D(n110), 
	.CK(w_clk));
   SDFFRQX2M FIFO_MEM_reg_2__7_ (.SI(FIFO_MEM_2__6_), 
	.SE(n229), 
	.RN(w_rstn), 
	.Q(FIFO_MEM_2__7_), 
	.D(n109), 
	.CK(w_clk));
   SDFFRQX2M FIFO_MEM_reg_2__6_ (.SI(FIFO_MEM_2__5_), 
	.SE(n226), 
	.RN(w_rstn), 
	.Q(FIFO_MEM_2__6_), 
	.D(n108), 
	.CK(CLK_A__L7_N11));
   SDFFRQX2M FIFO_MEM_reg_2__5_ (.SI(FIFO_MEM_2__4_), 
	.SE(n233), 
	.RN(w_rstn), 
	.Q(FIFO_MEM_2__5_), 
	.D(n107), 
	.CK(w_clk));
   SDFFRQX2M FIFO_MEM_reg_2__4_ (.SI(FIFO_MEM_2__3_), 
	.SE(n230), 
	.RN(w_rstn), 
	.Q(FIFO_MEM_2__4_), 
	.D(n106), 
	.CK(CLK_A__L7_N11));
   SDFFRQX2M FIFO_MEM_reg_2__3_ (.SI(FIFO_MEM_2__2_), 
	.SE(n238), 
	.RN(w_rstn), 
	.Q(FIFO_MEM_2__3_), 
	.D(n105), 
	.CK(CLK_A__L7_N14));
   SDFFRQX2M FIFO_MEM_reg_2__2_ (.SI(FIFO_MEM_2__1_), 
	.SE(n227), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_2__2_), 
	.D(n104), 
	.CK(CLK_A__L7_N14));
   SDFFRQX2M FIFO_MEM_reg_2__1_ (.SI(FIFO_MEM_2__0_), 
	.SE(n232), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_2__1_), 
	.D(n103), 
	.CK(CLK_A__L7_N14));
   SDFFRQX2M FIFO_MEM_reg_2__0_ (.SI(FIFO_MEM_1__7_), 
	.SE(n231), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_2__0_), 
	.D(n102), 
	.CK(CLK_A__L7_N14));
   SDFFRQX2M FIFO_MEM_reg_1__7_ (.SI(FIFO_MEM_1__6_), 
	.SE(n238), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_1__7_), 
	.D(n101), 
	.CK(CLK_A__L7_N14));
   SDFFRQX2M FIFO_MEM_reg_1__6_ (.SI(FIFO_MEM_1__5_), 
	.SE(n227), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_1__6_), 
	.D(n100), 
	.CK(CLK_A__L7_N14));
   SDFFRQX2M FIFO_MEM_reg_1__5_ (.SI(FIFO_MEM_1__4_), 
	.SE(n224), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_1__5_), 
	.D(n99), 
	.CK(CLK_A__L7_N14));
   SDFFRQX2M FIFO_MEM_reg_1__4_ (.SI(FIFO_MEM_1__3_), 
	.SE(n228), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_1__4_), 
	.D(n98), 
	.CK(CLK_A__L7_N14));
   SDFFRQX2M FIFO_MEM_reg_0__6_ (.SI(FIFO_MEM_0__5_), 
	.SE(n224), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(test_so1), 
	.D(n92), 
	.CK(w_clk));
   SDFFRQX2M FIFO_MEM_reg_3__6_ (.SI(FIFO_MEM_3__5_), 
	.SE(n233), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(FIFO_MEM_3__6_), 
	.D(n116), 
	.CK(CLK_A__L7_N14));
   OAI22X1M U66 (.Y(r_data[7]), 
	.B1(n174), 
	.B0(r_addr[0]), 
	.A1(n178), 
	.A0(n175));
   AOI221XLM U67 (.Y(n174), 
	.C0(n171), 
	.B1(n172), 
	.B0(FIFO_MEM_6__7_), 
	.A1(n173), 
	.A0(FIFO_MEM_4__7_));
   AOI221XLM U68 (.Y(n175), 
	.C0(n168), 
	.B1(n172), 
	.B0(test_so2), 
	.A1(n173), 
	.A0(FIFO_MEM_5__7_));
   OAI22X1M U69 (.Y(r_data[3]), 
	.B1(n154), 
	.B0(r_addr[0]), 
	.A1(n155), 
	.A0(n178));
   AOI221XLM U70 (.Y(n154), 
	.C0(n153), 
	.B1(n172), 
	.B0(FIFO_MEM_6__3_), 
	.A1(n173), 
	.A0(FIFO_MEM_4__3_));
   AOI221XLM U71 (.Y(n155), 
	.C0(n152), 
	.B1(n172), 
	.B0(FIFO_MEM_7__3_), 
	.A1(n173), 
	.A0(FIFO_MEM_5__3_));
   OAI22X1M U72 (.Y(r_data[2]), 
	.B1(n150), 
	.B0(r_addr[0]), 
	.A1(n151), 
	.A0(n178));
   AOI221XLM U73 (.Y(n150), 
	.C0(n85), 
	.B1(n172), 
	.B0(FIFO_MEM_6__2_), 
	.A1(n173), 
	.A0(FIFO_MEM_4__2_));
   AOI221XLM U74 (.Y(n151), 
	.C0(n84), 
	.B1(n172), 
	.B0(FIFO_MEM_7__2_), 
	.A1(n173), 
	.A0(FIFO_MEM_5__2_));
   OAI22X1M U75 (.Y(r_data[6]), 
	.B1(n166), 
	.B0(r_addr[0]), 
	.A1(n167), 
	.A0(n178));
   AOI221XLM U76 (.Y(n166), 
	.C0(n165), 
	.B1(n172), 
	.B0(FIFO_MEM_6__6_), 
	.A1(n173), 
	.A0(FIFO_MEM_4__6_));
   AOI221XLM U77 (.Y(n167), 
	.C0(n164), 
	.B1(n172), 
	.B0(FIFO_MEM_7__6_), 
	.A1(n173), 
	.A0(FIFO_MEM_5__6_));
   OAI22X1M U78 (.Y(r_data[1]), 
	.B1(n78), 
	.B0(r_addr[0]), 
	.A1(n81), 
	.A0(n178));
   AOI221XLM U79 (.Y(n78), 
	.C0(n77), 
	.B1(n172), 
	.B0(FIFO_MEM_6__1_), 
	.A1(n173), 
	.A0(FIFO_MEM_4__1_));
   AOI221XLM U80 (.Y(n81), 
	.C0(n75), 
	.B1(n172), 
	.B0(FIFO_MEM_7__1_), 
	.A1(n173), 
	.A0(FIFO_MEM_5__1_));
   OAI22X1M U81 (.Y(r_data[5]), 
	.B1(n162), 
	.B0(r_addr[0]), 
	.A1(n163), 
	.A0(n178));
   AOI221XLM U82 (.Y(n162), 
	.C0(n161), 
	.B1(n172), 
	.B0(FIFO_MEM_6__5_), 
	.A1(n173), 
	.A0(FIFO_MEM_4__5_));
   AOI221XLM U83 (.Y(n163), 
	.C0(n160), 
	.B1(n172), 
	.B0(FIFO_MEM_7__5_), 
	.A1(n173), 
	.A0(FIFO_MEM_5__5_));
   OAI22X1M U84 (.Y(r_data[4]), 
	.B1(n158), 
	.B0(r_addr[0]), 
	.A1(n159), 
	.A0(n178));
   AOI221XLM U85 (.Y(n158), 
	.C0(n157), 
	.B1(n172), 
	.B0(FIFO_MEM_6__4_), 
	.A1(n173), 
	.A0(FIFO_MEM_4__4_));
   AOI221XLM U86 (.Y(n159), 
	.C0(n156), 
	.B1(n172), 
	.B0(FIFO_MEM_7__4_), 
	.A1(n173), 
	.A0(FIFO_MEM_5__4_));
   OAI22X1M U87 (.Y(r_data[0]), 
	.B1(n73), 
	.B0(r_addr[0]), 
	.A1(n74), 
	.A0(n178));
   AOI221XLM U88 (.Y(n73), 
	.C0(n72), 
	.B1(n172), 
	.B0(FIFO_MEM_6__0_), 
	.A1(n173), 
	.A0(FIFO_MEM_4__0_));
   AOI221XLM U89 (.Y(n74), 
	.C0(n71), 
	.B1(n172), 
	.B0(FIFO_MEM_7__0_), 
	.A1(n173), 
	.A0(FIFO_MEM_5__0_));
   NOR2X2M U90 (.Y(n170), 
	.B(r_addr[2]), 
	.A(n177));
   NOR2BX2M U93 (.Y(n76), 
	.B(w_addr[2]), 
	.AN(n80));
   AND2X2M U94 (.Y(n82), 
	.B(n80), 
	.A(w_addr[2]));
   INVX2M U95 (.Y(n210), 
	.A(w_addr[1]));
   INVX2M U96 (.Y(n209), 
	.A(w_addr[0]));
   CLKINVX2M U97 (.Y(n218), 
	.A(w_data[0]));
   CLKINVX2M U98 (.Y(n217), 
	.A(w_data[1]));
   CLKINVX2M U99 (.Y(n216), 
	.A(w_data[2]));
   CLKINVX2M U100 (.Y(n215), 
	.A(w_data[3]));
   CLKINVX2M U101 (.Y(n214), 
	.A(w_data[4]));
   CLKINVX2M U102 (.Y(n213), 
	.A(w_data[5]));
   CLKINVX2M U104 (.Y(n211), 
	.A(w_data[7]));
   CLKINVX2M U112 (.Y(n193), 
	.A(n66));
   CLKINVX2M U114 (.Y(n200), 
	.A(n65));
   NOR2X2M U119 (.Y(n172), 
	.B(n177), 
	.A(n176));
   CLKINVX2M U125 (.Y(n178), 
	.A(r_addr[0]));
   CLKINVX2M U126 (.Y(n198), 
	.A(n69));
   CLKINVX2M U128 (.Y(n188), 
	.A(n68));
   CLKINVX2M U130 (.Y(n196), 
	.A(n70));
   CLKINVX2M U132 (.Y(n190), 
	.A(n67));
   AND3X2M U134 (.Y(n65), 
	.C(n76), 
	.B(n210), 
	.A(n209));
   AND3X2M U135 (.Y(n66), 
	.C(n82), 
	.B(n210), 
	.A(n209));
   INVX2M U137 (.Y(n176), 
	.A(r_addr[2]));
   NAND3X2M U139 (.Y(n79), 
	.C(w_addr[1]), 
	.B(n76), 
	.A(w_addr[0]));
   NOR2BX2M U140 (.Y(n80), 
	.B(w_full), 
	.AN(w_inc));
   OAI2BB2X1M U141 (.Y(n110), 
	.B1(n79), 
	.B0(n218), 
	.A1N(n79), 
	.A0N(FIFO_MEM_3__0_));
   OAI2BB2X1M U142 (.Y(n111), 
	.B1(n79), 
	.B0(n217), 
	.A1N(n79), 
	.A0N(FIFO_MEM_3__1_));
   OAI2BB2X1M U143 (.Y(n112), 
	.B1(n79), 
	.B0(n216), 
	.A1N(n79), 
	.A0N(FIFO_MEM_3__2_));
   OAI2BB2X1M U144 (.Y(n113), 
	.B1(n79), 
	.B0(n215), 
	.A1N(n79), 
	.A0N(FIFO_MEM_3__3_));
   OAI2BB2X1M U145 (.Y(n114), 
	.B1(n79), 
	.B0(n214), 
	.A1N(n79), 
	.A0N(FIFO_MEM_3__4_));
   OAI2BB2X1M U146 (.Y(n115), 
	.B1(n79), 
	.B0(n213), 
	.A1N(n79), 
	.A0N(FIFO_MEM_3__5_));
   OAI2BB2X1M U147 (.Y(n116), 
	.B1(n79), 
	.B0(w_data[6]), 
	.A1N(n79), 
	.A0N(FIFO_MEM_3__6_));
   OAI2BB2X1M U148 (.Y(n117), 
	.B1(n79), 
	.B0(n211), 
	.A1N(n79), 
	.A0N(FIFO_MEM_3__7_));
   NAND3X2M U151 (.Y(n83), 
	.C(n82), 
	.B(n210), 
	.A(w_addr[0]));
   AND3X2M U152 (.Y(n67), 
	.C(n82), 
	.B(n209), 
	.A(w_addr[1]));
   AND3X2M U153 (.Y(n68), 
	.C(n82), 
	.B(w_addr[0]), 
	.A(w_addr[1]));
   OAI2BB2X1M U154 (.Y(n94), 
	.B1(n198), 
	.B0(n218), 
	.A1N(n198), 
	.A0N(FIFO_MEM_1__0_));
   OAI2BB2X1M U155 (.Y(n95), 
	.B1(n198), 
	.B0(n217), 
	.A1N(n198), 
	.A0N(FIFO_MEM_1__1_));
   OAI2BB2X1M U156 (.Y(n96), 
	.B1(n198), 
	.B0(n216), 
	.A1N(n198), 
	.A0N(FIFO_MEM_1__2_));
   OAI2BB2X1M U157 (.Y(n97), 
	.B1(n198), 
	.B0(n215), 
	.A1N(n198), 
	.A0N(FIFO_MEM_1__3_));
   OAI2BB2X1M U158 (.Y(n98), 
	.B1(n198), 
	.B0(n214), 
	.A1N(n198), 
	.A0N(FIFO_MEM_1__4_));
   OAI2BB2X1M U159 (.Y(n99), 
	.B1(n198), 
	.B0(n213), 
	.A1N(n198), 
	.A0N(FIFO_MEM_1__5_));
   OAI2BB2X1M U160 (.Y(n100), 
	.B1(n198), 
	.B0(w_data[6]), 
	.A1N(n198), 
	.A0N(FIFO_MEM_1__6_));
   OAI2BB2X1M U161 (.Y(n101), 
	.B1(n198), 
	.B0(n211), 
	.A1N(n198), 
	.A0N(FIFO_MEM_1__7_));
   OAI2BB2X1M U162 (.Y(n102), 
	.B1(n196), 
	.B0(n218), 
	.A1N(n196), 
	.A0N(FIFO_MEM_2__0_));
   OAI2BB2X1M U163 (.Y(n103), 
	.B1(n196), 
	.B0(n217), 
	.A1N(n196), 
	.A0N(FIFO_MEM_2__1_));
   OAI2BB2X1M U164 (.Y(n104), 
	.B1(n196), 
	.B0(n216), 
	.A1N(n196), 
	.A0N(FIFO_MEM_2__2_));
   OAI2BB2X1M U165 (.Y(n105), 
	.B1(n196), 
	.B0(n215), 
	.A1N(n196), 
	.A0N(FIFO_MEM_2__3_));
   OAI2BB2X1M U166 (.Y(n106), 
	.B1(n196), 
	.B0(n214), 
	.A1N(n196), 
	.A0N(FIFO_MEM_2__4_));
   OAI2BB2X1M U167 (.Y(n107), 
	.B1(n196), 
	.B0(n213), 
	.A1N(n196), 
	.A0N(FIFO_MEM_2__5_));
   OAI2BB2X1M U168 (.Y(n108), 
	.B1(n196), 
	.B0(w_data[6]), 
	.A1N(n196), 
	.A0N(FIFO_MEM_2__6_));
   OAI2BB2X1M U169 (.Y(n109), 
	.B1(n196), 
	.B0(n211), 
	.A1N(n196), 
	.A0N(FIFO_MEM_2__7_));
   OAI2BB2X1M U170 (.Y(n118), 
	.B1(n193), 
	.B0(n218), 
	.A1N(n193), 
	.A0N(FIFO_MEM_4__0_));
   OAI2BB2X1M U171 (.Y(n119), 
	.B1(n193), 
	.B0(n217), 
	.A1N(n193), 
	.A0N(FIFO_MEM_4__1_));
   OAI2BB2X1M U172 (.Y(n120), 
	.B1(n193), 
	.B0(n216), 
	.A1N(n193), 
	.A0N(FIFO_MEM_4__2_));
   OAI2BB2X1M U173 (.Y(n121), 
	.B1(n193), 
	.B0(n215), 
	.A1N(n193), 
	.A0N(FIFO_MEM_4__3_));
   OAI2BB2X1M U174 (.Y(n122), 
	.B1(n193), 
	.B0(n214), 
	.A1N(n193), 
	.A0N(FIFO_MEM_4__4_));
   OAI2BB2X1M U175 (.Y(n123), 
	.B1(n193), 
	.B0(n213), 
	.A1N(n193), 
	.A0N(FIFO_MEM_4__5_));
   OAI2BB2X1M U176 (.Y(n124), 
	.B1(n193), 
	.B0(w_data[6]), 
	.A1N(n193), 
	.A0N(FIFO_MEM_4__6_));
   OAI2BB2X1M U177 (.Y(n125), 
	.B1(n193), 
	.B0(n211), 
	.A1N(n193), 
	.A0N(FIFO_MEM_4__7_));
   OAI2BB2X1M U178 (.Y(n126), 
	.B1(n83), 
	.B0(n218), 
	.A1N(n83), 
	.A0N(FIFO_MEM_5__0_));
   OAI2BB2X1M U179 (.Y(n127), 
	.B1(n83), 
	.B0(n217), 
	.A1N(n83), 
	.A0N(FIFO_MEM_5__1_));
   OAI2BB2X1M U180 (.Y(n128), 
	.B1(n83), 
	.B0(n216), 
	.A1N(n83), 
	.A0N(FIFO_MEM_5__2_));
   OAI2BB2X1M U181 (.Y(n129), 
	.B1(n83), 
	.B0(n215), 
	.A1N(n83), 
	.A0N(FIFO_MEM_5__3_));
   OAI2BB2X1M U182 (.Y(n130), 
	.B1(n83), 
	.B0(n214), 
	.A1N(n83), 
	.A0N(FIFO_MEM_5__4_));
   OAI2BB2X1M U183 (.Y(n131), 
	.B1(n83), 
	.B0(n213), 
	.A1N(n83), 
	.A0N(FIFO_MEM_5__5_));
   OAI2BB2X1M U184 (.Y(n132), 
	.B1(n83), 
	.B0(w_data[6]), 
	.A1N(n83), 
	.A0N(FIFO_MEM_5__6_));
   OAI2BB2X1M U185 (.Y(n133), 
	.B1(n83), 
	.B0(n211), 
	.A1N(n83), 
	.A0N(FIFO_MEM_5__7_));
   OAI2BB2X1M U186 (.Y(n134), 
	.B1(n190), 
	.B0(n218), 
	.A1N(n190), 
	.A0N(FIFO_MEM_6__0_));
   OAI2BB2X1M U187 (.Y(n135), 
	.B1(n190), 
	.B0(n217), 
	.A1N(n190), 
	.A0N(FIFO_MEM_6__1_));
   OAI2BB2X1M U188 (.Y(n136), 
	.B1(n190), 
	.B0(n216), 
	.A1N(n190), 
	.A0N(FIFO_MEM_6__2_));
   OAI2BB2X1M U189 (.Y(n137), 
	.B1(n190), 
	.B0(n215), 
	.A1N(n190), 
	.A0N(FIFO_MEM_6__3_));
   OAI2BB2X1M U190 (.Y(n138), 
	.B1(n190), 
	.B0(n214), 
	.A1N(n190), 
	.A0N(FIFO_MEM_6__4_));
   OAI2BB2X1M U191 (.Y(n139), 
	.B1(n190), 
	.B0(n213), 
	.A1N(n190), 
	.A0N(FIFO_MEM_6__5_));
   OAI2BB2X1M U192 (.Y(n140), 
	.B1(n190), 
	.B0(w_data[6]), 
	.A1N(n190), 
	.A0N(FIFO_MEM_6__6_));
   OAI2BB2X1M U193 (.Y(n141), 
	.B1(n190), 
	.B0(n211), 
	.A1N(n190), 
	.A0N(FIFO_MEM_6__7_));
   OAI2BB2X1M U194 (.Y(n142), 
	.B1(n188), 
	.B0(n218), 
	.A1N(n188), 
	.A0N(FIFO_MEM_7__0_));
   OAI2BB2X1M U195 (.Y(n143), 
	.B1(n188), 
	.B0(n217), 
	.A1N(n188), 
	.A0N(FIFO_MEM_7__1_));
   OAI2BB2X1M U196 (.Y(n144), 
	.B1(n188), 
	.B0(n216), 
	.A1N(n188), 
	.A0N(FIFO_MEM_7__2_));
   OAI2BB2X1M U197 (.Y(n145), 
	.B1(n188), 
	.B0(n215), 
	.A1N(n188), 
	.A0N(FIFO_MEM_7__3_));
   OAI2BB2X1M U198 (.Y(n146), 
	.B1(n188), 
	.B0(n214), 
	.A1N(n188), 
	.A0N(FIFO_MEM_7__4_));
   OAI2BB2X1M U199 (.Y(n147), 
	.B1(n188), 
	.B0(n213), 
	.A1N(n188), 
	.A0N(FIFO_MEM_7__5_));
   OAI2BB2X1M U200 (.Y(n148), 
	.B1(n188), 
	.B0(w_data[6]), 
	.A1N(n188), 
	.A0N(FIFO_MEM_7__6_));
   OAI2BB2X1M U201 (.Y(n149), 
	.B1(n188), 
	.B0(n211), 
	.A1N(n188), 
	.A0N(test_so2));
   OAI2BB2X1M U202 (.Y(n86), 
	.B1(n218), 
	.B0(n200), 
	.A1N(n200), 
	.A0N(FIFO_MEM_0__0_));
   OAI2BB2X1M U203 (.Y(n87), 
	.B1(n217), 
	.B0(n200), 
	.A1N(n200), 
	.A0N(FIFO_MEM_0__1_));
   OAI2BB2X1M U204 (.Y(n88), 
	.B1(n216), 
	.B0(n200), 
	.A1N(n200), 
	.A0N(FIFO_MEM_0__2_));
   OAI2BB2X1M U205 (.Y(n89), 
	.B1(n215), 
	.B0(n200), 
	.A1N(n200), 
	.A0N(FIFO_MEM_0__3_));
   OAI2BB2X1M U206 (.Y(n90), 
	.B1(n214), 
	.B0(n200), 
	.A1N(n200), 
	.A0N(FIFO_MEM_0__4_));
   OAI2BB2X1M U207 (.Y(n91), 
	.B1(n213), 
	.B0(n200), 
	.A1N(n200), 
	.A0N(FIFO_MEM_0__5_));
   OAI2BB2X1M U208 (.Y(n92), 
	.B1(w_data[6]), 
	.B0(n200), 
	.A1N(n200), 
	.A0N(test_so1));
   OAI2BB2X1M U209 (.Y(n93), 
	.B1(n211), 
	.B0(n200), 
	.A1N(n200), 
	.A0N(FIFO_MEM_0__7_));
   AND3X2M U210 (.Y(n69), 
	.C(w_addr[0]), 
	.B(n210), 
	.A(n76));
   AND3X2M U211 (.Y(n70), 
	.C(w_addr[1]), 
	.B(n209), 
	.A(n76));
   AO22X1M U212 (.Y(n71), 
	.B1(n169), 
	.B0(FIFO_MEM_1__0_), 
	.A1(n170), 
	.A0(FIFO_MEM_3__0_));
   AO22X1M U213 (.Y(n72), 
	.B1(n169), 
	.B0(FIFO_MEM_0__0_), 
	.A1(n170), 
	.A0(FIFO_MEM_2__0_));
   AO22X1M U214 (.Y(n75), 
	.B1(n169), 
	.B0(FIFO_MEM_1__1_), 
	.A1(n170), 
	.A0(FIFO_MEM_3__1_));
   AO22X1M U215 (.Y(n77), 
	.B1(n169), 
	.B0(FIFO_MEM_0__1_), 
	.A1(n170), 
	.A0(FIFO_MEM_2__1_));
   AO22X1M U216 (.Y(n84), 
	.B1(n169), 
	.B0(FIFO_MEM_1__2_), 
	.A1(n170), 
	.A0(FIFO_MEM_3__2_));
   AO22X1M U217 (.Y(n85), 
	.B1(n169), 
	.B0(FIFO_MEM_0__2_), 
	.A1(n170), 
	.A0(FIFO_MEM_2__2_));
   AO22X1M U218 (.Y(n152), 
	.B1(n169), 
	.B0(FIFO_MEM_1__3_), 
	.A1(n170), 
	.A0(FIFO_MEM_3__3_));
   AO22X1M U219 (.Y(n153), 
	.B1(n169), 
	.B0(FIFO_MEM_0__3_), 
	.A1(n170), 
	.A0(FIFO_MEM_2__3_));
   AO22X1M U220 (.Y(n156), 
	.B1(n169), 
	.B0(FIFO_MEM_1__4_), 
	.A1(n170), 
	.A0(FIFO_MEM_3__4_));
   AO22X1M U221 (.Y(n157), 
	.B1(n169), 
	.B0(FIFO_MEM_0__4_), 
	.A1(n170), 
	.A0(FIFO_MEM_2__4_));
   AO22X1M U222 (.Y(n160), 
	.B1(n169), 
	.B0(FIFO_MEM_1__5_), 
	.A1(n170), 
	.A0(FIFO_MEM_3__5_));
   AO22X1M U223 (.Y(n161), 
	.B1(n169), 
	.B0(FIFO_MEM_0__5_), 
	.A1(n170), 
	.A0(FIFO_MEM_2__5_));
   AO22X1M U224 (.Y(n164), 
	.B1(n169), 
	.B0(FIFO_MEM_1__6_), 
	.A1(n170), 
	.A0(FIFO_MEM_3__6_));
   AO22X1M U225 (.Y(n165), 
	.B1(n169), 
	.B0(test_so1), 
	.A1(n170), 
	.A0(FIFO_MEM_2__6_));
   AO22X1M U226 (.Y(n168), 
	.B1(n169), 
	.B0(FIFO_MEM_1__7_), 
	.A1(n170), 
	.A0(FIFO_MEM_3__7_));
   AO22X1M U227 (.Y(n171), 
	.B1(n169), 
	.B0(FIFO_MEM_0__7_), 
	.A1(n170), 
	.A0(FIFO_MEM_2__7_));
   DLY1X1M U228 (.Y(n222), 
	.A(n237));
   DLY1X1M U229 (.Y(n223), 
	.A(test_se));
   DLY1X1M U230 (.Y(n224), 
	.A(n222));
   DLY1X1M U231 (.Y(n225), 
	.A(n236));
   DLY1X1M U232 (.Y(n226), 
	.A(n222));
   DLY1X1M U233 (.Y(n227), 
	.A(n240));
   INVXLM U234 (.Y(n243), 
	.A(n237));
   INVXLM U235 (.Y(n228), 
	.A(n243));
   DLY1X1M U236 (.Y(n229), 
	.A(n225));
   DLY1X1M U237 (.Y(n230), 
	.A(n239));
   DLY1X1M U238 (.Y(n231), 
	.A(n239));
   DLY1X1M U239 (.Y(n232), 
	.A(n241));
   DLY1X1M U240 (.Y(n233), 
	.A(n241));
   DLY1X1M U241 (.Y(n234), 
	.A(test_se));
   DLY1X1M U242 (.Y(n235), 
	.A(n223));
   DLY1X1M U243 (.Y(n236), 
	.A(n223));
   DLY1X1M U244 (.Y(n237), 
	.A(n235));
   DLY1X1M U245 (.Y(n238), 
	.A(n225));
   DLY1X1M U246 (.Y(n239), 
	.A(n234));
   DLY1X1M U247 (.Y(n240), 
	.A(n234));
   DLY1X1M U248 (.Y(n241), 
	.A(n235));
   DLY1X1M U249 (.Y(n242), 
	.A(n236));
   DLY1X1M U250 (.Y(n244), 
	.A(n271));
   DLY1X1M U251 (.Y(n245), 
	.A(n273));
   DLY1X1M U252 (.Y(n246), 
	.A(n272));
   DLY1X1M U253 (.Y(n247), 
	.A(n276));
   DLY1X1M U254 (.Y(n248), 
	.A(n277));
   DLY1X1M U255 (.Y(n249), 
	.A(n283));
   DLY1X1M U256 (.Y(n250), 
	.A(n245));
   DLY1X1M U257 (.Y(n251), 
	.A(n253));
   DLY1X1M U258 (.Y(n252), 
	.A(n248));
   DLY1X1M U259 (.Y(n253), 
	.A(n273));
   DLY1X1M U260 (.Y(n254), 
	.A(n257));
   DLY1X1M U261 (.Y(n255), 
	.A(n272));
   DLY1X1M U262 (.Y(n256), 
	.A(n252));
   DLY1X1M U263 (.Y(n257), 
	.A(n249));
   DLY1X1M U264 (.Y(n258), 
	.A(n279));
   DLY1X1M U265 (.Y(n259), 
	.A(n276));
   DLY1X1M U266 (.Y(n260), 
	.A(n281));
   DLY1X1M U267 (.Y(n261), 
	.A(n250));
   DLY1X1M U268 (.Y(n262), 
	.A(n284));
   DLY1X1M U269 (.Y(n263), 
	.A(n246));
   DLY1X1M U270 (.Y(n264), 
	.A(n274));
   DLY1X1M U271 (.Y(n265), 
	.A(n275));
   DLY1X1M U272 (.Y(n266), 
	.A(n247));
   DLY1X1M U273 (.Y(n267), 
	.A(n278));
   DLY1X1M U274 (.Y(n268), 
	.A(n280));
   DLY1X1M U275 (.Y(n269), 
	.A(n282));
   DLY1X1M U276 (.Y(n270), 
	.A(n285));
   DLY1X1M U277 (.Y(n271), 
	.A(n230));
   DLY1X1M U278 (.Y(n272), 
	.A(n277));
   DLY1X1M U279 (.Y(n273), 
	.A(n232));
   DLY1X1M U280 (.Y(n274), 
	.A(n245));
   DLY1X1M U281 (.Y(n275), 
	.A(n249));
   DLY1X1M U282 (.Y(n276), 
	.A(n283));
   DLY1X1M U283 (.Y(n277), 
	.A(n242));
   DLY1X1M U284 (.Y(n278), 
	.A(n248));
   DLY1X1M U285 (.Y(n279), 
	.A(n271));
   DLY1X1M U286 (.Y(n280), 
	.A(n279));
   DLY1X1M U287 (.Y(n281), 
	.A(n244));
   DLY1X1M U288 (.Y(n282), 
	.A(n281));
   DLY1X1M U289 (.Y(n283), 
	.A(n240));
   DLY1X1M U290 (.Y(n284), 
	.A(n244));
   DLY1X1M U291 (.Y(n285), 
	.A(n284));
   NOR2X2M U2 (.Y(n169), 
	.B(r_addr[2]), 
	.A(r_addr[1]));
   NOR2X2M U3 (.Y(n173), 
	.B(r_addr[1]), 
	.A(n176));
   CLKINVX1M U4 (.Y(n177), 
	.A(r_addr[1]));
endmodule

module Async_fifo_D_WIDTH8_F_DEPTH8_P_WIDTH4_test_1 (
	w_clk, 
	w_rstn, 
	w_inc, 
	w_data, 
	full, 
	r_clk, 
	r_rst_n, 
	r_inc, 
	r_data, 
	empty, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN2_SYNC_REF_RST, 
	FE_OFN5_SYNC_UART_RST, 
	UART_TX_CLK__L3_N1, 
	CLK_A__L7_N11, 
	CLK_A__L7_N12, 
	CLK_A__L7_N14, 
	CLK_A__L7_N15, 
	CLK_A__L7_N9);
   input w_clk;
   input w_rstn;
   input w_inc;
   input [7:0] w_data;
   output full;
   input r_clk;
   input r_rst_n;
   input r_inc;
   output [7:0] r_data;
   output empty;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN2_SYNC_REF_RST;
   input FE_OFN5_SYNC_UART_RST;
   input UART_TX_CLK__L3_N1;
   input CLK_A__L7_N11;
   input CLK_A__L7_N12;
   input CLK_A__L7_N14;
   input CLK_A__L7_N15;
   input CLK_A__L7_N9;

   // Internal wires
   wire FE_OFN0_SYNC_REF_RST;
   wire n7;
   wire n8;
   wire n10;
   wire n11;
   wire n14;
   wire n15;
   wire n16;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire [3:0] rptr_gray;
   wire [3:0] wq2_rptr;
   wire [3:0] wptr_gray;
   wire [3:0] rq2_wptr;
   wire [2:0] w_addr;
   wire [2:0] r_addr;

   BUFX6M FE_OFC0_SYNC_REF_RST (.Y(FE_OFN0_SYNC_REF_RST), 
	.A(w_rstn));
   DLY1X1M U5 (.Y(n14), 
	.A(test_se));
   DLY1X1M U6 (.Y(n15), 
	.A(n19));
   CLKINVX2M U7 (.Y(n16), 
	.A(w_data[6]));
   DLY1X1M U9 (.Y(n18), 
	.A(test_se));
   DLY1X1M U10 (.Y(n19), 
	.A(n18));
   DLY1X1M U11 (.Y(n20), 
	.A(n18));
   DLY1X1M U12 (.Y(n21), 
	.A(n15));
   DLY1X1M U13 (.Y(n22), 
	.A(n19));
   DLY1X1M U14 (.Y(n23), 
	.A(n15));
   DF_Sync_DATA_WIDTH4_test_0 sync_r2w (.clk(CLK_A__L7_N15), 
	.rst(w_rstn), 
	.async({ rptr_gray[3],
		rptr_gray[2],
		rptr_gray[1],
		rptr_gray[0] }), 
	.sync({ wq2_rptr[3],
		wq2_rptr[2],
		wq2_rptr[1],
		wq2_rptr[0] }), 
	.test_si(test_si1), 
	.test_so(n11), 
	.test_se(n23), 
	.FE_OFN0_SYNC_REF_RST(FE_OFN0_SYNC_REF_RST));
   DF_Sync_DATA_WIDTH4_test_1 sync_w2r (.clk(r_clk), 
	.rst(FE_OFN5_SYNC_UART_RST), 
	.async({ wptr_gray[3],
		wptr_gray[2],
		wptr_gray[1],
		wptr_gray[0] }), 
	.sync({ rq2_wptr[3],
		rq2_wptr[2],
		rq2_wptr[1],
		rq2_wptr[0] }), 
	.test_si(n11), 
	.test_so(n10), 
	.test_se(n22));
   fifo_wr_P_WIDTH4_test_1 u_fifo_wr (.w_clk(CLK_A__L7_N14), 
	.w_rstn(w_rstn), 
	.w_inc(w_inc), 
	.wq2_rptr({ wq2_rptr[3],
		wq2_rptr[2],
		wq2_rptr[1],
		wq2_rptr[0] }), 
	.w_addr({ w_addr[2],
		w_addr[1],
		w_addr[0] }), 
	.gray_w_ptr({ wptr_gray[3],
		wptr_gray[2],
		wptr_gray[1],
		wptr_gray[0] }), 
	.full(full), 
	.test_si(n7), 
	.test_so(test_so2), 
	.test_se(n21), 
	.CLK_A__L7_N15(CLK_A__L7_N15));
   fifo_rd_P_WIDTH4_test_1 u_fifo_rd (.r_clk(r_clk), 
	.r_rst_n(r_rst_n), 
	.r_inc(r_inc), 
	.rq2_wptr({ rq2_wptr[3],
		rq2_wptr[2],
		rq2_wptr[1],
		rq2_wptr[0] }), 
	.r_addr({ r_addr[2],
		r_addr[1],
		r_addr[0] }), 
	.empty(empty), 
	.gray_rd_ptr({ rptr_gray[3],
		rptr_gray[2],
		rptr_gray[1],
		rptr_gray[0] }), 
	.test_si(n8), 
	.test_so(n7), 
	.test_se(n20), 
	.UART_TX_CLK__L3_N1(UART_TX_CLK__L3_N1));
   fifo_mem_D_WIDTH8_A_WIDTH3_F_DEPTH8_P_WIDTH4_test_1 u_fifo_mem (.w_clk(w_clk), 
	.w_rstn(w_rstn), 
	.w_full(full), 
	.w_inc(w_inc), 
	.w_addr({ w_addr[2],
		w_addr[1],
		w_addr[0] }), 
	.r_addr({ r_addr[2],
		r_addr[1],
		r_addr[0] }), 
	.w_data({ w_data[7],
		n16,
		w_data[5],
		w_data[4],
		w_data[3],
		w_data[2],
		w_data[1],
		w_data[0] }), 
	.r_data({ r_data[7],
		r_data[6],
		r_data[5],
		r_data[4],
		r_data[3],
		r_data[2],
		r_data[1],
		r_data[0] }), 
	.test_si2(test_si2), 
	.test_si1(n10), 
	.test_so2(n8), 
	.test_so1(test_so1), 
	.test_se(n14), 
	.FE_OFN2_SYNC_REF_RST(FE_OFN2_SYNC_REF_RST), 
	.FE_OFN0_SYNC_REF_RST(FE_OFN0_SYNC_REF_RST), 
	.CLK_A__L7_N11(CLK_A__L7_N11), 
	.CLK_A__L7_N12(CLK_A__L7_N12), 
	.CLK_A__L7_N14(CLK_A__L7_N14), 
	.CLK_A__L7_N9(CLK_A__L7_N9));
endmodule

module PULSE_GEN_test_1 (
	clk, 
	rst, 
	lvl_sig, 
	pulse_sig, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input rst;
   input lvl_sig;
   output pulse_sig;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire pls_flop;
   wire n3;

   SDFFRQX2M pls_flop_reg (.SI(test_si), 
	.SE(n3), 
	.RN(rst), 
	.Q(pls_flop), 
	.D(test_so), 
	.CK(clk));
   SDFFRQX2M rcv_flop_reg (.SI(pls_flop), 
	.SE(n3), 
	.RN(rst), 
	.Q(test_so), 
	.D(lvl_sig), 
	.CK(clk));
   NOR2BX2M U5 (.Y(pulse_sig), 
	.B(pls_flop), 
	.AN(test_so));
   DLY1X1M U6 (.Y(n3), 
	.A(test_se));
endmodule

module ClkDiv_0_DW01_inc_0 (
	A, 
	SUM);
   input [7:0] A;
   output [7:0] SUM;

   // Internal wires
   wire [7:2] carry;

   ADDHX1M U1_1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.B(carry[6]), 
	.A(A[6]));
   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[7]), 
	.B(A[7]), 
	.A(carry[7]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module ClkDiv_test_0 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	CLK_B__L13_N1, 
	CLK_B__L3_N0, 
	CLK_B__L7_N0);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input CLK_B__L13_N1;
   input CLK_B__L3_N0;
   input CLK_B__L7_N0;

   // Internal wires
   wire FE_PHN7_div_clk__Exclude_0_NET;
   wire FE_PHN6_div_clk__Exclude_0_NET;
   wire div_clk__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire N0;
   wire div_clk;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N23;
   wire N24;
   wire N25;
   wire N26;
   wire N27;
   wire N28;
   wire N29;
   wire N30;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire [7:0] counter;

   DLY4X1M FE_PHC7_div_clk__Exclude_0_NET (.Y(FE_PHN7_div_clk__Exclude_0_NET), 
	.A(FE_PHN6_div_clk__Exclude_0_NET));
   DLY4X1M FE_PHC6_div_clk__Exclude_0_NET (.Y(FE_PHN6_div_clk__Exclude_0_NET), 
	.A(div_clk__Exclude_0_NET));
   BUFX8M div_clk__Exclude_0 (.Y(div_clk__Exclude_0_NET), 
	.A(div_clk));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFSQX2M flag_reg (.SN(i_rst_n), 
	.SI(FE_PHN7_div_clk__Exclude_0_NET), 
	.SE(n67), 
	.Q(test_so), 
	.D(n37), 
	.CK(CLK_B__L13_N1));
   SDFFRQX2M counter_reg_1_ (.SI(counter[0]), 
	.SE(n62), 
	.RN(i_rst_n), 
	.Q(counter[1]), 
	.D(n35), 
	.CK(i_ref_clk));
   SDFFRQX2M counter_reg_2_ (.SI(counter[1]), 
	.SE(n61), 
	.RN(i_rst_n), 
	.Q(counter[2]), 
	.D(n34), 
	.CK(i_ref_clk));
   SDFFRQX2M counter_reg_3_ (.SI(counter[2]), 
	.SE(n69), 
	.RN(i_rst_n), 
	.Q(counter[3]), 
	.D(n33), 
	.CK(i_ref_clk));
   SDFFRQX2M counter_reg_4_ (.SI(counter[3]), 
	.SE(n68), 
	.RN(i_rst_n), 
	.Q(counter[4]), 
	.D(n32), 
	.CK(CLK_B__L13_N1));
   SDFFRQX2M counter_reg_5_ (.SI(counter[4]), 
	.SE(n62), 
	.RN(i_rst_n), 
	.Q(counter[5]), 
	.D(n31), 
	.CK(i_ref_clk));
   SDFFRQX2M counter_reg_6_ (.SI(counter[5]), 
	.SE(n66), 
	.RN(i_rst_n), 
	.Q(counter[6]), 
	.D(n30), 
	.CK(CLK_B__L13_N1));
   AND3X2M U6 (.Y(n22), 
	.C(N0), 
	.B(n20), 
	.A(n23));
   OR2X2M U7 (.Y(n7), 
	.B(i_div_ratio[5]), 
	.A(n6));
   OR2X2M U12 (.Y(n6), 
	.B(i_div_ratio[4]), 
	.A(n5));
   OR2X2M U17 (.Y(n5), 
	.B(i_div_ratio[3]), 
	.A(n4));
   AO22XLM U18 (.Y(n30), 
	.B1(n22), 
	.B0(N29), 
	.A1(counter[6]), 
	.A0(n21));
   AO22XLM U19 (.Y(n31), 
	.B1(n22), 
	.B0(N28), 
	.A1(counter[5]), 
	.A0(n21));
   AO22XLM U20 (.Y(n32), 
	.B1(n22), 
	.B0(N27), 
	.A1(counter[4]), 
	.A0(n21));
   AO22XLM U21 (.Y(n33), 
	.B1(n22), 
	.B0(N26), 
	.A1(counter[3]), 
	.A0(n21));
   AO22XLM U22 (.Y(n34), 
	.B1(n22), 
	.B0(N25), 
	.A1(counter[2]), 
	.A0(n21));
   AO22XLM U23 (.Y(n35), 
	.B1(n22), 
	.B0(N24), 
	.A1(counter[1]), 
	.A0(n21));
   AO22XLM U24 (.Y(n29), 
	.B1(n22), 
	.B0(N30), 
	.A1(counter[7]), 
	.A0(n21));
   AO22XLM U25 (.Y(n36), 
	.B1(n22), 
	.B0(N23), 
	.A1(counter[0]), 
	.A0(n21));
   OAI2BB1XLM U26 (.Y(N12), 
	.B0(n7), 
	.A1N(i_div_ratio[5]), 
	.A0N(n6));
   OAI2BB1XLM U27 (.Y(N11), 
	.B0(n6), 
	.A1N(i_div_ratio[4]), 
	.A0N(n5));
   OAI2BB1XLM U28 (.Y(N10), 
	.B0(n5), 
	.A1N(i_div_ratio[3]), 
	.A0N(n4));
   OR2X2M U31 (.Y(n4), 
	.B(i_div_ratio[1]), 
	.A(i_div_ratio[2]));
   OAI21X2M U33 (.Y(n21), 
	.B0(HTIE_LTIEHI_NET), 
	.A1(n58), 
	.A0(n57));
   MX2XLM U34 (.Y(o_div_clk), 
	.S0(N0), 
	.B(div_clk), 
	.A(CLK_B__L7_N0));
   CLKINVX1M U35 (.Y(N8), 
	.A(i_div_ratio[1]));
   XNOR2X1M U37 (.Y(N13), 
	.B(n7), 
	.A(i_div_ratio[6]));
   OAI21X1M U38 (.Y(n18), 
	.B0(i_div_ratio[7]), 
	.A1(n7), 
	.A0(i_div_ratio[6]));
   NAND2BX1M U39 (.Y(N14), 
	.B(n18), 
	.AN(N15));
   XNOR2X1M U40 (.Y(n37), 
	.B(n19), 
	.A(test_so));
   OR2X1M U41 (.Y(n19), 
	.B(n21), 
	.A(n20));
   CLKXOR2X2M U42 (.Y(n28), 
	.B(div_clk__Exclude_0_NET), 
	.A(n24));
   AOI21X1M U43 (.Y(n24), 
	.B0(n21), 
	.A1(n23), 
	.A0(n20));
   OR2X1M U44 (.Y(n23), 
	.B(i_div_ratio[0]), 
	.A(n25));
   CLKNAND2X2M U45 (.Y(n20), 
	.B(i_div_ratio[0]), 
	.A(n26));
   MXI2X1M U46 (.Y(n26), 
	.S0(test_so), 
	.B(n25), 
	.A(n27));
   CLKNAND2X2M U47 (.Y(n25), 
	.B(n39), 
	.A(n38));
   NOR4X1M U48 (.Y(n39), 
	.D(n43), 
	.C(n42), 
	.B(n41), 
	.A(n40));
   CLKXOR2X2M U49 (.Y(n43), 
	.B(counter[5]), 
	.A(N13));
   CLKXOR2X2M U50 (.Y(n42), 
	.B(counter[4]), 
	.A(N12));
   CLKXOR2X2M U51 (.Y(n41), 
	.B(counter[3]), 
	.A(N11));
   CLKXOR2X2M U52 (.Y(n40), 
	.B(counter[2]), 
	.A(N10));
   NOR4X1M U53 (.Y(n38), 
	.D(n47), 
	.C(n46), 
	.B(n45), 
	.A(n44));
   CLKXOR2X2M U54 (.Y(n47), 
	.B(counter[1]), 
	.A(N9));
   CLKXOR2X2M U55 (.Y(n46), 
	.B(N8), 
	.A(counter[0]));
   CLKXOR2X2M U56 (.Y(n45), 
	.B(N15), 
	.A(counter[7]));
   CLKXOR2X2M U57 (.Y(n44), 
	.B(counter[6]), 
	.A(N14));
   CLKNAND2X2M U58 (.Y(n27), 
	.B(n49), 
	.A(n48));
   CLKXOR2X2M U60 (.Y(n52), 
	.B(counter[2]), 
	.A(i_div_ratio[3]));
   CLKXOR2X2M U61 (.Y(n51), 
	.B(counter[1]), 
	.A(i_div_ratio[2]));
   CLKXOR2X2M U62 (.Y(n50), 
	.B(counter[0]), 
	.A(i_div_ratio[1]));
   NOR4X1M U63 (.Y(n48), 
	.D(n56), 
	.C(n55), 
	.B(n54), 
	.A(n53));
   CLKXOR2X2M U64 (.Y(n56), 
	.B(counter[6]), 
	.A(i_div_ratio[7]));
   CLKXOR2X2M U65 (.Y(n55), 
	.B(counter[5]), 
	.A(i_div_ratio[6]));
   CLKXOR2X2M U66 (.Y(n54), 
	.B(counter[4]), 
	.A(i_div_ratio[5]));
   CLKXOR2X2M U67 (.Y(n53), 
	.B(counter[3]), 
	.A(i_div_ratio[4]));
   CLKINVX1M U68 (.Y(N0), 
	.A(n21));
   OR3X1M U69 (.Y(n58), 
	.C(i_div_ratio[1]), 
	.B(i_div_ratio[3]), 
	.A(i_div_ratio[2]));
   OR4X1M U70 (.Y(n57), 
	.D(i_div_ratio[7]), 
	.C(i_div_ratio[6]), 
	.B(i_div_ratio[5]), 
	.A(i_div_ratio[4]));
   DLY1X1M U71 (.Y(n61), 
	.A(n66));
   DLY1X1M U72 (.Y(n62), 
	.A(n67));
   DLY1X1M U73 (.Y(n63), 
	.A(test_se));
   DLY1X1M U74 (.Y(n64), 
	.A(n63));
   DLY1X1M U75 (.Y(n65), 
	.A(n63));
   DLY1X1M U76 (.Y(n66), 
	.A(n65));
   DLY1X1M U77 (.Y(n67), 
	.A(n64));
   DLY1X1M U78 (.Y(n68), 
	.A(n65));
   DLY1X1M U79 (.Y(n69), 
	.A(n64));
   ClkDiv_0_DW01_inc_0 add_51 (.A({ counter[7],
		counter[6],
		counter[5],
		counter[4],
		counter[3],
		counter[2],
		counter[1],
		counter[0] }), 
	.SUM({ N30,
		N29,
		N28,
		N27,
		N26,
		N25,
		N24,
		N23 }));
   SDFFRQX1M counter_reg_0_ (.SI(test_si), 
	.SE(n68), 
	.RN(i_rst_n), 
	.Q(counter[0]), 
	.D(n36), 
	.CK(CLK_B__L13_N1));
   SDFFRQX4M counter_reg_7_ (.SI(counter[6]), 
	.SE(n69), 
	.RN(i_rst_n), 
	.Q(counter[7]), 
	.D(n29), 
	.CK(i_ref_clk));
   SDFFRQX1M div_clk_reg (.SI(counter[7]), 
	.SE(n61), 
	.RN(i_rst_n), 
	.Q(div_clk), 
	.D(n28), 
	.CK(CLK_B__L3_N0));
   NOR4X1M U3 (.Y(n49), 
	.D(n52), 
	.C(n51), 
	.B(n50), 
	.A(counter[7]));
   NOR3X2M U8 (.Y(N15), 
	.C(n7), 
	.B(i_div_ratio[7]), 
	.A(i_div_ratio[6]));
   OAI2BB1XLM U9 (.Y(N9), 
	.B0(n4), 
	.A1N(i_div_ratio[2]), 
	.A0N(i_div_ratio[1]));
endmodule

module mux2X1_3 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   MX2X6M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module ClkDiv_mux (
	in, 
	out);
   input [5:0] in;
   output [7:0] out;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire n24;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   NAND4BX1M U13 (.Y(n6), 
	.D(n14), 
	.C(n15), 
	.B(in[3]), 
	.AN(in[4]));
   NAND4BX1M U14 (.Y(n7), 
	.D(n14), 
	.C(n15), 
	.B(in[4]), 
	.AN(in[3]));
   INVX2M U15 (.Y(n15), 
	.A(in[2]));
   INVX2M U16 (.Y(n14), 
	.A(in[5]));
   NOR4X1M U17 (.Y(out[3]), 
	.D(in[4]), 
	.C(in[5]), 
	.B(in[3]), 
	.A(n5));
   NAND3X2M U18 (.Y(n5), 
	.C(in[2]), 
	.B(n16), 
	.A(n17));
   INVX2M U20 (.Y(n16), 
	.A(in[1]));
   OAI211X2M U21 (.Y(out[0]), 
	.C0(n16), 
	.B0(n17), 
	.A1(n9), 
	.A0(n8));
   NOR4X1M U22 (.Y(n8), 
	.D(n15), 
	.C(in[3]), 
	.B(in[4]), 
	.A(in[5]));
   NAND2X2M U23 (.Y(n9), 
	.B(n6), 
	.A(n7));
   INVX2M U3 (.Y(out[7]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U5 (.Y(out[6]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U7 (.Y(out[5]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U9 (.Y(out[4]), 
	.A(HTIE_LTIEHI_NET));
   INVXLM U11 (.Y(n18), 
	.A(n24));
   INVX2M U12 (.Y(out[2]), 
	.A(n18));
   NOR3X2M U19 (.Y(out[1]), 
	.C(in[0]), 
	.B(in[1]), 
	.A(n7));
   NOR3X2M U24 (.Y(n24), 
	.C(in[0]), 
	.B(in[1]), 
	.A(n6));
   CLKINVX1M U25 (.Y(n17), 
	.A(in[0]));
endmodule

module ClkDiv_1_DW01_inc_0 (
	A, 
	SUM);
   input [7:0] A;
   output [7:0] SUM;

   // Internal wires
   wire [7:2] carry;

   ADDHX1M U1_1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.B(carry[6]), 
	.A(A[6]));
   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[7]), 
	.B(A[7]), 
	.A(carry[7]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module ClkDiv_test_1 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	CLK_B__L3_N1, 
	CLK_B__L7_N1);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input CLK_B__L3_N1;
   input CLK_B__L7_N1;

   // Internal wires
   wire FE_PHN5_div_clk__Exclude_0_NET;
   wire FE_PHN4_div_clk__Exclude_0_NET;
   wire div_clk__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire N0;
   wire div_clk;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N23;
   wire N24;
   wire N25;
   wire N26;
   wire N27;
   wire N28;
   wire N29;
   wire N30;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire [7:0] counter;

   DLY4X1M FE_PHC5_div_clk__Exclude_0_NET (.Y(FE_PHN5_div_clk__Exclude_0_NET), 
	.A(FE_PHN4_div_clk__Exclude_0_NET));
   DLY4X1M FE_PHC4_div_clk__Exclude_0_NET (.Y(FE_PHN4_div_clk__Exclude_0_NET), 
	.A(div_clk__Exclude_0_NET));
   BUFX8M div_clk__Exclude_0 (.Y(div_clk__Exclude_0_NET), 
	.A(div_clk));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFSQX2M flag_reg (.SN(i_rst_n), 
	.SI(FE_PHN5_div_clk__Exclude_0_NET), 
	.SE(n87), 
	.Q(test_so), 
	.D(n59), 
	.CK(i_ref_clk));
   SDFFRQX2M counter_reg_1_ (.SI(counter[0]), 
	.SE(n82), 
	.RN(i_rst_n), 
	.Q(counter[1]), 
	.D(n61), 
	.CK(i_ref_clk));
   SDFFRQX2M counter_reg_2_ (.SI(counter[1]), 
	.SE(n81), 
	.RN(i_rst_n), 
	.Q(counter[2]), 
	.D(n62), 
	.CK(i_ref_clk));
   SDFFRQX2M counter_reg_3_ (.SI(counter[2]), 
	.SE(n89), 
	.RN(i_rst_n), 
	.Q(counter[3]), 
	.D(n63), 
	.CK(i_ref_clk));
   SDFFRQX2M counter_reg_4_ (.SI(counter[3]), 
	.SE(n88), 
	.RN(i_rst_n), 
	.Q(counter[4]), 
	.D(n64), 
	.CK(i_ref_clk));
   SDFFRQX2M counter_reg_5_ (.SI(counter[4]), 
	.SE(n82), 
	.RN(i_rst_n), 
	.Q(counter[5]), 
	.D(n65), 
	.CK(i_ref_clk));
   SDFFRQX2M counter_reg_6_ (.SI(counter[5]), 
	.SE(n86), 
	.RN(i_rst_n), 
	.Q(counter[6]), 
	.D(n66), 
	.CK(i_ref_clk));
   NOR3X2M U5 (.Y(N15), 
	.C(n7), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   AND3X2M U6 (.Y(n22), 
	.C(N0), 
	.B(n20), 
	.A(n23));
   OR2X2M U7 (.Y(n5), 
	.B(i_div_ratio[3]), 
	.A(n4));
   OAI2BB1XLM U12 (.Y(N10), 
	.B0(n5), 
	.A1N(i_div_ratio[3]), 
	.A0N(n4));
   OR2X2M U17 (.Y(n7), 
	.B(LTIE_LTIELO_NET), 
	.A(n6));
   OR2X2M U18 (.Y(n6), 
	.B(LTIE_LTIELO_NET), 
	.A(n5));
   AO22XLM U19 (.Y(n66), 
	.B1(n22), 
	.B0(N29), 
	.A1(counter[6]), 
	.A0(n21));
   AO22XLM U20 (.Y(n65), 
	.B1(n22), 
	.B0(N28), 
	.A1(counter[5]), 
	.A0(n21));
   AO22XLM U21 (.Y(n64), 
	.B1(n22), 
	.B0(N27), 
	.A1(counter[4]), 
	.A0(n21));
   AO22XLM U22 (.Y(n63), 
	.B1(n22), 
	.B0(N26), 
	.A1(counter[3]), 
	.A0(n21));
   AO22XLM U23 (.Y(n62), 
	.B1(n22), 
	.B0(N25), 
	.A1(counter[2]), 
	.A0(n21));
   AO22XLM U24 (.Y(n61), 
	.B1(n22), 
	.B0(N24), 
	.A1(counter[1]), 
	.A0(n21));
   AO22XLM U25 (.Y(n67), 
	.B1(n22), 
	.B0(N30), 
	.A1(counter[7]), 
	.A0(n21));
   AO22XLM U26 (.Y(n60), 
	.B1(n22), 
	.B0(N23), 
	.A1(counter[0]), 
	.A0(n21));
   OAI2BB1XLM U27 (.Y(N12), 
	.B0(n7), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(n6));
   OAI2BB1XLM U28 (.Y(N11), 
	.B0(n6), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(n5));
   OAI21X2M U33 (.Y(n21), 
	.B0(HTIE_LTIEHI_NET), 
	.A1(n58), 
	.A0(n57));
   MX2XLM U34 (.Y(o_div_clk), 
	.S0(N0), 
	.B(div_clk), 
	.A(CLK_B__L7_N1));
   CLKINVX1M U35 (.Y(N8), 
	.A(i_div_ratio[1]));
   XNOR2X1M U37 (.Y(N13), 
	.B(n7), 
	.A(LTIE_LTIELO_NET));
   OAI21X1M U38 (.Y(n18), 
	.B0(LTIE_LTIELO_NET), 
	.A1(n7), 
	.A0(LTIE_LTIELO_NET));
   NAND2BX1M U39 (.Y(N14), 
	.B(n18), 
	.AN(N15));
   XNOR2X1M U40 (.Y(n59), 
	.B(n19), 
	.A(test_so));
   OR2X1M U41 (.Y(n19), 
	.B(n21), 
	.A(n20));
   CLKXOR2X2M U42 (.Y(n68), 
	.B(div_clk__Exclude_0_NET), 
	.A(n24));
   AOI21X1M U43 (.Y(n24), 
	.B0(n21), 
	.A1(n23), 
	.A0(n20));
   OR2X1M U44 (.Y(n23), 
	.B(i_div_ratio[0]), 
	.A(n25));
   CLKNAND2X2M U45 (.Y(n20), 
	.B(i_div_ratio[0]), 
	.A(n26));
   MXI2X1M U46 (.Y(n26), 
	.S0(test_so), 
	.B(n25), 
	.A(n27));
   CLKNAND2X2M U47 (.Y(n25), 
	.B(n39), 
	.A(n38));
   NOR4X1M U48 (.Y(n39), 
	.D(n43), 
	.C(n42), 
	.B(n41), 
	.A(n40));
   CLKXOR2X2M U49 (.Y(n43), 
	.B(counter[5]), 
	.A(N13));
   CLKXOR2X2M U50 (.Y(n42), 
	.B(counter[4]), 
	.A(N12));
   CLKXOR2X2M U51 (.Y(n41), 
	.B(counter[3]), 
	.A(N11));
   CLKXOR2X2M U52 (.Y(n40), 
	.B(counter[2]), 
	.A(N10));
   NOR4X1M U53 (.Y(n38), 
	.D(n47), 
	.C(n46), 
	.B(n45), 
	.A(n44));
   CLKXOR2X2M U54 (.Y(n47), 
	.B(counter[1]), 
	.A(N9));
   CLKXOR2X2M U55 (.Y(n46), 
	.B(N8), 
	.A(counter[0]));
   CLKXOR2X2M U56 (.Y(n45), 
	.B(N15), 
	.A(counter[7]));
   CLKXOR2X2M U57 (.Y(n44), 
	.B(counter[6]), 
	.A(N14));
   CLKNAND2X2M U58 (.Y(n27), 
	.B(n49), 
	.A(n48));
   CLKXOR2X2M U60 (.Y(n52), 
	.B(counter[2]), 
	.A(i_div_ratio[3]));
   CLKXOR2X2M U61 (.Y(n51), 
	.B(counter[1]), 
	.A(i_div_ratio[2]));
   NOR4X1M U63 (.Y(n48), 
	.D(n56), 
	.C(n55), 
	.B(n54), 
	.A(n53));
   CLKXOR2X2M U64 (.Y(n56), 
	.B(counter[6]), 
	.A(LTIE_LTIELO_NET));
   CLKXOR2X2M U65 (.Y(n55), 
	.B(counter[5]), 
	.A(LTIE_LTIELO_NET));
   CLKXOR2X2M U66 (.Y(n54), 
	.B(counter[4]), 
	.A(LTIE_LTIELO_NET));
   CLKXOR2X2M U67 (.Y(n53), 
	.B(counter[3]), 
	.A(LTIE_LTIELO_NET));
   CLKINVX1M U68 (.Y(N0), 
	.A(n21));
   OR3X1M U69 (.Y(n58), 
	.C(i_div_ratio[1]), 
	.B(i_div_ratio[3]), 
	.A(i_div_ratio[2]));
   OR4X1M U70 (.Y(n57), 
	.D(LTIE_LTIELO_NET), 
	.C(LTIE_LTIELO_NET), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   DLY1X1M U71 (.Y(n81), 
	.A(n86));
   DLY1X1M U72 (.Y(n82), 
	.A(n87));
   DLY1X1M U73 (.Y(n83), 
	.A(test_se));
   DLY1X1M U74 (.Y(n84), 
	.A(n83));
   DLY1X1M U75 (.Y(n85), 
	.A(n83));
   DLY1X1M U76 (.Y(n86), 
	.A(n85));
   DLY1X1M U77 (.Y(n87), 
	.A(n84));
   DLY1X1M U78 (.Y(n88), 
	.A(n85));
   DLY1X1M U79 (.Y(n89), 
	.A(n84));
   ClkDiv_1_DW01_inc_0 add_51 (.A({ counter[7],
		counter[6],
		counter[5],
		counter[4],
		counter[3],
		counter[2],
		counter[1],
		counter[0] }), 
	.SUM({ N30,
		N29,
		N28,
		N27,
		N26,
		N25,
		N24,
		N23 }));
   SDFFRQX4M counter_reg_0_ (.SI(test_si), 
	.SE(n88), 
	.RN(i_rst_n), 
	.Q(counter[0]), 
	.D(n60), 
	.CK(i_ref_clk));
   SDFFRQX4M counter_reg_7_ (.SI(counter[6]), 
	.SE(n89), 
	.RN(i_rst_n), 
	.Q(counter[7]), 
	.D(n67), 
	.CK(i_ref_clk));
   SDFFRQX1M div_clk_reg (.SI(counter[7]), 
	.SE(n81), 
	.RN(i_rst_n), 
	.Q(div_clk), 
	.D(n68), 
	.CK(CLK_B__L3_N1));
   NOR4X1M U4 (.Y(n49), 
	.D(n52), 
	.C(n51), 
	.B(n50), 
	.A(counter[7]));
   OAI2BB1XLM U8 (.Y(N9), 
	.B0(n4), 
	.A1N(i_div_ratio[2]), 
	.A0N(i_div_ratio[1]));
   OR2X1M U9 (.Y(n4), 
	.B(i_div_ratio[1]), 
	.A(i_div_ratio[2]));
   CLKXOR2X2M U10 (.Y(n50), 
	.B(counter[0]), 
	.A(i_div_ratio[1]));
endmodule

module mux2X1_2 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   MX2X6M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module serializer_test_1 (
	P_DATA, 
	ser_en, 
	ser_load, 
	clk, 
	rst, 
	ser_done, 
	ser_data, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN5_SYNC_UART_RST);
   input [7:0] P_DATA;
   input ser_en;
   input ser_load;
   input clk;
   input rst;
   output ser_done;
   output ser_data;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN5_SYNC_UART_RST;

   // Internal wires
   wire shift_data_6_;
   wire shift_data_5_;
   wire shift_data_4_;
   wire shift_data_3_;
   wire shift_data_2_;
   wire shift_data_1_;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n13;
   wire n43;
   wire n44;
   wire n45;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire [1:0] count;

   SDFFRQX2M shift_data_reg_0_ (.SI(n13), 
	.SE(n50), 
	.RN(FE_OFN5_SYNC_UART_RST), 
	.Q(ser_data), 
	.D(n31), 
	.CK(clk));
   SDFFRQX2M shift_data_reg_6_ (.SI(shift_data_5_), 
	.SE(n51), 
	.RN(rst), 
	.Q(shift_data_6_), 
	.D(n33), 
	.CK(clk));
   SDFFRQX2M shift_data_reg_5_ (.SI(shift_data_4_), 
	.SE(n51), 
	.RN(rst), 
	.Q(shift_data_5_), 
	.D(n34), 
	.CK(clk));
   SDFFRQX2M shift_data_reg_4_ (.SI(shift_data_3_), 
	.SE(n57), 
	.RN(rst), 
	.Q(shift_data_4_), 
	.D(n35), 
	.CK(clk));
   SDFFRQX2M shift_data_reg_3_ (.SI(shift_data_2_), 
	.SE(n50), 
	.RN(rst), 
	.Q(shift_data_3_), 
	.D(n36), 
	.CK(clk));
   SDFFRQX2M shift_data_reg_2_ (.SI(shift_data_1_), 
	.SE(n55), 
	.RN(rst), 
	.Q(shift_data_2_), 
	.D(n37), 
	.CK(clk));
   SDFFRQX2M shift_data_reg_1_ (.SI(ser_data), 
	.SE(n55), 
	.RN(FE_OFN5_SYNC_UART_RST), 
	.Q(shift_data_1_), 
	.D(n38), 
	.CK(clk));
   SDFFRQX2M shift_data_reg_7_ (.SI(shift_data_6_), 
	.SE(n57), 
	.RN(rst), 
	.Q(test_so), 
	.D(n32), 
	.CK(clk));
   SDFFRQX2M count_reg_1_ (.SI(count[0]), 
	.SE(n56), 
	.RN(FE_OFN5_SYNC_UART_RST), 
	.Q(count[1]), 
	.D(n29), 
	.CK(clk));
   SDFFRQX2M count_reg_0_ (.SI(test_si), 
	.SE(n54), 
	.RN(FE_OFN5_SYNC_UART_RST), 
	.Q(count[0]), 
	.D(n30), 
	.CK(clk));
   SDFFRX1M count_reg_2_ (.SI(count[1]), 
	.SE(n54), 
	.RN(FE_OFN5_SYNC_UART_RST), 
	.QN(n13), 
	.D(n28), 
	.CK(clk));
   INVX2M U20 (.Y(n43), 
	.A(n18));
   AOI21X2M U21 (.Y(n19), 
	.B0(n20), 
	.A1(n18), 
	.A0(n44));
   NOR2X2M U23 (.Y(n20), 
	.B(n18), 
	.A(ser_load));
   NOR2BX2M U24 (.Y(n18), 
	.B(ser_load), 
	.AN(ser_en));
   OAI2BB1X2M U25 (.Y(n33), 
	.B0(n22), 
	.A1N(shift_data_6_), 
	.A0N(n20));
   AOI22X1M U26 (.Y(n22), 
	.B1(n18), 
	.B0(test_so), 
	.A1(ser_load), 
	.A0(P_DATA[6]));
   OAI2BB1X2M U27 (.Y(n37), 
	.B0(n26), 
	.A1N(shift_data_2_), 
	.A0N(n20));
   AOI22X1M U28 (.Y(n26), 
	.B1(n18), 
	.B0(shift_data_3_), 
	.A1(ser_load), 
	.A0(P_DATA[2]));
   OAI2BB1X2M U29 (.Y(n36), 
	.B0(n25), 
	.A1N(shift_data_3_), 
	.A0N(n20));
   AOI22X1M U30 (.Y(n25), 
	.B1(n18), 
	.B0(shift_data_4_), 
	.A1(ser_load), 
	.A0(P_DATA[3]));
   OAI2BB1X2M U31 (.Y(n35), 
	.B0(n24), 
	.A1N(shift_data_4_), 
	.A0N(n20));
   AOI22X1M U32 (.Y(n24), 
	.B1(n18), 
	.B0(shift_data_5_), 
	.A1(ser_load), 
	.A0(P_DATA[4]));
   OAI2BB1X2M U33 (.Y(n38), 
	.B0(n27), 
	.A1N(shift_data_1_), 
	.A0N(n20));
   AOI22X1M U34 (.Y(n27), 
	.B1(n18), 
	.B0(shift_data_2_), 
	.A1(ser_load), 
	.A0(P_DATA[1]));
   OAI2BB1X2M U35 (.Y(n34), 
	.B0(n23), 
	.A1N(shift_data_5_), 
	.A0N(n20));
   AOI22X1M U36 (.Y(n23), 
	.B1(n18), 
	.B0(shift_data_6_), 
	.A1(ser_load), 
	.A0(P_DATA[5]));
   OAI2BB1X2M U37 (.Y(n31), 
	.B0(n21), 
	.A1N(n20), 
	.A0N(ser_data));
   AOI22X1M U38 (.Y(n21), 
	.B1(n18), 
	.B0(shift_data_1_), 
	.A1(P_DATA[0]), 
	.A0(ser_load));
   AO22XLM U39 (.Y(n32), 
	.B1(ser_load), 
	.B0(P_DATA[7]), 
	.A1(test_so), 
	.A0(n20));
   OAI21X2M U40 (.Y(n28), 
	.B0(n17), 
	.A1(n13), 
	.A0(n16));
   NAND4X2M U41 (.Y(n17), 
	.D(n13), 
	.C(n18), 
	.B(n58), 
	.A(count[1]));
   AOI21BX2M U42 (.Y(n16), 
	.B0N(n19), 
	.A1(n45), 
	.A0(n18));
   OAI32X1M U43 (.Y(n29), 
	.B1(n45), 
	.B0(n19), 
	.A2(n43), 
	.A1(count[1]), 
	.A0(n44));
   OAI2BB2X1M U44 (.Y(n30), 
	.B1(n43), 
	.B0(count[0]), 
	.A1N(n20), 
	.A0N(count[0]));
   NOR3X2M U45 (.Y(ser_done), 
	.C(n45), 
	.B(n44), 
	.A(n13));
   INVX2M U46 (.Y(n44), 
	.A(count[0]));
   INVX2M U47 (.Y(n45), 
	.A(count[1]));
   DLY1X1M U48 (.Y(n49), 
	.A(n52));
   DLY1X1M U49 (.Y(n50), 
	.A(n56));
   DLY1X1M U50 (.Y(n51), 
	.A(n49));
   DLY1X1M U51 (.Y(n52), 
	.A(test_se));
   DLY1X1M U52 (.Y(n53), 
	.A(test_se));
   DLY1X1M U53 (.Y(n54), 
	.A(n52));
   DLY1X1M U54 (.Y(n55), 
	.A(n49));
   DLY1X1M U55 (.Y(n56), 
	.A(n53));
   DLY1X1M U56 (.Y(n57), 
	.A(n53));
   INVXLM U57 (.Y(n58), 
	.A(n44));
endmodule

module parity_calc_test_1 (
	P_DATA, 
	Data_Valid, 
	PAR_TYP, 
	clk, 
	rst, 
	par_bit, 
	test_si, 
	test_se);
   input [7:0] P_DATA;
   input Data_Valid;
   input PAR_TYP;
   input clk;
   input rst;
   output par_bit;
   input test_si;
   input test_se;

   // Internal wires
   wire n1;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n8;

   SDFFRQX2M par_bit_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(par_bit), 
	.D(n8), 
	.CK(clk));
   XOR3XLM U2 (.Y(n3), 
	.C(n6), 
	.B(P_DATA[4]), 
	.A(P_DATA[5]));
   XOR2X1M U3 (.Y(n6), 
	.B(P_DATA[6]), 
	.A(P_DATA[7]));
   XNOR2X1M U4 (.Y(n5), 
	.B(P_DATA[2]), 
	.A(P_DATA[3]));
   OAI2BB2X1M U5 (.Y(n8), 
	.B1(Data_Valid), 
	.B0(n1), 
	.A1N(Data_Valid), 
	.A0N(par_bit));
   XOR3XLM U7 (.Y(n1), 
	.C(n4), 
	.B(PAR_TYP), 
	.A(n3));
   XOR3XLM U8 (.Y(n4), 
	.C(n5), 
	.B(P_DATA[0]), 
	.A(P_DATA[1]));
endmodule

module MUX_TX (
	mux_sel, 
	start_bit, 
	stop_bit, 
	ser_data, 
	par_bit, 
	TX_OUT);
   input [2:0] mux_sel;
   input start_bit;
   input stop_bit;
   input ser_data;
   input par_bit;
   output TX_OUT;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire FE_OFN11_UART_TX_O;
   wire n1;
   wire n2;
   wire n3;
   wire n4;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   BUFX2M FE_OFC11_UART_TX_O (.Y(TX_OUT), 
	.A(FE_OFN11_UART_TX_O));
   INVX2M U1 (.Y(n4), 
	.A(mux_sel[1]));
   OAI2BB2X1M U2 (.Y(FE_OFN11_UART_TX_O), 
	.B1(n3), 
	.B0(mux_sel[2]), 
	.A1N(n2), 
	.A0N(HTIE_LTIEHI_NET));
   OAI21BX1M U3 (.Y(n2), 
	.B0N(mux_sel[2]), 
	.A1(mux_sel[0]), 
	.A0(mux_sel[1]));
   AOI32X1M U4 (.Y(n3), 
	.B1(n1), 
	.B0(mux_sel[1]), 
	.A2(LTIE_LTIELO_NET), 
	.A1(n4), 
	.A0(mux_sel[0]));
   AO2B2X2M U5 (.Y(n1), 
	.B1(mux_sel[0]), 
	.B0(par_bit), 
	.A1N(mux_sel[0]), 
	.A0(ser_data));
endmodule

module FSM_TX_test_1 (
	Data_Valid, 
	PAR_EN, 
	ser_done, 
	clk, 
	rst, 
	ser_en, 
	busy, 
	ser_load, 
	mux_sel, 
	test_si, 
	test_so, 
	test_se);
   input Data_Valid;
   input PAR_EN;
   input ser_done;
   input clk;
   input rst;
   output ser_en;
   output busy;
   output ser_load;
   output [2:0] mux_sel;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire current_state_1_;
   wire current_state_0_;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n6;
   wire n7;
   wire n8;
   wire n13;
   wire n16;
   wire n17;
   wire [2:0] next_state;

   OAI22X1M U14 (.Y(mux_sel[0]), 
	.B1(n11), 
	.B0(current_state_1_), 
	.A1(n7), 
	.A0(current_state_0_));
   SDFFRQX2M current_state_reg_0_ (.SI(test_si), 
	.SE(n16), 
	.RN(rst), 
	.Q(current_state_0_), 
	.D(next_state[0]), 
	.CK(clk));
   NOR2X2M U6 (.Y(mux_sel[1]), 
	.B(test_so), 
	.A(n8));
   INVX2M U7 (.Y(n6), 
	.A(current_state_0_));
   NAND2BX2M U8 (.Y(n11), 
	.B(current_state_0_), 
	.AN(test_so));
   INVX2M U10 (.Y(n7), 
	.A(mux_sel[1]));
   NOR2X2M U11 (.Y(ser_en), 
	.B(n7), 
	.A(n6));
   AOI21X2M U12 (.Y(next_state[1]), 
	.B0(n11), 
	.A1(n13), 
	.A0(n10));
   NOR2X2M U13 (.Y(next_state[2]), 
	.B(n7), 
	.A(n9));
   AOI21X2M U15 (.Y(n9), 
	.B0(n6), 
	.A1(n13), 
	.A0(ser_done));
   NAND3X2M U16 (.Y(busy), 
	.C(n11), 
	.B(n12), 
	.A(n7));
   INVX2M U17 (.Y(n8), 
	.A(current_state_1_));
   NOR3X2M U18 (.Y(ser_load), 
	.C(current_state_1_), 
	.B(test_so), 
	.A(n6));
   OAI32X1M U19 (.Y(next_state[0]), 
	.B1(n11), 
	.B0(n10), 
	.A2(current_state_1_), 
	.A1(test_so), 
	.A0(Data_Valid));
   AND2X2M U21 (.Y(n10), 
	.B(current_state_1_), 
	.A(ser_done));
   NAND3X2M U22 (.Y(n12), 
	.C(test_so), 
	.B(n8), 
	.A(n6));
   INVX2M U23 (.Y(n13), 
	.A(PAR_EN));
   INVX2M U24 (.Y(mux_sel[2]), 
	.A(n12));
   DLY1X1M U25 (.Y(n16), 
	.A(n17));
   DLY1X1M U26 (.Y(n17), 
	.A(test_se));
   SDFFRQX4M current_state_reg_1_ (.SI(current_state_0_), 
	.SE(n17), 
	.RN(rst), 
	.Q(current_state_1_), 
	.D(next_state[1]), 
	.CK(clk));
   SDFFRQX4M current_state_reg_2_ (.SI(current_state_1_), 
	.SE(n16), 
	.RN(rst), 
	.Q(test_so), 
	.D(next_state[2]), 
	.CK(clk));
endmodule

module UART_TX_test_1 (
	P_DATA, 
	Data_Valid, 
	PAR_TYP, 
	PAR_EN, 
	clk, 
	rst, 
	TX_OUT, 
	busy, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN5_SYNC_UART_RST);
   input [7:0] P_DATA;
   input Data_Valid;
   input PAR_TYP;
   input PAR_EN;
   input clk;
   input rst;
   output TX_OUT;
   output busy;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN5_SYNC_UART_RST;

   // Internal wires
   wire FE_OFN12_ser_load;
   wire ser_en;
   wire ser_load;
   wire ser_done;
   wire ser_data;
   wire par_bit;
   wire n5;
   wire n7;
   wire n8;
   wire n9;
   wire [2:0] mux_sel;

   BUFX2M FE_OFC12_ser_load (.Y(FE_OFN12_ser_load), 
	.A(ser_load));
   DLY1X1M U5 (.Y(n7), 
	.A(test_se));
   DLY1X1M U6 (.Y(n8), 
	.A(n7));
   DLY1X1M U7 (.Y(n9), 
	.A(n7));
   serializer_test_1 U_serializer (.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.ser_en(ser_en), 
	.ser_load(FE_OFN12_ser_load), 
	.clk(clk), 
	.rst(rst), 
	.ser_done(ser_done), 
	.ser_data(ser_data), 
	.test_si(par_bit), 
	.test_so(test_so), 
	.test_se(n8), 
	.FE_OFN5_SYNC_UART_RST(FE_OFN5_SYNC_UART_RST));
   parity_calc_test_1 U_parity_calc (.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.Data_Valid(Data_Valid), 
	.PAR_TYP(PAR_TYP), 
	.clk(clk), 
	.rst(FE_OFN5_SYNC_UART_RST), 
	.par_bit(par_bit), 
	.test_si(n5), 
	.test_se(n9));
   MUX_TX U_MUX (.mux_sel({ mux_sel[2],
		mux_sel[1],
		mux_sel[0] }), 
	.start_bit(1'b0), 
	.stop_bit(1'b1), 
	.ser_data(ser_data), 
	.par_bit(par_bit), 
	.TX_OUT(TX_OUT));
   FSM_TX_test_1 U_FSM (.Data_Valid(Data_Valid), 
	.PAR_EN(PAR_EN), 
	.ser_done(ser_done), 
	.clk(clk), 
	.rst(FE_OFN5_SYNC_UART_RST), 
	.ser_en(ser_en), 
	.busy(busy), 
	.ser_load(ser_load), 
	.mux_sel({ mux_sel[2],
		mux_sel[1],
		mux_sel[0] }), 
	.test_si(test_si), 
	.test_so(n5), 
	.test_se(n9));
endmodule

module edge_bit_counter_test_1 (
	clk, 
	rst, 
	Clear, 
	enable, 
	Prescale, 
	bit_cnt, 
	edge_cnt, 
	test_si, 
	test_se);
   input clk;
   input rst;
   input Clear;
   input enable;
   input [5:0] Prescale;
   output [3:0] bit_cnt;
   output [5:0] edge_cnt;
   input test_si;
   input test_se;

   // Internal wires
   wire n57;
   wire N7;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire N20;
   wire N21;
   wire N22;
   wire N23;
   wire N24;
   wire N25;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n4;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire [5:2] add_37_carry;

   SDFFRQX2M bit_cnt_reg_2_ (.SI(bit_cnt[1]), 
	.SE(n47), 
	.RN(rst), 
	.Q(n57), 
	.D(n28), 
	.CK(clk));
   NOR2BX2M U7 (.Y(n18), 
	.B(edge_cnt[0]), 
	.AN(N7));
   NOR2X2M U8 (.Y(N13), 
	.B(Prescale[5]), 
	.A(n17));
   NOR2BX2M U15 (.Y(n19), 
	.B(N7), 
	.AN(edge_cnt[0]));
   NOR4X1M U17 (.Y(N14), 
	.D(n34), 
	.C(n35), 
	.B(n36), 
	.A(n37));
   OR2X2M U18 (.Y(n17), 
	.B(Prescale[4]), 
	.A(n16));
   OR2X2M U19 (.Y(n16), 
	.B(Prescale[3]), 
	.A(n15));
   OR2X2M U20 (.Y(n15), 
	.B(Prescale[2]), 
	.A(n4));
   OAI2BB1XLM U21 (.Y(N11), 
	.B0(n17), 
	.A1N(Prescale[4]), 
	.A0N(n16));
   OAI2BB1XLM U22 (.Y(N10), 
	.B0(n16), 
	.A1N(Prescale[3]), 
	.A0N(n15));
   OAI2BB1XLM U23 (.Y(N9), 
	.B0(n15), 
	.A1N(Prescale[2]), 
	.A0N(n4));
   INVX2M U26 (.Y(n38), 
	.A(n26));
   INVX2M U27 (.Y(n39), 
	.A(n25));
   AOI21X2M U28 (.Y(n24), 
	.B0(n26), 
	.A1(n25), 
	.A0(n40));
   NOR2X1M U30 (.Y(n26), 
	.B(N14), 
	.A(n39));
   AND2X2M U31 (.Y(N38), 
	.B(n26), 
	.A(N21));
   AND2X2M U32 (.Y(N39), 
	.B(n26), 
	.A(N22));
   AND2X2M U33 (.Y(N40), 
	.B(n26), 
	.A(N23));
   AND2X2M U34 (.Y(N41), 
	.B(n26), 
	.A(N24));
   NOR2BX2M U35 (.Y(n25), 
	.B(Clear), 
	.AN(enable));
   OR2X2M U36 (.Y(n4), 
	.B(Prescale[0]), 
	.A(Prescale[1]));
   OAI32X1M U37 (.Y(n28), 
	.B1(n42), 
	.B0(n23), 
	.A2(n41), 
	.A1(n57), 
	.A0(n22));
   INVX2M U38 (.Y(n42), 
	.A(n57));
   OA21X2M U39 (.Y(n23), 
	.B0(n24), 
	.A1(bit_cnt[1]), 
	.A0(n39));
   OAI32X1M U40 (.Y(n30), 
	.B1(n38), 
	.B0(n40), 
	.A2(n26), 
	.A1(bit_cnt[0]), 
	.A0(n39));
   OAI22X1M U41 (.Y(n29), 
	.B1(n22), 
	.B0(bit_cnt[1]), 
	.A1(n41), 
	.A0(n24));
   NAND3X2M U42 (.Y(n22), 
	.C(n25), 
	.B(n38), 
	.A(bit_cnt[0]));
   NOR2X2M U43 (.Y(n27), 
	.B(n39), 
	.A(n20));
   CLKXOR2X2M U44 (.Y(n20), 
	.B(bit_cnt[3]), 
	.A(n21));
   NAND4X1M U45 (.Y(n21), 
	.D(bit_cnt[0]), 
	.C(bit_cnt[1]), 
	.B(N14), 
	.A(n57));
   AND2X2M U46 (.Y(N37), 
	.B(n26), 
	.A(N20));
   AND2X2M U47 (.Y(N42), 
	.B(n26), 
	.A(N25));
   INVX2M U48 (.Y(n41), 
	.A(bit_cnt[1]));
   INVX2M U49 (.Y(n40), 
	.A(bit_cnt[0]));
   ADDHX1M U50 (.S(N21), 
	.CO(add_37_carry[2]), 
	.B(edge_cnt[0]), 
	.A(edge_cnt[1]));
   ADDHX1M U51 (.S(N22), 
	.CO(add_37_carry[3]), 
	.B(add_37_carry[2]), 
	.A(edge_cnt[2]));
   ADDHX1M U52 (.S(N23), 
	.CO(add_37_carry[4]), 
	.B(add_37_carry[3]), 
	.A(edge_cnt[3]));
   ADDHX1M U53 (.S(N24), 
	.CO(add_37_carry[5]), 
	.B(add_37_carry[4]), 
	.A(edge_cnt[4]));
   OAI2BB1X1M U54 (.Y(N8), 
	.B0(n4), 
	.A1N(Prescale[1]), 
	.A0N(Prescale[0]));
   AO21XLM U55 (.Y(N12), 
	.B0(N13), 
	.A1(Prescale[5]), 
	.A0(n17));
   CLKINVX1M U56 (.Y(N20), 
	.A(edge_cnt[0]));
   CLKXOR2X2M U57 (.Y(N25), 
	.B(edge_cnt[5]), 
	.A(add_37_carry[5]));
   OAI2B2X1M U58 (.Y(n33), 
	.B1(n18), 
	.B0(N8), 
	.A1N(edge_cnt[1]), 
	.A0(n18));
   XNOR2X1M U59 (.Y(n32), 
	.B(edge_cnt[5]), 
	.A(N12));
   OAI2B2X1M U60 (.Y(n31), 
	.B1(n19), 
	.B0(edge_cnt[1]), 
	.A1N(N8), 
	.A0(n19));
   NAND4BX1M U61 (.Y(n37), 
	.D(n31), 
	.C(n32), 
	.B(n33), 
	.AN(N13));
   CLKXOR2X2M U62 (.Y(n36), 
	.B(edge_cnt[4]), 
	.A(N11));
   CLKXOR2X2M U63 (.Y(n35), 
	.B(edge_cnt[2]), 
	.A(N9));
   CLKXOR2X2M U64 (.Y(n34), 
	.B(edge_cnt[3]), 
	.A(N10));
   DLY1X1M U65 (.Y(n45), 
	.A(test_se));
   DLY1X1M U66 (.Y(n46), 
	.A(n53));
   DLY1X1M U67 (.Y(n47), 
	.A(n50));
   DLY1X1M U68 (.Y(n48), 
	.A(n45));
   DLY1X1M U69 (.Y(n49), 
	.A(n45));
   DLY1X1M U70 (.Y(n50), 
	.A(n48));
   DLY1X1M U71 (.Y(n51), 
	.A(n48));
   DLY1X1M U72 (.Y(n52), 
	.A(n49));
   INVXLM U74 (.Y(bit_cnt[2]), 
	.A(n42));
   SDFFRQX2M bit_cnt_reg_3_ (.SI(n57), 
	.SE(n52), 
	.RN(rst), 
	.Q(bit_cnt[3]), 
	.D(n27), 
	.CK(clk));
   SDFFRQX1M edge_cnt_reg_0_ (.SI(bit_cnt[3]), 
	.SE(n51), 
	.RN(rst), 
	.Q(edge_cnt[0]), 
	.D(N37), 
	.CK(clk));
   SDFFRQX4M edge_cnt_reg_2_ (.SI(edge_cnt[1]), 
	.SE(n47), 
	.RN(rst), 
	.Q(edge_cnt[2]), 
	.D(N39), 
	.CK(clk));
   SDFFRQX1M edge_cnt_reg_1_ (.SI(edge_cnt[0]), 
	.SE(n50), 
	.RN(rst), 
	.Q(edge_cnt[1]), 
	.D(N38), 
	.CK(clk));
   SDFFRQX1M edge_cnt_reg_3_ (.SI(edge_cnt[2]), 
	.SE(n51), 
	.RN(rst), 
	.Q(edge_cnt[3]), 
	.D(N40), 
	.CK(clk));
   SDFFRQX1M edge_cnt_reg_4_ (.SI(edge_cnt[3]), 
	.SE(n52), 
	.RN(rst), 
	.Q(edge_cnt[4]), 
	.D(N41), 
	.CK(clk));
   SDFFRQX4M bit_cnt_reg_0_ (.SI(test_si), 
	.SE(n46), 
	.RN(rst), 
	.Q(bit_cnt[0]), 
	.D(n30), 
	.CK(clk));
   SDFFRQX4M bit_cnt_reg_1_ (.SI(bit_cnt[0]), 
	.SE(n46), 
	.RN(rst), 
	.Q(bit_cnt[1]), 
	.D(n29), 
	.CK(clk));
   SDFFRQX4M edge_cnt_reg_5_ (.SI(edge_cnt[4]), 
	.SE(n53), 
	.RN(rst), 
	.Q(edge_cnt[5]), 
	.D(N42), 
	.CK(clk));
   BUFX2M U3 (.Y(n53), 
	.A(n49));
   CLKINVX1M U14 (.Y(N7), 
	.A(Prescale[0]));
endmodule

module data_sampling_test_1 (
	clk, 
	rst, 
	RX_IN, 
	edge_cnt, 
	dat_samp_en, 
	Prescale, 
	sampled_bit, 
	test_si, 
	test_so, 
	test_se, 
	UART_RX_CLK__L3_N1);
   input clk;
   input rst;
   input RX_IN;
   input [5:0] edge_cnt;
   input dat_samp_en;
   input [5:0] Prescale;
   output sampled_bit;
   input test_si;
   output test_so;
   input test_se;
   input UART_RX_CLK__L3_N1;

   // Internal wires
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n44;
   wire n47;
   wire n49;
   wire [1:0] samples;

   OAI31X1M U15 (.Y(n30), 
	.B0(dat_samp_en), 
	.A2(n33), 
	.A1(n32), 
	.A0(n31));
   NAND3X2M U6 (.Y(n29), 
	.C(Prescale[5]), 
	.B(n17), 
	.A(n18));
   INVX2M U7 (.Y(n5), 
	.A(dat_samp_en));
   NOR2X2M U9 (.Y(n26), 
	.B(n5), 
	.A(n19));
   OAI32X1M U10 (.Y(n43), 
	.B1(n30), 
	.B0(n9), 
	.A2(n44), 
	.A1(n8), 
	.A0(n5));
   INVX2M U11 (.Y(n8), 
	.A(n30));
   NAND2X2M U12 (.Y(n33), 
	.B(n10), 
	.A(n11));
   INVX2M U13 (.Y(n15), 
	.A(n35));
   INVX2M U14 (.Y(n16), 
	.A(n36));
   INVX2M U16 (.Y(n19), 
	.A(n27));
   NAND3X2M U17 (.Y(n23), 
	.C(n29), 
	.B(n16), 
	.A(n15));
   INVX2M U18 (.Y(n44), 
	.A(RX_IN));
   OAI31X1M U19 (.Y(n42), 
	.B0(n21), 
	.A2(n5), 
	.A1(n19), 
	.A0(n20));
   NAND2BX2M U20 (.Y(n21), 
	.B(sampled_bit), 
	.AN(n22));
   NAND3X2M U21 (.Y(n20), 
	.C(n22), 
	.B(n24), 
	.A(n23));
   OAI2B11X2M U22 (.Y(n22), 
	.C0(n26), 
	.B0(n23), 
	.A1N(edge_cnt[0]), 
	.A0(n25));
   NAND4BX1M U23 (.Y(n25), 
	.D(n10), 
	.C(n39), 
	.B(n27), 
	.AN(edge_cnt[1]));
   OAI32X1M U24 (.Y(n39), 
	.B1(n41), 
	.B0(edge_cnt[4]), 
	.A2(n11), 
	.A1(n29), 
	.A0(n40));
   NAND2X2M U25 (.Y(n40), 
	.B(n12), 
	.A(n13));
   NOR3X2M U27 (.Y(n35), 
	.C(n17), 
	.B(Prescale[5]), 
	.A(Prescale[3]));
   NOR3X2M U28 (.Y(n36), 
	.C(n18), 
	.B(Prescale[5]), 
	.A(Prescale[4]));
   AOI32X1M U29 (.Y(n32), 
	.B1(n12), 
	.B0(n34), 
	.A2(edge_cnt[2]), 
	.A1(n14), 
	.A0(edge_cnt[3]));
   INVX2M U30 (.Y(n14), 
	.A(n29));
   OAI22X1M U31 (.Y(n34), 
	.B1(n13), 
	.B0(n15), 
	.A1(n16), 
	.A0(edge_cnt[2]));
   INVX2M U32 (.Y(n18), 
	.A(Prescale[3]));
   INVX2M U33 (.Y(n17), 
	.A(Prescale[4]));
   INVX2M U34 (.Y(n13), 
	.A(edge_cnt[2]));
   INVX2M U35 (.Y(n12), 
	.A(edge_cnt[3]));
   INVX2M U36 (.Y(n11), 
	.A(edge_cnt[4]));
   INVX2M U37 (.Y(n6), 
	.A(n37));
   AOI32X1M U38 (.Y(n37), 
	.B1(test_so), 
	.B0(n7), 
	.A2(RX_IN), 
	.A1(n38), 
	.A0(dat_samp_en));
   INVX2M U39 (.Y(n7), 
	.A(n38));
   OAI21X2M U40 (.Y(n38), 
	.B0(dat_samp_en), 
	.A1(n25), 
	.A0(edge_cnt[0]));
   NAND3X2M U42 (.Y(n31), 
	.C(edge_cnt[1]), 
	.B(n27), 
	.A(edge_cnt[0]));
   INVX2M U43 (.Y(n10), 
	.A(edge_cnt[5]));
   OAI21X2M U44 (.Y(n24), 
	.B0(n28), 
	.A1(n9), 
	.A0(n44));
   OAI21X2M U45 (.Y(n28), 
	.B0(test_so), 
	.A1(n49), 
	.A0(RX_IN));
   INVX2M U46 (.Y(n9), 
	.A(samples[0]));
   DLY1X1M U47 (.Y(n47), 
	.A(test_se));
   INVXLM U49 (.Y(n49), 
	.A(n9));
   SDFFRQX2M samples_reg_1_ (.SI(samples[0]), 
	.SE(n47), 
	.RN(rst), 
	.Q(test_so), 
	.D(n6), 
	.CK(clk));
   SDFFRQX4M sampled_bit_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sampled_bit), 
	.D(n42), 
	.CK(UART_RX_CLK__L3_N1));
   SDFFRQX1M samples_reg_0_ (.SI(sampled_bit), 
	.SE(n47), 
	.RN(rst), 
	.Q(samples[0]), 
	.D(n43), 
	.CK(UART_RX_CLK__L3_N1));
   AOI33X1M U3 (.Y(n41), 
	.B2(edge_cnt[2]), 
	.B1(n12), 
	.B0(n36), 
	.A2(edge_cnt[3]), 
	.A1(n13), 
	.A0(n35));
   NOR3X2M U4 (.Y(n27), 
	.C(Prescale[0]), 
	.B(Prescale[1]), 
	.A(Prescale[2]));
endmodule

module deserializer_test_1 (
	sampled_bit, 
	deser_en, 
	clk, 
	rst, 
	P_DATA, 
	test_si, 
	test_se);
   input sampled_bit;
   input deser_en;
   input clk;
   input rst;
   output [7:0] P_DATA;
   input test_si;
   input test_se;

   // Internal wires
   wire n10;
   wire n12;
   wire n14;
   wire n16;
   wire n18;
   wire n20;
   wire n22;
   wire n24;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n25;
   wire n26;
   wire n27;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;

   SDFFRQX2M P_DATA_reg_0_ (.SI(test_si), 
	.SE(n32), 
	.RN(rst), 
	.Q(P_DATA[0]), 
	.D(n10), 
	.CK(clk));
   SDFFRQX2M P_DATA_reg_5_ (.SI(P_DATA[4]), 
	.SE(n31), 
	.RN(rst), 
	.Q(P_DATA[5]), 
	.D(n20), 
	.CK(clk));
   SDFFRQX2M P_DATA_reg_1_ (.SI(P_DATA[0]), 
	.SE(n36), 
	.RN(rst), 
	.Q(P_DATA[1]), 
	.D(n12), 
	.CK(clk));
   SDFFRQX2M P_DATA_reg_4_ (.SI(P_DATA[3]), 
	.SE(n32), 
	.RN(rst), 
	.Q(P_DATA[4]), 
	.D(n18), 
	.CK(clk));
   SDFFRQX2M P_DATA_reg_7_ (.SI(P_DATA[6]), 
	.SE(n31), 
	.RN(rst), 
	.Q(P_DATA[7]), 
	.D(n24), 
	.CK(clk));
   SDFFRQX2M P_DATA_reg_3_ (.SI(P_DATA[2]), 
	.SE(n36), 
	.RN(rst), 
	.Q(P_DATA[3]), 
	.D(n16), 
	.CK(clk));
   SDFFRQX2M P_DATA_reg_6_ (.SI(P_DATA[5]), 
	.SE(n35), 
	.RN(rst), 
	.Q(P_DATA[6]), 
	.D(n22), 
	.CK(clk));
   SDFFRQX2M P_DATA_reg_2_ (.SI(P_DATA[1]), 
	.SE(n34), 
	.RN(rst), 
	.Q(P_DATA[2]), 
	.D(n14), 
	.CK(clk));
   CLKINVX2M U4 (.Y(n4), 
	.A(deser_en));
   OAI22X1M U5 (.Y(n12), 
	.B1(n27), 
	.B0(deser_en), 
	.A1(n26), 
	.A0(n4));
   OAI22X1M U6 (.Y(n14), 
	.B1(n26), 
	.B0(deser_en), 
	.A1(n25), 
	.A0(n4));
   OAI22X1M U7 (.Y(n16), 
	.B1(n25), 
	.B0(deser_en), 
	.A1(n8), 
	.A0(n4));
   OAI22X1M U8 (.Y(n18), 
	.B1(n8), 
	.B0(deser_en), 
	.A1(n7), 
	.A0(n4));
   OAI22X1M U9 (.Y(n20), 
	.B1(n7), 
	.B0(deser_en), 
	.A1(n6), 
	.A0(n4));
   OAI22X1M U10 (.Y(n22), 
	.B1(n6), 
	.B0(deser_en), 
	.A1(n5), 
	.A0(n4));
   OAI2BB2X1M U11 (.Y(n10), 
	.B1(n4), 
	.B0(n27), 
	.A1N(n4), 
	.A0N(P_DATA[0]));
   OAI2BB2X1M U13 (.Y(n24), 
	.B1(n5), 
	.B0(deser_en), 
	.A1N(deser_en), 
	.A0N(sampled_bit));
   INVX2M U14 (.Y(n26), 
	.A(P_DATA[2]));
   INVX2M U15 (.Y(n6), 
	.A(P_DATA[6]));
   INVX2M U16 (.Y(n5), 
	.A(P_DATA[7]));
   INVX2M U17 (.Y(n25), 
	.A(P_DATA[3]));
   INVX2M U26 (.Y(n27), 
	.A(P_DATA[1]));
   INVX2M U27 (.Y(n8), 
	.A(P_DATA[4]));
   INVX2M U28 (.Y(n7), 
	.A(P_DATA[5]));
   DLY1X1M U29 (.Y(n30), 
	.A(n33));
   DLY1X1M U30 (.Y(n31), 
	.A(n34));
   DLY1X1M U31 (.Y(n32), 
	.A(n35));
   DLY1X1M U32 (.Y(n33), 
	.A(test_se));
   DLY1X1M U33 (.Y(n34), 
	.A(n33));
   DLY1X1M U34 (.Y(n35), 
	.A(n30));
   DLY1X1M U35 (.Y(n36), 
	.A(n30));
endmodule

module Start_Check_test_1 (
	strt_chk_en, 
	sampled_bit, 
	clk, 
	rst, 
	strt_glitch, 
	test_si, 
	test_se);
   input strt_chk_en;
   input sampled_bit;
   input clk;
   input rst;
   output strt_glitch;
   input test_si;
   input test_se;

   // Internal wires
   wire n2;

   AO2B2X2M U2 (.Y(n2), 
	.B1(sampled_bit), 
	.B0(strt_chk_en), 
	.A1N(strt_chk_en), 
	.A0(strt_glitch));
   SDFFRQX1M strt_glitch_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(strt_glitch), 
	.D(n2), 
	.CK(clk));
endmodule

module Stop_Check_test_1 (
	stp_chk_en, 
	sampled_bit, 
	clk, 
	rst, 
	stp_err, 
	test_si, 
	test_se);
   input stp_chk_en;
   input sampled_bit;
   input clk;
   input rst;
   output stp_err;
   input test_si;
   input test_se;

   // Internal wires
   wire n3;
   wire n1;

   OAI2BB2X1M U2 (.Y(n3), 
	.B1(n1), 
	.B0(sampled_bit), 
	.A1N(n1), 
	.A0N(stp_err));
   INVX2M U3 (.Y(n1), 
	.A(stp_chk_en));
   SDFFRQX4M stp_err_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(stp_err), 
	.D(n3), 
	.CK(clk));
endmodule

module Parity_Check_test_1 (
	PAR_TYP, 
	par_chk_en, 
	sampled_bit, 
	P_DATA, 
	clk, 
	rst, 
	par_err, 
	test_si, 
	test_se);
   input PAR_TYP;
   input par_chk_en;
   input sampled_bit;
   input [7:0] P_DATA;
   input clk;
   input rst;
   output par_err;
   input test_si;
   input test_se;

   // Internal wires
   wire n1;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n9;
   wire n2;

   OAI2BB2X1M U2 (.Y(n9), 
	.B1(n2), 
	.B0(n1), 
	.A1N(n2), 
	.A0N(par_err));
   XOR3XLM U3 (.Y(n1), 
	.C(n5), 
	.B(n4), 
	.A(n3));
   INVX2M U4 (.Y(n2), 
	.A(par_chk_en));
   XNOR2X2M U5 (.Y(n5), 
	.B(PAR_TYP), 
	.A(sampled_bit));
   XOR3XLM U6 (.Y(n4), 
	.C(n6), 
	.B(P_DATA[4]), 
	.A(P_DATA[5]));
   XNOR2X2M U7 (.Y(n6), 
	.B(P_DATA[6]), 
	.A(P_DATA[7]));
   XOR3XLM U8 (.Y(n3), 
	.C(n7), 
	.B(P_DATA[0]), 
	.A(P_DATA[1]));
   XNOR2X2M U9 (.Y(n7), 
	.B(P_DATA[2]), 
	.A(P_DATA[3]));
   SDFFRQX4M par_err_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(par_err), 
	.D(n9), 
	.CK(clk));
endmodule

module FSM_RX_test_1 (
	RX_IN, 
	PAR_EN, 
	bit_cnt, 
	edge_cnt, 
	strt_glitch, 
	Prescale, 
	par_err, 
	stp_err, 
	clk, 
	rst, 
	Clear, 
	dat_samp_en, 
	enable, 
	deser_en, 
	data_valid, 
	strt_chk_en, 
	par_chk_en, 
	stp_chk_en, 
	test_si, 
	test_se);
   input RX_IN;
   input PAR_EN;
   input [3:0] bit_cnt;
   input [5:0] edge_cnt;
   input strt_glitch;
   input [5:0] Prescale;
   input par_err;
   input stp_err;
   input clk;
   input rst;
   output Clear;
   output dat_samp_en;
   output enable;
   output deser_en;
   output data_valid;
   output strt_chk_en;
   output par_chk_en;
   output stp_chk_en;
   input test_si;
   input test_se;

   // Internal wires
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire N43;
   wire N44;
   wire N45;
   wire N46;
   wire N102;
   wire N103;
   wire N104;
   wire N105;
   wire N106;
   wire N107;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n52;
   wire n53;
   wire [2:0] current_state;
   wire [2:0] next_state;
   wire [4:3] r93_carry;

   OAI222X1M U18 (.Y(next_state[0]), 
	.C1(n38), 
	.C0(n30), 
	.B1(n37), 
	.B0(RX_IN), 
	.A1(n29), 
	.A0(n36));
   OAI32X1M U21 (.Y(next_state[2]), 
	.B1(n29), 
	.B0(n40), 
	.A2(n30), 
	.A1(PAR_EN), 
	.A0(n38));
   OAI221X1M U30 (.Y(enable), 
	.C0(n45), 
	.B1(n46), 
	.B0(RX_IN), 
	.A1(n29), 
	.A0(n39));
   SDFFRQX2M current_state_reg_1_ (.SI(current_state[0]), 
	.SE(n52), 
	.RN(rst), 
	.Q(current_state[1]), 
	.D(next_state[1]), 
	.CK(clk));
   NOR4X1M U7 (.Y(N107), 
	.D(n25), 
	.C(n26), 
	.B(n27), 
	.A(n28));
   NAND3X2M U8 (.Y(n28), 
	.C(n18), 
	.B(n19), 
	.A(n20));
   NOR2BX2M U9 (.Y(n7), 
	.B(edge_cnt[0]), 
	.AN(N39));
   NOR2BX2M U10 (.Y(n16), 
	.B(Prescale[1]), 
	.AN(edge_cnt[0]));
   NOR2X2M U11 (.Y(N45), 
	.B(Prescale[5]), 
	.A(n6));
   NOR2BX2M U12 (.Y(n17), 
	.B(edge_cnt[0]), 
	.AN(Prescale[1]));
   NOR4X1M U13 (.Y(N46), 
	.D(n12), 
	.C(n13), 
	.B(n14), 
	.A(n15));
   NOR2BX2M U14 (.Y(n8), 
	.B(N39), 
	.AN(edge_cnt[0]));
   OR2X2M U16 (.Y(n6), 
	.B(Prescale[4]), 
	.A(n5));
   OR2X2M U17 (.Y(n5), 
	.B(Prescale[3]), 
	.A(n4));
   OR2X2M U19 (.Y(n4), 
	.B(Prescale[2]), 
	.A(n3));
   OAI2BB1XLM U20 (.Y(N43), 
	.B0(n6), 
	.A1N(Prescale[4]), 
	.A0N(n5));
   OAI2BB1XLM U22 (.Y(N42), 
	.B0(n5), 
	.A1N(Prescale[3]), 
	.A0N(n4));
   OAI2BB1XLM U23 (.Y(N41), 
	.B0(n4), 
	.A1N(Prescale[2]), 
	.A0N(n3));
   NOR2X2M U24 (.Y(n41), 
	.B(n45), 
	.A(n48));
   INVX2M U25 (.Y(n46), 
	.A(current_state[1]));
   INVX2M U27 (.Y(n30), 
	.A(n41));
   CLKINVX2M U31 (.Y(n48), 
	.A(N46));
   NOR2BX2M U32 (.Y(n44), 
	.B(next_state[0]), 
	.AN(next_state[2]));
   AOI21X2M U33 (.Y(n37), 
	.B0(Clear), 
	.A1(n29), 
	.A0(n32));
   AOI2BB1X1M U34 (.Y(n36), 
	.B0(n34), 
	.A1N(N46), 
	.A0N(n39));
   NOR2X2M U35 (.Y(par_chk_en), 
	.B(n45), 
	.A(n31));
   INVX2M U36 (.Y(n45), 
	.A(n34));
   NOR2X2M U37 (.Y(n32), 
	.B(n46), 
	.A(n47));
   AOI2B1X1M U38 (.Y(n40), 
	.B0(n41), 
	.A1N(n35), 
	.A0(n32));
   OR2X2M U39 (.Y(n3), 
	.B(Prescale[0]), 
	.A(Prescale[1]));
   NOR2X2M U40 (.Y(deser_en), 
	.B(n30), 
	.A(current_state[0]));
   AO21XLM U41 (.Y(next_state[1]), 
	.B0(n34), 
	.A1(n33), 
	.A0(current_state[0]));
   OAI32X1M U42 (.Y(n33), 
	.B1(n46), 
	.B0(n35), 
	.A2(current_state[2]), 
	.A1(strt_glitch), 
	.A0(n48));
   NOR2X2M U43 (.Y(n35), 
	.B(n48), 
	.A(n42));
   AOI21X2M U44 (.Y(n42), 
	.B0(stp_err), 
	.A1(PAR_EN), 
	.A0(par_err));
   NAND2X2M U45 (.Y(n31), 
	.B(N107), 
	.A(current_state[0]));
   NOR2BX2M U46 (.Y(stp_chk_en), 
	.B(n31), 
	.AN(n32));
   NOR3X2M U47 (.Y(strt_chk_en), 
	.C(n31), 
	.B(current_state[2]), 
	.A(current_state[1]));
   INVX2M U48 (.Y(N102), 
	.A(Prescale[2]));
   NOR2X2M U49 (.Y(n34), 
	.B(current_state[2]), 
	.A(n46));
   INVX2M U50 (.Y(n29), 
	.A(current_state[0]));
   NOR2X2M U51 (.Y(n39), 
	.B(current_state[1]), 
	.A(n47));
   INVX2M U52 (.Y(n47), 
	.A(current_state[2]));
   NAND3BX2M U53 (.Y(n38), 
	.C(n43), 
	.B(bit_cnt[3]), 
	.AN(bit_cnt[0]));
   NOR2X2M U54 (.Y(n43), 
	.B(bit_cnt[1]), 
	.A(bit_cnt[2]));
   AND2X1M U55 (.Y(N106), 
	.B(Prescale[5]), 
	.A(r93_carry[4]));
   CLKXOR2X2M U56 (.Y(N105), 
	.B(r93_carry[4]), 
	.A(Prescale[5]));
   AND2X1M U57 (.Y(r93_carry[4]), 
	.B(Prescale[4]), 
	.A(r93_carry[3]));
   CLKXOR2X2M U58 (.Y(N104), 
	.B(r93_carry[3]), 
	.A(Prescale[4]));
   AND2X1M U59 (.Y(r93_carry[3]), 
	.B(Prescale[3]), 
	.A(Prescale[2]));
   CLKXOR2X2M U60 (.Y(N103), 
	.B(Prescale[2]), 
	.A(Prescale[3]));
   OAI2BB1X1M U61 (.Y(N40), 
	.B0(n3), 
	.A1N(Prescale[1]), 
	.A0N(Prescale[0]));
   AO21XLM U62 (.Y(N44), 
	.B0(N45), 
	.A1(Prescale[5]), 
	.A0(n6));
   OAI2B2X1M U63 (.Y(n11), 
	.B1(n7), 
	.B0(N40), 
	.A1N(edge_cnt[1]), 
	.A0(n7));
   XNOR2X1M U64 (.Y(n10), 
	.B(edge_cnt[5]), 
	.A(N44));
   OAI2B2X1M U65 (.Y(n9), 
	.B1(n8), 
	.B0(edge_cnt[1]), 
	.A1N(N40), 
	.A0(n8));
   NAND4BX1M U66 (.Y(n15), 
	.D(n9), 
	.C(n10), 
	.B(n11), 
	.AN(N45));
   CLKXOR2X2M U67 (.Y(n14), 
	.B(edge_cnt[4]), 
	.A(N43));
   CLKXOR2X2M U68 (.Y(n13), 
	.B(edge_cnt[2]), 
	.A(N41));
   CLKXOR2X2M U69 (.Y(n12), 
	.B(edge_cnt[3]), 
	.A(N42));
   OAI2B2X1M U70 (.Y(n20), 
	.B1(n16), 
	.B0(edge_cnt[1]), 
	.A1N(N102), 
	.A0(n16));
   OAI2B2X1M U71 (.Y(n19), 
	.B1(n17), 
	.B0(N102), 
	.A1N(edge_cnt[1]), 
	.A0(n17));
   XNOR2X1M U72 (.Y(n18), 
	.B(edge_cnt[5]), 
	.A(N106));
   CLKXOR2X2M U73 (.Y(n27), 
	.B(edge_cnt[4]), 
	.A(N105));
   CLKXOR2X2M U74 (.Y(n26), 
	.B(edge_cnt[2]), 
	.A(N103));
   CLKXOR2X2M U75 (.Y(n25), 
	.B(edge_cnt[3]), 
	.A(N104));
   DLY1X1M U76 (.Y(n52), 
	.A(test_se));
   DLY1X1M U77 (.Y(n53), 
	.A(test_se));
   SDFFRQX4M current_state_reg_2_ (.SI(current_state[1]), 
	.SE(n52), 
	.RN(rst), 
	.Q(current_state[2]), 
	.D(next_state[2]), 
	.CK(clk));
   SDFFRQX1M data_valid_reg (.SI(current_state[2]), 
	.SE(n53), 
	.RN(rst), 
	.Q(data_valid), 
	.D(n44), 
	.CK(clk));
   SDFFRQX4M current_state_reg_0_ (.SI(test_si), 
	.SE(n53), 
	.RN(rst), 
	.Q(current_state[0]), 
	.D(next_state[0]), 
	.CK(clk));
   NOR3X2M U3 (.Y(Clear), 
	.C(current_state[0]), 
	.B(current_state[2]), 
	.A(current_state[1]));
   CLKINVX1M U4 (.Y(N39), 
	.A(Prescale[0]));
endmodule

module UART_RX_test_1 (
	clk, 
	rst, 
	RX_IN, 
	PAR_EN, 
	PAR_TYP, 
	Prescale, 
	Stop_Error, 
	data_valid, 
	Parity_Error, 
	P_DATA, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se, 
	UART_RX_CLK__L3_N1);
   input clk;
   input rst;
   input RX_IN;
   input PAR_EN;
   input PAR_TYP;
   input [5:0] Prescale;
   output Stop_Error;
   output data_valid;
   output Parity_Error;
   output [7:0] P_DATA;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;
   input UART_RX_CLK__L3_N1;

   // Internal wires
   wire FE_PT0_;
   wire FE_UNCONNECTED_0;
   wire Clear;
   wire enable;
   wire edge_cnt_4_;
   wire edge_cnt_3_;
   wire edge_cnt_2_;
   wire edge_cnt_1_;
   wire edge_cnt_0_;
   wire sampled_bit;
   wire deser_en;
   wire strt_chk_en;
   wire strt_glitch;
   wire stp_chk_en;
   wire par_chk_en;
   wire n4;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire [3:0] bit_cnt;

   DLY1X1M U5 (.Y(n9), 
	.A(n16));
   DLY1X1M U6 (.Y(n10), 
	.A(n16));
   DLY1X1M U7 (.Y(n11), 
	.A(test_se));
   DLY1X1M U8 (.Y(n12), 
	.A(n11));
   DLY1X1M U9 (.Y(n13), 
	.A(n11));
   DLY1X1M U10 (.Y(n14), 
	.A(n13));
   DLY1X1M U11 (.Y(n15), 
	.A(n12));
   DLY1X1M U12 (.Y(n16), 
	.A(n12));
   DLY1X1M U13 (.Y(n17), 
	.A(n13));
   edge_bit_counter_test_1 U_edge_bit_counter (.clk(UART_RX_CLK__L3_N1), 
	.rst(rst), 
	.Clear(Clear), 
	.enable(enable), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.bit_cnt({ bit_cnt[3],
		bit_cnt[2],
		bit_cnt[1],
		bit_cnt[0] }), 
	.edge_cnt({ test_so1,
		edge_cnt_4_,
		edge_cnt_3_,
		edge_cnt_2_,
		edge_cnt_1_,
		edge_cnt_0_ }), 
	.test_si(P_DATA[7]), 
	.test_se(n15));
   data_sampling_test_1 U_data_sampling (.clk(clk), 
	.rst(rst), 
	.RX_IN(RX_IN), 
	.edge_cnt({ test_so1,
		edge_cnt_4_,
		edge_cnt_3_,
		edge_cnt_2_,
		edge_cnt_1_,
		edge_cnt_0_ }), 
	.dat_samp_en(enable), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.sampled_bit(sampled_bit), 
	.test_si(strt_glitch), 
	.test_so(n4), 
	.test_se(n17), 
	.UART_RX_CLK__L3_N1(UART_RX_CLK__L3_N1));
   deserializer_test_1 U_deserializer (.sampled_bit(sampled_bit), 
	.deser_en(deser_en), 
	.clk(clk), 
	.rst(rst), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.test_si(n4), 
	.test_se(n14));
   Start_Check_test_1 U_Start_Check (.strt_chk_en(strt_chk_en), 
	.sampled_bit(sampled_bit), 
	.clk(UART_RX_CLK__L3_N1), 
	.rst(rst), 
	.strt_glitch(strt_glitch), 
	.test_si(Parity_Error), 
	.test_se(n10));
   Stop_Check_test_1 U_Stop_Check (.stp_chk_en(stp_chk_en), 
	.sampled_bit(sampled_bit), 
	.clk(clk), 
	.rst(rst), 
	.stp_err(Stop_Error), 
	.test_si(test_si2), 
	.test_se(n15));
   Parity_Check_test_1 U_Parity_Check (.PAR_TYP(PAR_TYP), 
	.par_chk_en(par_chk_en), 
	.sampled_bit(sampled_bit), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.clk(clk), 
	.rst(rst), 
	.par_err(Parity_Error), 
	.test_si(data_valid), 
	.test_se(n14));
   FSM_RX_test_1 U_FSM (.RX_IN(RX_IN), 
	.PAR_EN(PAR_EN), 
	.bit_cnt({ bit_cnt[3],
		bit_cnt[2],
		bit_cnt[1],
		bit_cnt[0] }), 
	.edge_cnt({ test_so1,
		edge_cnt_4_,
		edge_cnt_3_,
		edge_cnt_2_,
		edge_cnt_1_,
		edge_cnt_0_ }), 
	.strt_glitch(strt_glitch), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.par_err(Parity_Error), 
	.stp_err(Stop_Error), 
	.clk(clk), 
	.rst(rst), 
	.Clear(Clear), 
	.dat_samp_en(FE_PT0_), 
	.enable(enable), 
	.deser_en(deser_en), 
	.data_valid(data_valid), 
	.strt_chk_en(strt_chk_en), 
	.par_chk_en(par_chk_en), 
	.stp_chk_en(stp_chk_en), 
	.test_si(test_si1), 
	.test_se(n9));
endmodule

module UART_test_1 (
	RST, 
	TX_CLK, 
	RX_CLK, 
	RX_IN_S, 
	RX_OUT_P, 
	RX_OUT_V, 
	TX_IN_P, 
	TX_IN_V, 
	TX_OUT_S, 
	TX_OUT_V, 
	Prescale, 
	parity_enable, 
	parity_type, 
	parity_error, 
	framing_error, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se, 
	FE_OFN5_SYNC_UART_RST, 
	UART_RX_CLK__L3_N1);
   input RST;
   input TX_CLK;
   input RX_CLK;
   input RX_IN_S;
   output [7:0] RX_OUT_P;
   output RX_OUT_V;
   input [7:0] TX_IN_P;
   input TX_IN_V;
   output TX_OUT_S;
   output TX_OUT_V;
   input [5:0] Prescale;
   input parity_enable;
   input parity_type;
   output parity_error;
   output framing_error;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;
   input FE_OFN5_SYNC_UART_RST;
   input UART_RX_CLK__L3_N1;

   // Internal wires
   wire n5;
   wire n8;

   DLY1X1M U3 (.Y(n8), 
	.A(test_se));
   UART_TX_test_1 U0_UART_TX (.P_DATA({ TX_IN_P[7],
		TX_IN_P[6],
		TX_IN_P[5],
		TX_IN_P[4],
		TX_IN_P[3],
		TX_IN_P[2],
		TX_IN_P[1],
		TX_IN_P[0] }), 
	.Data_Valid(TX_IN_V), 
	.PAR_TYP(parity_type), 
	.PAR_EN(parity_enable), 
	.clk(TX_CLK), 
	.rst(RST), 
	.TX_OUT(TX_OUT_S), 
	.busy(TX_OUT_V), 
	.test_si(n5), 
	.test_so(test_so1), 
	.test_se(n8), 
	.FE_OFN5_SYNC_UART_RST(FE_OFN5_SYNC_UART_RST));
   UART_RX_test_1 U0_UART_RX (.clk(RX_CLK), 
	.rst(FE_OFN5_SYNC_UART_RST), 
	.RX_IN(RX_IN_S), 
	.PAR_EN(parity_enable), 
	.PAR_TYP(parity_type), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.Stop_Error(framing_error), 
	.data_valid(RX_OUT_V), 
	.Parity_Error(parity_error), 
	.P_DATA({ RX_OUT_P[7],
		RX_OUT_P[6],
		RX_OUT_P[5],
		RX_OUT_P[4],
		RX_OUT_P[3],
		RX_OUT_P[2],
		RX_OUT_P[1],
		RX_OUT_P[0] }), 
	.test_si2(test_si2), 
	.test_si1(test_si1), 
	.test_so1(n5), 
	.test_se(n8), 
	.UART_RX_CLK__L3_N1(UART_RX_CLK__L3_N1));
endmodule

module sys_ctrl_test_1 (
	CLK, 
	RST, 
	UART_RX_DATA, 
	UART_RX_VLD, 
	RF_WrEn, 
	RF_RdEn, 
	RF_Address, 
	RF_WrData, 
	RF_RdData, 
	RF_RdData_VLD, 
	ALU_FUN, 
	ALU_EN, 
	ALU_OUT, 
	ALU_OUT_VLD, 
	CLKG_EN, 
	CLKDIV_EN, 
	FIFO_FULL, 
	UART_TX_DATA, 
	UART_TX_VLD, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se, 
	FE_OFN1_SYNC_REF_RST, 
	FE_OFN2_SYNC_REF_RST, 
	CLK_A__L7_N11, 
	CLK_A__L7_N13, 
	CLK_A__L7_N14, 
	CLK_A__L7_N15, 
	CLK_A__L7_N16, 
	CLK_A__L7_N17);
   input CLK;
   input RST;
   input [7:0] UART_RX_DATA;
   input UART_RX_VLD;
   output RF_WrEn;
   output RF_RdEn;
   output [3:0] RF_Address;
   output [7:0] RF_WrData;
   input [7:0] RF_RdData;
   input RF_RdData_VLD;
   output [3:0] ALU_FUN;
   output ALU_EN;
   input [15:0] ALU_OUT;
   input ALU_OUT_VLD;
   output CLKG_EN;
   output CLKDIV_EN;
   input FIFO_FULL;
   output [7:0] UART_TX_DATA;
   output UART_TX_VLD;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;
   input FE_OFN1_SYNC_REF_RST;
   input FE_OFN2_SYNC_REF_RST;
   input CLK_A__L7_N11;
   input CLK_A__L7_N13;
   input CLK_A__L7_N14;
   input CLK_A__L7_N15;
   input CLK_A__L7_N16;
   input CLK_A__L7_N17;

   // Internal wires
   wire LTIE_LTIELO_NET;
   wire FE_OFN10_n84;
   wire rd_data_reg_6_;
   wire rd_data_reg_5_;
   wire rd_data_reg_4_;
   wire rd_data_reg_3_;
   wire rd_data_reg_2_;
   wire rd_data_reg_1_;
   wire rd_data_reg_0_;
   wire N195;
   wire N204;
   wire N205;
   wire N206;
   wire N207;
   wire N208;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n94;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n59;
   wire n60;
   wire n61;
   wire n66;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n93;
   wire n95;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n203;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire [3:0] current_state;
   wire [15:0] alu_out_reg;

   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   BUFX2M FE_OFC10_n84 (.Y(FE_OFN10_n84), 
	.A(n84));
   SDFFRQX2M ALU_FUN_reg_3_ (.SI(ALU_FUN[2]), 
	.SE(n224), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(ALU_FUN[3]), 
	.D(N208), 
	.CK(CLK_A__L7_N16));
   SDFFRQX2M alu_out_reg_reg_15_ (.SI(alu_out_reg[14]), 
	.SE(n222), 
	.RN(RST), 
	.Q(alu_out_reg[15]), 
	.D(n177), 
	.CK(CLK_A__L7_N13));
   SDFFRQX2M alu_out_reg_reg_14_ (.SI(alu_out_reg[13]), 
	.SE(n222), 
	.RN(RST), 
	.Q(alu_out_reg[14]), 
	.D(n176), 
	.CK(CLK_A__L7_N13));
   SDFFRQX2M alu_out_reg_reg_13_ (.SI(alu_out_reg[12]), 
	.SE(n221), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(alu_out_reg[13]), 
	.D(n175), 
	.CK(CLK_A__L7_N13));
   SDFFRQX2M alu_out_reg_reg_12_ (.SI(alu_out_reg[11]), 
	.SE(n221), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(alu_out_reg[12]), 
	.D(n174), 
	.CK(CLK_A__L7_N11));
   SDFFRQX2M alu_out_reg_reg_11_ (.SI(alu_out_reg[10]), 
	.SE(n229), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(alu_out_reg[11]), 
	.D(n173), 
	.CK(CLK_A__L7_N11));
   SDFFRQX2M alu_out_reg_reg_10_ (.SI(alu_out_reg[9]), 
	.SE(n229), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(alu_out_reg[10]), 
	.D(n172), 
	.CK(CLK_A__L7_N11));
   SDFFRQX2M alu_out_reg_reg_9_ (.SI(alu_out_reg[8]), 
	.SE(n254), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(alu_out_reg[9]), 
	.D(n171), 
	.CK(CLK_A__L7_N11));
   SDFFRQX2M alu_out_reg_reg_8_ (.SI(alu_out_reg[7]), 
	.SE(n220), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(alu_out_reg[8]), 
	.D(n170), 
	.CK(CLK_A__L7_N11));
   SDFFRQX2M alu_out_reg_reg_7_ (.SI(alu_out_reg[6]), 
	.SE(n220), 
	.RN(RST), 
	.Q(alu_out_reg[7]), 
	.D(n169), 
	.CK(CLK_A__L7_N13));
   SDFFRQX2M alu_out_reg_reg_6_ (.SI(alu_out_reg[5]), 
	.SE(n228), 
	.RN(RST), 
	.Q(alu_out_reg[6]), 
	.D(n168), 
	.CK(CLK_A__L7_N13));
   SDFFRQX2M alu_out_reg_reg_5_ (.SI(alu_out_reg[4]), 
	.SE(n228), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(alu_out_reg[5]), 
	.D(n167), 
	.CK(CLK_A__L7_N13));
   SDFFRQX2M alu_out_reg_reg_4_ (.SI(alu_out_reg[3]), 
	.SE(n252), 
	.RN(RST), 
	.Q(alu_out_reg[4]), 
	.D(n166), 
	.CK(CLK_A__L7_N17));
   SDFFRQX2M alu_out_reg_reg_3_ (.SI(alu_out_reg[2]), 
	.SE(n219), 
	.RN(RST), 
	.Q(alu_out_reg[3]), 
	.D(n165), 
	.CK(CLK_A__L7_N13));
   SDFFRQX2M alu_out_reg_reg_2_ (.SI(alu_out_reg[1]), 
	.SE(n219), 
	.RN(RST), 
	.Q(alu_out_reg[2]), 
	.D(n164), 
	.CK(CLK_A__L7_N17));
   SDFFRQX2M alu_out_reg_reg_1_ (.SI(alu_out_reg[0]), 
	.SE(n227), 
	.RN(RST), 
	.Q(alu_out_reg[1]), 
	.D(n163), 
	.CK(CLK_A__L7_N17));
   SDFFRQX2M alu_out_reg_reg_0_ (.SI(UART_TX_VLD), 
	.SE(n227), 
	.RN(RST), 
	.Q(alu_out_reg[0]), 
	.D(n162), 
	.CK(CLK_A__L7_N17));
   SDFFRQX2M rd_data_reg_reg_7_ (.SI(rd_data_reg_6_), 
	.SE(n250), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(test_so1), 
	.D(n149), 
	.CK(CLK_A__L7_N17));
   SDFFRQX2M rd_data_reg_reg_6_ (.SI(rd_data_reg_5_), 
	.SE(n218), 
	.RN(RST), 
	.Q(rd_data_reg_6_), 
	.D(n148), 
	.CK(CLK_A__L7_N17));
   SDFFRQX2M rd_data_reg_reg_5_ (.SI(rd_data_reg_4_), 
	.SE(n218), 
	.RN(RST), 
	.Q(rd_data_reg_5_), 
	.D(n147), 
	.CK(CLK_A__L7_N17));
   SDFFRQX2M rd_data_reg_reg_4_ (.SI(rd_data_reg_3_), 
	.SE(n226), 
	.RN(RST), 
	.Q(rd_data_reg_4_), 
	.D(n146), 
	.CK(CLK_A__L7_N17));
   SDFFRQX2M rd_data_reg_reg_3_ (.SI(rd_data_reg_2_), 
	.SE(n226), 
	.RN(RST), 
	.Q(rd_data_reg_3_), 
	.D(n145), 
	.CK(CLK_A__L7_N17));
   SDFFRQX2M rd_data_reg_reg_2_ (.SI(rd_data_reg_1_), 
	.SE(n248), 
	.RN(RST), 
	.Q(rd_data_reg_2_), 
	.D(n144), 
	.CK(CLK_A__L7_N17));
   SDFFRQX2M rd_data_reg_reg_1_ (.SI(rd_data_reg_0_), 
	.SE(n217), 
	.RN(RST), 
	.Q(rd_data_reg_1_), 
	.D(n143), 
	.CK(CLK_A__L7_N17));
   SDFFRQX2M rd_data_reg_reg_0_ (.SI(current_state[3]), 
	.SE(n217), 
	.RN(RST), 
	.Q(rd_data_reg_0_), 
	.D(n142), 
	.CK(CLK_A__L7_N17));
   SDFFRQX2M UART_TX_DATA_reg_7_ (.SI(test_si2), 
	.SE(n225), 
	.RN(RST), 
	.Q(UART_TX_DATA[7]), 
	.D(n134), 
	.CK(CLK_A__L7_N11));
   SDFFRQX2M UART_TX_DATA_reg_5_ (.SI(UART_TX_DATA[4]), 
	.SE(n246), 
	.RN(RST), 
	.Q(UART_TX_DATA[5]), 
	.D(n136), 
	.CK(CLK_A__L7_N13));
   SDFFRQX2M UART_TX_DATA_reg_4_ (.SI(UART_TX_DATA[3]), 
	.SE(n216), 
	.RN(RST), 
	.Q(UART_TX_DATA[4]), 
	.D(n137), 
	.CK(CLK_A__L7_N13));
   SDFFRQX2M UART_TX_DATA_reg_3_ (.SI(UART_TX_DATA[2]), 
	.SE(n214), 
	.RN(RST), 
	.Q(UART_TX_DATA[3]), 
	.D(n138), 
	.CK(CLK_A__L7_N13));
   SDFFRQX2M UART_TX_DATA_reg_2_ (.SI(UART_TX_DATA[1]), 
	.SE(n236), 
	.RN(RST), 
	.Q(UART_TX_DATA[2]), 
	.D(n139), 
	.CK(CLK_A__L7_N13));
   SDFFRQX2M UART_TX_DATA_reg_1_ (.SI(UART_TX_DATA[0]), 
	.SE(n212), 
	.RN(RST), 
	.Q(UART_TX_DATA[1]), 
	.D(n140), 
	.CK(CLK_A__L7_N13));
   SDFFRQX2M UART_TX_DATA_reg_0_ (.SI(RF_WrEn), 
	.SE(n212), 
	.RN(RST), 
	.Q(UART_TX_DATA[0]), 
	.D(n141), 
	.CK(CLK_A__L7_N13));
   SDFFRQX2M RF_WrData_reg_6_ (.SI(RF_WrData[5]), 
	.SE(n239), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(RF_WrData[6]), 
	.D(n156), 
	.CK(CLK_A__L7_N16));
   SDFFRQX2M RF_WrData_reg_4_ (.SI(RF_WrData[3]), 
	.SE(n235), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(RF_WrData[4]), 
	.D(n154), 
	.CK(CLK));
   SDFFRQX2M RF_WrData_reg_3_ (.SI(RF_WrData[2]), 
	.SE(n211), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(RF_WrData[3]), 
	.D(n153), 
	.CK(CLK_A__L7_N16));
   SDFFRQX2M RF_WrData_reg_2_ (.SI(RF_WrData[1]), 
	.SE(n211), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(RF_WrData[2]), 
	.D(n152), 
	.CK(CLK_A__L7_N16));
   SDFFRQX2M RF_WrData_reg_1_ (.SI(RF_WrData[0]), 
	.SE(n238), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(RF_WrData[1]), 
	.D(n151), 
	.CK(CLK_A__L7_N16));
   SDFFRQX2M RF_WrData_reg_0_ (.SI(RF_RdEn), 
	.SE(n213), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(RF_WrData[0]), 
	.D(n150), 
	.CK(CLK_A__L7_N16));
   SDFFRQX2M RF_WrData_reg_7_ (.SI(RF_WrData[6]), 
	.SE(n245), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(RF_WrData[7]), 
	.D(n157), 
	.CK(CLK_A__L7_N16));
   SDFFRQX2M RF_WrData_reg_5_ (.SI(RF_WrData[4]), 
	.SE(n244), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(RF_WrData[5]), 
	.D(n155), 
	.CK(CLK));
   SDFFRQX2M RF_WrEn_reg (.SI(RF_WrData[7]), 
	.SE(n214), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(RF_WrEn), 
	.D(n184), 
	.CK(CLK));
   SDFFRQX2M UART_TX_VLD_reg (.SI(UART_TX_DATA[7]), 
	.SE(n236), 
	.RN(RST), 
	.Q(UART_TX_VLD), 
	.D(N195), 
	.CK(CLK_A__L7_N14));
   SDFFRQX2M RF_RdEn_reg (.SI(RF_Address[3]), 
	.SE(n215), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(RF_RdEn), 
	.D(n186), 
	.CK(CLK_A__L7_N17));
   SDFFRQX2M ALU_EN_reg (.SI(test_si1), 
	.SE(n215), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(ALU_EN), 
	.D(N204), 
	.CK(CLK_A__L7_N17));
   SDFFRQX2M ALU_FUN_reg_1_ (.SI(ALU_FUN[0]), 
	.SE(n239), 
	.RN(RST), 
	.Q(ALU_FUN[1]), 
	.D(N206), 
	.CK(CLK_A__L7_N17));
   SDFFRQX2M current_state_reg_0_ (.SI(alu_out_reg[15]), 
	.SE(n213), 
	.RN(RST), 
	.Q(current_state[0]), 
	.D(n181), 
	.CK(CLK_A__L7_N16));
   OA21X2M U61 (.Y(n59), 
	.B0(UART_RX_VLD), 
	.A1(n103), 
	.A0(n133));
   NAND2X2M U62 (.Y(n60), 
	.B(RF_RdData_VLD), 
	.A(n94));
   NOR2X2M U63 (.Y(N195), 
	.B(FIFO_FULL), 
	.A(n126));
   NOR2X2M U64 (.Y(N204), 
	.B(n193), 
	.A(n109));
   NOR2X2M U65 (.Y(n132), 
	.B(current_state[3]), 
	.A(n187));
   INVX2M U66 (.Y(n192), 
	.A(current_state[2]));
   NAND3X2M U67 (.Y(n110), 
	.C(current_state[3]), 
	.B(n187), 
	.A(n131));
   CLKINVX2M U68 (.Y(n77), 
	.A(N195));
   INVX2M U73 (.Y(n82), 
	.A(n109));
   INVX2M U74 (.Y(n93), 
	.A(N204));
   INVX2M U75 (.Y(n183), 
	.A(n103));
   INVX2M U78 (.Y(n184), 
	.A(n61));
   NOR3X2M U82 (.Y(n126), 
	.C(n85), 
	.B(FE_OFN10_n84), 
	.A(n95));
   CLKINVX2M U83 (.Y(n78), 
	.A(n125));
   OAI2B11X2M U84 (.Y(n125), 
	.C0(n128), 
	.B0(n127), 
	.A1N(FIFO_FULL), 
	.A0(n126));
   AOI22X1M U85 (.Y(n128), 
	.B1(n80), 
	.B0(n94), 
	.A1(n79), 
	.A0(n189));
   OAI31X1M U86 (.Y(n127), 
	.B0(n193), 
	.A2(n82), 
	.A1(n188), 
	.A0(n130));
   NOR3BX4M U88 (.Y(n85), 
	.C(n191), 
	.B(n187), 
	.AN(n131));
   NAND2X2M U89 (.Y(n109), 
	.B(n187), 
	.A(CLKG_EN));
   INVX2M U90 (.Y(n185), 
	.A(n132));
   OAI211X2M U91 (.Y(n179), 
	.C0(n112), 
	.B0(n111), 
	.A1(n190), 
	.A0(n78));
   OAI31X1M U92 (.Y(n111), 
	.B0(n78), 
	.A2(n189), 
	.A1(n100), 
	.A0(n113));
   OAI211X2M U93 (.Y(n180), 
	.C0(n112), 
	.B0(n114), 
	.A1(n192), 
	.A0(n78));
   OAI31X1M U94 (.Y(n114), 
	.B0(n78), 
	.A2(n99), 
	.A1(n94), 
	.A0(n188));
   NAND3X2M U95 (.Y(n112), 
	.C(n107), 
	.B(n195), 
	.A(n199));
   CLKINVX2M U96 (.Y(n95), 
	.A(n110));
   INVX2M U97 (.Y(n188), 
	.A(n121));
   AND2X2M U98 (.Y(n94), 
	.B(n190), 
	.A(n129));
   INVX2M U99 (.Y(n189), 
	.A(n105));
   OAI21X2M U100 (.Y(n97), 
	.B0(n98), 
	.A1(n100), 
	.A0(n99));
   NOR3X2M U101 (.Y(n103), 
	.C(n190), 
	.B(n185), 
	.A(n192));
   NOR2X4M U102 (.Y(n104), 
	.B(n105), 
	.A(n79));
   CLKINVX2M U103 (.Y(n182), 
	.A(n98));
   NOR2X2M U104 (.Y(N207), 
	.B(n93), 
	.A(n197));
   NOR2X2M U105 (.Y(N205), 
	.B(n93), 
	.A(n199));
   NOR2X2M U106 (.Y(N206), 
	.B(n93), 
	.A(n198));
   NOR2X2M U107 (.Y(N208), 
	.B(n93), 
	.A(n196));
   AND2X2M U108 (.Y(n99), 
	.B(n132), 
	.A(n131));
   CLKINVX2M U109 (.Y(n61), 
	.A(n59));
   CLKINVX2M U111 (.Y(n66), 
	.A(n60));
   INVX2M U113 (.Y(n81), 
	.A(n113));
   INVX2M U114 (.Y(n186), 
	.A(n101));
   NOR2X2M U117 (.Y(n131), 
	.B(current_state[2]), 
	.A(n190));
   OAI21X2M U118 (.Y(n178), 
	.B0(n106), 
	.A1(n191), 
	.A0(n78));
   AOI32X1M U119 (.Y(n106), 
	.B1(n108), 
	.B0(n78), 
	.A2(n107), 
	.A1(UART_RX_DATA[0]), 
	.A0(UART_RX_DATA[4]));
   NAND4X2M U120 (.Y(n108), 
	.D(n110), 
	.C(n183), 
	.B(n105), 
	.A(n109));
   AND4X2M U121 (.Y(n107), 
	.D(n116), 
	.C(n115), 
	.B(UART_RX_DATA[6]), 
	.A(n78));
   NOR3X2M U122 (.Y(n116), 
	.C(UART_RX_DATA[1]), 
	.B(UART_RX_DATA[5]), 
	.A(n197));
   NOR3X2M U124 (.Y(n129), 
	.C(n192), 
	.B(current_state[3]), 
	.A(n261));
   CLKINVX2M U125 (.Y(n187), 
	.A(current_state[0]));
   NAND2X2M U126 (.Y(n105), 
	.B(current_state[0]), 
	.A(CLKG_EN));
   OAI22X1M U127 (.Y(n130), 
	.B1(n190), 
	.B0(n185), 
	.A1(current_state[2]), 
	.A0(current_state[3]));
   OAI21X2M U129 (.Y(n181), 
	.B0(n117), 
	.A1(n187), 
	.A0(n78));
   OAI31X1M U130 (.Y(n117), 
	.B0(n78), 
	.A2(n82), 
	.A1(n94), 
	.A0(n118));
   OAI31X1M U131 (.Y(n118), 
	.B0(n81), 
	.A2(n120), 
	.A1(UART_RX_DATA[0]), 
	.A0(n119));
   NAND3X2M U132 (.Y(n119), 
	.C(n197), 
	.B(n194), 
	.A(n195));
   OAI2BB2X1M U133 (.Y(n141), 
	.B1(n77), 
	.B0(n92), 
	.A1N(n77), 
	.A0N(UART_TX_DATA[0]));
   AOI222X1M U134 (.Y(n92), 
	.C1(n95), 
	.C0(alu_out_reg[0]), 
	.B1(n85), 
	.B0(alu_out_reg[8]), 
	.A1(FE_OFN10_n84), 
	.A0(rd_data_reg_0_));
   OAI2BB2X1M U135 (.Y(n140), 
	.B1(n77), 
	.B0(n91), 
	.A1N(n77), 
	.A0N(UART_TX_DATA[1]));
   AOI222X1M U136 (.Y(n91), 
	.C1(n95), 
	.C0(alu_out_reg[1]), 
	.B1(n85), 
	.B0(alu_out_reg[9]), 
	.A1(FE_OFN10_n84), 
	.A0(rd_data_reg_1_));
   OAI2BB2X1M U137 (.Y(n139), 
	.B1(n77), 
	.B0(n90), 
	.A1N(n77), 
	.A0N(UART_TX_DATA[2]));
   AOI222X1M U138 (.Y(n90), 
	.C1(n95), 
	.C0(alu_out_reg[2]), 
	.B1(n85), 
	.B0(alu_out_reg[10]), 
	.A1(FE_OFN10_n84), 
	.A0(rd_data_reg_2_));
   OAI2BB2X1M U139 (.Y(n138), 
	.B1(n77), 
	.B0(n89), 
	.A1N(n77), 
	.A0N(UART_TX_DATA[3]));
   AOI222X1M U140 (.Y(n89), 
	.C1(n95), 
	.C0(alu_out_reg[3]), 
	.B1(n85), 
	.B0(alu_out_reg[11]), 
	.A1(FE_OFN10_n84), 
	.A0(rd_data_reg_3_));
   OAI2BB2X1M U141 (.Y(n137), 
	.B1(n77), 
	.B0(n88), 
	.A1N(n77), 
	.A0N(UART_TX_DATA[4]));
   AOI222X1M U142 (.Y(n88), 
	.C1(n95), 
	.C0(alu_out_reg[4]), 
	.B1(n85), 
	.B0(alu_out_reg[12]), 
	.A1(FE_OFN10_n84), 
	.A0(rd_data_reg_4_));
   OAI2BB2X1M U143 (.Y(n136), 
	.B1(n77), 
	.B0(n87), 
	.A1N(n77), 
	.A0N(UART_TX_DATA[5]));
   AOI222X1M U144 (.Y(n87), 
	.C1(n95), 
	.C0(alu_out_reg[5]), 
	.B1(n85), 
	.B0(alu_out_reg[13]), 
	.A1(FE_OFN10_n84), 
	.A0(rd_data_reg_5_));
   OAI2BB2X1M U145 (.Y(n135), 
	.B1(n77), 
	.B0(n86), 
	.A1N(n77), 
	.A0N(UART_TX_DATA[6]));
   AOI222X1M U146 (.Y(n86), 
	.C1(n95), 
	.C0(alu_out_reg[6]), 
	.B1(n85), 
	.B0(alu_out_reg[14]), 
	.A1(FE_OFN10_n84), 
	.A0(rd_data_reg_6_));
   OAI2BB2X1M U147 (.Y(n134), 
	.B1(n77), 
	.B0(n83), 
	.A1N(n77), 
	.A0N(UART_TX_DATA[7]));
   AOI222X1M U148 (.Y(n83), 
	.C1(n95), 
	.C0(alu_out_reg[7]), 
	.B1(n85), 
	.B0(alu_out_reg[15]), 
	.A1(FE_OFN10_n84), 
	.A0(test_so1));
   OAI21X2M U153 (.Y(n158), 
	.B0(n96), 
	.A1(n183), 
	.A0(n182));
   NAND2X2M U155 (.Y(n98), 
	.B(n102), 
	.A(n101));
   OAI31X1M U156 (.Y(n102), 
	.B0(UART_RX_VLD), 
	.A2(n100), 
	.A1(n103), 
	.A0(n188));
   OAI2BB2X1M U157 (.Y(n159), 
	.B1(n97), 
	.B0(n198), 
	.A1N(n182), 
	.A0N(RF_Address[1]));
   OAI2BB2X1M U158 (.Y(n160), 
	.B1(n97), 
	.B0(n197), 
	.A1N(n182), 
	.A0N(RF_Address[2]));
   OAI2BB2X1M U159 (.Y(n161), 
	.B1(n97), 
	.B0(n196), 
	.A1N(n182), 
	.A0N(RF_Address[3]));
   OAI2BB2X1M U160 (.Y(n152), 
	.B1(n197), 
	.B0(n61), 
	.A1N(n61), 
	.A0N(RF_WrData[2]));
   OAI2BB2X1M U161 (.Y(n150), 
	.B1(n199), 
	.B0(n61), 
	.A1N(n61), 
	.A0N(RF_WrData[0]));
   OAI2BB2X1M U162 (.Y(n151), 
	.B1(n198), 
	.B0(n61), 
	.A1N(n61), 
	.A0N(RF_WrData[1]));
   OAI2BB2X1M U163 (.Y(n154), 
	.B1(n195), 
	.B0(n61), 
	.A1N(n61), 
	.A0N(RF_WrData[4]));
   OAI2BB2X1M U164 (.Y(n153), 
	.B1(n196), 
	.B0(n61), 
	.A1N(n61), 
	.A0N(RF_WrData[3]));
   OAI2BB2X1M U165 (.Y(n156), 
	.B1(n194), 
	.B0(n61), 
	.A1N(n61), 
	.A0N(RF_WrData[6]));
   AND4X2M U166 (.Y(n115), 
	.D(n124), 
	.C(UART_RX_DATA[7]), 
	.B(n187), 
	.A(UART_RX_DATA[3]));
   NAND2X2M U168 (.Y(n101), 
	.B(n203), 
	.A(n99));
   NAND3X2M U169 (.Y(n113), 
	.C(n122), 
	.B(n110), 
	.A(n121));
   NAND3BX2M U170 (.Y(n122), 
	.C(n123), 
	.B(UART_RX_DATA[4]), 
	.AN(n120));
   NOR3X2M U171 (.Y(n123), 
	.C(UART_RX_DATA[2]), 
	.B(UART_RX_DATA[6]), 
	.A(n199));
   NAND3X2M U172 (.Y(n120), 
	.C(n115), 
	.B(UART_RX_DATA[1]), 
	.A(UART_RX_DATA[5]));
   INVX2M U173 (.Y(n193), 
	.A(UART_RX_VLD));
   AO2B2X2M U174 (.Y(n174), 
	.B1(n104), 
	.B0(ALU_OUT[12]), 
	.A1N(n104), 
	.A0(alu_out_reg[12]));
   AO2B2X2M U175 (.Y(n175), 
	.B1(n104), 
	.B0(ALU_OUT[13]), 
	.A1N(n104), 
	.A0(alu_out_reg[13]));
   AO2B2X2M U176 (.Y(n176), 
	.B1(n104), 
	.B0(ALU_OUT[14]), 
	.A1N(n104), 
	.A0(alu_out_reg[14]));
   AO2B2X2M U177 (.Y(n177), 
	.B1(n104), 
	.B0(ALU_OUT[15]), 
	.A1N(n104), 
	.A0(alu_out_reg[15]));
   AO2B2X2M U178 (.Y(n162), 
	.B1(n104), 
	.B0(ALU_OUT[0]), 
	.A1N(n104), 
	.A0(alu_out_reg[0]));
   AO2B2X2M U179 (.Y(n163), 
	.B1(n104), 
	.B0(ALU_OUT[1]), 
	.A1N(n104), 
	.A0(alu_out_reg[1]));
   AO2B2X2M U180 (.Y(n164), 
	.B1(n104), 
	.B0(ALU_OUT[2]), 
	.A1N(n104), 
	.A0(alu_out_reg[2]));
   AO2B2X2M U181 (.Y(n165), 
	.B1(n104), 
	.B0(ALU_OUT[3]), 
	.A1N(n104), 
	.A0(alu_out_reg[3]));
   AO2B2X2M U182 (.Y(n166), 
	.B1(n104), 
	.B0(ALU_OUT[4]), 
	.A1N(n104), 
	.A0(alu_out_reg[4]));
   AO2B2X2M U183 (.Y(n167), 
	.B1(n104), 
	.B0(ALU_OUT[5]), 
	.A1N(n104), 
	.A0(alu_out_reg[5]));
   AO2B2X2M U184 (.Y(n168), 
	.B1(n104), 
	.B0(ALU_OUT[6]), 
	.A1N(n104), 
	.A0(alu_out_reg[6]));
   AO2B2X2M U185 (.Y(n169), 
	.B1(n104), 
	.B0(ALU_OUT[7]), 
	.A1N(n104), 
	.A0(alu_out_reg[7]));
   AO2B2X2M U186 (.Y(n170), 
	.B1(n104), 
	.B0(ALU_OUT[8]), 
	.A1N(n104), 
	.A0(alu_out_reg[8]));
   AO2B2X2M U187 (.Y(n171), 
	.B1(n104), 
	.B0(ALU_OUT[9]), 
	.A1N(n104), 
	.A0(alu_out_reg[9]));
   AO2B2X2M U188 (.Y(n172), 
	.B1(n104), 
	.B0(ALU_OUT[10]), 
	.A1N(n104), 
	.A0(alu_out_reg[10]));
   AO2B2X2M U189 (.Y(n173), 
	.B1(n104), 
	.B0(ALU_OUT[11]), 
	.A1N(n104), 
	.A0(alu_out_reg[11]));
   AO2B2X2M U190 (.Y(n142), 
	.B1(n66), 
	.B0(RF_RdData[0]), 
	.A1N(n66), 
	.A0(rd_data_reg_0_));
   AO2B2X2M U191 (.Y(n143), 
	.B1(n66), 
	.B0(RF_RdData[1]), 
	.A1N(n66), 
	.A0(rd_data_reg_1_));
   AO2B2X2M U192 (.Y(n144), 
	.B1(n66), 
	.B0(RF_RdData[2]), 
	.A1N(n66), 
	.A0(rd_data_reg_2_));
   AO2B2X2M U193 (.Y(n145), 
	.B1(n66), 
	.B0(RF_RdData[3]), 
	.A1N(n66), 
	.A0(rd_data_reg_3_));
   AO2B2X2M U194 (.Y(n146), 
	.B1(n66), 
	.B0(RF_RdData[4]), 
	.A1N(n66), 
	.A0(rd_data_reg_4_));
   AO2B2X2M U195 (.Y(n147), 
	.B1(n66), 
	.B0(RF_RdData[5]), 
	.A1N(n66), 
	.A0(rd_data_reg_5_));
   AO2B2X2M U196 (.Y(n148), 
	.B1(n66), 
	.B0(RF_RdData[6]), 
	.A1N(n66), 
	.A0(rd_data_reg_6_));
   AO2B2X2M U197 (.Y(n149), 
	.B1(n66), 
	.B0(RF_RdData[7]), 
	.A1N(n66), 
	.A0(test_so1));
   NOR3X2M U198 (.Y(n133), 
	.C(current_state[0]), 
	.B(current_state[3]), 
	.A(n190));
   INVX2M U199 (.Y(n80), 
	.A(RF_RdData_VLD));
   AO22X1M U200 (.Y(n155), 
	.B1(n61), 
	.B0(RF_WrData[5]), 
	.A1(UART_RX_DATA[5]), 
	.A0(n184));
   AO22X1M U201 (.Y(n157), 
	.B1(n61), 
	.B0(RF_WrData[7]), 
	.A1(UART_RX_DATA[7]), 
	.A0(n184));
   CLKINVX2M U202 (.Y(n197), 
	.A(UART_RX_DATA[2]));
   CLKINVX2M U203 (.Y(n199), 
	.A(UART_RX_DATA[0]));
   INVX2M U204 (.Y(n195), 
	.A(UART_RX_DATA[4]));
   INVX2M U205 (.Y(n194), 
	.A(UART_RX_DATA[6]));
   INVX2M U206 (.Y(n198), 
	.A(UART_RX_DATA[1]));
   INVX2M U207 (.Y(n196), 
	.A(UART_RX_DATA[3]));
   INVX2M U208 (.Y(n79), 
	.A(ALU_OUT_VLD));
   INVXLM U209 (.Y(n203), 
	.A(n193));
   DLY1X1M U212 (.Y(n206), 
	.A(n230));
   DLY1X1M U213 (.Y(n207), 
	.A(n231));
   DLY1X1M U214 (.Y(n208), 
	.A(n242));
   DLY1X1M U215 (.Y(n209), 
	.A(n258));
   DLY1X1M U217 (.Y(n211), 
	.A(n232));
   DLY1X1M U218 (.Y(n212), 
	.A(n233));
   DLY1X1M U219 (.Y(n213), 
	.A(n234));
   DLY1X1M U220 (.Y(n214), 
	.A(n237));
   DLY1X1M U221 (.Y(n215), 
	.A(n243));
   DLY1X1M U222 (.Y(n216), 
	.A(n207));
   DLY1X1M U223 (.Y(n217), 
	.A(n247));
   DLY1X1M U224 (.Y(n218), 
	.A(n249));
   DLY1X1M U225 (.Y(n219), 
	.A(n251));
   DLY1X1M U226 (.Y(n220), 
	.A(n253));
   DLY1X1M U227 (.Y(n221), 
	.A(n255));
   DLY1X1M U228 (.Y(n222), 
	.A(n256));
   DLY1X1M U229 (.Y(n223), 
	.A(n260));
   DLY1X1M U230 (.Y(n224), 
	.A(n257));
   DLY1X1M U232 (.Y(n226), 
	.A(n248));
   DLY1X1M U233 (.Y(n227), 
	.A(n250));
   DLY1X1M U234 (.Y(n228), 
	.A(n252));
   DLY1X1M U235 (.Y(n229), 
	.A(n254));
   DLY1X1M U236 (.Y(n230), 
	.A(n241));
   DLY1X1M U237 (.Y(n231), 
	.A(n241));
   DLY1X1M U238 (.Y(n232), 
	.A(n206));
   DLY1X1M U239 (.Y(n233), 
	.A(n206));
   DLY1X1M U240 (.Y(n234), 
	.A(n242));
   DLY1X1M U241 (.Y(n235), 
	.A(n208));
   DLY1X1M U242 (.Y(n236), 
	.A(n208));
   DLY1X1M U243 (.Y(n237), 
	.A(n245));
   DLY1X1M U244 (.Y(n238), 
	.A(n233));
   DLY1X1M U245 (.Y(n239), 
	.A(n216));
   DLY1X1M U246 (.Y(n240), 
	.A(test_se));
   DLY1X1M U247 (.Y(n241), 
	.A(n240));
   DLY1X1M U248 (.Y(n242), 
	.A(n240));
   DLY1X1M U249 (.Y(n243), 
	.A(n230));
   DLY1X1M U250 (.Y(n244), 
	.A(n207));
   DLY1X1M U251 (.Y(n245), 
	.A(n231));
   DLY1X1M U252 (.Y(n246), 
	.A(n238));
   DLY1X1M U253 (.Y(n247), 
	.A(n237));
   DLY1X1M U254 (.Y(n248), 
	.A(n247));
   DLY1X1M U255 (.Y(n249), 
	.A(n232));
   DLY1X1M U256 (.Y(n250), 
	.A(n249));
   DLY1X1M U257 (.Y(n251), 
	.A(n244));
   DLY1X1M U258 (.Y(n252), 
	.A(n251));
   DLY1X1M U259 (.Y(n253), 
	.A(n235));
   DLY1X1M U260 (.Y(n254), 
	.A(n253));
   DLY1X1M U261 (.Y(n255), 
	.A(n243));
   DLY1X1M U262 (.Y(n256), 
	.A(n255));
   DLY1X1M U263 (.Y(n257), 
	.A(n256));
   DLY1X1M U264 (.Y(n258), 
	.A(n234));
   DLY1X1M U265 (.Y(n259), 
	.A(n258));
   DLY1X1M U266 (.Y(n260), 
	.A(n259));
   INVXLM U267 (.Y(n261), 
	.A(n187));
   SDFFRQX2M RF_Address_reg_0_ (.SI(ALU_FUN[3]), 
	.SE(n223), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(RF_Address[0]), 
	.D(n158), 
	.CK(CLK_A__L7_N16));
   SDFFRQX2M current_state_reg_1_ (.SI(current_state[0]), 
	.SE(n209), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(current_state[1]), 
	.D(n179), 
	.CK(CLK));
   SDFFRQX4M ALU_FUN_reg_2_ (.SI(ALU_FUN[1]), 
	.SE(n257), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(ALU_FUN[2]), 
	.D(N207), 
	.CK(CLK_A__L7_N17));
   SDFFRQX4M current_state_reg_3_ (.SI(current_state[2]), 
	.SE(n209), 
	.RN(RST), 
	.Q(current_state[3]), 
	.D(n178), 
	.CK(CLK_A__L7_N15));
   SDFFRQX4M current_state_reg_2_ (.SI(current_state[1]), 
	.SE(n210), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(current_state[2]), 
	.D(n180), 
	.CK(CLK));
   SDFFRQX4M RF_Address_reg_3_ (.SI(RF_Address[2]), 
	.SE(n210), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(RF_Address[3]), 
	.D(n161), 
	.CK(CLK_A__L7_N16));
   SDFFRQX4M RF_Address_reg_1_ (.SI(RF_Address[0]), 
	.SE(n260), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(RF_Address[1]), 
	.D(n159), 
	.CK(CLK_A__L7_N16));
   SDFFRQX4M ALU_FUN_reg_0_ (.SI(ALU_EN), 
	.SE(n223), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(ALU_FUN[0]), 
	.D(N205), 
	.CK(CLK_A__L7_N16));
   SDFFRQX4M UART_TX_DATA_reg_6_ (.SI(UART_TX_DATA[5]), 
	.SE(n225), 
	.RN(RST), 
	.Q(UART_TX_DATA[6]), 
	.D(n135), 
	.CK(CLK_A__L7_N13));
   SDFFRHQX8M RF_Address_reg_2_ (.SI(RF_Address[1]), 
	.SE(n224), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(RF_Address[2]), 
	.D(n160), 
	.CK(CLK_A__L7_N16));
   INVX2M U3 (.Y(CLKDIV_EN), 
	.A(LTIE_LTIELO_NET));
   NOR3X2M U5 (.Y(n100), 
	.C(n185), 
	.B(current_state[2]), 
	.A(current_state[1]));
   NOR3X2M U6 (.Y(n124), 
	.C(current_state[2]), 
	.B(current_state[3]), 
	.A(current_state[1]));
   NOR3X2M U7 (.Y(n84), 
	.C(n192), 
	.B(current_state[1]), 
	.A(n185));
   NOR3X2M U8 (.Y(CLKG_EN), 
	.C(n191), 
	.B(current_state[2]), 
	.A(current_state[1]));
   CLKINVX2M U9 (.Y(n191), 
	.A(current_state[3]));
   BUFX2M U10 (.Y(n225), 
	.A(n246));
   AOI2BB2XLM U12 (.Y(n96), 
	.B1(n182), 
	.B0(RF_Address[0]), 
	.A1N(n199), 
	.A0N(n97));
   BUFX2M U13 (.Y(n210), 
	.A(n259));
   NAND2X1M U15 (.Y(n121), 
	.B(current_state[1]), 
	.A(n129));
   CLKINVX2M U16 (.Y(n190), 
	.A(current_state[1]));
endmodule

module Register_File_test_1 (
	clk, 
	rst, 
	WrEn, 
	RdEn, 
	Address, 
	WrData, 
	RdData, 
	RdData_VLD, 
	REG0, 
	REG1, 
	REG2, 
	REG3, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN2_SYNC_REF_RST, 
	CLK_A__L7_N16, 
	CLK_A__L7_N2, 
	CLK_A__L7_N3, 
	CLK_A__L7_N4, 
	CLK_A__L7_N5, 
	CLK_A__L7_N6, 
	CLK_A__L7_N7, 
	CLK_A__L7_N8);
   input clk;
   input rst;
   input WrEn;
   input RdEn;
   input [3:0] Address;
   input [7:0] WrData;
   output [7:0] RdData;
   output RdData_VLD;
   output [7:0] REG0;
   output [7:0] REG1;
   output [7:0] REG2;
   output [7:0] REG3;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN2_SYNC_REF_RST;
   input CLK_A__L7_N16;
   input CLK_A__L7_N2;
   input CLK_A__L7_N3;
   input CLK_A__L7_N4;
   input CLK_A__L7_N5;
   input CLK_A__L7_N6;
   input CLK_A__L7_N7;
   input CLK_A__L7_N8;

   // Internal wires
   wire FE_OFN18_Operand_B_7_;
   wire FE_OFN17_Operand_B_1_;
   wire FE_OFN16_Operand_A_5_;
   wire FE_OFN15_Operand_A_4_;
   wire FE_OFN14_Operand_A_3_;
   wire FE_OFN13_Operand_B_6_;
   wire FE_OFN9_n402;
   wire FE_OFN8_n400;
   wire FE_OFN7_n399;
   wire FE_OFN4_SYNC_REF_RST;
   wire FE_OFN3_SYNC_REF_RST;
   wire n13;
   wire n14;
   wire n487;
   wire n15;
   wire n16;
   wire n17;
   wire regArr_15__6_;
   wire regArr_15__5_;
   wire regArr_15__4_;
   wire regArr_15__3_;
   wire regArr_15__2_;
   wire regArr_15__1_;
   wire regArr_15__0_;
   wire regArr_14__7_;
   wire regArr_14__6_;
   wire regArr_14__5_;
   wire regArr_14__4_;
   wire regArr_14__3_;
   wire regArr_14__2_;
   wire regArr_14__1_;
   wire regArr_14__0_;
   wire regArr_13__7_;
   wire regArr_13__6_;
   wire regArr_13__5_;
   wire regArr_13__4_;
   wire regArr_13__3_;
   wire regArr_13__2_;
   wire regArr_13__1_;
   wire regArr_13__0_;
   wire regArr_12__7_;
   wire regArr_12__6_;
   wire regArr_12__5_;
   wire regArr_12__4_;
   wire regArr_12__3_;
   wire regArr_12__2_;
   wire regArr_12__1_;
   wire regArr_12__0_;
   wire regArr_11__7_;
   wire regArr_11__6_;
   wire regArr_11__5_;
   wire regArr_11__4_;
   wire regArr_11__3_;
   wire regArr_11__2_;
   wire regArr_11__1_;
   wire regArr_11__0_;
   wire regArr_10__7_;
   wire regArr_10__6_;
   wire regArr_10__5_;
   wire regArr_10__4_;
   wire regArr_10__3_;
   wire regArr_10__2_;
   wire regArr_10__1_;
   wire regArr_10__0_;
   wire regArr_9__7_;
   wire regArr_9__6_;
   wire regArr_9__5_;
   wire regArr_9__4_;
   wire regArr_9__3_;
   wire regArr_9__2_;
   wire regArr_9__1_;
   wire regArr_9__0_;
   wire regArr_8__7_;
   wire regArr_8__6_;
   wire regArr_8__5_;
   wire regArr_8__4_;
   wire regArr_8__3_;
   wire regArr_8__2_;
   wire regArr_8__1_;
   wire regArr_8__0_;
   wire regArr_7__7_;
   wire regArr_7__6_;
   wire regArr_7__5_;
   wire regArr_7__4_;
   wire regArr_7__3_;
   wire regArr_7__2_;
   wire regArr_7__0_;
   wire regArr_6__7_;
   wire regArr_6__6_;
   wire regArr_6__5_;
   wire regArr_6__4_;
   wire regArr_6__3_;
   wire regArr_6__2_;
   wire regArr_6__1_;
   wire regArr_6__0_;
   wire regArr_5__7_;
   wire regArr_5__6_;
   wire regArr_5__5_;
   wire regArr_5__4_;
   wire regArr_5__3_;
   wire regArr_5__2_;
   wire regArr_5__1_;
   wire regArr_5__0_;
   wire regArr_4__7_;
   wire regArr_4__6_;
   wire regArr_4__5_;
   wire regArr_4__4_;
   wire regArr_4__3_;
   wire regArr_4__2_;
   wire regArr_4__1_;
   wire regArr_4__0_;
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire N43;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n160;
   wire n163;
   wire n164;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n175;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n295;
   wire n296;
   wire n297;
   wire n298;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
   wire n314;
   wire n138;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n159;
   wire n161;
   wire n162;
   wire n165;
   wire n172;
   wire n173;
   wire n174;
   wire n176;
   wire n315;
   wire n316;
   wire n317;
   wire n318;
   wire n319;
   wire n320;
   wire n321;
   wire n322;
   wire n323;
   wire n324;
   wire n325;
   wire n326;
   wire n327;
   wire n328;
   wire n329;
   wire n330;
   wire n331;
   wire n332;
   wire n333;
   wire n334;
   wire n335;
   wire n336;
   wire n337;
   wire n338;
   wire n339;
   wire n340;
   wire n341;
   wire n342;
   wire n343;
   wire n344;
   wire n345;
   wire n346;
   wire n347;
   wire n348;
   wire n349;
   wire n350;
   wire n351;
   wire n352;
   wire n353;
   wire n354;
   wire n355;
   wire n356;
   wire n357;
   wire n358;
   wire n359;
   wire n360;
   wire n361;
   wire n362;
   wire n363;
   wire n364;
   wire n365;
   wire n366;
   wire n367;
   wire n368;
   wire n369;
   wire n370;
   wire n371;
   wire n372;
   wire n373;
   wire n374;
   wire n375;
   wire n376;
   wire n377;
   wire n378;
   wire n379;
   wire n380;
   wire n381;
   wire n382;
   wire n383;
   wire n384;
   wire n385;
   wire n386;
   wire n387;
   wire n388;
   wire n389;
   wire n390;
   wire n391;
   wire n392;
   wire n393;
   wire n394;
   wire n395;
   wire n396;
   wire n397;
   wire n398;
   wire n399;
   wire n400;
   wire n401;
   wire n402;
   wire n403;
   wire n404;
   wire n405;
   wire n406;
   wire n407;
   wire n408;
   wire n409;
   wire n410;
   wire n411;
   wire n412;
   wire n413;
   wire n431;
   wire n433;
   wire n435;
   wire n437;
   wire n447;
   wire n449;
   wire n451;
   wire n453;
   wire n477;
   wire n478;
   wire n479;
   wire n480;
   wire n481;
   wire n482;
   wire n483;
   wire n484;
   wire n485;
   wire n486;
   wire n491;
   wire n492;
   wire n495;
   wire n496;
   wire n497;
   wire n498;
   wire n499;
   wire n500;
   wire n501;
   wire n502;
   wire n503;
   wire n504;
   wire n505;
   wire n506;
   wire n507;
   wire n508;
   wire n509;
   wire n510;
   wire n511;
   wire n512;
   wire n513;
   wire n514;
   wire n515;
   wire n516;
   wire n517;
   wire n518;
   wire n519;
   wire n520;
   wire n521;
   wire n522;
   wire n523;
   wire n524;
   wire n525;
   wire n526;
   wire n527;
   wire n528;
   wire n529;
   wire n530;
   wire n531;
   wire n532;
   wire n533;
   wire n534;
   wire n535;
   wire n536;
   wire n537;
   wire n538;
   wire n539;
   wire n540;
   wire n541;
   wire n542;
   wire n543;
   wire n544;
   wire n545;
   wire n546;
   wire n547;
   wire n548;
   wire n549;
   wire n550;
   wire n551;
   wire n552;
   wire n553;
   wire n554;
   wire n555;
   wire n556;
   wire n557;
   wire n558;
   wire n559;
   wire n560;
   wire n561;
   wire n562;
   wire n563;
   wire n564;
   wire n565;
   wire n566;
   wire n567;
   wire n568;
   wire n569;
   wire n570;
   wire n571;
   wire n572;
   wire n573;
   wire n574;
   wire n575;
   wire n576;
   wire n577;
   wire n578;
   wire n579;
   wire n580;
   wire n581;
   wire n582;
   wire n583;
   wire n584;
   wire n585;
   wire n586;
   wire n587;
   wire n588;
   wire n589;
   wire n590;
   wire n591;
   wire n592;
   wire n593;
   wire n594;
   wire n595;
   wire n596;
   wire n597;
   wire n598;
   wire n599;
   wire n600;
   wire n601;
   wire n602;
   wire n603;
   wire n604;
   wire n605;
   wire n606;
   wire n607;
   wire n608;
   wire n609;
   wire n610;
   wire n611;
   wire n612;
   wire n613;
   wire n614;
   wire n615;
   wire n616;
   wire n617;
   wire n618;
   wire n619;
   wire n620;
   wire n621;
   wire n622;
   wire n623;
   wire n624;
   wire n625;
   wire n626;
   wire n627;
   wire n3;
   wire n9;
   wire n11;

   BUFX6M FE_RC_1_0 (.Y(REG1[4]), 
	.A(n13));
   CLKBUFX20M FE_RC_0_0 (.Y(REG1[0]), 
	.A(n14));
   BUFX6M FE_OFC18_Operand_B_7_ (.Y(REG1[7]), 
	.A(FE_OFN18_Operand_B_7_));
   BUFX8M FE_OFC17_Operand_B_1_ (.Y(REG1[1]), 
	.A(FE_OFN17_Operand_B_1_));
   CLKBUFX2M FE_OFC16_Operand_A_5_ (.Y(REG0[5]), 
	.A(FE_OFN16_Operand_A_5_));
   CLKBUFX2M FE_OFC15_Operand_A_4_ (.Y(REG0[4]), 
	.A(FE_OFN15_Operand_A_4_));
   CLKBUFX2M FE_OFC14_Operand_A_3_ (.Y(REG0[3]), 
	.A(FE_OFN14_Operand_A_3_));
   BUFX5M FE_OFC13_Operand_B_6_ (.Y(REG1[6]), 
	.A(FE_OFN13_Operand_B_6_));
   BUFX2M FE_OFC9_n402 (.Y(FE_OFN9_n402), 
	.A(n402));
   CLKBUFX2M FE_OFC8_n400 (.Y(FE_OFN8_n400), 
	.A(n400));
   BUFX2M FE_OFC7_n399 (.Y(FE_OFN7_n399), 
	.A(n399));
   BUFX8M FE_OFC4_SYNC_REF_RST (.Y(FE_OFN4_SYNC_REF_RST), 
	.A(FE_OFN2_SYNC_REF_RST));
   BUFX5M FE_OFC3_SYNC_REF_RST (.Y(FE_OFN3_SYNC_REF_RST), 
	.A(rst));
   SDFFRQX2M RdData_reg_7_ (.SI(RdData[6]), 
	.SE(n559), 
	.RN(rst), 
	.Q(RdData[7]), 
	.D(n314), 
	.CK(clk));
   SDFFRQX2M RdData_reg_6_ (.SI(RdData[5]), 
	.SE(n559), 
	.RN(rst), 
	.Q(RdData[6]), 
	.D(n313), 
	.CK(clk));
   SDFFRQX2M RdData_reg_5_ (.SI(RdData[4]), 
	.SE(n550), 
	.RN(rst), 
	.Q(RdData[5]), 
	.D(n312), 
	.CK(clk));
   SDFFRQX2M RdData_reg_4_ (.SI(RdData[3]), 
	.SE(n550), 
	.RN(rst), 
	.Q(RdData[4]), 
	.D(n311), 
	.CK(clk));
   SDFFRQX2M RdData_reg_3_ (.SI(RdData[2]), 
	.SE(n553), 
	.RN(rst), 
	.Q(RdData[3]), 
	.D(n310), 
	.CK(CLK_A__L7_N3));
   SDFFRQX2M RdData_reg_2_ (.SI(RdData[1]), 
	.SE(n553), 
	.RN(rst), 
	.Q(RdData[2]), 
	.D(n309), 
	.CK(CLK_A__L7_N16));
   SDFFRQX2M RdData_reg_1_ (.SI(RdData[0]), 
	.SE(n576), 
	.RN(rst), 
	.Q(RdData[1]), 
	.D(n308), 
	.CK(clk));
   SDFFRQX2M RdData_reg_0_ (.SI(RdData_VLD), 
	.SE(n576), 
	.RN(rst), 
	.Q(RdData[0]), 
	.D(n307), 
	.CK(CLK_A__L7_N16));
   SDFFRQX2M regArr_reg_15__7_ (.SI(regArr_15__6_), 
	.SE(n617), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(test_so2), 
	.D(n306), 
	.CK(CLK_A__L7_N4));
   SDFFRQX2M regArr_reg_15__6_ (.SI(regArr_15__5_), 
	.SE(n556), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(regArr_15__6_), 
	.D(n305), 
	.CK(CLK_A__L7_N4));
   SDFFRQX2M regArr_reg_15__5_ (.SI(regArr_15__4_), 
	.SE(n556), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(regArr_15__5_), 
	.D(n304), 
	.CK(CLK_A__L7_N3));
   SDFFRQX2M regArr_reg_15__4_ (.SI(regArr_15__3_), 
	.SE(n552), 
	.RN(rst), 
	.Q(regArr_15__4_), 
	.D(n303), 
	.CK(CLK_A__L7_N4));
   SDFFRQX2M regArr_reg_15__3_ (.SI(regArr_15__2_), 
	.SE(n552), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(regArr_15__3_), 
	.D(n302), 
	.CK(CLK_A__L7_N6));
   SDFFRQX2M regArr_reg_15__2_ (.SI(regArr_15__1_), 
	.SE(n575), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(regArr_15__2_), 
	.D(n301), 
	.CK(CLK_A__L7_N6));
   SDFFRQX2M regArr_reg_15__1_ (.SI(regArr_15__0_), 
	.SE(n575), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(regArr_15__1_), 
	.D(n300), 
	.CK(CLK_A__L7_N6));
   SDFFRQX2M regArr_reg_15__0_ (.SI(regArr_14__7_), 
	.SE(n614), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(regArr_15__0_), 
	.D(n299), 
	.CK(CLK_A__L7_N6));
   SDFFRQX2M regArr_reg_13__7_ (.SI(regArr_13__6_), 
	.SE(n549), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(regArr_13__7_), 
	.D(n290), 
	.CK(CLK_A__L7_N4));
   SDFFRQX2M regArr_reg_13__6_ (.SI(regArr_13__5_), 
	.SE(n549), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(regArr_13__6_), 
	.D(n289), 
	.CK(CLK_A__L7_N4));
   SDFFRQX2M regArr_reg_13__5_ (.SI(regArr_13__4_), 
	.SE(n555), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(regArr_13__5_), 
	.D(n288), 
	.CK(CLK_A__L7_N4));
   SDFFRQX2M regArr_reg_13__4_ (.SI(regArr_13__3_), 
	.SE(n522), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(regArr_13__4_), 
	.D(n287), 
	.CK(CLK_A__L7_N4));
   SDFFRQX2M regArr_reg_13__3_ (.SI(regArr_13__2_), 
	.SE(n574), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(regArr_13__3_), 
	.D(n286), 
	.CK(CLK_A__L7_N8));
   SDFFRQX2M regArr_reg_13__2_ (.SI(regArr_13__1_), 
	.SE(n574), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_13__2_), 
	.D(n285), 
	.CK(CLK_A__L7_N8));
   SDFFRQX2M regArr_reg_13__1_ (.SI(regArr_13__0_), 
	.SE(n612), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(regArr_13__1_), 
	.D(n284), 
	.CK(CLK_A__L7_N4));
   SDFFRQX2M regArr_reg_13__0_ (.SI(regArr_12__7_), 
	.SE(n540), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(regArr_13__0_), 
	.D(n283), 
	.CK(CLK_A__L7_N4));
   SDFFRQX2M regArr_reg_11__7_ (.SI(regArr_11__6_), 
	.SE(n540), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_11__7_), 
	.D(n274), 
	.CK(CLK_A__L7_N8));
   SDFFRQX2M regArr_reg_11__6_ (.SI(regArr_11__5_), 
	.SE(n554), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(regArr_11__6_), 
	.D(n273), 
	.CK(CLK_A__L7_N4));
   SDFFRQX2M regArr_reg_11__5_ (.SI(regArr_11__4_), 
	.SE(n558), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_11__5_), 
	.D(n272), 
	.CK(CLK_A__L7_N8));
   SDFFRQX2M regArr_reg_11__4_ (.SI(regArr_11__3_), 
	.SE(n573), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_11__4_), 
	.D(n271), 
	.CK(CLK_A__L7_N7));
   SDFFRQX2M regArr_reg_11__3_ (.SI(regArr_11__2_), 
	.SE(n573), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_11__3_), 
	.D(n270), 
	.CK(CLK_A__L7_N7));
   SDFFRQX2M regArr_reg_11__2_ (.SI(regArr_11__1_), 
	.SE(n610), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_11__2_), 
	.D(n269), 
	.CK(CLK_A__L7_N7));
   SDFFRQX2M regArr_reg_11__1_ (.SI(regArr_11__0_), 
	.SE(n548), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_11__1_), 
	.D(n268), 
	.CK(CLK_A__L7_N8));
   SDFFRQX2M regArr_reg_11__0_ (.SI(regArr_10__7_), 
	.SE(n548), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_11__0_), 
	.D(n267), 
	.CK(CLK_A__L7_N8));
   SDFFRQX2M regArr_reg_9__7_ (.SI(regArr_9__6_), 
	.SE(n543), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_9__7_), 
	.D(n258), 
	.CK(CLK_A__L7_N8));
   SDFFRQX2M regArr_reg_9__6_ (.SI(regArr_9__5_), 
	.SE(n543), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_9__6_), 
	.D(n257), 
	.CK(CLK_A__L7_N8));
   SDFFRQX2M regArr_reg_9__5_ (.SI(regArr_9__4_), 
	.SE(n572), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_9__5_), 
	.D(n256), 
	.CK(CLK_A__L7_N8));
   SDFFRQX2M regArr_reg_9__4_ (.SI(regArr_9__3_), 
	.SE(n572), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_9__4_), 
	.D(n255), 
	.CK(CLK_A__L7_N8));
   SDFFRQX2M regArr_reg_9__3_ (.SI(regArr_9__2_), 
	.SE(n607), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_9__3_), 
	.D(n254), 
	.CK(CLK_A__L7_N8));
   SDFFRQX2M regArr_reg_9__2_ (.SI(regArr_9__1_), 
	.SE(n546), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_9__2_), 
	.D(n253), 
	.CK(CLK_A__L7_N5));
   SDFFRQX2M regArr_reg_9__1_ (.SI(regArr_9__0_), 
	.SE(n546), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_9__1_), 
	.D(n252), 
	.CK(CLK_A__L7_N5));
   SDFFRQX2M regArr_reg_9__0_ (.SI(regArr_8__7_), 
	.SE(n542), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_9__0_), 
	.D(n251), 
	.CK(CLK_A__L7_N5));
   SDFFRQX2M regArr_reg_7__7_ (.SI(regArr_7__6_), 
	.SE(n542), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_7__7_), 
	.D(n242), 
	.CK(CLK_A__L7_N5));
   SDFFRQX2M regArr_reg_7__6_ (.SI(regArr_7__5_), 
	.SE(n571), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_7__6_), 
	.D(n241), 
	.CK(CLK_A__L7_N2));
   SDFFRQX2M regArr_reg_7__5_ (.SI(regArr_7__4_), 
	.SE(n571), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_7__5_), 
	.D(n240), 
	.CK(CLK_A__L7_N2));
   SDFFRQX2M regArr_reg_7__4_ (.SI(regArr_7__3_), 
	.SE(n604), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_7__4_), 
	.D(n239), 
	.CK(CLK_A__L7_N2));
   SDFFRQX2M regArr_reg_7__3_ (.SI(regArr_7__2_), 
	.SE(n544), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_7__3_), 
	.D(n238), 
	.CK(CLK_A__L7_N5));
   SDFFRQX2M regArr_reg_7__2_ (.SI(test_si2), 
	.SE(n544), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_7__2_), 
	.D(n237), 
	.CK(CLK_A__L7_N5));
   SDFFRQX2M regArr_reg_7__0_ (.SI(regArr_6__7_), 
	.SE(n547), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_7__0_), 
	.D(n235), 
	.CK(CLK_A__L7_N5));
   SDFFRQX2M regArr_reg_5__7_ (.SI(regArr_5__6_), 
	.SE(n570), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_5__7_), 
	.D(n226), 
	.CK(CLK_A__L7_N5));
   SDFFRQX2M regArr_reg_5__6_ (.SI(regArr_5__5_), 
	.SE(n570), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_5__6_), 
	.D(n225), 
	.CK(CLK_A__L7_N5));
   SDFFRQX2M regArr_reg_5__5_ (.SI(regArr_5__4_), 
	.SE(n602), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_5__5_), 
	.D(n224), 
	.CK(CLK_A__L7_N5));
   SDFFRQX2M regArr_reg_5__4_ (.SI(regArr_5__3_), 
	.SE(n541), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_5__4_), 
	.D(n223), 
	.CK(CLK_A__L7_N5));
   SDFFRQX2M regArr_reg_5__3_ (.SI(regArr_5__2_), 
	.SE(n541), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_5__3_), 
	.D(n222), 
	.CK(CLK_A__L7_N4));
   SDFFRQX2M regArr_reg_5__2_ (.SI(regArr_5__1_), 
	.SE(n521), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_5__2_), 
	.D(n221), 
	.CK(CLK_A__L7_N4));
   SDFFRQX2M regArr_reg_5__1_ (.SI(regArr_5__0_), 
	.SE(n551), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_5__1_), 
	.D(n220), 
	.CK(CLK_A__L7_N4));
   SDFFRQX2M regArr_reg_5__0_ (.SI(regArr_4__7_), 
	.SE(n569), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_5__0_), 
	.D(n219), 
	.CK(CLK_A__L7_N4));
   SDFFRQX2M regArr_reg_14__7_ (.SI(regArr_14__6_), 
	.SE(n569), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(regArr_14__7_), 
	.D(n298), 
	.CK(CLK_A__L7_N6));
   SDFFRQX2M regArr_reg_14__6_ (.SI(regArr_14__5_), 
	.SE(n600), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(regArr_14__6_), 
	.D(n297), 
	.CK(CLK_A__L7_N6));
   SDFFRQX2M regArr_reg_14__5_ (.SI(regArr_14__4_), 
	.SE(n539), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(regArr_14__5_), 
	.D(n296), 
	.CK(CLK_A__L7_N6));
   SDFFRQX2M regArr_reg_14__4_ (.SI(regArr_14__3_), 
	.SE(n539), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(regArr_14__4_), 
	.D(n295), 
	.CK(CLK_A__L7_N6));
   SDFFRQX2M regArr_reg_14__3_ (.SI(regArr_14__2_), 
	.SE(n534), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(regArr_14__3_), 
	.D(n294), 
	.CK(CLK_A__L7_N6));
   SDFFRQX2M regArr_reg_14__2_ (.SI(regArr_14__1_), 
	.SE(n534), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(regArr_14__2_), 
	.D(n293), 
	.CK(CLK_A__L7_N6));
   SDFFRQX2M regArr_reg_14__1_ (.SI(regArr_14__0_), 
	.SE(n568), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(regArr_14__1_), 
	.D(n292), 
	.CK(CLK_A__L7_N7));
   SDFFRQX2M regArr_reg_14__0_ (.SI(regArr_13__7_), 
	.SE(n568), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(regArr_14__0_), 
	.D(n291), 
	.CK(CLK_A__L7_N4));
   SDFFRQX2M regArr_reg_12__7_ (.SI(regArr_12__6_), 
	.SE(n597), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(regArr_12__7_), 
	.D(n282), 
	.CK(CLK_A__L7_N7));
   SDFFRQX2M regArr_reg_12__6_ (.SI(regArr_12__5_), 
	.SE(n537), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(regArr_12__6_), 
	.D(n281), 
	.CK(CLK_A__L7_N7));
   SDFFRQX2M regArr_reg_12__5_ (.SI(regArr_12__4_), 
	.SE(n537), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(regArr_12__5_), 
	.D(n280), 
	.CK(CLK_A__L7_N7));
   SDFFRQX2M regArr_reg_12__4_ (.SI(regArr_12__3_), 
	.SE(n533), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(regArr_12__4_), 
	.D(n279), 
	.CK(CLK_A__L7_N7));
   SDFFRQX2M regArr_reg_12__3_ (.SI(regArr_12__2_), 
	.SE(n533), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(regArr_12__3_), 
	.D(n278), 
	.CK(CLK_A__L7_N7));
   SDFFRQX2M regArr_reg_12__2_ (.SI(regArr_12__1_), 
	.SE(n567), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(regArr_12__2_), 
	.D(n277), 
	.CK(CLK_A__L7_N7));
   SDFFRQX2M regArr_reg_12__1_ (.SI(regArr_12__0_), 
	.SE(n567), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(regArr_12__1_), 
	.D(n276), 
	.CK(CLK_A__L7_N7));
   SDFFRQX2M regArr_reg_12__0_ (.SI(regArr_11__7_), 
	.SE(n594), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(regArr_12__0_), 
	.D(n275), 
	.CK(CLK_A__L7_N8));
   SDFFRQX2M regArr_reg_10__7_ (.SI(regArr_10__6_), 
	.SE(n535), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_10__7_), 
	.D(n266), 
	.CK(CLK_A__L7_N7));
   SDFFRQX2M regArr_reg_10__6_ (.SI(regArr_10__5_), 
	.SE(n535), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_10__6_), 
	.D(n265), 
	.CK(CLK_A__L7_N7));
   SDFFRQX2M regArr_reg_10__5_ (.SI(regArr_10__4_), 
	.SE(n520), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_10__5_), 
	.D(n264), 
	.CK(CLK_A__L7_N7));
   SDFFRQX2M regArr_reg_10__4_ (.SI(regArr_10__3_), 
	.SE(n538), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_10__4_), 
	.D(n263), 
	.CK(CLK_A__L7_N7));
   SDFFRQX2M regArr_reg_10__3_ (.SI(regArr_10__2_), 
	.SE(n566), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_10__3_), 
	.D(n262), 
	.CK(CLK_A__L7_N7));
   SDFFRQX2M regArr_reg_10__2_ (.SI(regArr_10__1_), 
	.SE(n566), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_10__2_), 
	.D(n261), 
	.CK(CLK_A__L7_N7));
   SDFFRQX2M regArr_reg_10__1_ (.SI(regArr_10__0_), 
	.SE(n592), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_10__1_), 
	.D(n260), 
	.CK(CLK_A__L7_N7));
   SDFFRQX2M regArr_reg_10__0_ (.SI(regArr_9__7_), 
	.SE(n532), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_10__0_), 
	.D(n259), 
	.CK(CLK_A__L7_N8));
   SDFFRQX2M regArr_reg_8__7_ (.SI(regArr_8__6_), 
	.SE(n532), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_8__7_), 
	.D(n250), 
	.CK(CLK_A__L7_N8));
   SDFFRQX2M regArr_reg_8__6_ (.SI(regArr_8__5_), 
	.SE(n522), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_8__6_), 
	.D(n249), 
	.CK(CLK_A__L7_N8));
   SDFFRQX2M regArr_reg_8__5_ (.SI(regArr_8__4_), 
	.SE(n520), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(regArr_8__5_), 
	.D(n248), 
	.CK(CLK_A__L7_N8));
   SDFFRQX2M regArr_reg_8__4_ (.SI(regArr_8__3_), 
	.SE(n565), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_8__4_), 
	.D(n247), 
	.CK(CLK_A__L7_N8));
   SDFFRQX2M regArr_reg_8__3_ (.SI(regArr_8__2_), 
	.SE(n565), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_8__3_), 
	.D(n246), 
	.CK(CLK_A__L7_N8));
   SDFFRQX2M regArr_reg_8__2_ (.SI(regArr_8__1_), 
	.SE(n590), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_8__2_), 
	.D(n245), 
	.CK(CLK_A__L7_N5));
   SDFFRQX2M regArr_reg_8__1_ (.SI(regArr_8__0_), 
	.SE(n518), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_8__1_), 
	.D(n244), 
	.CK(CLK_A__L7_N5));
   SDFFRQX2M regArr_reg_8__0_ (.SI(regArr_7__7_), 
	.SE(n518), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_8__0_), 
	.D(n243), 
	.CK(CLK_A__L7_N5));
   SDFFRQX2M regArr_reg_6__7_ (.SI(regArr_6__6_), 
	.SE(n528), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_6__7_), 
	.D(n234), 
	.CK(CLK_A__L7_N2));
   SDFFRQX2M regArr_reg_6__6_ (.SI(regArr_6__5_), 
	.SE(n528), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_6__6_), 
	.D(n233), 
	.CK(CLK_A__L7_N2));
   SDFFRQX2M regArr_reg_6__5_ (.SI(regArr_6__4_), 
	.SE(n564), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_6__5_), 
	.D(n232), 
	.CK(CLK_A__L7_N2));
   SDFFRQX2M regArr_reg_6__4_ (.SI(regArr_6__3_), 
	.SE(n564), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_6__4_), 
	.D(n231), 
	.CK(CLK_A__L7_N2));
   SDFFRQX2M regArr_reg_6__3_ (.SI(regArr_6__2_), 
	.SE(n587), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_6__3_), 
	.D(n230), 
	.CK(CLK_A__L7_N2));
   SDFFRQX2M regArr_reg_6__2_ (.SI(regArr_6__1_), 
	.SE(n527), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(regArr_6__2_), 
	.D(n229), 
	.CK(CLK_A__L7_N2));
   SDFFRQX2M regArr_reg_6__1_ (.SI(regArr_6__0_), 
	.SE(n527), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_6__1_), 
	.D(n228), 
	.CK(CLK_A__L7_N2));
   SDFFRQX2M regArr_reg_6__0_ (.SI(regArr_5__7_), 
	.SE(n563), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_6__0_), 
	.D(n227), 
	.CK(CLK_A__L7_N5));
   SDFFRQX2M regArr_reg_4__7_ (.SI(regArr_4__6_), 
	.SE(n563), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_4__7_), 
	.D(n218), 
	.CK(CLK_A__L7_N5));
   SDFFRQX2M regArr_reg_4__6_ (.SI(regArr_4__5_), 
	.SE(n586), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(regArr_4__6_), 
	.D(n217), 
	.CK(CLK_A__L7_N5));
   SDFFRQX2M regArr_reg_4__5_ (.SI(regArr_4__4_), 
	.SE(n529), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(regArr_4__5_), 
	.D(n216), 
	.CK(CLK_A__L7_N2));
   SDFFRQX2M regArr_reg_4__4_ (.SI(regArr_4__3_), 
	.SE(n517), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(regArr_4__4_), 
	.D(n215), 
	.CK(CLK_A__L7_N2));
   SDFFRQX2M regArr_reg_4__3_ (.SI(regArr_4__2_), 
	.SE(n562), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(regArr_4__3_), 
	.D(n214), 
	.CK(CLK_A__L7_N2));
   SDFFRQX2M regArr_reg_4__2_ (.SI(regArr_4__1_), 
	.SE(n562), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(regArr_4__2_), 
	.D(n213), 
	.CK(clk));
   SDFFRQX2M regArr_reg_4__1_ (.SI(regArr_4__0_), 
	.SE(n585), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(regArr_4__1_), 
	.D(n212), 
	.CK(clk));
   SDFFRQX2M regArr_reg_4__0_ (.SI(REG3[7]), 
	.SE(n524), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(regArr_4__0_), 
	.D(n211), 
	.CK(clk));
   SDFFRHQX2M regArr_reg_1__7_ (.SI(REG1[6]), 
	.SE(n524), 
	.RN(rst), 
	.Q(FE_OFN18_Operand_B_7_), 
	.D(n194), 
	.CK(CLK_A__L7_N3));
   SDFFRHQX4M regArr_reg_1__1_ (.SI(REG1[0]), 
	.SE(n561), 
	.RN(rst), 
	.Q(FE_OFN17_Operand_B_1_), 
	.D(n188), 
	.CK(CLK_A__L7_N3));
   SDFFRQX2M regArr_reg_0__0_ (.SI(RdData[7]), 
	.SE(n584), 
	.RN(rst), 
	.Q(REG0[0]), 
	.D(n179), 
	.CK(CLK_A__L7_N3));
   SDFFRQX2M RdData_VLD_reg (.SI(test_si1), 
	.SE(n523), 
	.RN(rst), 
	.Q(RdData_VLD), 
	.D(n178), 
	.CK(CLK_A__L7_N16));
   SDFFRHQX4M regArr_reg_0__7_ (.SI(REG0[6]), 
	.SE(n523), 
	.RN(rst), 
	.Q(REG0[7]), 
	.D(n186), 
	.CK(CLK_A__L7_N3));
   SDFFRHQX4M regArr_reg_0__6_ (.SI(REG0[5]), 
	.SE(n560), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(REG0[6]), 
	.D(n185), 
	.CK(CLK_A__L7_N6));
   SDFFRHQX2M regArr_reg_0__5_ (.SI(REG0[4]), 
	.SE(n560), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(FE_OFN16_Operand_A_5_), 
	.D(n184), 
	.CK(CLK_A__L7_N6));
   SDFFRHQX2M regArr_reg_0__4_ (.SI(REG0[3]), 
	.SE(n582), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(FE_OFN15_Operand_A_4_), 
	.D(n183), 
	.CK(CLK_A__L7_N6));
   SDFFRHQX2M regArr_reg_0__3_ (.SI(REG0[2]), 
	.SE(n526), 
	.RN(rst), 
	.Q(FE_OFN14_Operand_A_3_), 
	.D(n182), 
	.CK(CLK_A__L7_N3));
   SDFFRQX2M regArr_reg_0__2_ (.SI(REG0[1]), 
	.SE(n525), 
	.RN(rst), 
	.Q(REG0[2]), 
	.D(n181), 
	.CK(CLK_A__L7_N3));
   SDFFRQX2M regArr_reg_0__1_ (.SI(REG0[0]), 
	.SE(n497), 
	.RN(rst), 
	.Q(REG0[1]), 
	.D(n180), 
	.CK(CLK_A__L7_N3));
   SDFFRQX2M regArr_reg_2__1_ (.SI(REG2[0]), 
	.SE(n498), 
	.RN(rst), 
	.Q(REG2[1]), 
	.D(n196), 
	.CK(clk));
   SDFFSQX4M regArr_reg_2__0_ (.SN(rst), 
	.SI(REG1[7]), 
	.SE(n577), 
	.Q(REG2[0]), 
	.D(n195), 
	.CK(CLK_A__L7_N3));
   SDFFRQX2M regArr_reg_3__0_ (.SI(n487), 
	.SE(n496), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(REG3[0]), 
	.D(n203), 
	.CK(clk));
   SDFFSQX4M regArr_reg_3__5_ (.SN(FE_OFN3_SYNC_REF_RST), 
	.SI(REG3[4]), 
	.SE(n577), 
	.Q(REG3[5]), 
	.D(n208), 
	.CK(clk));
   SDFFSQX2M regArr_reg_2__7_ (.SN(FE_OFN3_SYNC_REF_RST), 
	.SI(REG2[6]), 
	.SE(n627), 
	.Q(n487), 
	.D(n202), 
	.CK(clk));
   NOR2X2M U141 (.Y(n399), 
	.B(n410), 
	.A(n411));
   NOR2X4M U143 (.Y(n401), 
	.B(Address[1]), 
	.A(n410));
   CLKNAND2X2M U144 (.Y(n393), 
	.B(Address[2]), 
	.A(Address[3]));
   CLKNAND2X2M U145 (.Y(n390), 
	.B(n412), 
	.A(Address[3]));
   CLKINVX1M U146 (.Y(n412), 
	.A(Address[2]));
   CLKNAND2X2M U147 (.Y(n403), 
	.B(n413), 
	.A(Address[2]));
   INVXLM U148 (.Y(n138), 
	.A(n487));
   CLKINVX2M U149 (.Y(REG2[7]), 
	.A(n138));
   CLKNAND2X2M U151 (.Y(n396), 
	.B(n413), 
	.A(n412));
   CLKINVX1M U152 (.Y(n413), 
	.A(Address[3]));
   NOR2X2M U155 (.Y(n157), 
	.B(Address[2]), 
	.A(n411));
   AND2X2M U158 (.Y(n160), 
	.B(n411), 
	.A(Address[2]));
   CLKINVX2M U159 (.Y(n486), 
	.A(WrData[0]));
   CLKINVX2M U160 (.Y(n485), 
	.A(WrData[1]));
   CLKINVX2M U161 (.Y(n484), 
	.A(WrData[2]));
   CLKINVX2M U162 (.Y(n483), 
	.A(WrData[3]));
   CLKINVX2M U163 (.Y(n482), 
	.A(WrData[4]));
   CLKINVX2M U164 (.Y(n481), 
	.A(WrData[5]));
   CLKINVX2M U165 (.Y(n480), 
	.A(WrData[6]));
   CLKINVX2M U166 (.Y(n479), 
	.A(WrData[7]));
   CLKINVX2M U208 (.Y(n453), 
	.A(n143));
   CLKINVX2M U210 (.Y(n451), 
	.A(n144));
   CLKINVX2M U212 (.Y(n449), 
	.A(n145));
   CLKINVX2M U214 (.Y(n447), 
	.A(n146));
   CLKINVX2M U216 (.Y(n437), 
	.A(n141));
   CLKINVX2M U218 (.Y(n435), 
	.A(n147));
   CLKINVX2M U220 (.Y(n433), 
	.A(n142));
   CLKINVX2M U222 (.Y(n431), 
	.A(n148));
   AND2X2M U230 (.Y(n153), 
	.B(n410), 
	.A(n164));
   AND2X2M U231 (.Y(n167), 
	.B(n410), 
	.A(n175));
   NAND2X2M U232 (.Y(n151), 
	.B(n153), 
	.A(n152));
   NAND2X2M U233 (.Y(n156), 
	.B(n153), 
	.A(n157));
   NAND2X2M U234 (.Y(n158), 
	.B(n155), 
	.A(n157));
   NAND2X2M U235 (.Y(n154), 
	.B(n152), 
	.A(n155));
   NAND2X2M U236 (.Y(n166), 
	.B(n152), 
	.A(n167));
   NAND2X2M U237 (.Y(n168), 
	.B(n152), 
	.A(n169));
   NAND2X2M U238 (.Y(n170), 
	.B(n157), 
	.A(n167));
   NAND2X2M U239 (.Y(n171), 
	.B(n157), 
	.A(n169));
   AND2X2M U240 (.Y(n141), 
	.B(n160), 
	.A(n167));
   AND2X2M U241 (.Y(n142), 
	.B(n163), 
	.A(n167));
   AND2X2M U242 (.Y(n143), 
	.B(n153), 
	.A(n160));
   AND2X2M U243 (.Y(n144), 
	.B(n155), 
	.A(n160));
   AND2X2M U244 (.Y(n145), 
	.B(n153), 
	.A(n163));
   AND2X2M U245 (.Y(n146), 
	.B(n155), 
	.A(n163));
   AND2X2M U246 (.Y(n147), 
	.B(n160), 
	.A(n169));
   AND2X2M U247 (.Y(n148), 
	.B(n163), 
	.A(n169));
   CLKINVX2M U248 (.Y(n477), 
	.A(n177));
   AO22X1M U249 (.Y(n307), 
	.B1(n177), 
	.B0(RdData[0]), 
	.A1(n477), 
	.A0(N43));
   AO22X1M U250 (.Y(n308), 
	.B1(n177), 
	.B0(RdData[1]), 
	.A1(n477), 
	.A0(N42));
   AO22X1M U251 (.Y(n309), 
	.B1(n177), 
	.B0(RdData[2]), 
	.A1(n477), 
	.A0(N41));
   AO22X1M U252 (.Y(n310), 
	.B1(n177), 
	.B0(RdData[3]), 
	.A1(n477), 
	.A0(N40));
   AO22X1M U253 (.Y(n311), 
	.B1(n177), 
	.B0(RdData[4]), 
	.A1(n477), 
	.A0(N39));
   AO22X1M U254 (.Y(n312), 
	.B1(n177), 
	.B0(RdData[5]), 
	.A1(n477), 
	.A0(N38));
   AO22X1M U255 (.Y(n313), 
	.B1(n177), 
	.B0(RdData[6]), 
	.A1(n477), 
	.A0(N37));
   AO22X1M U256 (.Y(n314), 
	.B1(n177), 
	.B0(RdData[7]), 
	.A1(n477), 
	.A0(N36));
   INVX2M U257 (.Y(n411), 
	.A(Address[1]));
   NOR2X2M U259 (.Y(n150), 
	.B(RdEn), 
	.A(n478));
   NOR2BX2M U260 (.Y(n164), 
	.B(Address[3]), 
	.AN(n150));
   OAI2BB2X1M U261 (.Y(n179), 
	.B1(n486), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[0]));
   OAI2BB2X1M U262 (.Y(n180), 
	.B1(n485), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[1]));
   OAI2BB2X1M U263 (.Y(n181), 
	.B1(n484), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[2]));
   OAI2BB2X1M U264 (.Y(n182), 
	.B1(n483), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[3]));
   OAI2BB2X1M U265 (.Y(n183), 
	.B1(n482), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[4]));
   OAI2BB2X1M U266 (.Y(n184), 
	.B1(n481), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[5]));
   OAI2BB2X1M U267 (.Y(n185), 
	.B1(n480), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[6]));
   OAI2BB2X1M U268 (.Y(n186), 
	.B1(n479), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[7]));
   OAI2BB2X1M U269 (.Y(n187), 
	.B1(n154), 
	.B0(n486), 
	.A1N(n154), 
	.A0N(REG1[0]));
   OAI2BB2X1M U270 (.Y(n188), 
	.B1(n154), 
	.B0(n485), 
	.A1N(n154), 
	.A0N(REG1[1]));
   OAI2BB2X1M U271 (.Y(n189), 
	.B1(n154), 
	.B0(n484), 
	.A1N(n154), 
	.A0N(REG1[2]));
   OAI2BB2X1M U272 (.Y(n190), 
	.B1(n154), 
	.B0(n483), 
	.A1N(n154), 
	.A0N(REG1[3]));
   OAI2BB2X1M U273 (.Y(n191), 
	.B1(n154), 
	.B0(n482), 
	.A1N(n154), 
	.A0N(REG1[4]));
   OAI2BB2X1M U274 (.Y(n192), 
	.B1(n154), 
	.B0(n481), 
	.A1N(n154), 
	.A0N(REG1[5]));
   OAI2BB2X1M U275 (.Y(n193), 
	.B1(n154), 
	.B0(n480), 
	.A1N(n154), 
	.A0N(REG1[6]));
   OAI2BB2X1M U276 (.Y(n194), 
	.B1(n154), 
	.B0(n479), 
	.A1N(n154), 
	.A0N(REG1[7]));
   OAI2BB2X1M U277 (.Y(n196), 
	.B1(n156), 
	.B0(n485), 
	.A1N(n156), 
	.A0N(REG2[1]));
   OAI2BB2X1M U278 (.Y(n197), 
	.B1(n156), 
	.B0(n484), 
	.A1N(n156), 
	.A0N(REG2[2]));
   OAI2BB2X1M U279 (.Y(n198), 
	.B1(n156), 
	.B0(n483), 
	.A1N(n156), 
	.A0N(REG2[3]));
   OAI2BB2X1M U280 (.Y(n199), 
	.B1(n156), 
	.B0(n482), 
	.A1N(n156), 
	.A0N(REG2[4]));
   OAI2BB2X1M U281 (.Y(n200), 
	.B1(n156), 
	.B0(n481), 
	.A1N(n156), 
	.A0N(REG2[5]));
   OAI2BB2X1M U282 (.Y(n201), 
	.B1(n156), 
	.B0(n480), 
	.A1N(n156), 
	.A0N(REG2[6]));
   OAI2BB2X1M U283 (.Y(n203), 
	.B1(n158), 
	.B0(n486), 
	.A1N(n158), 
	.A0N(REG3[0]));
   OAI2BB2X1M U284 (.Y(n204), 
	.B1(n158), 
	.B0(n485), 
	.A1N(n158), 
	.A0N(REG3[1]));
   OAI2BB2X1M U285 (.Y(n205), 
	.B1(n158), 
	.B0(n484), 
	.A1N(n158), 
	.A0N(REG3[2]));
   OAI2BB2X1M U286 (.Y(n206), 
	.B1(n158), 
	.B0(n483), 
	.A1N(n158), 
	.A0N(REG3[3]));
   OAI2BB2X1M U287 (.Y(n207), 
	.B1(n158), 
	.B0(n482), 
	.A1N(n158), 
	.A0N(REG3[4]));
   OAI2BB2X1M U288 (.Y(n209), 
	.B1(n158), 
	.B0(n480), 
	.A1N(n158), 
	.A0N(REG3[6]));
   OAI2BB2X1M U289 (.Y(n210), 
	.B1(n158), 
	.B0(n479), 
	.A1N(n158), 
	.A0N(REG3[7]));
   OAI2BB2X1M U290 (.Y(n211), 
	.B1(n453), 
	.B0(n486), 
	.A1N(n453), 
	.A0N(regArr_4__0_));
   OAI2BB2X1M U291 (.Y(n212), 
	.B1(n453), 
	.B0(n485), 
	.A1N(n453), 
	.A0N(regArr_4__1_));
   OAI2BB2X1M U292 (.Y(n213), 
	.B1(n453), 
	.B0(n484), 
	.A1N(n453), 
	.A0N(regArr_4__2_));
   OAI2BB2X1M U293 (.Y(n214), 
	.B1(n453), 
	.B0(n483), 
	.A1N(n453), 
	.A0N(regArr_4__3_));
   OAI2BB2X1M U294 (.Y(n215), 
	.B1(n453), 
	.B0(n482), 
	.A1N(n453), 
	.A0N(regArr_4__4_));
   OAI2BB2X1M U295 (.Y(n216), 
	.B1(n453), 
	.B0(n481), 
	.A1N(n453), 
	.A0N(regArr_4__5_));
   OAI2BB2X1M U296 (.Y(n217), 
	.B1(n453), 
	.B0(n480), 
	.A1N(n453), 
	.A0N(regArr_4__6_));
   OAI2BB2X1M U297 (.Y(n218), 
	.B1(n453), 
	.B0(n479), 
	.A1N(n453), 
	.A0N(regArr_4__7_));
   OAI2BB2X1M U298 (.Y(n219), 
	.B1(n451), 
	.B0(n486), 
	.A1N(n451), 
	.A0N(regArr_5__0_));
   OAI2BB2X1M U299 (.Y(n220), 
	.B1(n451), 
	.B0(n485), 
	.A1N(n451), 
	.A0N(regArr_5__1_));
   OAI2BB2X1M U300 (.Y(n221), 
	.B1(n451), 
	.B0(n484), 
	.A1N(n451), 
	.A0N(regArr_5__2_));
   OAI2BB2X1M U301 (.Y(n222), 
	.B1(n451), 
	.B0(n483), 
	.A1N(n451), 
	.A0N(regArr_5__3_));
   OAI2BB2X1M U302 (.Y(n223), 
	.B1(n451), 
	.B0(n482), 
	.A1N(n451), 
	.A0N(regArr_5__4_));
   OAI2BB2X1M U303 (.Y(n224), 
	.B1(n451), 
	.B0(n481), 
	.A1N(n451), 
	.A0N(regArr_5__5_));
   OAI2BB2X1M U304 (.Y(n225), 
	.B1(n451), 
	.B0(n480), 
	.A1N(n451), 
	.A0N(regArr_5__6_));
   OAI2BB2X1M U305 (.Y(n226), 
	.B1(n451), 
	.B0(n479), 
	.A1N(n451), 
	.A0N(regArr_5__7_));
   OAI2BB2X1M U306 (.Y(n227), 
	.B1(n449), 
	.B0(n486), 
	.A1N(n449), 
	.A0N(regArr_6__0_));
   OAI2BB2X1M U307 (.Y(n228), 
	.B1(n449), 
	.B0(n485), 
	.A1N(n449), 
	.A0N(regArr_6__1_));
   OAI2BB2X1M U308 (.Y(n229), 
	.B1(n449), 
	.B0(n484), 
	.A1N(n449), 
	.A0N(regArr_6__2_));
   OAI2BB2X1M U309 (.Y(n230), 
	.B1(n449), 
	.B0(n483), 
	.A1N(n449), 
	.A0N(regArr_6__3_));
   OAI2BB2X1M U310 (.Y(n231), 
	.B1(n449), 
	.B0(n482), 
	.A1N(n449), 
	.A0N(regArr_6__4_));
   OAI2BB2X1M U311 (.Y(n232), 
	.B1(n449), 
	.B0(n481), 
	.A1N(n449), 
	.A0N(regArr_6__5_));
   OAI2BB2X1M U312 (.Y(n233), 
	.B1(n449), 
	.B0(n480), 
	.A1N(n449), 
	.A0N(regArr_6__6_));
   OAI2BB2X1M U313 (.Y(n234), 
	.B1(n449), 
	.B0(n479), 
	.A1N(n449), 
	.A0N(regArr_6__7_));
   OAI2BB2X1M U314 (.Y(n235), 
	.B1(n447), 
	.B0(n486), 
	.A1N(n447), 
	.A0N(regArr_7__0_));
   OAI2BB2X1M U315 (.Y(n236), 
	.B1(n447), 
	.B0(n485), 
	.A1N(n447), 
	.A0N(test_so1));
   OAI2BB2X1M U316 (.Y(n237), 
	.B1(n447), 
	.B0(n484), 
	.A1N(n447), 
	.A0N(regArr_7__2_));
   OAI2BB2X1M U317 (.Y(n238), 
	.B1(n447), 
	.B0(n483), 
	.A1N(n447), 
	.A0N(regArr_7__3_));
   OAI2BB2X1M U318 (.Y(n239), 
	.B1(n447), 
	.B0(n482), 
	.A1N(n447), 
	.A0N(regArr_7__4_));
   OAI2BB2X1M U319 (.Y(n240), 
	.B1(n447), 
	.B0(n481), 
	.A1N(n447), 
	.A0N(regArr_7__5_));
   OAI2BB2X1M U320 (.Y(n241), 
	.B1(n447), 
	.B0(n480), 
	.A1N(n447), 
	.A0N(regArr_7__6_));
   OAI2BB2X1M U321 (.Y(n242), 
	.B1(n447), 
	.B0(n479), 
	.A1N(n447), 
	.A0N(regArr_7__7_));
   OAI2BB2X1M U322 (.Y(n243), 
	.B1(n166), 
	.B0(n486), 
	.A1N(n166), 
	.A0N(regArr_8__0_));
   OAI2BB2X1M U323 (.Y(n244), 
	.B1(n166), 
	.B0(n485), 
	.A1N(n166), 
	.A0N(regArr_8__1_));
   OAI2BB2X1M U324 (.Y(n245), 
	.B1(n166), 
	.B0(n484), 
	.A1N(n166), 
	.A0N(regArr_8__2_));
   OAI2BB2X1M U325 (.Y(n246), 
	.B1(n166), 
	.B0(n483), 
	.A1N(n166), 
	.A0N(regArr_8__3_));
   OAI2BB2X1M U326 (.Y(n247), 
	.B1(n166), 
	.B0(n482), 
	.A1N(n166), 
	.A0N(regArr_8__4_));
   OAI2BB2X1M U327 (.Y(n248), 
	.B1(n166), 
	.B0(n481), 
	.A1N(n166), 
	.A0N(regArr_8__5_));
   OAI2BB2X1M U328 (.Y(n249), 
	.B1(n166), 
	.B0(n480), 
	.A1N(n166), 
	.A0N(regArr_8__6_));
   OAI2BB2X1M U329 (.Y(n250), 
	.B1(n166), 
	.B0(n479), 
	.A1N(n166), 
	.A0N(regArr_8__7_));
   OAI2BB2X1M U330 (.Y(n251), 
	.B1(n168), 
	.B0(n486), 
	.A1N(n168), 
	.A0N(regArr_9__0_));
   OAI2BB2X1M U331 (.Y(n252), 
	.B1(n168), 
	.B0(n485), 
	.A1N(n168), 
	.A0N(regArr_9__1_));
   OAI2BB2X1M U332 (.Y(n253), 
	.B1(n168), 
	.B0(n484), 
	.A1N(n168), 
	.A0N(regArr_9__2_));
   OAI2BB2X1M U333 (.Y(n254), 
	.B1(n168), 
	.B0(n483), 
	.A1N(n168), 
	.A0N(regArr_9__3_));
   OAI2BB2X1M U334 (.Y(n255), 
	.B1(n168), 
	.B0(n482), 
	.A1N(n168), 
	.A0N(regArr_9__4_));
   OAI2BB2X1M U335 (.Y(n256), 
	.B1(n168), 
	.B0(n481), 
	.A1N(n168), 
	.A0N(regArr_9__5_));
   OAI2BB2X1M U336 (.Y(n257), 
	.B1(n168), 
	.B0(n480), 
	.A1N(n168), 
	.A0N(regArr_9__6_));
   OAI2BB2X1M U337 (.Y(n258), 
	.B1(n168), 
	.B0(n479), 
	.A1N(n168), 
	.A0N(regArr_9__7_));
   OAI2BB2X1M U338 (.Y(n259), 
	.B1(n170), 
	.B0(n486), 
	.A1N(n170), 
	.A0N(regArr_10__0_));
   OAI2BB2X1M U339 (.Y(n260), 
	.B1(n170), 
	.B0(n485), 
	.A1N(n170), 
	.A0N(regArr_10__1_));
   OAI2BB2X1M U340 (.Y(n261), 
	.B1(n170), 
	.B0(n484), 
	.A1N(n170), 
	.A0N(regArr_10__2_));
   OAI2BB2X1M U341 (.Y(n262), 
	.B1(n170), 
	.B0(n483), 
	.A1N(n170), 
	.A0N(regArr_10__3_));
   OAI2BB2X1M U342 (.Y(n263), 
	.B1(n170), 
	.B0(n482), 
	.A1N(n170), 
	.A0N(regArr_10__4_));
   OAI2BB2X1M U343 (.Y(n264), 
	.B1(n170), 
	.B0(n481), 
	.A1N(n170), 
	.A0N(regArr_10__5_));
   OAI2BB2X1M U344 (.Y(n265), 
	.B1(n170), 
	.B0(n480), 
	.A1N(n170), 
	.A0N(regArr_10__6_));
   OAI2BB2X1M U345 (.Y(n266), 
	.B1(n170), 
	.B0(n479), 
	.A1N(n170), 
	.A0N(regArr_10__7_));
   OAI2BB2X1M U346 (.Y(n267), 
	.B1(n171), 
	.B0(n486), 
	.A1N(n171), 
	.A0N(regArr_11__0_));
   OAI2BB2X1M U347 (.Y(n268), 
	.B1(n171), 
	.B0(n485), 
	.A1N(n171), 
	.A0N(regArr_11__1_));
   OAI2BB2X1M U348 (.Y(n269), 
	.B1(n171), 
	.B0(n484), 
	.A1N(n171), 
	.A0N(regArr_11__2_));
   OAI2BB2X1M U349 (.Y(n270), 
	.B1(n171), 
	.B0(n483), 
	.A1N(n171), 
	.A0N(regArr_11__3_));
   OAI2BB2X1M U350 (.Y(n271), 
	.B1(n171), 
	.B0(n482), 
	.A1N(n171), 
	.A0N(regArr_11__4_));
   OAI2BB2X1M U351 (.Y(n272), 
	.B1(n171), 
	.B0(n481), 
	.A1N(n171), 
	.A0N(regArr_11__5_));
   OAI2BB2X1M U352 (.Y(n273), 
	.B1(n171), 
	.B0(n480), 
	.A1N(n171), 
	.A0N(regArr_11__6_));
   OAI2BB2X1M U353 (.Y(n274), 
	.B1(n171), 
	.B0(n479), 
	.A1N(n171), 
	.A0N(regArr_11__7_));
   OAI2BB2X1M U354 (.Y(n275), 
	.B1(n437), 
	.B0(n486), 
	.A1N(n437), 
	.A0N(regArr_12__0_));
   OAI2BB2X1M U355 (.Y(n276), 
	.B1(n437), 
	.B0(n485), 
	.A1N(n437), 
	.A0N(regArr_12__1_));
   OAI2BB2X1M U356 (.Y(n277), 
	.B1(n437), 
	.B0(n484), 
	.A1N(n437), 
	.A0N(regArr_12__2_));
   OAI2BB2X1M U357 (.Y(n278), 
	.B1(n437), 
	.B0(n483), 
	.A1N(n437), 
	.A0N(regArr_12__3_));
   OAI2BB2X1M U358 (.Y(n279), 
	.B1(n437), 
	.B0(n482), 
	.A1N(n437), 
	.A0N(regArr_12__4_));
   OAI2BB2X1M U359 (.Y(n280), 
	.B1(n437), 
	.B0(n481), 
	.A1N(n437), 
	.A0N(regArr_12__5_));
   OAI2BB2X1M U360 (.Y(n281), 
	.B1(n437), 
	.B0(n480), 
	.A1N(n437), 
	.A0N(regArr_12__6_));
   OAI2BB2X1M U361 (.Y(n282), 
	.B1(n437), 
	.B0(n479), 
	.A1N(n437), 
	.A0N(regArr_12__7_));
   OAI2BB2X1M U362 (.Y(n283), 
	.B1(n435), 
	.B0(n486), 
	.A1N(n435), 
	.A0N(regArr_13__0_));
   OAI2BB2X1M U363 (.Y(n284), 
	.B1(n435), 
	.B0(n485), 
	.A1N(n435), 
	.A0N(regArr_13__1_));
   OAI2BB2X1M U364 (.Y(n285), 
	.B1(n435), 
	.B0(n484), 
	.A1N(n435), 
	.A0N(regArr_13__2_));
   OAI2BB2X1M U365 (.Y(n286), 
	.B1(n435), 
	.B0(n483), 
	.A1N(n435), 
	.A0N(regArr_13__3_));
   OAI2BB2X1M U366 (.Y(n287), 
	.B1(n435), 
	.B0(n482), 
	.A1N(n435), 
	.A0N(regArr_13__4_));
   OAI2BB2X1M U367 (.Y(n288), 
	.B1(n435), 
	.B0(n481), 
	.A1N(n435), 
	.A0N(regArr_13__5_));
   OAI2BB2X1M U368 (.Y(n289), 
	.B1(n435), 
	.B0(n480), 
	.A1N(n435), 
	.A0N(regArr_13__6_));
   OAI2BB2X1M U369 (.Y(n290), 
	.B1(n435), 
	.B0(n479), 
	.A1N(n435), 
	.A0N(regArr_13__7_));
   OAI2BB2X1M U370 (.Y(n291), 
	.B1(n433), 
	.B0(n486), 
	.A1N(n433), 
	.A0N(regArr_14__0_));
   OAI2BB2X1M U371 (.Y(n292), 
	.B1(n433), 
	.B0(n485), 
	.A1N(n433), 
	.A0N(regArr_14__1_));
   OAI2BB2X1M U372 (.Y(n293), 
	.B1(n433), 
	.B0(n484), 
	.A1N(n433), 
	.A0N(regArr_14__2_));
   OAI2BB2X1M U373 (.Y(n294), 
	.B1(n433), 
	.B0(n483), 
	.A1N(n433), 
	.A0N(regArr_14__3_));
   OAI2BB2X1M U374 (.Y(n295), 
	.B1(n433), 
	.B0(n482), 
	.A1N(n433), 
	.A0N(regArr_14__4_));
   OAI2BB2X1M U375 (.Y(n296), 
	.B1(n433), 
	.B0(n481), 
	.A1N(n433), 
	.A0N(regArr_14__5_));
   OAI2BB2X1M U376 (.Y(n297), 
	.B1(n433), 
	.B0(n480), 
	.A1N(n433), 
	.A0N(regArr_14__6_));
   OAI2BB2X1M U377 (.Y(n298), 
	.B1(n433), 
	.B0(n479), 
	.A1N(n433), 
	.A0N(regArr_14__7_));
   OAI2BB2X1M U378 (.Y(n299), 
	.B1(n431), 
	.B0(n486), 
	.A1N(n431), 
	.A0N(regArr_15__0_));
   OAI2BB2X1M U379 (.Y(n300), 
	.B1(n431), 
	.B0(n485), 
	.A1N(n431), 
	.A0N(regArr_15__1_));
   OAI2BB2X1M U380 (.Y(n301), 
	.B1(n431), 
	.B0(n484), 
	.A1N(n431), 
	.A0N(regArr_15__2_));
   OAI2BB2X1M U381 (.Y(n302), 
	.B1(n431), 
	.B0(n483), 
	.A1N(n431), 
	.A0N(regArr_15__3_));
   OAI2BB2X1M U382 (.Y(n303), 
	.B1(n431), 
	.B0(n482), 
	.A1N(n431), 
	.A0N(regArr_15__4_));
   OAI2BB2X1M U383 (.Y(n304), 
	.B1(n431), 
	.B0(n481), 
	.A1N(n431), 
	.A0N(regArr_15__5_));
   OAI2BB2X1M U384 (.Y(n305), 
	.B1(n431), 
	.B0(n480), 
	.A1N(n431), 
	.A0N(regArr_15__6_));
   OAI2BB2X1M U385 (.Y(n306), 
	.B1(n431), 
	.B0(n479), 
	.A1N(n431), 
	.A0N(test_so2));
   OAI2BB2X1M U386 (.Y(n195), 
	.B1(n156), 
	.B0(n486), 
	.A1N(n156), 
	.A0N(REG2[0]));
   OAI2BB2X1M U387 (.Y(n202), 
	.B1(n156), 
	.B0(n479), 
	.A1N(n156), 
	.A0N(REG2[7]));
   OAI2BB2X1M U388 (.Y(n208), 
	.B1(n158), 
	.B0(n481), 
	.A1N(n158), 
	.A0N(REG3[5]));
   INVX2M U389 (.Y(n478), 
	.A(WrEn));
   AND2X2M U390 (.Y(n175), 
	.B(n150), 
	.A(Address[3]));
   CLKNAND2X2M U391 (.Y(n177), 
	.B(n478), 
	.A(RdEn));
   AO21XLM U392 (.Y(n178), 
	.B0(n477), 
	.A1(n150), 
	.A0(RdData_VLD));
   AOI22X1M U393 (.Y(n159), 
	.B1(FE_OFN7_n399), 
	.B0(regArr_11__0_), 
	.A1(FE_OFN8_n400), 
	.A0(regArr_10__0_));
   AOI22X1M U394 (.Y(n149), 
	.B1(n401), 
	.B0(regArr_9__0_), 
	.A1(FE_OFN9_n402), 
	.A0(regArr_8__0_));
   AOI21X1M U395 (.Y(n317), 
	.B0(n390), 
	.A1(n149), 
	.A0(n159));
   AOI22X1M U396 (.Y(n162), 
	.B1(FE_OFN7_n399), 
	.B0(regArr_15__0_), 
	.A1(FE_OFN8_n400), 
	.A0(regArr_14__0_));
   AOI22X1M U397 (.Y(n161), 
	.B1(n401), 
	.B0(regArr_13__0_), 
	.A1(FE_OFN9_n402), 
	.A0(regArr_12__0_));
   AOI21X1M U398 (.Y(n316), 
	.B0(n393), 
	.A1(n161), 
	.A0(n162));
   AOI22X1M U399 (.Y(n172), 
	.B1(REG3[0]), 
	.B0(FE_OFN7_n399), 
	.A1(FE_OFN8_n400), 
	.A0(REG2[0]));
   AOI22X1M U400 (.Y(n165), 
	.B1(n401), 
	.B0(REG1[0]), 
	.A1(FE_OFN9_n402), 
	.A0(REG0[0]));
   AOI21X1M U401 (.Y(n315), 
	.B0(n396), 
	.A1(n165), 
	.A0(n172));
   AOI22X1M U402 (.Y(n174), 
	.B1(FE_OFN7_n399), 
	.B0(regArr_7__0_), 
	.A1(FE_OFN8_n400), 
	.A0(regArr_6__0_));
   AOI22X1M U403 (.Y(n173), 
	.B1(n401), 
	.B0(regArr_5__0_), 
	.A1(FE_OFN9_n402), 
	.A0(regArr_4__0_));
   AOI21X1M U404 (.Y(n176), 
	.B0(n403), 
	.A1(n173), 
	.A0(n174));
   OR4X1M U405 (.Y(N43), 
	.D(n176), 
	.C(n315), 
	.B(n316), 
	.A(n317));
   AOI22X1M U406 (.Y(n319), 
	.B1(FE_OFN7_n399), 
	.B0(regArr_11__1_), 
	.A1(FE_OFN8_n400), 
	.A0(regArr_10__1_));
   AOI22X1M U407 (.Y(n318), 
	.B1(n401), 
	.B0(regArr_9__1_), 
	.A1(FE_OFN9_n402), 
	.A0(regArr_8__1_));
   AOI21X1M U408 (.Y(n329), 
	.B0(n390), 
	.A1(n318), 
	.A0(n319));
   AOI22X1M U409 (.Y(n321), 
	.B1(FE_OFN7_n399), 
	.B0(regArr_15__1_), 
	.A1(FE_OFN8_n400), 
	.A0(regArr_14__1_));
   AOI22X1M U410 (.Y(n320), 
	.B1(n401), 
	.B0(regArr_13__1_), 
	.A1(FE_OFN9_n402), 
	.A0(regArr_12__1_));
   AOI21X1M U411 (.Y(n328), 
	.B0(n393), 
	.A1(n320), 
	.A0(n321));
   AOI22X1M U412 (.Y(n323), 
	.B1(FE_OFN7_n399), 
	.B0(REG3[1]), 
	.A1(FE_OFN8_n400), 
	.A0(REG2[1]));
   AOI22X1M U413 (.Y(n322), 
	.B1(n401), 
	.B0(REG1[1]), 
	.A1(FE_OFN9_n402), 
	.A0(REG0[1]));
   AOI21X1M U414 (.Y(n327), 
	.B0(n396), 
	.A1(n322), 
	.A0(n323));
   AOI22X1M U415 (.Y(n325), 
	.B1(FE_OFN7_n399), 
	.B0(test_so1), 
	.A1(FE_OFN8_n400), 
	.A0(regArr_6__1_));
   AOI22X1M U416 (.Y(n324), 
	.B1(n401), 
	.B0(regArr_5__1_), 
	.A1(FE_OFN9_n402), 
	.A0(regArr_4__1_));
   AOI21X1M U417 (.Y(n326), 
	.B0(n403), 
	.A1(n324), 
	.A0(n325));
   OR4X1M U418 (.Y(N42), 
	.D(n326), 
	.C(n327), 
	.B(n328), 
	.A(n329));
   AOI22X1M U419 (.Y(n331), 
	.B1(FE_OFN7_n399), 
	.B0(regArr_11__2_), 
	.A1(FE_OFN8_n400), 
	.A0(regArr_10__2_));
   AOI22X1M U420 (.Y(n330), 
	.B1(n401), 
	.B0(regArr_9__2_), 
	.A1(FE_OFN9_n402), 
	.A0(regArr_8__2_));
   AOI21X1M U421 (.Y(n341), 
	.B0(n390), 
	.A1(n330), 
	.A0(n331));
   AOI22X1M U422 (.Y(n333), 
	.B1(FE_OFN7_n399), 
	.B0(regArr_15__2_), 
	.A1(FE_OFN8_n400), 
	.A0(regArr_14__2_));
   AOI22X1M U423 (.Y(n332), 
	.B1(n401), 
	.B0(regArr_13__2_), 
	.A1(FE_OFN9_n402), 
	.A0(regArr_12__2_));
   AOI21X1M U424 (.Y(n340), 
	.B0(n393), 
	.A1(n332), 
	.A0(n333));
   AOI22X1M U426 (.Y(n334), 
	.B1(n401), 
	.B0(REG1[2]), 
	.A1(FE_OFN9_n402), 
	.A0(REG0[2]));
   AOI21X1M U427 (.Y(n339), 
	.B0(n396), 
	.A1(n334), 
	.A0(n335));
   AOI22X1M U428 (.Y(n337), 
	.B1(FE_OFN7_n399), 
	.B0(regArr_7__2_), 
	.A1(FE_OFN8_n400), 
	.A0(regArr_6__2_));
   AOI22X1M U429 (.Y(n336), 
	.B1(n401), 
	.B0(regArr_5__2_), 
	.A1(FE_OFN9_n402), 
	.A0(regArr_4__2_));
   AOI21X1M U430 (.Y(n338), 
	.B0(n403), 
	.A1(n336), 
	.A0(n337));
   OR4X1M U431 (.Y(N41), 
	.D(n338), 
	.C(n339), 
	.B(n340), 
	.A(n341));
   AOI22X1M U432 (.Y(n343), 
	.B1(FE_OFN7_n399), 
	.B0(regArr_11__3_), 
	.A1(FE_OFN8_n400), 
	.A0(regArr_10__3_));
   AOI22X1M U433 (.Y(n342), 
	.B1(n401), 
	.B0(regArr_9__3_), 
	.A1(FE_OFN9_n402), 
	.A0(regArr_8__3_));
   AOI21X1M U434 (.Y(n353), 
	.B0(n390), 
	.A1(n342), 
	.A0(n343));
   AOI22X1M U435 (.Y(n345), 
	.B1(FE_OFN7_n399), 
	.B0(regArr_15__3_), 
	.A1(FE_OFN8_n400), 
	.A0(regArr_14__3_));
   AOI22X1M U436 (.Y(n344), 
	.B1(n401), 
	.B0(regArr_13__3_), 
	.A1(FE_OFN9_n402), 
	.A0(regArr_12__3_));
   AOI21X1M U437 (.Y(n352), 
	.B0(n393), 
	.A1(n344), 
	.A0(n345));
   AOI22X1M U438 (.Y(n347), 
	.B1(FE_OFN7_n399), 
	.B0(REG3[3]), 
	.A1(FE_OFN8_n400), 
	.A0(REG2[3]));
   AOI22X1M U439 (.Y(n346), 
	.B1(n401), 
	.B0(REG1[3]), 
	.A1(FE_OFN9_n402), 
	.A0(REG0[3]));
   AOI21X1M U440 (.Y(n351), 
	.B0(n396), 
	.A1(n346), 
	.A0(n347));
   AOI22X1M U441 (.Y(n349), 
	.B1(FE_OFN7_n399), 
	.B0(regArr_7__3_), 
	.A1(FE_OFN8_n400), 
	.A0(regArr_6__3_));
   AOI22X1M U442 (.Y(n348), 
	.B1(n401), 
	.B0(regArr_5__3_), 
	.A1(FE_OFN9_n402), 
	.A0(regArr_4__3_));
   AOI21X1M U443 (.Y(n350), 
	.B0(n403), 
	.A1(n348), 
	.A0(n349));
   OR4X1M U444 (.Y(N40), 
	.D(n350), 
	.C(n351), 
	.B(n352), 
	.A(n353));
   AOI22X1M U445 (.Y(n355), 
	.B1(FE_OFN7_n399), 
	.B0(regArr_11__4_), 
	.A1(FE_OFN8_n400), 
	.A0(regArr_10__4_));
   AOI22X1M U446 (.Y(n354), 
	.B1(n401), 
	.B0(regArr_9__4_), 
	.A1(FE_OFN9_n402), 
	.A0(regArr_8__4_));
   AOI21X1M U447 (.Y(n365), 
	.B0(n390), 
	.A1(n354), 
	.A0(n355));
   AOI22X1M U448 (.Y(n357), 
	.B1(FE_OFN7_n399), 
	.B0(regArr_15__4_), 
	.A1(FE_OFN8_n400), 
	.A0(regArr_14__4_));
   AOI22X1M U449 (.Y(n356), 
	.B1(n401), 
	.B0(regArr_13__4_), 
	.A1(FE_OFN9_n402), 
	.A0(regArr_12__4_));
   AOI21X1M U450 (.Y(n364), 
	.B0(n393), 
	.A1(n356), 
	.A0(n357));
   AOI22X1M U451 (.Y(n359), 
	.B1(FE_OFN7_n399), 
	.B0(REG3[4]), 
	.A1(FE_OFN8_n400), 
	.A0(REG2[4]));
   AOI22X1M U452 (.Y(n358), 
	.B1(n401), 
	.B0(REG1[4]), 
	.A1(FE_OFN9_n402), 
	.A0(REG0[4]));
   AOI21X1M U453 (.Y(n363), 
	.B0(n396), 
	.A1(n358), 
	.A0(n359));
   AOI22X1M U454 (.Y(n361), 
	.B1(FE_OFN7_n399), 
	.B0(regArr_7__4_), 
	.A1(FE_OFN8_n400), 
	.A0(regArr_6__4_));
   AOI22X1M U455 (.Y(n360), 
	.B1(n401), 
	.B0(regArr_5__4_), 
	.A1(FE_OFN9_n402), 
	.A0(regArr_4__4_));
   AOI21X1M U456 (.Y(n362), 
	.B0(n403), 
	.A1(n360), 
	.A0(n361));
   OR4X1M U457 (.Y(N39), 
	.D(n362), 
	.C(n363), 
	.B(n364), 
	.A(n365));
   AOI22X1M U458 (.Y(n367), 
	.B1(FE_OFN7_n399), 
	.B0(regArr_11__5_), 
	.A1(FE_OFN8_n400), 
	.A0(regArr_10__5_));
   AOI22X1M U459 (.Y(n366), 
	.B1(n401), 
	.B0(regArr_9__5_), 
	.A1(FE_OFN9_n402), 
	.A0(regArr_8__5_));
   AOI21X1M U460 (.Y(n377), 
	.B0(n390), 
	.A1(n366), 
	.A0(n367));
   AOI22X1M U461 (.Y(n369), 
	.B1(FE_OFN7_n399), 
	.B0(regArr_15__5_), 
	.A1(FE_OFN8_n400), 
	.A0(regArr_14__5_));
   AOI22X1M U462 (.Y(n368), 
	.B1(n401), 
	.B0(regArr_13__5_), 
	.A1(FE_OFN9_n402), 
	.A0(regArr_12__5_));
   AOI21X1M U463 (.Y(n376), 
	.B0(n393), 
	.A1(n368), 
	.A0(n369));
   AOI22X1M U464 (.Y(n371), 
	.B1(FE_OFN7_n399), 
	.B0(REG3[5]), 
	.A1(FE_OFN8_n400), 
	.A0(REG2[5]));
   AOI22X1M U465 (.Y(n370), 
	.B1(n401), 
	.B0(REG1[5]), 
	.A1(FE_OFN9_n402), 
	.A0(REG0[5]));
   AOI21X1M U466 (.Y(n375), 
	.B0(n396), 
	.A1(n370), 
	.A0(n371));
   AOI22X1M U467 (.Y(n373), 
	.B1(FE_OFN7_n399), 
	.B0(regArr_7__5_), 
	.A1(FE_OFN8_n400), 
	.A0(regArr_6__5_));
   AOI22X1M U468 (.Y(n372), 
	.B1(n401), 
	.B0(regArr_5__5_), 
	.A1(FE_OFN9_n402), 
	.A0(regArr_4__5_));
   AOI21X1M U469 (.Y(n374), 
	.B0(n403), 
	.A1(n372), 
	.A0(n373));
   OR4X1M U470 (.Y(N38), 
	.D(n374), 
	.C(n375), 
	.B(n376), 
	.A(n377));
   AOI22X1M U471 (.Y(n379), 
	.B1(FE_OFN7_n399), 
	.B0(regArr_11__6_), 
	.A1(FE_OFN8_n400), 
	.A0(regArr_10__6_));
   AOI22X1M U472 (.Y(n378), 
	.B1(n401), 
	.B0(regArr_9__6_), 
	.A1(FE_OFN9_n402), 
	.A0(regArr_8__6_));
   AOI21X1M U473 (.Y(n389), 
	.B0(n390), 
	.A1(n378), 
	.A0(n379));
   AOI22X1M U474 (.Y(n381), 
	.B1(FE_OFN7_n399), 
	.B0(regArr_15__6_), 
	.A1(FE_OFN8_n400), 
	.A0(regArr_14__6_));
   AOI22X1M U475 (.Y(n380), 
	.B1(n401), 
	.B0(regArr_13__6_), 
	.A1(FE_OFN9_n402), 
	.A0(regArr_12__6_));
   AOI21X1M U476 (.Y(n388), 
	.B0(n393), 
	.A1(n380), 
	.A0(n381));
   AOI22X1M U477 (.Y(n383), 
	.B1(FE_OFN7_n399), 
	.B0(REG3[6]), 
	.A1(FE_OFN8_n400), 
	.A0(REG2[6]));
   AOI22X1M U478 (.Y(n382), 
	.B1(n401), 
	.B0(REG1[6]), 
	.A1(FE_OFN9_n402), 
	.A0(REG0[6]));
   AOI21X1M U479 (.Y(n387), 
	.B0(n396), 
	.A1(n382), 
	.A0(n383));
   AOI22X1M U480 (.Y(n385), 
	.B1(FE_OFN7_n399), 
	.B0(regArr_7__6_), 
	.A1(FE_OFN8_n400), 
	.A0(regArr_6__6_));
   AOI22X1M U481 (.Y(n384), 
	.B1(n401), 
	.B0(regArr_5__6_), 
	.A1(FE_OFN9_n402), 
	.A0(regArr_4__6_));
   AOI21X1M U482 (.Y(n386), 
	.B0(n403), 
	.A1(n384), 
	.A0(n385));
   OR4X1M U483 (.Y(N37), 
	.D(n386), 
	.C(n387), 
	.B(n388), 
	.A(n389));
   AOI22X1M U484 (.Y(n392), 
	.B1(FE_OFN7_n399), 
	.B0(regArr_11__7_), 
	.A1(FE_OFN8_n400), 
	.A0(regArr_10__7_));
   AOI22X1M U485 (.Y(n391), 
	.B1(n401), 
	.B0(regArr_9__7_), 
	.A1(FE_OFN9_n402), 
	.A0(regArr_8__7_));
   AOI21X1M U486 (.Y(n409), 
	.B0(n390), 
	.A1(n391), 
	.A0(n392));
   AOI22X1M U487 (.Y(n395), 
	.B1(FE_OFN7_n399), 
	.B0(test_so2), 
	.A1(FE_OFN8_n400), 
	.A0(regArr_14__7_));
   AOI22X1M U488 (.Y(n394), 
	.B1(n401), 
	.B0(regArr_13__7_), 
	.A1(FE_OFN9_n402), 
	.A0(regArr_12__7_));
   AOI21X1M U489 (.Y(n408), 
	.B0(n393), 
	.A1(n394), 
	.A0(n395));
   AOI22X1M U490 (.Y(n398), 
	.B1(FE_OFN7_n399), 
	.B0(REG3[7]), 
	.A1(FE_OFN8_n400), 
	.A0(REG2[7]));
   AOI22X1M U491 (.Y(n397), 
	.B1(n401), 
	.B0(REG1[7]), 
	.A1(FE_OFN9_n402), 
	.A0(REG0[7]));
   AOI21X1M U492 (.Y(n407), 
	.B0(n396), 
	.A1(n397), 
	.A0(n398));
   AOI22X1M U493 (.Y(n405), 
	.B1(FE_OFN7_n399), 
	.B0(regArr_7__7_), 
	.A1(FE_OFN8_n400), 
	.A0(regArr_6__7_));
   AOI22X1M U494 (.Y(n404), 
	.B1(n401), 
	.B0(regArr_5__7_), 
	.A1(FE_OFN9_n402), 
	.A0(regArr_4__7_));
   AOI21X1M U495 (.Y(n406), 
	.B0(n403), 
	.A1(n404), 
	.A0(n405));
   OR4X1M U496 (.Y(N36), 
	.D(n406), 
	.C(n407), 
	.B(n408), 
	.A(n409));
   DLY1X1M U497 (.Y(n491), 
	.A(test_se));
   DLY1X1M U498 (.Y(n492), 
	.A(test_se));
   DLY1X1M U501 (.Y(n495), 
	.A(n499));
   DLY1X1M U502 (.Y(n496), 
	.A(n500));
   DLY1X1M U503 (.Y(n497), 
	.A(n501));
   DLY1X1M U504 (.Y(n498), 
	.A(n502));
   DLY1X1M U505 (.Y(n499), 
	.A(n492));
   DLY1X1M U506 (.Y(n500), 
	.A(n491));
   DLY1X1M U507 (.Y(n501), 
	.A(n492));
   DLY1X1M U508 (.Y(n502), 
	.A(n491));
   DLY1X1M U509 (.Y(n503), 
	.A(n583));
   DLY1X1M U510 (.Y(n504), 
	.A(n588));
   DLY1X1M U511 (.Y(n505), 
	.A(n603));
   DLY1X1M U512 (.Y(n506), 
	.A(n613));
   DLY1X1M U513 (.Y(n507), 
	.A(n504));
   DLY1X1M U514 (.Y(n508), 
	.A(n611));
   DLY1X1M U515 (.Y(n509), 
	.A(n588));
   DLY1X1M U516 (.Y(n510), 
	.A(n595));
   DLY1X1M U517 (.Y(n511), 
	.A(n598));
   DLY1X1M U518 (.Y(n512), 
	.A(n605));
   DLY1X1M U519 (.Y(n513), 
	.A(n608));
   DLY1X1M U520 (.Y(n514), 
	.A(n615));
   DLY1X1M U521 (.Y(n515), 
	.A(n618));
   DLY1X1M U522 (.Y(n516), 
	.A(n623));
   DLY1X1M U524 (.Y(n518), 
	.A(n531));
   DLY1X1M U526 (.Y(n520), 
	.A(n536));
   DLY1X1M U528 (.Y(n522), 
	.A(n557));
   DLY1X1M U529 (.Y(n523), 
	.A(n525));
   DLY1X1M U530 (.Y(n524), 
	.A(n526));
   DLY1X1M U531 (.Y(n525), 
	.A(n503));
   DLY1X1M U532 (.Y(n526), 
	.A(n613));
   DLY1X1M U533 (.Y(n527), 
	.A(n529));
   DLY1X1M U534 (.Y(n528), 
	.A(n530));
   DLY1X1M U535 (.Y(n529), 
	.A(n509));
   DLY1X1M U536 (.Y(n530), 
	.A(n507));
   DLY1X1M U537 (.Y(n531), 
	.A(n589));
   DLY1X1M U538 (.Y(n532), 
	.A(n591));
   DLY1X1M U539 (.Y(n533), 
	.A(n536));
   DLY1X1M U540 (.Y(n534), 
	.A(n538));
   DLY1X1M U541 (.Y(n535), 
	.A(n593));
   DLY1X1M U542 (.Y(n536), 
	.A(n510));
   DLY1X1M U543 (.Y(n537), 
	.A(n596));
   DLY1X1M U544 (.Y(n538), 
	.A(n511));
   DLY1X1M U545 (.Y(n539), 
	.A(n599));
   DLY1X1M U546 (.Y(n540), 
	.A(n551));
   DLY1X1M U547 (.Y(n541), 
	.A(n601));
   DLY1X1M U548 (.Y(n542), 
	.A(n545));
   DLY1X1M U549 (.Y(n543), 
	.A(n547));
   DLY1X1M U550 (.Y(n544), 
	.A(n505));
   DLY1X1M U551 (.Y(n545), 
	.A(n512));
   DLY1X1M U552 (.Y(n546), 
	.A(n606));
   DLY1X1M U553 (.Y(n547), 
	.A(n513));
   DLY1X1M U554 (.Y(n548), 
	.A(n609));
   DLY1X1M U555 (.Y(n549), 
	.A(n554));
   DLY1X1M U556 (.Y(n550), 
	.A(n558));
   DLY1X1M U557 (.Y(n551), 
	.A(n508));
   DLY1X1M U558 (.Y(n552), 
	.A(n555));
   DLY1X1M U559 (.Y(n553), 
	.A(n557));
   DLY1X1M U560 (.Y(n554), 
	.A(n506));
   DLY1X1M U561 (.Y(n555), 
	.A(n514));
   DLY1X1M U562 (.Y(n556), 
	.A(n616));
   DLY1X1M U563 (.Y(n557), 
	.A(n515));
   DLY1X1M U564 (.Y(n558), 
	.A(n619));
   DLY1X1M U565 (.Y(n559), 
	.A(n620));
   DLY1X1M U566 (.Y(n560), 
	.A(n582));
   DLY1X1M U567 (.Y(n561), 
	.A(n584));
   DLY1X1M U568 (.Y(n562), 
	.A(n585));
   DLY1X1M U569 (.Y(n563), 
	.A(n586));
   DLY1X1M U570 (.Y(n564), 
	.A(n587));
   DLY1X1M U571 (.Y(n565), 
	.A(n590));
   DLY1X1M U572 (.Y(n566), 
	.A(n592));
   DLY1X1M U573 (.Y(n567), 
	.A(n594));
   DLY1X1M U574 (.Y(n568), 
	.A(n597));
   DLY1X1M U575 (.Y(n569), 
	.A(n600));
   DLY1X1M U576 (.Y(n570), 
	.A(n602));
   DLY1X1M U577 (.Y(n571), 
	.A(n604));
   DLY1X1M U578 (.Y(n572), 
	.A(n607));
   DLY1X1M U579 (.Y(n573), 
	.A(n610));
   DLY1X1M U580 (.Y(n574), 
	.A(n612));
   DLY1X1M U581 (.Y(n575), 
	.A(n614));
   DLY1X1M U582 (.Y(n576), 
	.A(n617));
   DLY1X1M U583 (.Y(n577), 
	.A(n627));
   DLY1X1M U584 (.Y(n578), 
	.A(n624));
   DLY1X1M U585 (.Y(n579), 
	.A(n626));
   DLY1X1M U586 (.Y(n580), 
	.A(n622));
   DLY1X1M U587 (.Y(n581), 
	.A(n625));
   DLY1X1M U588 (.Y(n582), 
	.A(n507));
   DLY1X1M U589 (.Y(n583), 
	.A(n495));
   DLY1X1M U590 (.Y(n584), 
	.A(n503));
   DLY1X1M U591 (.Y(n585), 
	.A(n611));
   DLY1X1M U592 (.Y(n586), 
	.A(n603));
   DLY1X1M U593 (.Y(n587), 
	.A(n509));
   DLY1X1M U594 (.Y(n588), 
	.A(n497));
   DLY1X1M U595 (.Y(n589), 
	.A(n504));
   DLY1X1M U596 (.Y(n590), 
	.A(n589));
   DLY1X1M U597 (.Y(n591), 
	.A(n595));
   DLY1X1M U598 (.Y(n592), 
	.A(n591));
   DLY1X1M U599 (.Y(n593), 
	.A(n598));
   DLY1X1M U600 (.Y(n594), 
	.A(n593));
   DLY1X1M U601 (.Y(n595), 
	.A(n496));
   DLY1X1M U602 (.Y(n596), 
	.A(n510));
   DLY1X1M U603 (.Y(n597), 
	.A(n596));
   DLY1X1M U604 (.Y(n598), 
	.A(n499));
   DLY1X1M U605 (.Y(n599), 
	.A(n511));
   DLY1X1M U606 (.Y(n600), 
	.A(n599));
   DLY1X1M U607 (.Y(n601), 
	.A(n605));
   DLY1X1M U608 (.Y(n602), 
	.A(n601));
   DLY1X1M U609 (.Y(n603), 
	.A(n608));
   DLY1X1M U610 (.Y(n604), 
	.A(n505));
   DLY1X1M U611 (.Y(n605), 
	.A(n502));
   DLY1X1M U612 (.Y(n606), 
	.A(n512));
   DLY1X1M U613 (.Y(n607), 
	.A(n606));
   DLY1X1M U614 (.Y(n608), 
	.A(n501));
   DLY1X1M U615 (.Y(n609), 
	.A(n513));
   DLY1X1M U616 (.Y(n610), 
	.A(n609));
   DLY1X1M U617 (.Y(n611), 
	.A(n618));
   DLY1X1M U618 (.Y(n612), 
	.A(n508));
   DLY1X1M U619 (.Y(n613), 
	.A(n615));
   DLY1X1M U620 (.Y(n614), 
	.A(n506));
   DLY1X1M U621 (.Y(n615), 
	.A(n500));
   DLY1X1M U622 (.Y(n616), 
	.A(n514));
   DLY1X1M U623 (.Y(n617), 
	.A(n616));
   DLY1X1M U624 (.Y(n618), 
	.A(n495));
   DLY1X1M U625 (.Y(n619), 
	.A(n515));
   DLY1X1M U626 (.Y(n620), 
	.A(n619));
   DLY1X1M U627 (.Y(n621), 
	.A(n583));
   DLY1X1M U628 (.Y(n622), 
	.A(n621));
   DLY1X1M U629 (.Y(n623), 
	.A(n498));
   DLY1X1M U630 (.Y(n624), 
	.A(n516));
   DLY1X1M U631 (.Y(n625), 
	.A(n624));
   DLY1X1M U632 (.Y(n626), 
	.A(n623));
   DLY1X1M U633 (.Y(n627), 
	.A(n626));
   SDFFRHQX4M regArr_reg_1__0_ (.SI(REG0[7]), 
	.SE(n516), 
	.RN(rst), 
	.Q(n14), 
	.D(n187), 
	.CK(CLK_A__L7_N3));
   SDFFRQX1M regArr_reg_2__6_ (.SI(REG2[5]), 
	.SE(n579), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(n15), 
	.D(n201), 
	.CK(CLK_A__L7_N2));
   SDFFRQX1M regArr_reg_2__5_ (.SI(REG2[4]), 
	.SE(n579), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(n16), 
	.D(n200), 
	.CK(CLK_A__L7_N2));
   SDFFRQX1M regArr_reg_2__2_ (.SI(REG2[1]), 
	.SE(n625), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(REG2[2]), 
	.D(n197), 
	.CK(clk));
   SDFFRHQX8M regArr_reg_2__3_ (.SI(REG2[2]), 
	.SE(n581), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(REG2[3]), 
	.D(n198), 
	.CK(CLK_A__L7_N2));
   SDFFRQX1M regArr_reg_2__4_ (.SI(REG2[3]), 
	.SE(n581), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(n17), 
	.D(n199), 
	.CK(CLK_A__L7_N2));
   SDFFRQX4M regArr_reg_3__6_ (.SI(REG3[5]), 
	.SE(n519), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(REG3[6]), 
	.D(n209), 
	.CK(clk));
   SDFFRQX4M regArr_reg_3__1_ (.SI(REG3[0]), 
	.SE(n620), 
	.RN(rst), 
	.Q(REG3[1]), 
	.D(n204), 
	.CK(clk));
   SDFFRQX4M regArr_reg_3__7_ (.SI(REG3[6]), 
	.SE(n622), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(REG3[7]), 
	.D(n210), 
	.CK(clk));
   SDFFRQX4M regArr_reg_3__4_ (.SI(REG3[3]), 
	.SE(n519), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(REG3[4]), 
	.D(n207), 
	.CK(clk));
   SDFFRQX4M regArr_reg_3__3_ (.SI(REG3[2]), 
	.SE(n517), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(REG3[3]), 
	.D(n206), 
	.CK(clk));
   SDFFRQX4M regArr_reg_3__2_ (.SI(REG3[1]), 
	.SE(n531), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(REG3[2]), 
	.D(n205), 
	.CK(CLK_A__L7_N2));
   SDFFRHQX8M regArr_reg_1__5_ (.SI(REG1[4]), 
	.SE(n578), 
	.RN(rst), 
	.Q(REG1[5]), 
	.D(n192), 
	.CK(CLK_A__L7_N3));
   SDFFRHQX2M regArr_reg_1__6_ (.SI(REG1[5]), 
	.SE(n561), 
	.RN(rst), 
	.Q(FE_OFN13_Operand_B_6_), 
	.D(n193), 
	.CK(CLK_A__L7_N3));
   SDFFRHQX2M regArr_reg_1__4_ (.SI(REG1[3]), 
	.SE(n578), 
	.RN(rst), 
	.Q(n13), 
	.D(n191), 
	.CK(CLK_A__L7_N3));
   SDFFRHQX8M regArr_reg_1__3_ (.SI(REG1[2]), 
	.SE(n580), 
	.RN(FE_OFN3_SYNC_REF_RST), 
	.Q(REG1[3]), 
	.D(n190), 
	.CK(CLK_A__L7_N6));
   SDFFRHQX8M regArr_reg_1__2_ (.SI(REG1[1]), 
	.SE(n580), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(REG1[2]), 
	.D(n189), 
	.CK(CLK_A__L7_N6));
   SDFFRQX4M regArr_reg_7__1_ (.SI(regArr_7__0_), 
	.SE(n521), 
	.RN(FE_OFN4_SYNC_REF_RST), 
	.Q(test_so1), 
	.D(n236), 
	.CK(CLK_A__L7_N5));
   NOR2X2M U3 (.Y(n400), 
	.B(Address[0]), 
	.A(n411));
   BUFX2M U4 (.Y(n521), 
	.A(n545));
   NOR2X2M U6 (.Y(n402), 
	.B(Address[1]), 
	.A(Address[0]));
   NOR2X2M U9 (.Y(n152), 
	.B(Address[2]), 
	.A(Address[1]));
   AOI22X1M U10 (.Y(n335), 
	.B1(FE_OFN7_n399), 
	.B0(REG3[2]), 
	.A1(FE_OFN8_n400), 
	.A0(REG2[2]));
   BUFX2M U11 (.Y(n517), 
	.A(n530));
   BUFX2M U12 (.Y(n519), 
	.A(n621));
   CLKAND2X2M U13 (.Y(n169), 
	.B(Address[0]), 
	.A(n175));
   CLKAND2X2M U14 (.Y(n155), 
	.B(Address[0]), 
	.A(n164));
   CLKINVX2M U15 (.Y(n410), 
	.A(Address[0]));
   CLKAND2X2M U16 (.Y(n163), 
	.B(Address[1]), 
	.A(Address[2]));
   INVXLM U17 (.Y(n3), 
	.A(n17));
   CLKINVX2M U18 (.Y(REG2[4]), 
	.A(n3));
   INVXLM U23 (.Y(n9), 
	.A(n16));
   CLKINVX2M U24 (.Y(REG2[5]), 
	.A(n9));
   INVXLM U25 (.Y(n11), 
	.A(n15));
   CLKINVX2M U26 (.Y(REG2[6]), 
	.A(n11));
endmodule

module ALU_DW_div_uns_0 (
	a, 
	b, 
	quotient, 
	remainder, 
	divide_by_0, 
	n172, 
	n171, 
	n178, 
	n179, 
	n181, 
	n173);
   input [7:0] a;
   input [7:0] b;
   output [7:0] quotient;
   output [7:0] remainder;
   output divide_by_0;
   input n172;
   input n171;
   input n178;
   input n179;
   input n181;
   input n173;

   // Internal wires
   wire FE_OFN20_u_div_CryTmp_1__2_;
   wire FE_OFN19_N134;
   wire FE_RN_441_0;
   wire FE_RN_440_0;
   wire FE_RN_439_0;
   wire FE_RN_437_0;
   wire FE_RN_435_0;
   wire FE_RN_434_0;
   wire FE_RN_433_0;
   wire FE_RN_432_0;
   wire FE_RN_431_0;
   wire FE_RN_430_0;
   wire FE_RN_429_0;
   wire FE_RN_428_0;
   wire FE_RN_427_0;
   wire FE_RN_426_0;
   wire FE_RN_424_0;
   wire FE_RN_423_0;
   wire FE_RN_422_0;
   wire FE_RN_421_0;
   wire FE_RN_420_0;
   wire FE_RN_419_0;
   wire FE_RN_417_0;
   wire FE_RN_416_0;
   wire FE_RN_415_0;
   wire FE_RN_414_0;
   wire FE_RN_413_0;
   wire FE_RN_412_0;
   wire FE_RN_411_0;
   wire FE_RN_410_0;
   wire FE_RN_409_0;
   wire FE_RN_408_0;
   wire FE_RN_407_0;
   wire FE_RN_406_0;
   wire FE_RN_405_0;
   wire FE_RN_404_0;
   wire FE_RN_403_0;
   wire FE_RN_402_0;
   wire FE_RN_401_0;
   wire FE_RN_400_0;
   wire FE_RN_398_0;
   wire FE_RN_397_0;
   wire FE_RN_396_0;
   wire FE_RN_395_0;
   wire FE_RN_391_0;
   wire FE_RN_390_0;
   wire FE_RN_389_0;
   wire FE_RN_388_0;
   wire FE_RN_387_0;
   wire FE_RN_386_0;
   wire FE_RN_385_0;
   wire FE_RN_384_0;
   wire FE_RN_383_0;
   wire FE_RN_382_0;
   wire FE_RN_381_0;
   wire FE_RN_380_0;
   wire FE_RN_379_0;
   wire FE_RN_377_0;
   wire FE_RN_376_0;
   wire FE_RN_375_0;
   wire FE_RN_374_0;
   wire FE_RN_373_0;
   wire FE_RN_372_0;
   wire FE_RN_371_0;
   wire FE_RN_369_0;
   wire FE_RN_368_0;
   wire FE_RN_367_0;
   wire FE_RN_366_0;
   wire FE_RN_364_0;
   wire FE_RN_363_0;
   wire FE_RN_361_0;
   wire FE_RN_359_0;
   wire FE_RN_358_0;
   wire FE_RN_357_0;
   wire FE_RN_356_0;
   wire FE_RN_355_0;
   wire FE_RN_354_0;
   wire FE_RN_353_0;
   wire FE_RN_351_0;
   wire FE_RN_350_0;
   wire FE_RN_349_0;
   wire FE_RN_348_0;
   wire FE_RN_347_0;
   wire FE_RN_344_0;
   wire FE_RN_343_0;
   wire FE_RN_341_0;
   wire FE_RN_340_0;
   wire FE_RN_339_0;
   wire FE_RN_338_0;
   wire FE_RN_337_0;
   wire FE_RN_335_0;
   wire FE_RN_334_0;
   wire FE_RN_333_0;
   wire FE_RN_330_0;
   wire FE_RN_328_0;
   wire FE_RN_327_0;
   wire FE_RN_326_0;
   wire FE_RN_324_0;
   wire FE_RN_321_0;
   wire FE_RN_320_0;
   wire FE_RN_316_0;
   wire FE_RN_315_0;
   wire FE_RN_313_0;
   wire FE_RN_312_0;
   wire FE_RN_311_0;
   wire FE_RN_310_0;
   wire FE_RN_309_0;
   wire FE_RN_308_0;
   wire FE_RN_307_0;
   wire FE_RN_306_0;
   wire FE_RN_304_0;
   wire FE_RN_302_0;
   wire FE_RN_301_0;
   wire FE_RN_300_0;
   wire FE_RN_298_0;
   wire FE_RN_297_0;
   wire FE_RN_296_0;
   wire FE_RN_282_0;
   wire FE_RN_281_0;
   wire FE_RN_280_0;
   wire FE_RN_279_0;
   wire FE_RN_278_0;
   wire FE_RN_277_0;
   wire FE_RN_276_0;
   wire FE_RN_275_0;
   wire FE_RN_274_0;
   wire FE_RN_273_0;
   wire FE_RN_272_0;
   wire FE_RN_271_0;
   wire FE_RN_268_0;
   wire FE_RN_267_0;
   wire FE_RN_266_0;
   wire FE_RN_265_0;
   wire FE_RN_264_0;
   wire FE_RN_263_0;
   wire FE_RN_262_0;
   wire FE_RN_261_0;
   wire FE_RN_258_0;
   wire FE_RN_257_0;
   wire FE_RN_256_0;
   wire FE_RN_255_0;
   wire FE_RN_254_0;
   wire FE_RN_253_0;
   wire FE_RN_252_0;
   wire FE_RN_251_0;
   wire FE_RN_250_0;
   wire FE_RN_249_0;
   wire FE_RN_248_0;
   wire FE_RN_246_0;
   wire FE_RN_245_0;
   wire FE_RN_244_0;
   wire FE_RN_243_0;
   wire FE_RN_242_0;
   wire FE_RN_239_0;
   wire FE_RN_238_0;
   wire FE_RN_237_0;
   wire FE_RN_236_0;
   wire FE_RN_235_0;
   wire FE_RN_234_0;
   wire FE_RN_232_0;
   wire FE_RN_230_0;
   wire FE_RN_229_0;
   wire FE_RN_227_0;
   wire FE_RN_226_0;
   wire FE_RN_222_0;
   wire FE_RN_221_0;
   wire FE_RN_220_0;
   wire FE_RN_219_0;
   wire FE_RN_218_0;
   wire FE_RN_217_0;
   wire FE_RN_216_0;
   wire FE_RN_215_0;
   wire FE_RN_214_0;
   wire FE_RN_213_0;
   wire FE_RN_212_0;
   wire FE_RN_211_0;
   wire FE_RN_210_0;
   wire FE_RN_209_0;
   wire FE_RN_207_0;
   wire FE_RN_206_0;
   wire FE_RN_205_0;
   wire FE_RN_202_0;
   wire FE_RN_201_0;
   wire FE_RN_200_0;
   wire FE_RN_198_0;
   wire FE_RN_197_0;
   wire FE_RN_195_0;
   wire FE_RN_194_0;
   wire FE_RN_193_0;
   wire FE_RN_192_0;
   wire FE_RN_190_0;
   wire FE_RN_175_0;
   wire FE_RN_172_0;
   wire FE_RN_169_0;
   wire FE_RN_168_0;
   wire FE_RN_167_0;
   wire FE_RN_166_0;
   wire FE_RN_165_0;
   wire FE_RN_164_0;
   wire FE_RN_163_0;
   wire FE_RN_161_0;
   wire FE_RN_160_0;
   wire FE_RN_159_0;
   wire FE_RN_158_0;
   wire FE_RN_157_0;
   wire FE_RN_156_0;
   wire FE_RN_154_0;
   wire FE_RN_151_0;
   wire FE_RN_150_0;
   wire FE_RN_149_0;
   wire FE_RN_148_0;
   wire FE_RN_147_0;
   wire FE_RN_144_0;
   wire FE_RN_143_0;
   wire FE_RN_142_0;
   wire FE_RN_141_0;
   wire FE_RN_139_0;
   wire FE_RN_138_0;
   wire FE_RN_137_0;
   wire FE_RN_136_0;
   wire FE_RN_135_0;
   wire FE_RN_134_0;
   wire FE_RN_133_0;
   wire FE_RN_132_0;
   wire FE_RN_131_0;
   wire FE_RN_129_0;
   wire FE_RN_128_0;
   wire FE_RN_126_0;
   wire FE_RN_125_0;
   wire FE_RN_124_0;
   wire FE_RN_123_0;
   wire FE_RN_122_0;
   wire FE_RN_121_0;
   wire FE_RN_120_0;
   wire FE_RN_119_0;
   wire FE_RN_117_0;
   wire FE_RN_116_0;
   wire FE_RN_115_0;
   wire FE_RN_112_0;
   wire FE_RN_111_0;
   wire FE_RN_110_0;
   wire FE_RN_108_0;
   wire FE_RN_107_0;
   wire FE_RN_106_0;
   wire FE_RN_103_0;
   wire FE_RN_102_0;
   wire FE_RN_101_0;
   wire FE_RN_100_0;
   wire FE_RN_99_0;
   wire FE_RN_97_0;
   wire FE_RN_96_0;
   wire FE_RN_95_0;
   wire FE_RN_94_0;
   wire FE_RN_92_0;
   wire FE_RN_91_0;
   wire FE_RN_90_0;
   wire FE_RN_89_0;
   wire FE_RN_88_0;
   wire FE_RN_86_0;
   wire FE_RN_85_0;
   wire FE_RN_84_0;
   wire FE_RN_83_0;
   wire FE_RN_82_0;
   wire FE_RN_81_0;
   wire FE_RN_80_0;
   wire FE_RN_78_0;
   wire FE_RN_77_0;
   wire FE_RN_76_0;
   wire FE_RN_75_0;
   wire FE_RN_74_0;
   wire FE_RN_73_0;
   wire FE_RN_72_0;
   wire FE_RN_71_0;
   wire FE_RN_70_0;
   wire FE_RN_69_0;
   wire FE_RN_68_0;
   wire FE_RN_67_0;
   wire FE_RN_66_0;
   wire FE_RN_65_0;
   wire FE_RN_64_0;
   wire FE_RN_62_0;
   wire FE_RN_61_0;
   wire FE_RN_60_0;
   wire FE_RN_46_0;
   wire FE_RN_45_0;
   wire FE_RN_43_0;
   wire FE_RN_42_0;
   wire FE_RN_40_0;
   wire FE_RN_39_0;
   wire FE_RN_38_0;
   wire FE_RN_37_0;
   wire FE_RN_36_0;
   wire FE_RN_35_0;
   wire FE_RN_34_0;
   wire FE_RN_32_0;
   wire FE_RN_30_0;
   wire FE_RN_29_0;
   wire FE_RN_28_0;
   wire FE_RN_27_0;
   wire FE_RN_26_0;
   wire FE_RN_25_0;
   wire FE_RN_24_0;
   wire FE_RN_23_0;
   wire FE_RN_21_0;
   wire FE_RN_20_0;
   wire FE_RN_19_0;
   wire FE_RN_18_0;
   wire FE_RN_16_0;
   wire FE_RN_15_0;
   wire FE_RN_14_0;
   wire FE_RN_13_0;
   wire FE_RN_12_0;
   wire FE_RN_11_0;
   wire FE_RN_10_0;
   wire FE_RN_9_0;
   wire FE_RN_4_0;
   wire FE_RN_3_0;
   wire FE_RN_0_0;
   wire u_div_SumTmp_1__0_;
   wire u_div_SumTmp_1__1_;
   wire u_div_SumTmp_1__2_;
   wire u_div_SumTmp_1__3_;
   wire u_div_SumTmp_1__4_;
   wire u_div_SumTmp_1__5_;
   wire u_div_SumTmp_1__6_;
   wire u_div_SumTmp_2__0_;
   wire u_div_SumTmp_2__1_;
   wire u_div_SumTmp_2__2_;
   wire u_div_SumTmp_2__3_;
   wire u_div_SumTmp_2__4_;
   wire u_div_SumTmp_2__5_;
   wire u_div_SumTmp_3__0_;
   wire u_div_SumTmp_3__1_;
   wire u_div_SumTmp_3__2_;
   wire u_div_SumTmp_3__3_;
   wire u_div_SumTmp_3__4_;
   wire u_div_SumTmp_4__0_;
   wire u_div_SumTmp_4__1_;
   wire u_div_SumTmp_4__2_;
   wire u_div_SumTmp_4__3_;
   wire u_div_SumTmp_5__0_;
   wire u_div_SumTmp_5__1_;
   wire u_div_SumTmp_5__2_;
   wire u_div_SumTmp_6__0_;
   wire u_div_SumTmp_6__1_;
   wire u_div_SumTmp_7__0_;
   wire u_div_CryTmp_0__1_;
   wire u_div_CryTmp_0__2_;
   wire u_div_CryTmp_0__3_;
   wire u_div_CryTmp_0__4_;
   wire u_div_CryTmp_0__5_;
   wire u_div_CryTmp_0__6_;
   wire u_div_CryTmp_0__7_;
   wire u_div_CryTmp_1__1_;
   wire u_div_CryTmp_1__2_;
   wire u_div_CryTmp_1__6_;
   wire u_div_CryTmp_1__7_;
   wire u_div_CryTmp_2__1_;
   wire u_div_CryTmp_3__1_;
   wire u_div_CryTmp_3__2_;
   wire u_div_CryTmp_4__1_;
   wire u_div_CryTmp_4__2_;
   wire u_div_CryTmp_4__3_;
   wire u_div_CryTmp_5__1_;
   wire u_div_CryTmp_5__2_;
   wire u_div_CryTmp_6__1_;
   wire u_div_CryTmp_7__1_;
   wire u_div_PartRem_1__1_;
   wire u_div_PartRem_1__2_;
   wire u_div_PartRem_1__3_;
   wire u_div_PartRem_1__4_;
   wire u_div_PartRem_1__5_;
   wire u_div_PartRem_1__6_;
   wire u_div_PartRem_1__7_;
   wire u_div_PartRem_2__1_;
   wire u_div_PartRem_2__2_;
   wire u_div_PartRem_2__3_;
   wire u_div_PartRem_2__4_;
   wire u_div_PartRem_2__5_;
   wire u_div_PartRem_2__6_;
   wire u_div_PartRem_3__1_;
   wire u_div_PartRem_3__2_;
   wire u_div_PartRem_3__3_;
   wire u_div_PartRem_3__4_;
   wire u_div_PartRem_3__5_;
   wire u_div_PartRem_4__1_;
   wire u_div_PartRem_4__2_;
   wire u_div_PartRem_4__3_;
   wire u_div_PartRem_4__4_;
   wire u_div_PartRem_5__1_;
   wire u_div_PartRem_5__2_;
   wire u_div_PartRem_5__3_;
   wire u_div_PartRem_6__1_;
   wire u_div_PartRem_6__2_;
   wire u_div_PartRem_7__1_;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;

   BUFX8M FE_OFC20_u_div_CryTmp_1__2_ (.Y(FE_OFN20_u_div_CryTmp_1__2_), 
	.A(u_div_CryTmp_1__2_));
   BUFX4M FE_OFC19_N134 (.Y(quotient[6]), 
	.A(FE_OFN19_N134));
   INVX2M FE_RC_525_0 (.Y(FE_RN_441_0), 
	.A(u_div_PartRem_2__5_));
   INVX2M FE_RC_524_0 (.Y(FE_RN_440_0), 
	.A(n3));
   OAI21X2M FE_RC_523_0 (.Y(FE_RN_439_0), 
	.B0(FE_RN_435_0), 
	.A1(FE_RN_440_0), 
	.A0(FE_RN_441_0));
   XNOR2X2M FE_RC_522_0 (.Y(u_div_SumTmp_1__5_), 
	.B(FE_RN_439_0), 
	.A(FE_RN_433_0));
   NAND2BX2M FE_RC_520_0 (.Y(FE_RN_437_0), 
	.B(u_div_PartRem_2__5_), 
	.AN(FE_RN_440_0));
   NAND2BX2M FE_RC_518_0 (.Y(FE_RN_435_0), 
	.B(FE_RN_440_0), 
	.AN(u_div_PartRem_2__5_));
   NAND2X3M FE_RC_517_0 (.Y(FE_RN_434_0), 
	.B(FE_RN_424_0), 
	.A(FE_RN_419_0));
   NAND2X4M FE_RC_516_0 (.Y(FE_RN_433_0), 
	.B(FE_RN_426_0), 
	.A(FE_RN_434_0));
   NAND2X4M FE_RC_515_0 (.Y(FE_RN_432_0), 
	.B(FE_RN_435_0), 
	.A(FE_RN_433_0));
   NAND2X4M FE_RC_514_0 (.Y(u_div_CryTmp_1__6_), 
	.B(FE_RN_437_0), 
	.A(FE_RN_432_0));
   INVX2M FE_RC_513_0 (.Y(FE_RN_431_0), 
	.A(quotient[2]));
   AO22X2M FE_RC_512_0 (.Y(u_div_PartRem_2__3_), 
	.B1(u_div_SumTmp_2__2_), 
	.B0(quotient[2]), 
	.A1(FE_RN_431_0), 
	.A0(u_div_PartRem_3__2_));
   INVX2M FE_RC_511_0 (.Y(FE_RN_430_0), 
	.A(u_div_PartRem_2__4_));
   INVX2M FE_RC_510_0 (.Y(FE_RN_429_0), 
	.A(n4));
   OAI21X2M FE_RC_509_0 (.Y(FE_RN_428_0), 
	.B0(FE_RN_424_0), 
	.A1(FE_RN_429_0), 
	.A0(FE_RN_430_0));
   NAND2X2M FE_RC_508_0 (.Y(FE_RN_427_0), 
	.B(FE_RN_428_0), 
	.A(FE_RN_419_0));
   OAI21X2M FE_RC_507_0 (.Y(u_div_SumTmp_1__4_), 
	.B0(FE_RN_427_0), 
	.A1(FE_RN_428_0), 
	.A0(FE_RN_419_0));
   NAND2X2M FE_RC_506_0 (.Y(FE_RN_426_0), 
	.B(n4), 
	.A(u_div_PartRem_2__4_));
   NAND2BX2M FE_RC_504_0 (.Y(FE_RN_424_0), 
	.B(FE_RN_429_0), 
	.AN(u_div_PartRem_2__4_));
   INVX2M FE_RC_503_0 (.Y(FE_RN_423_0), 
	.A(quotient[2]));
   AOI22X1M FE_RC_502_0 (.Y(FE_RN_422_0), 
	.B1(u_div_SumTmp_2__2_), 
	.B0(quotient[2]), 
	.A1(FE_RN_423_0), 
	.A0(u_div_PartRem_3__2_));
   NAND2X2M FE_RC_501_0 (.Y(FE_RN_421_0), 
	.B(FE_RN_422_0), 
	.A(FE_RN_405_0));
   NAND3X2M FE_RC_500_0 (.Y(FE_RN_420_0), 
	.C(FE_OFN20_u_div_CryTmp_1__2_), 
	.B(FE_RN_395_0), 
	.A(FE_RN_421_0));
   NAND3X4M FE_RC_499_0 (.Y(FE_RN_419_0), 
	.C(FE_RN_420_0), 
	.B(FE_RN_403_0), 
	.A(FE_RN_400_0));
   INVX2M FE_RC_496_0 (.Y(FE_RN_417_0), 
	.A(u_div_PartRem_3__1_));
   CLKNAND2X2M FE_RC_495_0 (.Y(FE_RN_416_0), 
	.B(quotient[2]), 
	.A(u_div_SumTmp_2__1_));
   OAI21X2M FE_RC_494_0 (.Y(u_div_PartRem_2__2_), 
	.B0(FE_RN_416_0), 
	.A1(quotient[2]), 
	.A0(FE_RN_417_0));
   INVX2M FE_RC_493_0 (.Y(FE_RN_415_0), 
	.A(FE_RN_402_0));
   AOI21X2M FE_RC_492_0 (.Y(FE_RN_414_0), 
	.B0(FE_RN_415_0), 
	.A1(FE_OFN20_u_div_CryTmp_1__2_), 
	.A0(FE_RN_395_0));
   INVX2M FE_RC_491_0 (.Y(FE_RN_413_0), 
	.A(FE_OFN20_u_div_CryTmp_1__2_));
   INVX2M FE_RC_490_0 (.Y(FE_RN_412_0), 
	.A(FE_RN_395_0));
   AOI21X2M FE_RC_489_0 (.Y(FE_RN_411_0), 
	.B0(FE_RN_412_0), 
	.A1(FE_RN_413_0), 
	.A0(FE_RN_402_0));
   XOR2X2M FE_RC_488_0 (.Y(FE_RN_410_0), 
	.B(n5), 
	.A(u_div_PartRem_2__3_));
   NAND2BX2M FE_RC_487_0 (.Y(FE_RN_409_0), 
	.B(FE_RN_410_0), 
	.AN(FE_RN_411_0));
   OAI21X2M FE_RC_486_0 (.Y(u_div_SumTmp_1__3_), 
	.B0(FE_RN_409_0), 
	.A1(FE_RN_410_0), 
	.A0(FE_RN_414_0));
   XNOR2X2M FE_RC_485_0 (.Y(FE_RN_408_0), 
	.B(n6), 
	.A(FE_RN_397_0));
   CLKNAND2X2M FE_RC_484_0 (.Y(FE_RN_407_0), 
	.B(FE_RN_402_0), 
	.A(FE_RN_395_0));
   CLKNAND2X2M FE_RC_483_0 (.Y(FE_RN_406_0), 
	.B(FE_OFN20_u_div_CryTmp_1__2_), 
	.A(FE_RN_407_0));
   OAI21X2M FE_RC_482_0 (.Y(u_div_SumTmp_1__2_), 
	.B0(FE_RN_406_0), 
	.A1(FE_OFN20_u_div_CryTmp_1__2_), 
	.A0(FE_RN_408_0));
   INVX2M FE_RC_481_0 (.Y(FE_RN_405_0), 
	.A(n5));
   CLKNAND2X2M FE_RC_480_0 (.Y(FE_RN_404_0), 
	.B(FE_RN_405_0), 
	.A(FE_RN_402_0));
   NAND2X4M FE_RC_479_0 (.Y(FE_RN_403_0), 
	.B(u_div_PartRem_2__3_), 
	.A(FE_RN_404_0));
   NAND2X4M FE_RC_478_0 (.Y(FE_RN_402_0), 
	.B(n6), 
	.A(FE_RN_397_0));
   INVX2M FE_RC_477_0 (.Y(FE_RN_401_0), 
	.A(FE_RN_402_0));
   NAND2X2M FE_RC_476_0 (.Y(FE_RN_400_0), 
	.B(n5), 
	.A(FE_RN_401_0));
   NAND2X4M FE_RC_474_0 (.Y(FE_RN_398_0), 
	.B(quotient[2]), 
	.A(u_div_SumTmp_2__1_));
   OAI21X4M FE_RC_473_0 (.Y(FE_RN_397_0), 
	.B0(FE_RN_398_0), 
	.A1(quotient[2]), 
	.A0(FE_RN_417_0));
   INVX2M FE_RC_472_0 (.Y(FE_RN_396_0), 
	.A(n6));
   NAND2BX8M FE_RC_471_0 (.Y(FE_RN_395_0), 
	.B(FE_RN_396_0), 
	.AN(FE_RN_397_0));
   INVX2M FE_RC_466_0 (.Y(FE_RN_391_0), 
	.A(FE_RN_366_0));
   NAND4BX1M FE_RC_465_0 (.Y(u_div_PartRem_2__1_), 
	.D(FE_RN_372_0), 
	.C(FE_RN_377_0), 
	.B(FE_RN_382_0), 
	.AN(FE_RN_391_0));
   CLKNAND2X2M FE_RC_464_0 (.Y(FE_RN_390_0), 
	.B(u_div_CryTmp_1__1_), 
	.A(n7));
   CLKNAND2X2M FE_RC_463_0 (.Y(FE_RN_389_0), 
	.B(FE_RN_385_0), 
	.A(FE_RN_390_0));
   NAND4X2M FE_RC_462_0 (.Y(FE_RN_388_0), 
	.D(FE_RN_372_0), 
	.C(FE_RN_377_0), 
	.B(FE_RN_366_0), 
	.A(FE_RN_382_0));
   XNOR2X2M FE_RC_461_0 (.Y(u_div_SumTmp_1__1_), 
	.B(FE_RN_389_0), 
	.A(FE_RN_388_0));
   INVX2M FE_RC_460_0 (.Y(FE_RN_387_0), 
	.A(u_div_CryTmp_1__1_));
   INVX2M FE_RC_459_0 (.Y(FE_RN_386_0), 
	.A(n7));
   NAND2X2M FE_RC_458_0 (.Y(FE_RN_385_0), 
	.B(FE_RN_387_0), 
	.A(FE_RN_386_0));
   INVX2M FE_RC_457_0 (.Y(FE_RN_384_0), 
	.A(FE_RN_353_0));
   AND2X2M FE_RC_456_0 (.Y(FE_RN_383_0), 
	.B(a[2]), 
	.A(FE_RN_363_0));
   CLKNAND2X2M FE_RC_455_0 (.Y(FE_RN_382_0), 
	.B(FE_RN_384_0), 
	.A(FE_RN_383_0));
   AND2X2M FE_RC_454_0 (.Y(FE_RN_381_0), 
	.B(FE_RN_372_0), 
	.A(FE_RN_366_0));
   NAND2X2M FE_RC_453_0 (.Y(FE_RN_380_0), 
	.B(FE_RN_382_0), 
	.A(FE_RN_381_0));
   NAND2X2M FE_RC_452_0 (.Y(FE_RN_379_0), 
	.B(FE_RN_385_0), 
	.A(FE_RN_380_0));
   CLKNAND2X2M FE_RC_450_0 (.Y(FE_RN_377_0), 
	.B(FE_RN_371_0), 
	.A(u_div_SumTmp_2__0_));
   CLKNAND2X2M FE_RC_449_0 (.Y(FE_RN_376_0), 
	.B(FE_RN_386_0), 
	.A(FE_RN_377_0));
   NAND2X2M FE_RC_448_0 (.Y(FE_RN_375_0), 
	.B(u_div_CryTmp_1__1_), 
	.A(FE_RN_376_0));
   OAI2B11X4M FE_RC_447_0 (.Y(u_div_CryTmp_1__2_), 
	.C0(FE_RN_375_0), 
	.B0(FE_RN_379_0), 
	.A1N(n7), 
	.A0(FE_RN_377_0));
   NAND2BX4M FE_RC_446_0 (.Y(FE_RN_374_0), 
	.B(FE_RN_353_0), 
	.AN(FE_RN_369_0));
   NAND2X6M FE_RC_445_0 (.Y(quotient[2]), 
	.B(FE_RN_363_0), 
	.A(FE_RN_374_0));
   INVX2M FE_RC_444_0 (.Y(FE_RN_373_0), 
	.A(a[2]));
   NAND3BX2M FE_RC_443_0 (.Y(FE_RN_372_0), 
	.C(FE_RN_369_0), 
	.B(FE_RN_363_0), 
	.AN(FE_RN_373_0));
   INVX2M FE_RC_442_0 (.Y(FE_RN_371_0), 
	.A(FE_RN_363_0));
   CLKNAND2X2M FE_RC_440_0 (.Y(FE_RN_369_0), 
	.B(n11), 
	.A(FE_RN_355_0));
   INVX2M FE_RC_439_0 (.Y(FE_RN_368_0), 
	.A(FE_RN_369_0));
   NAND2X2M FE_RC_438_0 (.Y(FE_RN_367_0), 
	.B(u_div_SumTmp_2__0_), 
	.A(FE_RN_368_0));
   NAND2BX2M FE_RC_437_0 (.Y(FE_RN_366_0), 
	.B(FE_RN_353_0), 
	.AN(FE_RN_367_0));
   INVX2M FE_RC_434_0 (.Y(FE_RN_364_0), 
	.A(FE_RN_356_0));
   NAND2X2M FE_RC_433_0 (.Y(FE_RN_363_0), 
	.B(n11), 
	.A(FE_RN_364_0));
   OR2X2M FE_RC_430_0 (.Y(FE_RN_361_0), 
	.B(n3), 
	.A(u_div_PartRem_3__5_));
   CLKNAND2X2M FE_RC_428_0 (.Y(FE_RN_359_0), 
	.B(FE_RN_361_0), 
	.A(FE_RN_356_0));
   NOR2BX2M FE_RC_427_0 (.Y(FE_RN_358_0), 
	.B(FE_RN_357_0), 
	.AN(FE_RN_355_0));
   MXI2X1M FE_RC_426_0 (.Y(u_div_SumTmp_2__5_), 
	.S0(FE_RN_353_0), 
	.B(FE_RN_358_0), 
	.A(FE_RN_359_0));
   AND2X2M FE_RC_425_0 (.Y(FE_RN_357_0), 
	.B(n3), 
	.A(u_div_PartRem_3__5_));
   INVX2M FE_RC_424_0 (.Y(FE_RN_356_0), 
	.A(FE_RN_357_0));
   OR2X2M FE_RC_423_0 (.Y(FE_RN_355_0), 
	.B(n3), 
	.A(u_div_PartRem_3__5_));
   NAND2X4M FE_RC_422_0 (.Y(FE_RN_354_0), 
	.B(FE_RN_351_0), 
	.A(FE_RN_343_0));
   NAND2X4M FE_RC_421_0 (.Y(FE_RN_353_0), 
	.B(FE_RN_350_0), 
	.A(FE_RN_354_0));
   OR2X2M FE_RC_418_0 (.Y(FE_RN_351_0), 
	.B(n4), 
	.A(u_div_PartRem_3__4_));
   INVX2M FE_RC_417_0 (.Y(FE_RN_350_0), 
	.A(FE_RN_347_0));
   CLKNAND2X2M FE_RC_416_0 (.Y(FE_RN_349_0), 
	.B(FE_RN_351_0), 
	.A(FE_RN_350_0));
   NOR2BX2M FE_RC_415_0 (.Y(FE_RN_348_0), 
	.B(FE_RN_347_0), 
	.AN(FE_RN_351_0));
   MXI2X1M FE_RC_414_0 (.Y(u_div_SumTmp_2__4_), 
	.S0(FE_RN_343_0), 
	.B(FE_RN_348_0), 
	.A(FE_RN_349_0));
   AND2X2M FE_RC_413_0 (.Y(FE_RN_347_0), 
	.B(n4), 
	.A(u_div_PartRem_3__4_));
   NAND2X4M FE_RC_410_0 (.Y(FE_RN_344_0), 
	.B(FE_RN_334_0), 
	.A(FE_RN_333_0));
   NAND2X4M FE_RC_409_0 (.Y(FE_RN_343_0), 
	.B(FE_RN_337_0), 
	.A(FE_RN_344_0));
   INVX2M FE_RC_406_0 (.Y(FE_RN_341_0), 
	.A(FE_RN_338_0));
   OAI21X2M FE_RC_405_0 (.Y(FE_RN_340_0), 
	.B0(FE_RN_341_0), 
	.A1(n5), 
	.A0(u_div_PartRem_3__3_));
   NOR2BX2M FE_RC_404_0 (.Y(FE_RN_339_0), 
	.B(FE_RN_338_0), 
	.AN(FE_RN_334_0));
   MXI2X1M FE_RC_403_0 (.Y(u_div_SumTmp_2__3_), 
	.S0(FE_RN_333_0), 
	.B(FE_RN_339_0), 
	.A(FE_RN_340_0));
   AND2X2M FE_RC_402_0 (.Y(FE_RN_338_0), 
	.B(n5), 
	.A(u_div_PartRem_3__3_));
   INVX2M FE_RC_401_0 (.Y(FE_RN_337_0), 
	.A(FE_RN_338_0));
   INVX2M FE_RC_399_0 (.Y(FE_RN_335_0), 
	.A(u_div_PartRem_3__3_));
   NAND2X2M FE_RC_398_0 (.Y(FE_RN_334_0), 
	.B(FE_RN_405_0), 
	.A(FE_RN_335_0));
   NAND2X2M FE_RC_397_0 (.Y(FE_RN_333_0), 
	.B(FE_RN_304_0), 
	.A(FE_RN_296_0));
   INVX2M FE_RC_393_0 (.Y(FE_RN_330_0), 
	.A(FE_RN_297_0));
   MXI2X1M FE_RC_391_0 (.Y(FE_RN_328_0), 
	.S0(FE_RN_396_0), 
	.B(FE_RN_302_0), 
	.A(FE_RN_298_0));
   AOI221XLM FE_RC_390_0 (.Y(FE_RN_327_0), 
	.C0(FE_RN_328_0), 
	.B1(FE_RN_330_0), 
	.B0(FE_RN_417_0), 
	.A1(n6), 
	.A0(FE_RN_300_0));
   INVX2M FE_RC_389_0 (.Y(FE_RN_326_0), 
	.A(u_div_PartRem_3__2_));
   INVX2M FE_RC_387_0 (.Y(FE_RN_324_0), 
	.A(FE_RN_298_0));
   NOR2X2M FE_RC_384_0 (.Y(FE_RN_321_0), 
	.B(FE_RN_396_0), 
	.A(FE_RN_302_0));
   AOI21X2M FE_RC_383_0 (.Y(FE_RN_320_0), 
	.B0(FE_RN_321_0), 
	.A1(FE_RN_396_0), 
	.A0(FE_RN_324_0));
   NOR2X2M FE_RC_379_0 (.Y(FE_RN_316_0), 
	.B(FE_RN_396_0), 
	.A(FE_RN_324_0));
   NAND2X2M FE_RC_378_0 (.Y(FE_RN_315_0), 
	.B(FE_RN_417_0), 
	.A(FE_RN_316_0));
   CLKNAND2X2M FE_RC_376_0 (.Y(FE_RN_313_0), 
	.B(FE_RN_396_0), 
	.A(FE_RN_300_0));
   NAND3X2M FE_RC_375_0 (.Y(FE_RN_312_0), 
	.C(FE_RN_320_0), 
	.B(FE_RN_315_0), 
	.A(FE_RN_313_0));
   CLKNAND2X2M FE_RC_374_0 (.Y(FE_RN_311_0), 
	.B(FE_RN_326_0), 
	.A(FE_RN_312_0));
   OAI21X2M FE_RC_373_0 (.Y(u_div_SumTmp_2__2_), 
	.B0(FE_RN_311_0), 
	.A1(FE_RN_326_0), 
	.A0(FE_RN_327_0));
   INVX2M FE_RC_372_0 (.Y(FE_RN_310_0), 
	.A(u_div_CryTmp_2__1_));
   MXI2X1M FE_RC_371_0 (.Y(FE_RN_309_0), 
	.S0(n7), 
	.B(FE_RN_310_0), 
	.A(u_div_CryTmp_2__1_));
   INVX2M FE_RC_370_0 (.Y(FE_RN_308_0), 
	.A(FE_RN_309_0));
   CLKNAND2X2M FE_RC_369_0 (.Y(FE_RN_307_0), 
	.B(FE_RN_298_0), 
	.A(FE_RN_302_0));
   CLKNAND2X2M FE_RC_368_0 (.Y(FE_RN_306_0), 
	.B(u_div_PartRem_3__1_), 
	.A(FE_RN_307_0));
   OAI2B1X2M FE_RC_367_0 (.Y(u_div_SumTmp_2__1_), 
	.B0(FE_RN_306_0), 
	.A1N(FE_RN_308_0), 
	.A0(u_div_PartRem_3__1_));
   OAI21X2M FE_RC_365_0 (.Y(FE_RN_304_0), 
	.B0(n6), 
	.A1(FE_RN_324_0), 
	.A0(FE_RN_300_0));
   NAND2BX2M FE_RC_363_0 (.Y(FE_RN_302_0), 
	.B(FE_RN_386_0), 
	.AN(u_div_CryTmp_2__1_));
   INVX2M FE_RC_362_0 (.Y(FE_RN_301_0), 
	.A(FE_RN_302_0));
   NOR2BX8M FE_RC_361_0 (.Y(FE_RN_300_0), 
	.B(FE_RN_301_0), 
	.AN(u_div_PartRem_3__1_));
   CLKNAND2X2M FE_RC_359_0 (.Y(FE_RN_298_0), 
	.B(u_div_CryTmp_2__1_), 
	.A(n7));
   CLKNAND2X2M FE_RC_358_0 (.Y(FE_RN_297_0), 
	.B(FE_RN_396_0), 
	.A(FE_RN_298_0));
   OAI21X2M FE_RC_357_0 (.Y(FE_RN_296_0), 
	.B0(u_div_PartRem_3__2_), 
	.A1(FE_RN_297_0), 
	.A0(FE_RN_300_0));
   INVX2M FE_RC_338_0 (.Y(FE_RN_282_0), 
	.A(FE_RN_277_0));
   CLKNAND2X2M FE_RC_337_0 (.Y(FE_RN_281_0), 
	.B(FE_RN_248_0), 
	.A(FE_RN_282_0));
   NAND2X4M FE_RC_336_0 (.Y(quotient[3]), 
	.B(FE_RN_271_0), 
	.A(FE_RN_281_0));
   NAND2BX2M FE_RC_335_0 (.Y(FE_RN_280_0), 
	.B(u_div_SumTmp_3__0_), 
	.AN(FE_RN_271_0));
   NAND3X2M FE_RC_334_0 (.Y(FE_RN_279_0), 
	.C(FE_RN_271_0), 
	.B(a[3]), 
	.A(FE_RN_277_0));
   INVX2M FE_RC_333_0 (.Y(FE_RN_278_0), 
	.A(u_div_SumTmp_3__0_));
   NAND2X2M FE_RC_332_0 (.Y(FE_RN_277_0), 
	.B(FE_RN_273_0), 
	.A(FE_RN_258_0));
   NOR2X2M FE_RC_331_0 (.Y(FE_RN_276_0), 
	.B(FE_RN_278_0), 
	.A(FE_RN_277_0));
   CLKNAND2X2M FE_RC_330_0 (.Y(FE_RN_275_0), 
	.B(FE_RN_248_0), 
	.A(FE_RN_276_0));
   NAND3BX2M FE_RC_329_0 (.Y(FE_RN_274_0), 
	.C(a[3]), 
	.B(FE_RN_271_0), 
	.AN(FE_RN_248_0));
   NAND4X4M FE_RC_328_0 (.Y(u_div_PartRem_3__1_), 
	.D(FE_RN_280_0), 
	.C(FE_RN_279_0), 
	.B(FE_RN_275_0), 
	.A(FE_RN_274_0));
   AND2X2M FE_RC_327_0 (.Y(FE_RN_273_0), 
	.B(n3), 
	.A(n11));
   INVX2M FE_RC_326_0 (.Y(FE_RN_272_0), 
	.A(FE_RN_263_0));
   NAND2X2M FE_RC_325_0 (.Y(FE_RN_271_0), 
	.B(FE_RN_273_0), 
	.A(FE_RN_272_0));
   NAND2X2M FE_RC_321_0 (.Y(u_div_CryTmp_3__2_), 
	.B(FE_RN_251_0), 
	.A(FE_RN_254_0));
   INVX2M FE_RC_320_0 (.Y(FE_RN_268_0), 
	.A(FE_RN_262_0));
   INVX2M FE_RC_319_0 (.Y(FE_RN_267_0), 
	.A(FE_RN_232_0));
   AOI21X2M FE_RC_318_0 (.Y(FE_RN_266_0), 
	.B0(FE_RN_267_0), 
	.A1(FE_RN_254_0), 
	.A0(FE_RN_251_0));
   AOI21X2M FE_RC_317_0 (.Y(FE_RN_265_0), 
	.B0(FE_RN_257_0), 
	.A1(FE_RN_229_0), 
	.A0(FE_RN_266_0));
   NAND2X2M FE_RC_316_0 (.Y(FE_RN_264_0), 
	.B(FE_RN_268_0), 
	.A(FE_RN_265_0));
   NAND2X2M FE_RC_315_0 (.Y(FE_RN_263_0), 
	.B(n4), 
	.A(u_div_PartRem_4__4_));
   CLKNAND2X2M FE_RC_314_0 (.Y(FE_RN_262_0), 
	.B(FE_RN_258_0), 
	.A(FE_RN_263_0));
   CLKNAND2X2M FE_RC_313_0 (.Y(FE_RN_261_0), 
	.B(FE_RN_262_0), 
	.A(FE_RN_248_0));
   CLKNAND2X2M FE_RC_312_0 (.Y(u_div_SumTmp_3__4_), 
	.B(FE_RN_264_0), 
	.A(FE_RN_261_0));
   NAND2BX2M FE_RC_309_0 (.Y(FE_RN_258_0), 
	.B(FE_RN_429_0), 
	.AN(u_div_PartRem_4__4_));
   CLKNAND2X4M FE_RC_308_0 (.Y(FE_RN_257_0), 
	.B(FE_RN_226_0), 
	.A(FE_RN_219_0));
   INVX2M FE_RC_307_0 (.Y(FE_RN_256_0), 
	.A(FE_RN_257_0));
   INVX2M FE_RC_306_0 (.Y(FE_RN_255_0), 
	.A(FE_RN_386_0));
   NAND2BX2M FE_RC_305_0 (.Y(FE_RN_254_0), 
	.B(FE_RN_255_0), 
	.AN(FE_RN_205_0));
   INVX2M FE_RC_304_0 (.Y(FE_RN_253_0), 
	.A(FE_RN_206_0));
   INVX2M FE_RC_303_0 (.Y(FE_RN_252_0), 
	.A(FE_RN_209_0));
   NAND2X2M FE_RC_302_0 (.Y(FE_RN_251_0), 
	.B(FE_RN_253_0), 
	.A(FE_RN_252_0));
   CLKNAND2X2M FE_RC_301_0 (.Y(FE_RN_250_0), 
	.B(FE_RN_254_0), 
	.A(FE_RN_251_0));
   NAND3X4M FE_RC_300_0 (.Y(FE_RN_249_0), 
	.C(FE_RN_232_0), 
	.B(FE_RN_229_0), 
	.A(FE_RN_250_0));
   NAND2X4M FE_RC_299_0 (.Y(FE_RN_248_0), 
	.B(FE_RN_256_0), 
	.A(FE_RN_249_0));
   INVX2M FE_RC_296_0 (.Y(FE_RN_246_0), 
	.A(u_div_PartRem_5__1_));
   INVX2M FE_RC_295_0 (.Y(FE_RN_245_0), 
	.A(u_div_SumTmp_4__1_));
   MXI2X1M FE_RC_294_0 (.Y(u_div_PartRem_4__2_), 
	.S0(quotient[4]), 
	.B(FE_RN_245_0), 
	.A(FE_RN_246_0));
   INVX2M FE_RC_293_0 (.Y(FE_RN_244_0), 
	.A(u_div_CryTmp_3__2_));
   INVX2M FE_RC_292_0 (.Y(FE_RN_243_0), 
	.A(FE_RN_221_0));
   AOI2B1X1M FE_RC_291_0 (.Y(FE_RN_242_0), 
	.B0(FE_RN_243_0), 
	.A1N(FE_RN_244_0), 
	.A0(FE_RN_232_0));
   AOI21X2M FE_RC_288_0 (.Y(FE_RN_239_0), 
	.B0(FE_RN_267_0), 
	.A1(FE_RN_244_0), 
	.A0(FE_RN_221_0));
   XOR2X2M FE_RC_287_0 (.Y(FE_RN_238_0), 
	.B(n5), 
	.A(u_div_PartRem_4__3_));
   NAND2BX2M FE_RC_286_0 (.Y(FE_RN_237_0), 
	.B(FE_RN_238_0), 
	.AN(FE_RN_239_0));
   OAI21X1M FE_RC_285_0 (.Y(u_div_SumTmp_3__3_), 
	.B0(FE_RN_237_0), 
	.A1(FE_RN_238_0), 
	.A0(FE_RN_242_0));
   XNOR2X2M FE_RC_284_0 (.Y(FE_RN_236_0), 
	.B(n6), 
	.A(FE_RN_222_0));
   CLKNAND2X2M FE_RC_283_0 (.Y(FE_RN_235_0), 
	.B(FE_RN_221_0), 
	.A(FE_RN_232_0));
   CLKNAND2X2M FE_RC_282_0 (.Y(FE_RN_234_0), 
	.B(u_div_CryTmp_3__2_), 
	.A(FE_RN_235_0));
   OAI21X2M FE_RC_281_0 (.Y(u_div_SumTmp_3__2_), 
	.B0(FE_RN_234_0), 
	.A1(u_div_CryTmp_3__2_), 
	.A0(FE_RN_236_0));
   NAND2BX2M FE_RC_279_0 (.Y(FE_RN_232_0), 
	.B(FE_RN_396_0), 
	.AN(FE_RN_222_0));
   INVX2M FE_RC_277_0 (.Y(FE_RN_230_0), 
	.A(u_div_PartRem_4__3_));
   CLKNAND2X2M FE_RC_276_0 (.Y(FE_RN_229_0), 
	.B(FE_RN_405_0), 
	.A(FE_RN_230_0));
   INVX2M FE_RC_274_0 (.Y(FE_RN_227_0), 
	.A(FE_RN_221_0));
   NAND2X2M FE_RC_273_0 (.Y(FE_RN_226_0), 
	.B(n5), 
	.A(FE_RN_227_0));
   MXI2X3M FE_RC_269_0 (.Y(FE_RN_222_0), 
	.S0(quotient[4]), 
	.B(FE_RN_245_0), 
	.A(FE_RN_246_0));
   NAND2X4M FE_RC_268_0 (.Y(FE_RN_221_0), 
	.B(n6), 
	.A(FE_RN_222_0));
   NAND2X4M FE_RC_267_0 (.Y(FE_RN_220_0), 
	.B(FE_RN_405_0), 
	.A(FE_RN_221_0));
   NAND2X2M FE_RC_266_0 (.Y(FE_RN_219_0), 
	.B(u_div_PartRem_4__3_), 
	.A(FE_RN_220_0));
   NAND3BX4M FE_RC_264_0 (.Y(FE_RN_200_0), 
	.C(FE_RN_190_0), 
	.B(u_div_CryTmp_4__3_), 
	.AN(FE_RN_201_0));
   MXI2X1M FE_RC_263_0 (.Y(u_div_PartRem_4__1_), 
	.S0(FE_RN_210_0), 
	.B(FE_RN_202_0), 
	.A(n179));
   XNOR2X2M FE_RC_262_0 (.Y(FE_RN_218_0), 
	.B(n179), 
	.A(FE_RN_216_0));
   CLKNAND2X2M FE_RC_261_0 (.Y(FE_RN_217_0), 
	.B(u_div_CryTmp_3__1_), 
	.A(n7));
   CLKNAND2X2M FE_RC_260_0 (.Y(FE_RN_216_0), 
	.B(FE_RN_207_0), 
	.A(FE_RN_217_0));
   XNOR2X2M FE_RC_259_0 (.Y(FE_RN_215_0), 
	.B(FE_RN_202_0), 
	.A(FE_RN_216_0));
   MXI2X1M FE_RC_258_0 (.Y(u_div_SumTmp_3__1_), 
	.S0(FE_RN_210_0), 
	.B(FE_RN_215_0), 
	.A(FE_RN_218_0));
   INVX2M FE_RC_257_0 (.Y(FE_RN_214_0), 
	.A(n179));
   INVX2M FE_RC_256_0 (.Y(FE_RN_213_0), 
	.A(FE_RN_202_0));
   INVX2M FE_RC_255_0 (.Y(FE_RN_212_0), 
	.A(FE_RN_201_0));
   NAND3X2M FE_RC_254_0 (.Y(FE_RN_211_0), 
	.C(FE_RN_212_0), 
	.B(FE_RN_190_0), 
	.A(u_div_CryTmp_4__3_));
   NAND2X2M FE_RC_253_0 (.Y(FE_RN_210_0), 
	.B(FE_RN_192_0), 
	.A(FE_RN_211_0));
   MXI2X1M FE_RC_252_0 (.Y(FE_RN_209_0), 
	.S0(FE_RN_210_0), 
	.B(FE_RN_213_0), 
	.A(FE_RN_214_0));
   NAND2BX2M FE_RC_250_0 (.Y(FE_RN_207_0), 
	.B(FE_RN_386_0), 
	.AN(u_div_CryTmp_3__1_));
   INVX2M FE_RC_249_0 (.Y(FE_RN_206_0), 
	.A(FE_RN_207_0));
   INVX2M FE_RC_248_0 (.Y(FE_RN_205_0), 
	.A(u_div_CryTmp_3__1_));
   NAND2X4M FE_RC_245_0 (.Y(quotient[4]), 
	.B(FE_RN_200_0), 
	.A(FE_RN_192_0));
   INVX2M FE_RC_243_0 (.Y(FE_RN_202_0), 
	.A(u_div_SumTmp_4__0_));
   INVX2M FE_RC_242_0 (.Y(FE_RN_201_0), 
	.A(n10));
   XOR2X2M FE_RC_238_0 (.Y(FE_RN_198_0), 
	.B(n5), 
	.A(u_div_PartRem_5__3_));
   NAND2BX2M FE_RC_237_0 (.Y(FE_RN_197_0), 
	.B(FE_RN_198_0), 
	.AN(u_div_CryTmp_4__3_));
   NAND2BX2M FE_RC_235_0 (.Y(FE_RN_195_0), 
	.B(u_div_PartRem_5__3_), 
	.AN(FE_RN_405_0));
   CLKNAND2X2M FE_RC_234_0 (.Y(FE_RN_194_0), 
	.B(FE_RN_190_0), 
	.A(FE_RN_195_0));
   CLKNAND2X2M FE_RC_233_0 (.Y(FE_RN_193_0), 
	.B(u_div_CryTmp_4__3_), 
	.A(FE_RN_194_0));
   NAND2X2M FE_RC_232_0 (.Y(u_div_SumTmp_4__3_), 
	.B(FE_RN_197_0), 
	.A(FE_RN_193_0));
   NAND3X2M FE_RC_231_0 (.Y(FE_RN_192_0), 
	.C(n10), 
	.B(n5), 
	.A(u_div_PartRem_5__3_));
   NAND2BX2M FE_RC_229_0 (.Y(FE_RN_190_0), 
	.B(FE_RN_405_0), 
	.AN(u_div_PartRem_5__3_));
   INVX2M FE_RC_211_0 (.Y(FE_RN_175_0), 
	.A(FE_RN_165_0));
   CLKNAND2X2M FE_RC_210_0 (.Y(u_div_PartRem_5__2_), 
	.B(FE_RN_163_0), 
	.A(FE_RN_175_0));
   OAI2BB2X1M FE_RC_207_0 (.Y(FE_RN_172_0), 
	.B1(FE_RN_396_0), 
	.B0(u_div_PartRem_6__1_), 
	.A1N(u_div_PartRem_6__1_), 
	.A0N(FE_RN_396_0));
   OAI2BB2X1M FE_RC_204_0 (.Y(FE_RN_169_0), 
	.B1(FE_RN_396_0), 
	.B0(u_div_SumTmp_5__1_), 
	.A1N(u_div_SumTmp_5__1_), 
	.A0N(FE_RN_396_0));
   MXI2X1M FE_RC_203_0 (.Y(FE_RN_168_0), 
	.S0(quotient[5]), 
	.B(FE_RN_169_0), 
	.A(FE_RN_172_0));
   NAND2X2M FE_RC_202_0 (.Y(FE_RN_167_0), 
	.B(u_div_CryTmp_4__2_), 
	.A(FE_RN_168_0));
   OAI21X2M FE_RC_201_0 (.Y(u_div_SumTmp_4__2_), 
	.B0(FE_RN_167_0), 
	.A1(u_div_CryTmp_4__2_), 
	.A0(FE_RN_168_0));
   OAI21X2M FE_RC_200_0 (.Y(FE_RN_166_0), 
	.B0(n6), 
	.A1(FE_RN_165_0), 
	.A0(FE_RN_164_0));
   AND2X2M FE_RC_199_0 (.Y(FE_RN_165_0), 
	.B(quotient[5]), 
	.A(u_div_SumTmp_5__1_));
   NOR2BX2M FE_RC_198_0 (.Y(FE_RN_164_0), 
	.B(quotient[5]), 
	.AN(u_div_PartRem_6__1_));
   INVX2M FE_RC_197_0 (.Y(FE_RN_163_0), 
	.A(FE_RN_164_0));
   NAND3BX2M FE_RC_195_0 (.Y(FE_RN_161_0), 
	.C(FE_RN_396_0), 
	.B(FE_RN_163_0), 
	.AN(FE_RN_165_0));
   NAND2X2M FE_RC_194_0 (.Y(FE_RN_160_0), 
	.B(u_div_CryTmp_4__2_), 
	.A(FE_RN_161_0));
   NAND2X4M FE_RC_193_0 (.Y(u_div_CryTmp_4__3_), 
	.B(FE_RN_166_0), 
	.A(FE_RN_160_0));
   CLKNAND2X2M FE_RC_192_0 (.Y(u_div_PartRem_5__1_), 
	.B(FE_RN_134_0), 
	.A(FE_RN_143_0));
   INVX2M FE_RC_191_0 (.Y(FE_RN_159_0), 
	.A(FE_RN_154_0));
   OAI21X2M FE_RC_190_0 (.Y(FE_RN_158_0), 
	.B0(FE_RN_159_0), 
	.A1(u_div_CryTmp_4__1_), 
	.A0(n7));
   NAND2BX2M FE_RC_189_0 (.Y(FE_RN_157_0), 
	.B(FE_RN_151_0), 
	.AN(FE_RN_154_0));
   CLKNAND2X2M FE_RC_188_0 (.Y(FE_RN_156_0), 
	.B(FE_RN_150_0), 
	.A(FE_RN_157_0));
   OAI21X2M FE_RC_187_0 (.Y(u_div_SumTmp_4__1_), 
	.B0(FE_RN_156_0), 
	.A1(FE_RN_158_0), 
	.A0(FE_RN_150_0));
   NOR2BX2M FE_RC_185_0 (.Y(FE_RN_154_0), 
	.B(FE_RN_386_0), 
	.AN(u_div_CryTmp_4__1_));
   NAND2BX2M FE_RC_182_0 (.Y(FE_RN_151_0), 
	.B(FE_RN_386_0), 
	.AN(u_div_CryTmp_4__1_));
   NAND2X4M FE_RC_181_0 (.Y(FE_RN_150_0), 
	.B(FE_RN_143_0), 
	.A(FE_RN_134_0));
   NAND2X2M FE_RC_180_0 (.Y(FE_RN_149_0), 
	.B(FE_RN_151_0), 
	.A(FE_RN_150_0));
   NAND2X2M FE_RC_179_0 (.Y(u_div_CryTmp_4__2_), 
	.B(FE_RN_159_0), 
	.A(FE_RN_149_0));
   INVX2M FE_RC_178_0 (.Y(FE_RN_148_0), 
	.A(FE_RN_141_0));
   NAND2X2M FE_RC_177_0 (.Y(FE_RN_147_0), 
	.B(FE_RN_148_0), 
	.A(FE_RN_138_0));
   NAND2X4M FE_RC_176_0 (.Y(quotient[5]), 
	.B(FE_RN_136_0), 
	.A(FE_RN_147_0));
   CLKNAND2X2M FE_RC_173_0 (.Y(FE_RN_144_0), 
	.B(FE_RN_148_0), 
	.A(FE_RN_138_0));
   NAND3BX2M FE_RC_172_0 (.Y(FE_RN_143_0), 
	.C(FE_RN_144_0), 
	.B(FE_RN_136_0), 
	.AN(n178));
   INVX2M FE_RC_171_0 (.Y(FE_RN_142_0), 
	.A(FE_RN_396_0));
   NAND2BX2M FE_RC_170_0 (.Y(FE_RN_141_0), 
	.B(FE_RN_142_0), 
	.AN(FE_RN_133_0));
   INVX2M FE_RC_168_0 (.Y(FE_RN_139_0), 
	.A(FE_RN_107_0));
   NAND2BX2M FE_RC_167_0 (.Y(FE_RN_138_0), 
	.B(FE_RN_139_0), 
	.AN(FE_RN_106_0));
   AND2X4M FE_RC_166_0 (.Y(FE_RN_137_0), 
	.B(n9), 
	.A(FE_RN_132_0));
   NAND2X4M FE_RC_165_0 (.Y(FE_RN_136_0), 
	.B(FE_RN_128_0), 
	.A(FE_RN_137_0));
   OAI2BB1X2M FE_RC_164_0 (.Y(FE_RN_135_0), 
	.B0(FE_RN_136_0), 
	.A1N(FE_RN_138_0), 
	.A0N(FE_RN_148_0));
   NAND2X2M FE_RC_163_0 (.Y(FE_RN_134_0), 
	.B(u_div_SumTmp_5__0_), 
	.A(FE_RN_135_0));
   INVX2M FE_RC_161_0 (.Y(FE_RN_133_0), 
	.A(n9));
   INVX2M FE_RC_160_0 (.Y(FE_RN_132_0), 
	.A(FE_RN_108_0));
   INVX2M FE_RC_159_0 (.Y(FE_RN_131_0), 
	.A(FE_RN_107_0));
   INVX2M FE_RC_157_0 (.Y(FE_RN_129_0), 
	.A(FE_RN_106_0));
   NAND3X2M FE_RC_156_0 (.Y(FE_RN_128_0), 
	.C(FE_RN_131_0), 
	.B(FE_RN_396_0), 
	.A(FE_RN_129_0));
   INVX2M FE_RC_153_0 (.Y(FE_RN_126_0), 
	.A(FE_RN_107_0));
   INVX2M FE_RC_152_0 (.Y(FE_RN_125_0), 
	.A(FE_RN_106_0));
   CLKNAND2X2M FE_RC_151_0 (.Y(u_div_PartRem_6__2_), 
	.B(FE_RN_126_0), 
	.A(FE_RN_125_0));
   INVX2M FE_RC_150_0 (.Y(FE_RN_124_0), 
	.A(quotient[6]));
   CLKNAND2X2M FE_RC_149_0 (.Y(FE_RN_123_0), 
	.B(FE_RN_124_0), 
	.A(FE_RN_117_0));
   INVX2M FE_RC_148_0 (.Y(FE_RN_122_0), 
	.A(u_div_SumTmp_6__1_));
   NAND3X2M FE_RC_147_0 (.Y(FE_RN_121_0), 
	.C(n6), 
	.B(quotient[6]), 
	.A(FE_RN_122_0));
   CLKNAND2X2M FE_RC_146_0 (.Y(FE_RN_120_0), 
	.B(FE_RN_123_0), 
	.A(FE_RN_121_0));
   AOI2B1X1M FE_RC_145_0 (.Y(FE_RN_119_0), 
	.B0(FE_RN_120_0), 
	.A1N(n6), 
	.A0(FE_RN_106_0));
   CLKXOR2X2M FE_RC_143_0 (.Y(FE_RN_117_0), 
	.B(n6), 
	.A(u_div_PartRem_7__1_));
   INVX2M FE_RC_142_0 (.Y(FE_RN_116_0), 
	.A(FE_RN_117_0));
   NAND2BX2M FE_RC_141_0 (.Y(FE_RN_115_0), 
	.B(FE_RN_116_0), 
	.AN(quotient[6]));
   NAND3X2M FE_RC_138_0 (.Y(FE_RN_112_0), 
	.C(FE_RN_396_0), 
	.B(quotient[6]), 
	.A(FE_RN_122_0));
   CLKNAND2X2M FE_RC_137_0 (.Y(FE_RN_111_0), 
	.B(FE_RN_115_0), 
	.A(FE_RN_112_0));
   AOI2B1X1M FE_RC_136_0 (.Y(FE_RN_110_0), 
	.B0(FE_RN_111_0), 
	.A1N(FE_RN_396_0), 
	.A0(FE_RN_106_0));
   MXI2X1M FE_RC_135_0 (.Y(u_div_SumTmp_5__2_), 
	.S0(u_div_CryTmp_5__2_), 
	.B(FE_RN_110_0), 
	.A(FE_RN_119_0));
   INVX2M FE_RC_133_0 (.Y(FE_RN_108_0), 
	.A(u_div_CryTmp_5__2_));
   NOR2BX4M FE_RC_132_0 (.Y(FE_RN_107_0), 
	.B(quotient[6]), 
	.AN(u_div_PartRem_7__1_));
   AND2X4M FE_RC_131_0 (.Y(FE_RN_106_0), 
	.B(quotient[6]), 
	.A(u_div_SumTmp_6__1_));
   CLKNAND2X2M FE_RC_127_0 (.Y(FE_RN_103_0), 
	.B(FE_RN_73_0), 
	.A(FE_RN_81_0));
   NAND3BX2M FE_RC_126_0 (.Y(u_div_PartRem_6__1_), 
	.C(FE_RN_90_0), 
	.B(FE_RN_64_0), 
	.AN(FE_RN_103_0));
   INVX2M FE_RC_125_0 (.Y(FE_RN_102_0), 
	.A(FE_RN_64_0));
   NAND2X2M FE_RC_124_0 (.Y(FE_RN_101_0), 
	.B(FE_RN_102_0), 
	.A(FE_RN_100_0));
   NAND2BX2M FE_RC_123_0 (.Y(FE_RN_100_0), 
	.B(FE_RN_92_0), 
	.AN(FE_RN_86_0));
   CLKNAND2X2M FE_RC_122_0 (.Y(FE_RN_99_0), 
	.B(FE_RN_100_0), 
	.A(FE_RN_89_0));
   OAI21X2M FE_RC_120_0 (.Y(FE_RN_97_0), 
	.B0(FE_RN_85_0), 
	.A1(u_div_CryTmp_5__1_), 
	.A0(n7));
   INVX2M FE_RC_119_0 (.Y(FE_RN_96_0), 
	.A(FE_RN_97_0));
   INVX2M FE_RC_118_0 (.Y(FE_RN_95_0), 
	.A(FE_RN_89_0));
   NAND3X2M FE_RC_117_0 (.Y(FE_RN_94_0), 
	.C(FE_RN_64_0), 
	.B(FE_RN_96_0), 
	.A(FE_RN_95_0));
   NAND3X2M FE_RC_116_0 (.Y(u_div_SumTmp_5__1_), 
	.C(FE_RN_101_0), 
	.B(FE_RN_99_0), 
	.A(FE_RN_94_0));
   NAND2BX2M FE_RC_114_0 (.Y(FE_RN_92_0), 
	.B(FE_RN_386_0), 
	.AN(u_div_CryTmp_5__1_));
   NAND2X2M FE_RC_113_0 (.Y(FE_RN_91_0), 
	.B(FE_RN_81_0), 
	.A(FE_RN_73_0));
   NAND2BX2M FE_RC_112_0 (.Y(FE_RN_90_0), 
	.B(FE_RN_60_0), 
	.AN(FE_RN_12_0));
   NAND2BX4M FE_RC_111_0 (.Y(FE_RN_89_0), 
	.B(FE_RN_90_0), 
	.AN(FE_RN_91_0));
   CLKNAND2X2M FE_RC_110_0 (.Y(FE_RN_88_0), 
	.B(FE_RN_92_0), 
	.A(FE_RN_89_0));
   NOR2BX2M FE_RC_108_0 (.Y(FE_RN_86_0), 
	.B(FE_RN_386_0), 
	.AN(u_div_CryTmp_5__1_));
   INVX2M FE_RC_107_0 (.Y(FE_RN_85_0), 
	.A(FE_RN_86_0));
   OAI2B11X4M FE_RC_106_0 (.Y(u_div_CryTmp_5__2_), 
	.C0(FE_RN_85_0), 
	.B0(FE_RN_88_0), 
	.A1N(FE_RN_92_0), 
	.A0(FE_RN_64_0));
   INVX2M FE_RC_105_0 (.Y(FE_RN_84_0), 
	.A(FE_RN_18_0));
   NAND3BX2M FE_RC_104_0 (.Y(FE_RN_16_0), 
	.C(FE_RN_84_0), 
	.B(u_div_CryTmp_7__1_), 
	.AN(FE_RN_15_0));
   OAI2BB2X1M FE_RC_103_0 (.Y(u_div_SumTmp_7__0_), 
	.B1(a[7]), 
	.B0(n8), 
	.A1N(n8), 
	.A0N(a[7]));
   INVX2M FE_RC_102_0 (.Y(FE_RN_83_0), 
	.A(FE_RN_61_0));
   INVX2M FE_RC_101_0 (.Y(FE_RN_82_0), 
	.A(FE_RN_74_0));
   OAI2B2X2M FE_RC_100_0 (.Y(FE_OFN19_N134), 
	.B1(FE_RN_82_0), 
	.B0(FE_RN_61_0), 
	.A1N(FE_RN_83_0), 
	.A0(FE_RN_12_0));
   CLKNAND2X2M FE_RC_99_0 (.Y(FE_RN_81_0), 
	.B(a[6]), 
	.A(FE_RN_61_0));
   INVX2M FE_RC_98_0 (.Y(FE_RN_80_0), 
	.A(FE_RN_61_0));
   INVX2M FE_RC_96_0 (.Y(FE_RN_78_0), 
	.A(FE_RN_15_0));
   CLKNAND2X2M FE_RC_95_0 (.Y(FE_RN_77_0), 
	.B(a[7]), 
	.A(n8));
   OAI21X2M FE_RC_94_0 (.Y(FE_RN_76_0), 
	.B0(FE_RN_77_0), 
	.A1(a[7]), 
	.A0(n8));
   NAND4X2M FE_RC_93_0 (.Y(FE_RN_75_0), 
	.D(FE_RN_84_0), 
	.C(u_div_CryTmp_7__1_), 
	.B(FE_RN_78_0), 
	.A(FE_RN_76_0));
   CLKNAND2X2M FE_RC_92_0 (.Y(FE_RN_74_0), 
	.B(FE_RN_9_0), 
	.A(FE_RN_75_0));
   NAND3X4M FE_RC_91_0 (.Y(FE_RN_73_0), 
	.C(u_div_SumTmp_6__0_), 
	.B(FE_RN_80_0), 
	.A(FE_RN_74_0));
   INVX2M FE_RC_90_0 (.Y(FE_RN_72_0), 
	.A(FE_RN_15_0));
   INVX2M FE_RC_89_0 (.Y(FE_RN_71_0), 
	.A(n8));
   CLKNAND2X2M FE_RC_88_0 (.Y(FE_RN_70_0), 
	.B(a[7]), 
	.A(FE_RN_71_0));
   INVX2M FE_RC_87_0 (.Y(FE_RN_69_0), 
	.A(n8));
   INVX2M FE_RC_86_0 (.Y(FE_RN_68_0), 
	.A(FE_RN_18_0));
   OA21X4M FE_RC_85_0 (.Y(FE_RN_67_0), 
	.B0(FE_RN_68_0), 
	.A1(a[7]), 
	.A0(FE_RN_69_0));
   NAND4X2M FE_RC_84_0 (.Y(FE_RN_66_0), 
	.D(u_div_CryTmp_7__1_), 
	.C(FE_RN_72_0), 
	.B(FE_RN_70_0), 
	.A(FE_RN_67_0));
   CLKNAND2X2M FE_RC_83_0 (.Y(FE_RN_65_0), 
	.B(a[6]), 
	.A(FE_RN_66_0));
   NAND3BX2M FE_RC_82_0 (.Y(FE_RN_64_0), 
	.C(FE_RN_9_0), 
	.B(FE_RN_12_0), 
	.AN(FE_RN_65_0));
   INVX2M FE_RC_80_0 (.Y(FE_RN_62_0), 
	.A(u_div_SumTmp_6__0_));
   NAND2X2M FE_RC_79_0 (.Y(FE_RN_61_0), 
	.B(n6), 
	.A(n9));
   NOR2X2M FE_RC_78_0 (.Y(FE_RN_60_0), 
	.B(FE_RN_62_0), 
	.A(FE_RN_61_0));
   CLKINVX2M FE_RC_60_0 (.Y(quotient[7]), 
	.A(FE_RN_16_0));
   INVX2M FE_RC_59_0 (.Y(FE_RN_46_0), 
	.A(u_div_SumTmp_7__0_));
   CLKNAND2X2M FE_RC_58_0 (.Y(FE_RN_45_0), 
	.B(a[7]), 
	.A(FE_RN_16_0));
   OAI21X2M FE_RC_57_0 (.Y(u_div_PartRem_7__1_), 
	.B0(FE_RN_45_0), 
	.A1(FE_RN_46_0), 
	.A0(FE_RN_16_0));
   NOR3X2M FE_RC_55_0 (.Y(FE_RN_43_0), 
	.C(FE_RN_386_0), 
	.B(u_div_SumTmp_7__0_), 
	.A(a[7]));
   INVX2M FE_RC_54_0 (.Y(FE_RN_42_0), 
	.A(a[7]));
   NAND3BX2M FE_RC_52_0 (.Y(FE_RN_40_0), 
	.C(n7), 
	.B(FE_RN_405_0), 
	.AN(a[7]));
   OAI21X2M FE_RC_51_0 (.Y(FE_RN_39_0), 
	.B0(FE_RN_40_0), 
	.A1(n7), 
	.A0(FE_RN_42_0));
   INVX2M FE_RC_50_0 (.Y(FE_RN_38_0), 
	.A(u_div_CryTmp_6__1_));
   OAI21X2M FE_RC_49_0 (.Y(FE_RN_37_0), 
	.B0(FE_RN_38_0), 
	.A1(FE_RN_39_0), 
	.A0(FE_RN_43_0));
   NAND3BX2M FE_RC_48_0 (.Y(FE_RN_36_0), 
	.C(a[7]), 
	.B(n7), 
	.AN(n5));
   CLKNAND2X2M FE_RC_47_0 (.Y(FE_RN_35_0), 
	.B(FE_RN_10_0), 
	.A(FE_RN_36_0));
   CLKNAND2X2M FE_RC_46_0 (.Y(FE_RN_34_0), 
	.B(u_div_CryTmp_6__1_), 
	.A(FE_RN_35_0));
   NAND3X2M FE_RC_44_0 (.Y(FE_RN_32_0), 
	.C(u_div_CryTmp_6__1_), 
	.B(u_div_SumTmp_7__0_), 
	.A(FE_RN_42_0));
   NAND3BX2M FE_RC_42_0 (.Y(FE_RN_30_0), 
	.C(a[7]), 
	.B(FE_RN_38_0), 
	.AN(u_div_SumTmp_7__0_));
   NAND2X2M FE_RC_41_0 (.Y(FE_RN_29_0), 
	.B(FE_RN_32_0), 
	.A(FE_RN_30_0));
   NAND2BX2M FE_RC_40_0 (.Y(FE_RN_28_0), 
	.B(FE_RN_29_0), 
	.AN(FE_RN_13_0));
   INVX2M FE_RC_39_0 (.Y(FE_RN_27_0), 
	.A(FE_RN_3_0));
   NAND3X2M FE_RC_38_0 (.Y(FE_RN_26_0), 
	.C(u_div_CryTmp_6__1_), 
	.B(u_div_SumTmp_7__0_), 
	.A(a[7]));
   OAI21X2M FE_RC_37_0 (.Y(FE_RN_25_0), 
	.B0(FE_RN_26_0), 
	.A1(FE_RN_27_0), 
	.A0(FE_RN_21_0));
   CLKNAND2X2M FE_RC_36_0 (.Y(FE_RN_24_0), 
	.B(n10), 
	.A(u_div_CryTmp_7__1_));
   INVX2M FE_RC_35_0 (.Y(FE_RN_23_0), 
	.A(u_div_CryTmp_6__1_));
   MXI2X1M FE_RC_33_0 (.Y(FE_RN_21_0), 
	.S0(FE_RN_42_0), 
	.B(FE_RN_23_0), 
	.A(u_div_CryTmp_6__1_));
   NOR2BX2M FE_RC_32_0 (.Y(FE_RN_20_0), 
	.B(FE_RN_21_0), 
	.AN(FE_RN_24_0));
   OAI21X4M FE_RC_31_0 (.Y(FE_RN_19_0), 
	.B0(n7), 
	.A1(FE_RN_20_0), 
	.A0(FE_RN_25_0));
   NAND4X2M FE_RC_30_0 (.Y(u_div_SumTmp_6__1_), 
	.D(FE_RN_37_0), 
	.C(FE_RN_34_0), 
	.B(FE_RN_28_0), 
	.A(FE_RN_19_0));
   NAND2X2M FE_RC_29_0 (.Y(FE_RN_18_0), 
	.B(n7), 
	.A(n5));
   NAND2BX4M FE_RC_26_0 (.Y(FE_RN_15_0), 
	.B(n10), 
	.AN(FE_RN_3_0));
   AND2X2M FE_RC_25_0 (.Y(FE_RN_14_0), 
	.B(n5), 
	.A(u_div_CryTmp_7__1_));
   NAND2BX2M FE_RC_24_0 (.Y(FE_RN_13_0), 
	.B(FE_RN_14_0), 
	.AN(FE_RN_15_0));
   NAND3X4M FE_RC_23_0 (.Y(FE_RN_12_0), 
	.C(n7), 
	.B(a[7]), 
	.A(FE_RN_13_0));
   INVX2M FE_RC_22_0 (.Y(FE_RN_11_0), 
	.A(a[7]));
   NAND2BX2M FE_RC_21_0 (.Y(FE_RN_10_0), 
	.B(FE_RN_11_0), 
	.AN(n7));
   CLKNAND2X2M FE_RC_20_0 (.Y(FE_RN_9_0), 
	.B(u_div_CryTmp_6__1_), 
	.A(FE_RN_10_0));
   INVX2M FE_RC_12_0 (.Y(FE_RN_4_0), 
	.A(n5));
   NOR2BX8M FE_RC_11_0 (.Y(n9), 
	.B(FE_RN_4_0), 
	.AN(n10));
   INVX2M FE_RC_10_0 (.Y(FE_RN_3_0), 
	.A(n6));
   CLKINVX2M FE_RC_4_0 (.Y(n3), 
	.A(b[5]));
   INVX2M FE_RC_3_0 (.Y(FE_RN_0_0), 
	.A(b[5]));
   AND3X6M FE_RC_2_0 (.Y(n10), 
	.C(FE_RN_0_0), 
	.B(n4), 
	.A(n11));
   ADDFHX4M u_div_u_fa_PartRem_0_0_3 (.CO(u_div_CryTmp_0__4_), 
	.CI(u_div_CryTmp_0__3_), 
	.B(n5), 
	.A(u_div_PartRem_1__3_));
   ADDFHX4M u_div_u_fa_PartRem_0_0_4 (.CO(u_div_CryTmp_0__5_), 
	.CI(u_div_CryTmp_0__4_), 
	.B(n4), 
	.A(u_div_PartRem_1__4_));
   ADDFHX2M u_div_u_fa_PartRem_0_0_5 (.CO(u_div_CryTmp_0__6_), 
	.CI(u_div_CryTmp_0__5_), 
	.B(n3), 
	.A(u_div_PartRem_1__5_));
   ADDFHX4M u_div_u_fa_PartRem_0_0_1 (.CO(u_div_CryTmp_0__2_), 
	.CI(u_div_CryTmp_0__1_), 
	.B(n7), 
	.A(u_div_PartRem_1__1_));
   ADDFHX4M u_div_u_fa_PartRem_0_0_2 (.CO(u_div_CryTmp_0__3_), 
	.CI(u_div_CryTmp_0__2_), 
	.B(n6), 
	.A(u_div_PartRem_1__2_));
   ADDFHX2M u_div_u_fa_PartRem_0_0_6 (.CO(u_div_CryTmp_0__7_), 
	.CI(u_div_CryTmp_0__6_), 
	.B(n172), 
	.A(u_div_PartRem_1__6_));
   ADDFHX4M u_div_u_fa_PartRem_0_0_7 (.CO(quotient[0]), 
	.CI(u_div_CryTmp_0__7_), 
	.B(n171), 
	.A(u_div_PartRem_1__7_));
   ADDFHX1M u_div_u_fa_PartRem_0_1_6 (.S(u_div_SumTmp_1__6_), 
	.CO(u_div_CryTmp_1__7_), 
	.CI(u_div_CryTmp_1__6_), 
	.B(n172), 
	.A(u_div_PartRem_2__6_));
   INVX8M U1 (.Y(n8), 
	.A(b[0]));
   NOR2X8M U2 (.Y(n11), 
	.B(b[7]), 
	.A(b[6]));
   AND2X8M U6 (.Y(quotient[1]), 
	.B(n171), 
	.A(u_div_CryTmp_1__7_));
   MX2XLM U7 (.Y(u_div_PartRem_1__7_), 
	.S0(quotient[1]), 
	.B(u_div_SumTmp_1__6_), 
	.A(u_div_PartRem_2__6_));
   MX2X1M U9 (.Y(u_div_PartRem_2__4_), 
	.S0(quotient[2]), 
	.B(u_div_SumTmp_2__3_), 
	.A(u_div_PartRem_3__3_));
   MX2X1M U11 (.Y(u_div_PartRem_2__5_), 
	.S0(quotient[2]), 
	.B(u_div_SumTmp_2__4_), 
	.A(u_div_PartRem_3__4_));
   MX2X1M U13 (.Y(u_div_PartRem_2__6_), 
	.S0(quotient[2]), 
	.B(u_div_SumTmp_2__5_), 
	.A(u_div_PartRem_3__5_));
   MX2X2M U14 (.Y(u_div_PartRem_3__5_), 
	.S0(quotient[3]), 
	.B(u_div_SumTmp_3__4_), 
	.A(u_div_PartRem_4__4_));
   MX2X1M U15 (.Y(u_div_PartRem_3__4_), 
	.S0(quotient[3]), 
	.B(u_div_SumTmp_3__3_), 
	.A(u_div_PartRem_4__3_));
   MX2X1M U16 (.Y(u_div_PartRem_3__3_), 
	.S0(quotient[3]), 
	.B(u_div_SumTmp_3__2_), 
	.A(u_div_PartRem_4__2_));
   MX2X2M U17 (.Y(u_div_PartRem_3__2_), 
	.S0(quotient[3]), 
	.B(u_div_SumTmp_3__1_), 
	.A(u_div_PartRem_4__1_));
   MX2X1M U18 (.Y(u_div_PartRem_4__4_), 
	.S0(quotient[4]), 
	.B(u_div_SumTmp_4__3_), 
	.A(u_div_PartRem_5__3_));
   MX2X2M U19 (.Y(u_div_PartRem_4__3_), 
	.S0(quotient[4]), 
	.B(u_div_SumTmp_4__2_), 
	.A(u_div_PartRem_5__2_));
   MX2X2M U22 (.Y(u_div_PartRem_5__3_), 
	.S0(quotient[5]), 
	.B(u_div_SumTmp_5__2_), 
	.A(u_div_PartRem_6__2_));
   MX2XLM U23 (.Y(u_div_PartRem_1__3_), 
	.S0(quotient[1]), 
	.B(u_div_SumTmp_1__2_), 
	.A(u_div_PartRem_2__2_));
   MX2XLM U24 (.Y(u_div_PartRem_1__4_), 
	.S0(quotient[1]), 
	.B(u_div_SumTmp_1__3_), 
	.A(u_div_PartRem_2__3_));
   MX2XLM U25 (.Y(u_div_PartRem_1__6_), 
	.S0(quotient[1]), 
	.B(u_div_SumTmp_1__5_), 
	.A(u_div_PartRem_2__5_));
   OR2X4M U29 (.Y(u_div_CryTmp_7__1_), 
	.B(n8), 
	.A(a[7]));
   XNOR2X2M U30 (.Y(u_div_SumTmp_2__0_), 
	.B(a[2]), 
	.A(n8));
   XNOR2X2M U31 (.Y(u_div_SumTmp_3__0_), 
	.B(a[3]), 
	.A(n8));
   XNOR2X2M U32 (.Y(u_div_SumTmp_4__0_), 
	.B(a[4]), 
	.A(n8));
   XNOR2X1M U33 (.Y(u_div_SumTmp_5__0_), 
	.B(a[5]), 
	.A(n8));
   XNOR2X2M U34 (.Y(u_div_SumTmp_6__0_), 
	.B(a[6]), 
	.A(n8));
   INVX8M U36 (.Y(n7), 
	.A(b[1]));
   XNOR2X2M U37 (.Y(u_div_SumTmp_1__0_), 
	.B(a[1]), 
	.A(n8));
   OR2X2M U40 (.Y(u_div_CryTmp_5__1_), 
	.B(n8), 
	.A(a[5]));
   OR2X2M U41 (.Y(u_div_CryTmp_4__1_), 
	.B(n8), 
	.A(a[4]));
   OR2X2M U42 (.Y(u_div_CryTmp_3__1_), 
	.B(n8), 
	.A(a[3]));
   OR2X2M U43 (.Y(u_div_CryTmp_2__1_), 
	.B(n8), 
	.A(a[2]));
   OR2X2M U44 (.Y(u_div_CryTmp_1__1_), 
	.B(n8), 
	.A(a[1]));
   NAND2BX2M U45 (.Y(u_div_CryTmp_0__1_), 
	.B(b[0]), 
	.AN(a[0]));
   OR2X4M U46 (.Y(u_div_CryTmp_6__1_), 
	.B(n8), 
	.A(a[6]));
   INVX6M U47 (.Y(n5), 
	.A(b[3]));
   CLKMX2X2M U53 (.Y(u_div_PartRem_1__5_), 
	.S0(quotient[1]), 
	.B(u_div_SumTmp_1__4_), 
	.A(u_div_PartRem_2__4_));
   CLKMX2X2M U57 (.Y(u_div_PartRem_1__2_), 
	.S0(quotient[1]), 
	.B(u_div_SumTmp_1__1_), 
	.A(u_div_PartRem_2__1_));
   MX2X2M U59 (.Y(u_div_PartRem_1__1_), 
	.S0(quotient[1]), 
	.B(u_div_SumTmp_1__0_), 
	.A(a[1]));
   INVX8M U28 (.Y(n6), 
	.A(b[2]));
   INVX12M U48 (.Y(n4), 
	.A(b[4]));
endmodule

module ALU_DW01_sub_0 (
	A, 
	B, 
	CI, 
	DIFF, 
	CO, 
	n167, 
	n169, 
	n172, 
	n165, 
	n174, 
	n173, 
	n171);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] DIFF;
   output CO;
   input n167;
   input n169;
   input n172;
   input n165;
   input n174;
   input n173;
   input n171;

   // Internal wires
   wire n3;
   wire n5;
   wire n6;
   wire n7;
   wire [8:1] carry;

   ADDFX2M U2_5 (.S(DIFF[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(n3), 
	.A(A[5]));
   ADDFX2M U2_4 (.S(DIFF[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(n174), 
	.A(A[4]));
   ADDFX2M U2_3 (.S(DIFF[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(n5), 
	.A(A[3]));
   ADDFX2M U2_2 (.S(DIFF[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(n6), 
	.A(A[2]));
   ADDFX2M U2_7 (.S(DIFF[7]), 
	.CO(carry[8]), 
	.CI(carry[7]), 
	.B(n171), 
	.A(A[7]));
   ADDFX2M U2_6 (.S(DIFF[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(n172), 
	.A(A[6]));
   ADDFX2M U2_1 (.S(DIFF[1]), 
	.CO(carry[2]), 
	.CI(carry[1]), 
	.B(n7), 
	.A(A[1]));
   XNOR2X2M U1 (.Y(DIFF[0]), 
	.B(A[0]), 
	.A(n165));
   OR2X2M U2 (.Y(carry[1]), 
	.B(n165), 
	.A(A[0]));
   INVX2M U3 (.Y(n7), 
	.A(B[1]));
   INVX2M U7 (.Y(n6), 
	.A(B[2]));
   INVX2M U8 (.Y(n5), 
	.A(B[3]));
   INVX2M U10 (.Y(n3), 
	.A(B[5]));
   CLKINVX1M U11 (.Y(DIFF[8]), 
	.A(carry[8]));
endmodule

module ALU_DW01_add_0 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire [7:2] carry;

   ADDFX2M U1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.CI(n1), 
	.B(B[1]), 
	.A(A[1]));
   ADDFX2M U1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(B[2]), 
	.A(A[2]));
   ADDFX2M U1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(B[3]), 
	.A(A[3]));
   ADDFX2M U1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(B[4]), 
	.A(A[4]));
   ADDFX2M U1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(B[5]), 
	.A(A[5]));
   ADDFX2M U1_7 (.S(SUM[7]), 
	.CO(SUM[8]), 
	.CI(carry[7]), 
	.B(B[7]), 
	.A(A[7]));
   ADDFX2M U1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   AND2X2M U1 (.Y(n1), 
	.B(A[0]), 
	.A(B[0]));
   CLKXOR2X2M U2 (.Y(SUM[0]), 
	.B(A[0]), 
	.A(B[0]));
endmodule

module ALU_DW01_add_1 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [13:0] A;
   input [13:0] B;
   input CI;
   output [13:0] SUM;
   output CO;

   // Internal wires
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;

   OAI21BX1M U2 (.Y(n17), 
	.B0N(n21), 
	.A1(n20), 
	.A0(n19));
   AOI2BB1X2M U3 (.Y(n24), 
	.B0(n10), 
	.A1N(n11), 
	.A0N(n8));
   NOR2X2M U4 (.Y(n19), 
	.B(A[11]), 
	.A(B[11]));
   NOR2X2M U5 (.Y(n11), 
	.B(A[9]), 
	.A(B[9]));
   NOR2X2M U6 (.Y(n23), 
	.B(A[10]), 
	.A(B[10]));
   NOR2X2M U7 (.Y(n14), 
	.B(A[8]), 
	.A(B[8]));
   NAND2X2M U8 (.Y(n13), 
	.B(B[7]), 
	.A(A[7]));
   INVX2M U9 (.Y(n7), 
	.A(A[6]));
   INVX2M U10 (.Y(SUM[6]), 
	.A(n7));
   CLKXOR2X2M U11 (.Y(SUM[7]), 
	.B(B[7]), 
	.A(A[7]));
   CLKXOR2X2M U12 (.Y(SUM[13]), 
	.B(n16), 
	.A(B[13]));
   BUFX2M U13 (.Y(SUM[0]), 
	.A(A[0]));
   BUFX2M U14 (.Y(SUM[1]), 
	.A(A[1]));
   BUFX2M U15 (.Y(SUM[2]), 
	.A(A[2]));
   BUFX2M U16 (.Y(SUM[3]), 
	.A(A[3]));
   BUFX2M U17 (.Y(SUM[4]), 
	.A(A[4]));
   BUFX2M U18 (.Y(SUM[5]), 
	.A(A[5]));
   XNOR2X1M U19 (.Y(SUM[9]), 
	.B(n9), 
	.A(n8));
   NOR2X1M U20 (.Y(n9), 
	.B(n11), 
	.A(n10));
   CLKXOR2X2M U21 (.Y(SUM[8]), 
	.B(n13), 
	.A(n12));
   NAND2BX1M U22 (.Y(n12), 
	.B(n15), 
	.AN(n14));
   OAI2BB1X1M U23 (.Y(n16), 
	.B0(n18), 
	.A1N(A[12]), 
	.A0N(n17));
   OAI21X1M U24 (.Y(n18), 
	.B0(B[12]), 
	.A1(n17), 
	.A0(A[12]));
   XOR3XLM U25 (.Y(SUM[12]), 
	.C(n17), 
	.B(A[12]), 
	.A(B[12]));
   XNOR2X1M U26 (.Y(SUM[11]), 
	.B(n22), 
	.A(n20));
   NOR2X1M U27 (.Y(n22), 
	.B(n19), 
	.A(n21));
   AND2X1M U28 (.Y(n21), 
	.B(A[11]), 
	.A(B[11]));
   OA21X1M U29 (.Y(n20), 
	.B0(n25), 
	.A1(n24), 
	.A0(n23));
   CLKXOR2X2M U30 (.Y(SUM[10]), 
	.B(n24), 
	.A(n26));
   AND2X1M U31 (.Y(n10), 
	.B(A[9]), 
	.A(B[9]));
   OA21X1M U32 (.Y(n8), 
	.B0(n15), 
	.A1(n14), 
	.A0(n13));
   CLKNAND2X2M U33 (.Y(n15), 
	.B(A[8]), 
	.A(B[8]));
   NAND2BX1M U34 (.Y(n26), 
	.B(n25), 
	.AN(n23));
   CLKNAND2X2M U35 (.Y(n25), 
	.B(A[10]), 
	.A(B[10]));
endmodule

module ALU_DW02_mult_0 (
	A, 
	B, 
	TC, 
	PRODUCT, 
	n178, 
	n179, 
	n182, 
	n167, 
	n169, 
	n172, 
	n183, 
	n181, 
	n165, 
	n174, 
	n173, 
	n180, 
	n171);
   input [7:0] A;
   input [7:0] B;
   input TC;
   output [15:0] PRODUCT;
   input n178;
   input n179;
   input n182;
   input n167;
   input n169;
   input n172;
   input n183;
   input n181;
   input n165;
   input n174;
   input n173;
   input n180;
   input n171;

   // Internal wires
   wire ab_7__7_;
   wire ab_7__6_;
   wire ab_7__5_;
   wire ab_7__4_;
   wire ab_7__3_;
   wire ab_7__2_;
   wire ab_7__1_;
   wire ab_7__0_;
   wire ab_6__7_;
   wire ab_6__6_;
   wire ab_6__5_;
   wire ab_6__4_;
   wire ab_6__3_;
   wire ab_6__2_;
   wire ab_6__1_;
   wire ab_6__0_;
   wire ab_5__7_;
   wire ab_5__6_;
   wire ab_5__5_;
   wire ab_5__4_;
   wire ab_5__3_;
   wire ab_5__2_;
   wire ab_5__1_;
   wire ab_5__0_;
   wire ab_4__7_;
   wire ab_4__6_;
   wire ab_4__5_;
   wire ab_4__4_;
   wire ab_4__3_;
   wire ab_4__2_;
   wire ab_4__1_;
   wire ab_4__0_;
   wire ab_3__7_;
   wire ab_3__6_;
   wire ab_3__5_;
   wire ab_3__4_;
   wire ab_3__3_;
   wire ab_3__2_;
   wire ab_3__1_;
   wire ab_3__0_;
   wire ab_2__7_;
   wire ab_2__6_;
   wire ab_2__5_;
   wire ab_2__4_;
   wire ab_2__3_;
   wire ab_2__2_;
   wire ab_2__1_;
   wire ab_2__0_;
   wire ab_1__7_;
   wire ab_1__6_;
   wire ab_1__5_;
   wire ab_1__4_;
   wire ab_1__3_;
   wire ab_1__2_;
   wire ab_1__1_;
   wire ab_1__0_;
   wire ab_0__7_;
   wire ab_0__6_;
   wire ab_0__5_;
   wire ab_0__4_;
   wire ab_0__3_;
   wire ab_0__2_;
   wire ab_0__1_;
   wire CARRYB_7__6_;
   wire CARRYB_7__5_;
   wire CARRYB_7__4_;
   wire CARRYB_7__3_;
   wire CARRYB_7__2_;
   wire CARRYB_7__1_;
   wire CARRYB_7__0_;
   wire CARRYB_6__6_;
   wire CARRYB_6__5_;
   wire CARRYB_6__4_;
   wire CARRYB_6__3_;
   wire CARRYB_6__2_;
   wire CARRYB_6__1_;
   wire CARRYB_6__0_;
   wire CARRYB_5__6_;
   wire CARRYB_5__5_;
   wire CARRYB_5__4_;
   wire CARRYB_5__3_;
   wire CARRYB_5__2_;
   wire CARRYB_5__1_;
   wire CARRYB_5__0_;
   wire CARRYB_4__6_;
   wire CARRYB_4__5_;
   wire CARRYB_4__4_;
   wire CARRYB_4__3_;
   wire CARRYB_4__2_;
   wire CARRYB_4__1_;
   wire CARRYB_4__0_;
   wire CARRYB_3__6_;
   wire CARRYB_3__5_;
   wire CARRYB_3__4_;
   wire CARRYB_3__3_;
   wire CARRYB_3__2_;
   wire CARRYB_3__1_;
   wire CARRYB_3__0_;
   wire CARRYB_2__6_;
   wire CARRYB_2__5_;
   wire CARRYB_2__4_;
   wire CARRYB_2__3_;
   wire CARRYB_2__2_;
   wire CARRYB_2__1_;
   wire CARRYB_2__0_;
   wire SUMB_7__6_;
   wire SUMB_7__5_;
   wire SUMB_7__4_;
   wire SUMB_7__3_;
   wire SUMB_7__2_;
   wire SUMB_7__1_;
   wire SUMB_7__0_;
   wire SUMB_6__6_;
   wire SUMB_6__5_;
   wire SUMB_6__4_;
   wire SUMB_6__3_;
   wire SUMB_6__2_;
   wire SUMB_6__1_;
   wire SUMB_5__6_;
   wire SUMB_5__5_;
   wire SUMB_5__4_;
   wire SUMB_5__3_;
   wire SUMB_5__2_;
   wire SUMB_5__1_;
   wire SUMB_4__6_;
   wire SUMB_4__5_;
   wire SUMB_4__4_;
   wire SUMB_4__3_;
   wire SUMB_4__2_;
   wire SUMB_4__1_;
   wire SUMB_3__6_;
   wire SUMB_3__5_;
   wire SUMB_3__4_;
   wire SUMB_3__3_;
   wire SUMB_3__2_;
   wire SUMB_3__1_;
   wire SUMB_2__6_;
   wire SUMB_2__5_;
   wire SUMB_2__4_;
   wire SUMB_2__3_;
   wire SUMB_2__2_;
   wire SUMB_2__1_;
   wire SUMB_1__6_;
   wire SUMB_1__5_;
   wire SUMB_1__4_;
   wire SUMB_1__3_;
   wire SUMB_1__2_;
   wire SUMB_1__1_;
   wire A1_12_;
   wire A1_11_;
   wire A1_10_;
   wire A1_9_;
   wire A1_8_;
   wire A1_7_;
   wire A1_6_;
   wire A1_4_;
   wire A1_3_;
   wire A1_2_;
   wire A1_1_;
   wire A1_0_;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n19;
   wire n21;
   wire n22;
   wire n23;
   wire n25;
   wire n26;
   wire n30;
   wire n32;

   ADDFX2M S1_6_0 (.S(A1_4_), 
	.CO(CARRYB_6__0_), 
	.CI(SUMB_5__1_), 
	.B(CARRYB_5__0_), 
	.A(ab_6__0_));
   ADDFX2M S1_5_0 (.S(A1_3_), 
	.CO(CARRYB_5__0_), 
	.CI(SUMB_4__1_), 
	.B(CARRYB_4__0_), 
	.A(ab_5__0_));
   ADDFX2M S1_4_0 (.S(A1_2_), 
	.CO(CARRYB_4__0_), 
	.CI(SUMB_3__1_), 
	.B(CARRYB_3__0_), 
	.A(ab_4__0_));
   ADDFX2M S2_6_5 (.S(SUMB_6__5_), 
	.CO(CARRYB_6__5_), 
	.CI(SUMB_5__6_), 
	.B(CARRYB_5__5_), 
	.A(ab_6__5_));
   ADDFX2M S1_3_0 (.S(A1_1_), 
	.CO(CARRYB_3__0_), 
	.CI(SUMB_2__1_), 
	.B(CARRYB_2__0_), 
	.A(ab_3__0_));
   ADDFX2M S2_6_4 (.S(SUMB_6__4_), 
	.CO(CARRYB_6__4_), 
	.CI(SUMB_5__5_), 
	.B(CARRYB_5__4_), 
	.A(ab_6__4_));
   ADDFX2M S2_5_5 (.S(SUMB_5__5_), 
	.CO(CARRYB_5__5_), 
	.CI(SUMB_4__6_), 
	.B(CARRYB_4__5_), 
	.A(ab_5__5_));
   ADDFX2M S2_6_3 (.S(SUMB_6__3_), 
	.CO(CARRYB_6__3_), 
	.CI(SUMB_5__4_), 
	.B(CARRYB_5__3_), 
	.A(ab_6__3_));
   ADDFX2M S2_5_4 (.S(SUMB_5__4_), 
	.CO(CARRYB_5__4_), 
	.CI(SUMB_4__5_), 
	.B(CARRYB_4__4_), 
	.A(ab_5__4_));
   ADDFX2M S2_6_2 (.S(SUMB_6__2_), 
	.CO(CARRYB_6__2_), 
	.CI(SUMB_5__3_), 
	.B(CARRYB_5__2_), 
	.A(ab_6__2_));
   ADDFX2M S2_4_5 (.S(SUMB_4__5_), 
	.CO(CARRYB_4__5_), 
	.CI(SUMB_3__6_), 
	.B(CARRYB_3__5_), 
	.A(ab_4__5_));
   ADDFX2M S2_5_2 (.S(SUMB_5__2_), 
	.CO(CARRYB_5__2_), 
	.CI(SUMB_4__3_), 
	.B(CARRYB_4__2_), 
	.A(ab_5__2_));
   ADDFX2M S2_5_3 (.S(SUMB_5__3_), 
	.CO(CARRYB_5__3_), 
	.CI(SUMB_4__4_), 
	.B(CARRYB_4__3_), 
	.A(ab_5__3_));
   ADDFX2M S2_4_2 (.S(SUMB_4__2_), 
	.CO(CARRYB_4__2_), 
	.CI(SUMB_3__3_), 
	.B(CARRYB_3__2_), 
	.A(ab_4__2_));
   ADDFX2M S2_4_3 (.S(SUMB_4__3_), 
	.CO(CARRYB_4__3_), 
	.CI(SUMB_3__4_), 
	.B(CARRYB_3__3_), 
	.A(ab_4__3_));
   ADDFX2M S2_4_4 (.S(SUMB_4__4_), 
	.CO(CARRYB_4__4_), 
	.CI(SUMB_3__5_), 
	.B(CARRYB_3__4_), 
	.A(ab_4__4_));
   ADDFX2M S2_3_2 (.S(SUMB_3__2_), 
	.CO(CARRYB_3__2_), 
	.CI(SUMB_2__3_), 
	.B(CARRYB_2__2_), 
	.A(ab_3__2_));
   ADDFX2M S2_3_3 (.S(SUMB_3__3_), 
	.CO(CARRYB_3__3_), 
	.CI(SUMB_2__4_), 
	.B(CARRYB_2__3_), 
	.A(ab_3__3_));
   ADDFX2M S2_3_4 (.S(SUMB_3__4_), 
	.CO(CARRYB_3__4_), 
	.CI(SUMB_2__5_), 
	.B(CARRYB_2__4_), 
	.A(ab_3__4_));
   ADDFX2M S2_3_5 (.S(SUMB_3__5_), 
	.CO(CARRYB_3__5_), 
	.CI(SUMB_2__6_), 
	.B(CARRYB_2__5_), 
	.A(ab_3__5_));
   ADDFX2M S1_2_0 (.S(A1_0_), 
	.CO(CARRYB_2__0_), 
	.CI(SUMB_1__1_), 
	.B(n10), 
	.A(ab_2__0_));
   ADDFX2M S2_2_2 (.S(SUMB_2__2_), 
	.CO(CARRYB_2__2_), 
	.CI(SUMB_1__3_), 
	.B(n9), 
	.A(ab_2__2_));
   ADDFX2M S2_2_3 (.S(SUMB_2__3_), 
	.CO(CARRYB_2__3_), 
	.CI(SUMB_1__4_), 
	.B(n8), 
	.A(ab_2__3_));
   ADDFX2M S2_2_4 (.S(SUMB_2__4_), 
	.CO(CARRYB_2__4_), 
	.CI(SUMB_1__5_), 
	.B(n7), 
	.A(ab_2__4_));
   ADDFX2M S2_2_5 (.S(SUMB_2__5_), 
	.CO(CARRYB_2__5_), 
	.CI(SUMB_1__6_), 
	.B(n6), 
	.A(ab_2__5_));
   ADDFX2M S4_0 (.S(SUMB_7__0_), 
	.CO(CARRYB_7__0_), 
	.CI(SUMB_6__1_), 
	.B(CARRYB_6__0_), 
	.A(ab_7__0_));
   ADDFX2M S4_5 (.S(SUMB_7__5_), 
	.CO(CARRYB_7__5_), 
	.CI(SUMB_6__6_), 
	.B(CARRYB_6__5_), 
	.A(ab_7__5_));
   ADDFX2M S4_4 (.S(SUMB_7__4_), 
	.CO(CARRYB_7__4_), 
	.CI(SUMB_6__5_), 
	.B(CARRYB_6__4_), 
	.A(ab_7__4_));
   ADDFX2M S4_3 (.S(SUMB_7__3_), 
	.CO(CARRYB_7__3_), 
	.CI(SUMB_6__4_), 
	.B(CARRYB_6__3_), 
	.A(ab_7__3_));
   ADDFX2M S4_2 (.S(SUMB_7__2_), 
	.CO(CARRYB_7__2_), 
	.CI(SUMB_6__3_), 
	.B(CARRYB_6__2_), 
	.A(ab_7__2_));
   ADDFX2M S2_6_1 (.S(SUMB_6__1_), 
	.CO(CARRYB_6__1_), 
	.CI(SUMB_5__2_), 
	.B(CARRYB_5__1_), 
	.A(ab_6__1_));
   ADDFX2M S2_5_1 (.S(SUMB_5__1_), 
	.CO(CARRYB_5__1_), 
	.CI(SUMB_4__2_), 
	.B(CARRYB_4__1_), 
	.A(ab_5__1_));
   ADDFX2M S2_4_1 (.S(SUMB_4__1_), 
	.CO(CARRYB_4__1_), 
	.CI(SUMB_3__2_), 
	.B(CARRYB_3__1_), 
	.A(ab_4__1_));
   ADDFX2M S2_3_1 (.S(SUMB_3__1_), 
	.CO(CARRYB_3__1_), 
	.CI(SUMB_2__2_), 
	.B(CARRYB_2__1_), 
	.A(ab_3__1_));
   ADDFX2M S2_2_1 (.S(SUMB_2__1_), 
	.CO(CARRYB_2__1_), 
	.CI(SUMB_1__2_), 
	.B(n5), 
	.A(ab_2__1_));
   ADDFX2M S3_6_6 (.S(SUMB_6__6_), 
	.CO(CARRYB_6__6_), 
	.CI(ab_5__7_), 
	.B(CARRYB_5__6_), 
	.A(ab_6__6_));
   ADDFX2M S3_5_6 (.S(SUMB_5__6_), 
	.CO(CARRYB_5__6_), 
	.CI(ab_4__7_), 
	.B(CARRYB_4__6_), 
	.A(ab_5__6_));
   ADDFX2M S3_4_6 (.S(SUMB_4__6_), 
	.CO(CARRYB_4__6_), 
	.CI(ab_3__7_), 
	.B(CARRYB_3__6_), 
	.A(ab_4__6_));
   ADDFX2M S3_3_6 (.S(SUMB_3__6_), 
	.CO(CARRYB_3__6_), 
	.CI(ab_2__7_), 
	.B(CARRYB_2__6_), 
	.A(ab_3__6_));
   ADDFX2M S3_2_6 (.S(SUMB_2__6_), 
	.CO(CARRYB_2__6_), 
	.CI(ab_1__7_), 
	.B(n4), 
	.A(ab_2__6_));
   ADDFX2M S4_1 (.S(SUMB_7__1_), 
	.CO(CARRYB_7__1_), 
	.CI(SUMB_6__2_), 
	.B(CARRYB_6__1_), 
	.A(ab_7__1_));
   ADDFX2M S5_6 (.S(SUMB_7__6_), 
	.CO(CARRYB_7__6_), 
	.CI(ab_6__7_), 
	.B(CARRYB_6__6_), 
	.A(ab_7__6_));
   AND2X2M U2 (.Y(n3), 
	.B(ab_7__7_), 
	.A(CARRYB_7__6_));
   AND2X2M U3 (.Y(n4), 
	.B(ab_1__6_), 
	.A(ab_0__7_));
   AND2X2M U4 (.Y(n5), 
	.B(ab_1__1_), 
	.A(ab_0__2_));
   AND2X2M U5 (.Y(n6), 
	.B(ab_1__5_), 
	.A(ab_0__6_));
   AND2X2M U6 (.Y(n7), 
	.B(ab_1__4_), 
	.A(ab_0__5_));
   AND2X2M U7 (.Y(n8), 
	.B(ab_1__3_), 
	.A(ab_0__4_));
   AND2X2M U8 (.Y(n9), 
	.B(ab_1__2_), 
	.A(ab_0__3_));
   AND2X2M U9 (.Y(n10), 
	.B(ab_1__0_), 
	.A(ab_0__1_));
   NOR2X2M U10 (.Y(ab_0__7_), 
	.B(n32), 
	.A(n171));
   NOR2X2M U11 (.Y(ab_0__6_), 
	.B(n32), 
	.A(n172));
   NOR2X2M U12 (.Y(ab_0__1_), 
	.B(n32), 
	.A(n23));
   NOR2X2M U13 (.Y(ab_7__7_), 
	.B(n171), 
	.A(n25));
   NOR2X2M U14 (.Y(ab_1__6_), 
	.B(n182), 
	.A(n172));
   NOR2X2M U15 (.Y(ab_1__1_), 
	.B(n182), 
	.A(n23));
   CLKXOR2X2M U16 (.Y(PRODUCT[1]), 
	.B(ab_0__1_), 
	.A(ab_1__0_));
   NOR2X2M U17 (.Y(ab_0__5_), 
	.B(n32), 
	.A(n19));
   NOR2X2M U18 (.Y(ab_0__4_), 
	.B(n32), 
	.A(n174));
   NOR2X2M U19 (.Y(ab_0__3_), 
	.B(n32), 
	.A(n21));
   NOR2X2M U20 (.Y(ab_0__2_), 
	.B(n32), 
	.A(n22));
   NOR2X2M U21 (.Y(ab_1__5_), 
	.B(n182), 
	.A(n19));
   NOR2X2M U22 (.Y(ab_1__4_), 
	.B(n182), 
	.A(n174));
   NOR2X2M U23 (.Y(ab_1__3_), 
	.B(n182), 
	.A(n21));
   NOR2X2M U24 (.Y(ab_1__2_), 
	.B(n182), 
	.A(n22));
   NOR2X2M U25 (.Y(ab_1__0_), 
	.B(n182), 
	.A(n165));
   CLKXOR2X2M U26 (.Y(A1_12_), 
	.B(ab_7__7_), 
	.A(CARRYB_7__6_));
   CLKXOR2X2M U27 (.Y(A1_7_), 
	.B(SUMB_7__2_), 
	.A(CARRYB_7__1_));
   CLKXOR2X2M U28 (.Y(A1_8_), 
	.B(SUMB_7__3_), 
	.A(CARRYB_7__2_));
   CLKXOR2X2M U29 (.Y(A1_10_), 
	.B(SUMB_7__5_), 
	.A(CARRYB_7__4_));
   CLKXOR2X2M U30 (.Y(A1_9_), 
	.B(SUMB_7__4_), 
	.A(CARRYB_7__3_));
   CLKXOR2X2M U31 (.Y(A1_11_), 
	.B(SUMB_7__6_), 
	.A(CARRYB_7__5_));
   CLKINVX2M U32 (.Y(n25), 
	.A(A[7]));
   CLKINVX2M U36 (.Y(n30), 
	.A(A[2]));
   CLKINVX2M U38 (.Y(n26), 
	.A(A[6]));
   AND2X2M U39 (.Y(n11), 
	.B(SUMB_7__1_), 
	.A(CARRYB_7__0_));
   XOR2X1M U40 (.Y(SUMB_1__2_), 
	.B(ab_0__3_), 
	.A(ab_1__2_));
   CLKXOR2X2M U41 (.Y(A1_6_), 
	.B(SUMB_7__1_), 
	.A(CARRYB_7__0_));
   AND2X2M U42 (.Y(n12), 
	.B(SUMB_7__2_), 
	.A(CARRYB_7__1_));
   AND2X2M U43 (.Y(n13), 
	.B(SUMB_7__4_), 
	.A(CARRYB_7__3_));
   AND2X2M U44 (.Y(n14), 
	.B(SUMB_7__6_), 
	.A(CARRYB_7__5_));
   AND2X2M U45 (.Y(n15), 
	.B(SUMB_7__3_), 
	.A(CARRYB_7__2_));
   AND2X2M U46 (.Y(n16), 
	.B(SUMB_7__5_), 
	.A(CARRYB_7__4_));
   CLKINVX2M U49 (.Y(n23), 
	.A(B[1]));
   CLKINVX2M U50 (.Y(n32), 
	.A(A[0]));
   XOR2X1M U51 (.Y(SUMB_1__6_), 
	.B(ab_0__7_), 
	.A(ab_1__6_));
   XOR2X1M U52 (.Y(SUMB_1__5_), 
	.B(ab_0__6_), 
	.A(ab_1__5_));
   XOR2X1M U53 (.Y(SUMB_1__4_), 
	.B(ab_0__5_), 
	.A(ab_1__4_));
   XOR2X1M U54 (.Y(SUMB_1__3_), 
	.B(ab_0__4_), 
	.A(ab_1__3_));
   XOR2X1M U55 (.Y(SUMB_1__1_), 
	.B(ab_0__2_), 
	.A(ab_1__1_));
   CLKINVX2M U57 (.Y(n19), 
	.A(B[5]));
   CLKINVX2M U59 (.Y(n21), 
	.A(B[3]));
   NOR2X1M U62 (.Y(ab_7__6_), 
	.B(n172), 
	.A(n25));
   NOR2X1M U63 (.Y(ab_7__5_), 
	.B(n19), 
	.A(n25));
   NOR2X1M U64 (.Y(ab_7__4_), 
	.B(n174), 
	.A(n25));
   NOR2X1M U65 (.Y(ab_7__3_), 
	.B(n21), 
	.A(n25));
   NOR2X1M U66 (.Y(ab_7__2_), 
	.B(n22), 
	.A(n25));
   NOR2X1M U67 (.Y(ab_7__1_), 
	.B(n23), 
	.A(n25));
   NOR2X1M U68 (.Y(ab_7__0_), 
	.B(n165), 
	.A(n25));
   NOR2X1M U69 (.Y(ab_6__7_), 
	.B(n26), 
	.A(n171));
   NOR2X1M U70 (.Y(ab_6__6_), 
	.B(n26), 
	.A(n172));
   NOR2X1M U71 (.Y(ab_6__5_), 
	.B(n26), 
	.A(n19));
   NOR2X1M U72 (.Y(ab_6__4_), 
	.B(n26), 
	.A(n174));
   NOR2X1M U73 (.Y(ab_6__3_), 
	.B(n26), 
	.A(n21));
   NOR2X1M U74 (.Y(ab_6__2_), 
	.B(n26), 
	.A(n22));
   NOR2X1M U75 (.Y(ab_6__1_), 
	.B(n26), 
	.A(n23));
   NOR2X1M U76 (.Y(ab_6__0_), 
	.B(n26), 
	.A(n165));
   NOR2X1M U77 (.Y(ab_5__7_), 
	.B(n178), 
	.A(n171));
   NOR2X1M U78 (.Y(ab_5__6_), 
	.B(n178), 
	.A(n172));
   NOR2X1M U79 (.Y(ab_5__5_), 
	.B(n178), 
	.A(n19));
   NOR2X1M U80 (.Y(ab_5__4_), 
	.B(n178), 
	.A(n174));
   NOR2X1M U81 (.Y(ab_5__3_), 
	.B(n178), 
	.A(n21));
   NOR2X1M U82 (.Y(ab_5__2_), 
	.B(n178), 
	.A(n22));
   NOR2X1M U83 (.Y(ab_5__1_), 
	.B(n178), 
	.A(n23));
   NOR2X1M U84 (.Y(ab_5__0_), 
	.B(n178), 
	.A(n165));
   NOR2X1M U85 (.Y(ab_4__7_), 
	.B(n179), 
	.A(n171));
   NOR2X1M U86 (.Y(ab_4__6_), 
	.B(n179), 
	.A(n172));
   NOR2X1M U87 (.Y(ab_4__5_), 
	.B(n179), 
	.A(n19));
   NOR2X1M U88 (.Y(ab_4__4_), 
	.B(n179), 
	.A(n174));
   NOR2X1M U89 (.Y(ab_4__3_), 
	.B(n179), 
	.A(n21));
   NOR2X1M U90 (.Y(ab_4__2_), 
	.B(n179), 
	.A(n22));
   NOR2X1M U91 (.Y(ab_4__1_), 
	.B(n179), 
	.A(n23));
   NOR2X1M U92 (.Y(ab_4__0_), 
	.B(n179), 
	.A(n165));
   NOR2X1M U93 (.Y(ab_3__7_), 
	.B(n180), 
	.A(n171));
   NOR2X1M U94 (.Y(ab_3__6_), 
	.B(n180), 
	.A(n172));
   NOR2X1M U95 (.Y(ab_3__5_), 
	.B(n180), 
	.A(n19));
   NOR2X1M U96 (.Y(ab_3__4_), 
	.B(n180), 
	.A(n174));
   NOR2X1M U97 (.Y(ab_3__3_), 
	.B(n180), 
	.A(n21));
   NOR2X1M U98 (.Y(ab_3__2_), 
	.B(n180), 
	.A(n22));
   NOR2X1M U99 (.Y(ab_3__1_), 
	.B(n180), 
	.A(n23));
   NOR2X1M U100 (.Y(ab_3__0_), 
	.B(n180), 
	.A(n165));
   NOR2X1M U101 (.Y(ab_2__7_), 
	.B(n30), 
	.A(n171));
   NOR2X1M U102 (.Y(ab_2__6_), 
	.B(n30), 
	.A(n172));
   NOR2X1M U103 (.Y(ab_2__5_), 
	.B(n30), 
	.A(n19));
   NOR2X1M U104 (.Y(ab_2__4_), 
	.B(n30), 
	.A(n174));
   NOR2X1M U105 (.Y(ab_2__3_), 
	.B(n30), 
	.A(n21));
   NOR2X1M U106 (.Y(ab_2__2_), 
	.B(n30), 
	.A(n22));
   NOR2X1M U107 (.Y(ab_2__1_), 
	.B(n30), 
	.A(n23));
   NOR2X1M U108 (.Y(ab_2__0_), 
	.B(n30), 
	.A(n165));
   NOR2X1M U109 (.Y(ab_1__7_), 
	.B(n182), 
	.A(n171));
   NOR2X1M U110 (.Y(PRODUCT[0]), 
	.B(n32), 
	.A(n165));
   ALU_DW01_add_1 FS_1 (.A({ 1'b0,
		A1_12_,
		A1_11_,
		A1_10_,
		A1_9_,
		A1_8_,
		A1_7_,
		A1_6_,
		SUMB_7__0_,
		A1_4_,
		A1_3_,
		A1_2_,
		A1_1_,
		A1_0_ }), 
	.B({ n3,
		n14,
		n16,
		n13,
		n15,
		n12,
		n11,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0 }), 
	.CI(1'b0), 
	.SUM({ PRODUCT[15],
		PRODUCT[14],
		PRODUCT[13],
		PRODUCT[12],
		PRODUCT[11],
		PRODUCT[10],
		PRODUCT[9],
		PRODUCT[8],
		PRODUCT[7],
		PRODUCT[6],
		PRODUCT[5],
		PRODUCT[4],
		PRODUCT[3],
		PRODUCT[2] }));
   CLKINVX2M U58 (.Y(n22), 
	.A(B[2]));
endmodule

module ALU_test_1 (
	A, 
	B, 
	EN, 
	ALU_FUN, 
	clk, 
	rst, 
	ALU_OUT, 
	OUT_VALID, 
	test_si, 
	test_se, 
	FE_OFN2_SYNC_REF_RST);
   input [7:0] A;
   input [7:0] B;
   input EN;
   input [3:0] ALU_FUN;
   input clk;
   input rst;
   output [15:0] ALU_OUT;
   output OUT_VALID;
   input test_si;
   input test_se;
   input FE_OFN2_SYNC_REF_RST;

   // Internal wires
   wire FE_OFN6_n57;
   wire N92;
   wire N93;
   wire N94;
   wire N95;
   wire N96;
   wire N97;
   wire N98;
   wire N99;
   wire N100;
   wire N101;
   wire N102;
   wire N103;
   wire N104;
   wire N105;
   wire N106;
   wire N107;
   wire N108;
   wire N109;
   wire N110;
   wire N111;
   wire N112;
   wire N113;
   wire N114;
   wire N115;
   wire N116;
   wire N117;
   wire N118;
   wire N119;
   wire N120;
   wire N121;
   wire N122;
   wire N123;
   wire N124;
   wire N125;
   wire N128;
   wire N129;
   wire N130;
   wire N131;
   wire N132;
   wire N133;
   wire N134;
   wire N135;
   wire N168;
   wire N170;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n3;
   wire n28;
   wire n29;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire SYNOPSYS_UNCONNECTED_1;
   wire SYNOPSYS_UNCONNECTED_2;
   wire SYNOPSYS_UNCONNECTED_3;
   wire SYNOPSYS_UNCONNECTED_4;
   wire SYNOPSYS_UNCONNECTED_5;
   wire SYNOPSYS_UNCONNECTED_6;
   wire SYNOPSYS_UNCONNECTED_7;
   wire SYNOPSYS_UNCONNECTED_8;
   wire [15:0] ALU_OUT_Comb;

   BUFX2M FE_OFC6_n57 (.Y(FE_OFN6_n57), 
	.A(n57));
   OAI2B11X2M U92 (.Y(n59), 
	.C0(n187), 
	.B0(n188), 
	.A1N(N109), 
	.A0(n119));
   OAI21X2M U100 (.Y(n69), 
	.B0(n128), 
	.A1(n129), 
	.A0(n3));
   SDFFRQX2M ALU_OUT_reg_15_ (.SI(ALU_OUT[14]), 
	.SE(n211), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(ALU_OUT[15]), 
	.D(ALU_OUT_Comb[15]), 
	.CK(clk));
   SDFFRQX2M ALU_OUT_reg_14_ (.SI(ALU_OUT[13]), 
	.SE(n203), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(ALU_OUT[14]), 
	.D(ALU_OUT_Comb[14]), 
	.CK(clk));
   SDFFRQX2M ALU_OUT_reg_13_ (.SI(ALU_OUT[12]), 
	.SE(n205), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(ALU_OUT[13]), 
	.D(ALU_OUT_Comb[13]), 
	.CK(clk));
   SDFFRQX2M ALU_OUT_reg_12_ (.SI(ALU_OUT[11]), 
	.SE(n201), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(ALU_OUT[12]), 
	.D(ALU_OUT_Comb[12]), 
	.CK(clk));
   SDFFRQX2M ALU_OUT_reg_11_ (.SI(ALU_OUT[10]), 
	.SE(n200), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(ALU_OUT[11]), 
	.D(ALU_OUT_Comb[11]), 
	.CK(clk));
   SDFFRQX2M ALU_OUT_reg_10_ (.SI(ALU_OUT[9]), 
	.SE(n204), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(ALU_OUT[10]), 
	.D(ALU_OUT_Comb[10]), 
	.CK(clk));
   SDFFRQX2M ALU_OUT_reg_9_ (.SI(ALU_OUT[8]), 
	.SE(n202), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(ALU_OUT[9]), 
	.D(ALU_OUT_Comb[9]), 
	.CK(clk));
   SDFFRQX2M ALU_OUT_reg_8_ (.SI(ALU_OUT[7]), 
	.SE(n212), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(ALU_OUT[8]), 
	.D(ALU_OUT_Comb[8]), 
	.CK(clk));
   SDFFRQX2M ALU_OUT_reg_7_ (.SI(ALU_OUT[6]), 
	.SE(n199), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(ALU_OUT[7]), 
	.D(ALU_OUT_Comb[7]), 
	.CK(clk));
   SDFFRQX2M ALU_OUT_reg_6_ (.SI(ALU_OUT[5]), 
	.SE(n210), 
	.RN(rst), 
	.Q(ALU_OUT[6]), 
	.D(ALU_OUT_Comb[6]), 
	.CK(clk));
   SDFFRQX2M ALU_OUT_reg_5_ (.SI(ALU_OUT[4]), 
	.SE(n209), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(ALU_OUT[5]), 
	.D(ALU_OUT_Comb[5]), 
	.CK(clk));
   SDFFRQX2M ALU_OUT_reg_4_ (.SI(ALU_OUT[3]), 
	.SE(n204), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(ALU_OUT[4]), 
	.D(ALU_OUT_Comb[4]), 
	.CK(clk));
   SDFFRQX2M ALU_OUT_reg_3_ (.SI(ALU_OUT[2]), 
	.SE(n202), 
	.RN(rst), 
	.Q(ALU_OUT[3]), 
	.D(ALU_OUT_Comb[3]), 
	.CK(clk));
   SDFFRHQX1M ALU_OUT_reg_2_ (.SI(ALU_OUT[1]), 
	.SE(n203), 
	.RN(rst), 
	.Q(ALU_OUT[2]), 
	.D(ALU_OUT_Comb[2]), 
	.CK(clk));
   SDFFRHQX1M ALU_OUT_reg_1_ (.SI(ALU_OUT[0]), 
	.SE(n199), 
	.RN(rst), 
	.Q(ALU_OUT[1]), 
	.D(ALU_OUT_Comb[1]), 
	.CK(clk));
   SDFFRHQX1M ALU_OUT_reg_0_ (.SI(test_si), 
	.SE(n201), 
	.RN(rst), 
	.Q(ALU_OUT[0]), 
	.D(ALU_OUT_Comb[0]), 
	.CK(clk));
   SDFFRQX2M OUT_VALID_reg (.SI(ALU_OUT[15]), 
	.SE(n200), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(OUT_VALID), 
	.D(EN), 
	.CK(clk));
   AOI2B1X1M U23 (.Y(n164), 
	.B0(n161), 
	.A1N(n163), 
	.A0(n162));
   INVX2M U24 (.Y(n170), 
	.A(n164));
   XNOR2X2M U25 (.Y(n158), 
	.B(B[6]), 
	.A(n45));
   OAI31X1M U26 (.Y(n144), 
	.B0(n152), 
	.A2(n141), 
	.A1(n142), 
	.A0(n151));
   AOI211X2M U27 (.Y(n141), 
	.C0(n140), 
	.B0(n148), 
	.A1(n166), 
	.A0(n29));
   CLKNAND2X2M U29 (.Y(n129), 
	.B(n191), 
	.A(ALU_FUN[2]));
   NOR3BX2M U30 (.Y(n74), 
	.C(n129), 
	.B(n192), 
	.AN(ALU_FUN[3]));
   AOI211X2M U31 (.Y(n150), 
	.C0(n147), 
	.B0(n148), 
	.A1(n28), 
	.A0(n149));
   NAND2BX2M U32 (.Y(n148), 
	.B(n153), 
	.AN(n142));
   OAI21X2M U33 (.Y(N170), 
	.B0(n162), 
	.A1(n146), 
	.A0(n161));
   AOI221XLM U35 (.Y(n95), 
	.C0(n96), 
	.B1(n74), 
	.B0(A[4]), 
	.A1(n56), 
	.A0(A[2]));
   AOI221XLM U36 (.Y(n102), 
	.C0(n103), 
	.B1(n74), 
	.B0(A[3]), 
	.A1(n56), 
	.A0(n29));
   AOI221XLM U37 (.Y(n73), 
	.C0(n75), 
	.B1(n48), 
	.B0(n74), 
	.A1(n56), 
	.A0(A[5]));
   AOI221XLM U38 (.Y(n81), 
	.C0(n82), 
	.B1(n45), 
	.B0(n74), 
	.A1(n56), 
	.A0(A[4]));
   AOI221XLM U39 (.Y(n88), 
	.C0(n89), 
	.B1(A[5]), 
	.B0(n74), 
	.A1(n56), 
	.A0(A[3]));
   NOR3BX2M U40 (.Y(n56), 
	.C(ALU_FUN[0]), 
	.B(n118), 
	.AN(ALU_FUN[3]));
   NOR2X2M U41 (.Y(n161), 
	.B(B[7]), 
	.A(n46));
   NOR2X2M U42 (.Y(n151), 
	.B(A[3]), 
	.A(n169));
   NOR2X2M U43 (.Y(n139), 
	.B(A[0]), 
	.A(n165));
   NOR2X2M U44 (.Y(n142), 
	.B(A[2]), 
	.A(n167));
   CLKINVX1M U45 (.Y(n190), 
	.A(n129));
   NOR2X2M U47 (.Y(n127), 
	.B(ALU_FUN[3]), 
	.A(n192));
   NAND3X2M U48 (.Y(n67), 
	.C(ALU_FUN[3]), 
	.B(n192), 
	.A(n130));
   AOI31X1M U49 (.Y(ALU_OUT_Comb[4]), 
	.B0(n184), 
	.A2(n88), 
	.A1(n87), 
	.A0(n86));
   AOI31X1M U50 (.Y(ALU_OUT_Comb[5]), 
	.B0(n184), 
	.A2(n81), 
	.A1(n80), 
	.A0(n79));
   AOI31X1M U51 (.Y(ALU_OUT_Comb[6]), 
	.B0(n184), 
	.A2(n73), 
	.A1(n72), 
	.A0(n71));
   AOI31X2M U52 (.Y(ALU_OUT_Comb[2]), 
	.B0(n184), 
	.A2(n102), 
	.A1(n101), 
	.A0(n100));
   AOI31X1M U53 (.Y(ALU_OUT_Comb[3]), 
	.B0(n184), 
	.A2(n95), 
	.A1(n94), 
	.A0(n93));
   NOR2X2M U56 (.Y(n130), 
	.B(ALU_FUN[1]), 
	.A(ALU_FUN[2]));
   CLKINVX2M U57 (.Y(n186), 
	.A(n64));
   OAI221X1M U58 (.Y(n66), 
	.C0(n188), 
	.B1(n67), 
	.B0(n176), 
	.A1(n187), 
	.A0(n48));
   OAI221X1M U59 (.Y(n106), 
	.C0(n188), 
	.B1(n181), 
	.B0(n67), 
	.A1(n187), 
	.A0(A[2]));
   OAI221X1M U60 (.Y(n99), 
	.C0(n188), 
	.B1(n180), 
	.B0(n67), 
	.A1(n187), 
	.A0(A[3]));
   OAI221X1M U61 (.Y(n92), 
	.C0(n188), 
	.B1(n179), 
	.B0(n67), 
	.A1(n187), 
	.A0(A[4]));
   OAI221X1M U62 (.Y(n85), 
	.C0(n188), 
	.B1(n178), 
	.B0(n67), 
	.A1(n187), 
	.A0(A[5]));
   OAI221X1M U63 (.Y(n78), 
	.C0(n188), 
	.B1(n177), 
	.B0(n67), 
	.A1(n187), 
	.A0(n45));
   CLKINVX2M U64 (.Y(n185), 
	.A(n119));
   CLKINVX2M U65 (.Y(n188), 
	.A(n70));
   CLKINVX2M U66 (.Y(n187), 
	.A(n114));
   NAND2X2M U67 (.Y(n64), 
	.B(n127), 
	.A(n190));
   INVX2M U68 (.Y(n176), 
	.A(n48));
   CLKINVX2M U69 (.Y(n189), 
	.A(n67));
   INVX2M U71 (.Y(n182), 
	.A(n29));
   INVX2M U72 (.Y(n181), 
	.A(A[2]));
   INVX2M U73 (.Y(n180), 
	.A(A[3]));
   INVX2M U74 (.Y(n179), 
	.A(A[4]));
   INVX2M U75 (.Y(n178), 
	.A(A[5]));
   INVX2M U76 (.Y(n177), 
	.A(n45));
   INVX2M U77 (.Y(n175), 
	.A(n68));
   AOI221XLM U78 (.Y(n68), 
	.C0(n186), 
	.B1(n189), 
	.B0(n176), 
	.A1(n48), 
	.A0(n69));
   INVXLM U80 (.Y(n166), 
	.A(n139));
   INVXLM U81 (.Y(n168), 
	.A(n150));
   NOR2BX2M U82 (.Y(n52), 
	.B(n184), 
	.AN(FE_OFN6_n57));
   OAI2B1X2M U83 (.Y(n114), 
	.B0(n128), 
	.A1N(n127), 
	.A0(n118));
   AOI22X1M U84 (.Y(n86), 
	.B1(n58), 
	.B0(N96), 
	.A1(n185), 
	.A0(N105));
   AOI222X1M U85 (.Y(n87), 
	.C1(n186), 
	.C0(A[4]), 
	.B1(n179), 
	.B0(n70), 
	.A1(FE_OFN6_n57), 
	.A0(N114));
   AOI22X1M U86 (.Y(n79), 
	.B1(n58), 
	.B0(N97), 
	.A1(n185), 
	.A0(N106));
   AOI222X1M U87 (.Y(n80), 
	.C1(n186), 
	.C0(A[5]), 
	.B1(n178), 
	.B0(n70), 
	.A1(FE_OFN6_n57), 
	.A0(N115));
   AOI22X1M U88 (.Y(n71), 
	.B1(n58), 
	.B0(N98), 
	.A1(n185), 
	.A0(N107));
   AOI222X1M U89 (.Y(n72), 
	.C1(n45), 
	.C0(n186), 
	.B1(n177), 
	.B0(n70), 
	.A1(FE_OFN6_n57), 
	.A0(N116));
   AOI22X1M U90 (.Y(n100), 
	.B1(n58), 
	.B0(N94), 
	.A1(n185), 
	.A0(N103));
   AOI222X1M U91 (.Y(n101), 
	.C1(n186), 
	.C0(A[2]), 
	.B1(n181), 
	.B0(n70), 
	.A1(FE_OFN6_n57), 
	.A0(N112));
   AOI22X1M U93 (.Y(n93), 
	.B1(n58), 
	.B0(N95), 
	.A1(n185), 
	.A0(N104));
   AOI222X1M U94 (.Y(n94), 
	.C1(n186), 
	.C0(A[3]), 
	.B1(n180), 
	.B0(n70), 
	.A1(FE_OFN6_n57), 
	.A0(N113));
   AOI31X2M U95 (.Y(ALU_OUT_Comb[1]), 
	.B0(n184), 
	.A2(n109), 
	.A1(n108), 
	.A0(n107));
   AOI211X2M U96 (.Y(n109), 
	.C0(n111), 
	.B0(n110), 
	.A1(n56), 
	.A0(A[0]));
   AOI222X1M U97 (.Y(n108), 
	.C1(n182), 
	.C0(n70), 
	.B1(n74), 
	.B0(A[2]), 
	.A1(n186), 
	.A0(n29));
   AOI222X1M U98 (.Y(n107), 
	.C1(n185), 
	.C0(N102), 
	.B1(FE_OFN6_n57), 
	.B0(N111), 
	.A1(n58), 
	.A0(N93));
   AOI31X2M U99 (.Y(ALU_OUT_Comb[0]), 
	.B0(n184), 
	.A2(n122), 
	.A1(n121), 
	.A0(n120));
   AOI22X1M U101 (.Y(n120), 
	.B1(n58), 
	.B0(N92), 
	.A1(n185), 
	.A0(N101));
   AOI211X2M U102 (.Y(n122), 
	.C0(n124), 
	.B0(n123), 
	.A1(n74), 
	.A0(n29));
   AOI222X1M U103 (.Y(n121), 
	.C1(n186), 
	.C0(A[0]), 
	.B1(n183), 
	.B0(n70), 
	.A1(FE_OFN6_n57), 
	.A0(N110));
   AOI31X2M U104 (.Y(ALU_OUT_Comb[7]), 
	.B0(n184), 
	.A2(n62), 
	.A1(n61), 
	.A0(n60));
   AOI221XLM U105 (.Y(n62), 
	.C0(n63), 
	.B1(n58), 
	.B0(N99), 
	.A1(n185), 
	.A0(N108));
   AOI22X1M U106 (.Y(n60), 
	.B1(n176), 
	.B0(n70), 
	.A1(n56), 
	.A0(n45));
   AOI222X1M U107 (.Y(n61), 
	.C1(n171), 
	.C0(n66), 
	.B1(n65), 
	.B0(N135), 
	.A1(n175), 
	.A0(B[7]));
   OAI2B2X1M U108 (.Y(n111), 
	.B1(n113), 
	.B0(B[1]), 
	.A1N(B[1]), 
	.A0(n112));
   AOI221XLM U109 (.Y(n112), 
	.C0(n186), 
	.B1(n69), 
	.B0(n29), 
	.A1(n182), 
	.A0(n189));
   AOI221XLM U110 (.Y(n113), 
	.C0(n70), 
	.B1(n182), 
	.B0(n114), 
	.A1(n189), 
	.A0(n29));
   AOI21X2M U111 (.Y(ALU_OUT_Comb[8]), 
	.B0(n184), 
	.A1(n55), 
	.A0(n54));
   AOI21X2M U112 (.Y(n54), 
	.B0(n59), 
	.A1(n58), 
	.A0(N100));
   AOI22X1M U113 (.Y(n55), 
	.B1(FE_OFN6_n57), 
	.B0(N118), 
	.A1(n56), 
	.A0(n48));
   OAI21X2M U114 (.Y(n75), 
	.B0(n77), 
	.A1(n172), 
	.A0(n76));
   AOI22X1M U115 (.Y(n77), 
	.B1(n172), 
	.B0(n78), 
	.A1(n65), 
	.A0(N134));
   AOI221XLM U116 (.Y(n76), 
	.C0(n186), 
	.B1(n69), 
	.B0(n45), 
	.A1(n177), 
	.A0(n189));
   INVX2M U117 (.Y(n172), 
	.A(B[6]));
   OAI2BB2X1M U118 (.Y(n63), 
	.B1(n64), 
	.B0(n176), 
	.A1N(FE_OFN6_n57), 
	.A0N(N117));
   NAND2X2M U119 (.Y(n119), 
	.B(n127), 
	.A(n130));
   OAI2BB1X2M U120 (.Y(ALU_OUT_Comb[9]), 
	.B0(n53), 
	.A1N(n52), 
	.A0N(N119));
   OAI2BB1X2M U121 (.Y(ALU_OUT_Comb[10]), 
	.B0(n53), 
	.A1N(n52), 
	.A0N(N120));
   OAI2BB1X2M U122 (.Y(ALU_OUT_Comb[11]), 
	.B0(n53), 
	.A1N(n52), 
	.A0N(N121));
   OAI2BB1X2M U123 (.Y(ALU_OUT_Comb[12]), 
	.B0(n53), 
	.A1N(n52), 
	.A0N(N122));
   OAI2BB1X2M U124 (.Y(ALU_OUT_Comb[13]), 
	.B0(n53), 
	.A1N(n52), 
	.A0N(N123));
   OAI2BB1X2M U125 (.Y(ALU_OUT_Comb[14]), 
	.B0(n53), 
	.A1N(n52), 
	.A0N(N124));
   OAI2BB1X2M U126 (.Y(ALU_OUT_Comb[15]), 
	.B0(n53), 
	.A1N(n52), 
	.A0N(N125));
   NOR2X2M U127 (.Y(n70), 
	.B(n3), 
	.A(n118));
   OAI2BB1X2M U128 (.Y(n123), 
	.B0(n131), 
	.A1N(n65), 
	.A0N(N128));
   AOI31X2M U129 (.Y(n131), 
	.B0(n117), 
	.A2(n132), 
	.A1(ALU_FUN[3]), 
	.A0(N168));
   AND4X1M U130 (.Y(n117), 
	.D(n192), 
	.C(ALU_FUN[3]), 
	.B(n190), 
	.A(N170));
   NOR2BX2M U132 (.Y(n58), 
	.B(n3), 
	.AN(n130));
   INVX2M U133 (.Y(n183), 
	.A(A[0]));
   CLKINVX2M U134 (.Y(n29), 
	.A(n28));
   INVX4M U139 (.Y(n44), 
	.A(n43));
   CLKINVX2M U140 (.Y(n45), 
	.A(n43));
   INVX6M U141 (.Y(n47), 
	.A(n46));
   CLKINVX2M U147 (.Y(n48), 
	.A(n46));
   INVX2M U149 (.Y(n171), 
	.A(B[7]));
   AND3X2M U150 (.Y(n65), 
	.C(n133), 
	.B(ALU_FUN[1]), 
	.A(n127));
   CLKNAND2X2M U154 (.Y(n53), 
	.B(n59), 
	.A(EN));
   OAI2B2X1M U155 (.Y(n124), 
	.B1(n126), 
	.B0(B[0]), 
	.A1N(B[0]), 
	.A0(n125));
   AOI221XLM U156 (.Y(n125), 
	.C0(n186), 
	.B1(n69), 
	.B0(A[0]), 
	.A1(n183), 
	.A0(n189));
   AOI221XLM U157 (.Y(n126), 
	.C0(n70), 
	.B1(n183), 
	.B0(n114), 
	.A1(n189), 
	.A0(A[0]));
   CLKINVX2M U158 (.Y(n192), 
	.A(ALU_FUN[0]));
   NAND2X2M U159 (.Y(n118), 
	.B(ALU_FUN[1]), 
	.A(ALU_FUN[2]));
   INVX2M U160 (.Y(n191), 
	.A(ALU_FUN[1]));
   NOR3X2M U161 (.Y(n132), 
	.C(ALU_FUN[0]), 
	.B(ALU_FUN[2]), 
	.A(n191));
   OAI21X2M U163 (.Y(n103), 
	.B0(n105), 
	.A1(n167), 
	.A0(n104));
   AOI22X1M U164 (.Y(n105), 
	.B1(n167), 
	.B0(n106), 
	.A1(n65), 
	.A0(N130));
   AOI221XLM U165 (.Y(n104), 
	.C0(n186), 
	.B1(n69), 
	.B0(A[2]), 
	.A1(n181), 
	.A0(n189));
   OAI21X2M U166 (.Y(n96), 
	.B0(n98), 
	.A1(n169), 
	.A0(n97));
   AOI22X1M U167 (.Y(n98), 
	.B1(n169), 
	.B0(n99), 
	.A1(n65), 
	.A0(N131));
   AOI221XLM U168 (.Y(n97), 
	.C0(n186), 
	.B1(n69), 
	.B0(A[3]), 
	.A1(n180), 
	.A0(n189));
   OAI21X2M U169 (.Y(n89), 
	.B0(n91), 
	.A1(n174), 
	.A0(n90));
   AOI22X1M U170 (.Y(n91), 
	.B1(n174), 
	.B0(n92), 
	.A1(n65), 
	.A0(N132));
   AOI221XLM U171 (.Y(n90), 
	.C0(n186), 
	.B1(n69), 
	.B0(A[4]), 
	.A1(n179), 
	.A0(n189));
   INVX2M U172 (.Y(n174), 
	.A(B[4]));
   OAI21X2M U173 (.Y(n82), 
	.B0(n84), 
	.A1(n173), 
	.A0(n83));
   AOI22X1M U174 (.Y(n84), 
	.B1(n173), 
	.B0(n85), 
	.A1(n65), 
	.A0(N133));
   AOI221XLM U175 (.Y(n83), 
	.C0(n186), 
	.B1(n69), 
	.B0(A[5]), 
	.A1(n178), 
	.A0(n189));
   INVX2M U176 (.Y(n173), 
	.A(B[5]));
   INVX2M U177 (.Y(n165), 
	.A(B[0]));
   NAND3X2M U178 (.Y(n128), 
	.C(ALU_FUN[3]), 
	.B(ALU_FUN[0]), 
	.A(n130));
   INVX2M U179 (.Y(n169), 
	.A(B[3]));
   INVX2M U180 (.Y(n167), 
	.A(B[2]));
   CLKINVX2M U181 (.Y(n184), 
	.A(EN));
   OAI2BB1XLM U182 (.Y(n110), 
	.B0(n115), 
	.A1N(n65), 
	.A0N(N129));
   AOI31X2M U183 (.Y(n115), 
	.B0(n117), 
	.A2(n116), 
	.A1(ALU_FUN[3]), 
	.A0(n170));
   NOR3X2M U184 (.Y(n116), 
	.C(n191), 
	.B(ALU_FUN[2]), 
	.A(n192));
   NOR3X2M U188 (.Y(n57), 
	.C(n191), 
	.B(ALU_FUN[2]), 
	.A(n3));
   INVX2M U189 (.Y(n28), 
	.A(A[1]));
   CLKINVX2M U194 (.Y(n43), 
	.A(A[6]));
   CLKINVX4M U195 (.Y(n46), 
	.A(A[7]));
   NAND2BX1M U196 (.Y(n154), 
	.B(A[4]), 
	.AN(B[4]));
   NAND2BX1M U197 (.Y(n143), 
	.B(B[4]), 
	.AN(A[4]));
   CLKNAND2X2M U198 (.Y(n156), 
	.B(n143), 
	.A(n154));
   CLKNAND2X2M U199 (.Y(n153), 
	.B(n167), 
	.A(A[2]));
   AOI21X1M U200 (.Y(n140), 
	.B0(B[1]), 
	.A1(n182), 
	.A0(n139));
   CLKNAND2X2M U201 (.Y(n152), 
	.B(n169), 
	.A(A[3]));
   NAND2BX1M U202 (.Y(n159), 
	.B(B[5]), 
	.AN(A[5]));
   OAI211X1M U203 (.Y(n145), 
	.C0(n159), 
	.B0(n143), 
	.A1(n144), 
	.A0(n156));
   NAND2BX1M U204 (.Y(n155), 
	.B(A[5]), 
	.AN(B[5]));
   AOI32X1M U205 (.Y(n146), 
	.B1(n43), 
	.B0(B[6]), 
	.A2(n158), 
	.A1(n155), 
	.A0(n145));
   CLKNAND2X2M U206 (.Y(n162), 
	.B(n46), 
	.A(B[7]));
   CLKNAND2X2M U207 (.Y(n149), 
	.B(n165), 
	.A(A[0]));
   OA21X1M U208 (.Y(n147), 
	.B0(B[1]), 
	.A1(n28), 
	.A0(n149));
   AOI31X1M U209 (.Y(n157), 
	.B0(n151), 
	.A2(n152), 
	.A1(n153), 
	.A0(n168));
   OAI2B11X1M U210 (.Y(n160), 
	.C0(n154), 
	.B0(n155), 
	.A1N(n157), 
	.A0(n156));
   AOI32X1M U211 (.Y(n163), 
	.B1(n172), 
	.B0(n45), 
	.A2(n158), 
	.A1(n159), 
	.A0(n160));
   NOR2X1M U212 (.Y(N168), 
	.B(n170), 
	.A(N170));
   DLY1X1M U215 (.Y(n197), 
	.A(n206));
   DLY1X1M U216 (.Y(n198), 
	.A(n206));
   DLY1X1M U217 (.Y(n199), 
	.A(n205));
   DLY1X1M U218 (.Y(n200), 
	.A(n209));
   DLY1X1M U219 (.Y(n201), 
	.A(n210));
   DLY1X1M U220 (.Y(n202), 
	.A(n211));
   DLY1X1M U221 (.Y(n203), 
	.A(n212));
   DLY1X1M U222 (.Y(n204), 
	.A(n208));
   DLY1X1M U223 (.Y(n205), 
	.A(n208));
   DLY1X1M U224 (.Y(n206), 
	.A(test_se));
   DLY1X1M U225 (.Y(n207), 
	.A(n197));
   DLY1X1M U226 (.Y(n208), 
	.A(n197));
   DLY1X1M U227 (.Y(n209), 
	.A(n198));
   DLY1X1M U228 (.Y(n210), 
	.A(n207));
   DLY1X1M U229 (.Y(n211), 
	.A(n207));
   DLY1X1M U230 (.Y(n212), 
	.A(n198));
   ALU_DW_div_uns_0 div_42 (.a({ n47,
		n44,
		A[5],
		A[4],
		A[3],
		A[2],
		n29,
		A[0] }), 
	.b({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.quotient({ N135,
		N134,
		N133,
		N132,
		N131,
		N130,
		N129,
		N128 }), 
	.remainder({ SYNOPSYS_UNCONNECTED_1,
		SYNOPSYS_UNCONNECTED_2,
		SYNOPSYS_UNCONNECTED_3,
		SYNOPSYS_UNCONNECTED_4,
		SYNOPSYS_UNCONNECTED_5,
		SYNOPSYS_UNCONNECTED_6,
		SYNOPSYS_UNCONNECTED_7,
		SYNOPSYS_UNCONNECTED_8 }), 
	.n172(n172), 
	.n171(n171), 
	.n178(n178), 
	.n179(n179), 
	.n181(n181), 
	.n173(n173));
   ALU_DW01_sub_0 sub_36 (.A({ 1'b0,
		n47,
		n44,
		A[5],
		A[4],
		A[3],
		A[2],
		n29,
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.DIFF({ N109,
		N108,
		N107,
		N106,
		N105,
		N104,
		N103,
		N102,
		N101 }), 
	.n167(n167), 
	.n169(n169), 
	.n172(n172), 
	.n165(n165), 
	.n174(n174), 
	.n173(n173), 
	.n171(n171));
   ALU_DW01_add_0 add_34 (.A({ 1'b0,
		n47,
		n44,
		A[5],
		A[4],
		A[3],
		A[2],
		n29,
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.SUM({ N100,
		N99,
		N98,
		N97,
		N96,
		N95,
		N94,
		N93,
		N92 }));
   ALU_DW02_mult_0 mult_38 (.A({ n47,
		n44,
		A[5],
		A[4],
		A[3],
		A[2],
		n29,
		A[0] }), 
	.B({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.TC(1'b0), 
	.PRODUCT({ N125,
		N124,
		N123,
		N122,
		N121,
		N120,
		N119,
		N118,
		N117,
		N116,
		N115,
		N114,
		N113,
		N112,
		N111,
		N110 }), 
	.n178(n178), 
	.n179(n179), 
	.n182(n182), 
	.n167(n167), 
	.n169(n169), 
	.n172(n172), 
	.n183(n183), 
	.n181(n181), 
	.n165(n165), 
	.n174(n174), 
	.n173(n173), 
	.n180(n180), 
	.n171(n171));
   OR2X2M U3 (.Y(n3), 
	.B(ALU_FUN[0]), 
	.A(ALU_FUN[3]));
   AOI21X1M U4 (.Y(n133), 
	.B0(ALU_FUN[2]), 
	.A1(n135), 
	.A0(n134));
   NOR4X1M U5 (.Y(n134), 
	.D(B[0]), 
	.C(B[1]), 
	.B(B[2]), 
	.A(B[3]));
   NOR4X1M U8 (.Y(n135), 
	.D(B[4]), 
	.C(B[5]), 
	.B(B[6]), 
	.A(B[7]));
endmodule

