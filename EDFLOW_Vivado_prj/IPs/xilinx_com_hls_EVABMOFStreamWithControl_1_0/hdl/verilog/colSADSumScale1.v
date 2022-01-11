// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module colSADSumScale1 (
        ap_clk,
        ap_rst,
        t1Col_3_V_read,
        t1Col_4_V_read,
        t1Col_5_V_read,
        t1Col_6_V_read,
        t1Col_7_V_read,
        t1Col_8_V_read,
        t1Col_9_V_read,
        t1Col_10_V_read,
        t1Col_11_V_read,
        t1Col_12_V_read,
        t1Col_13_V_read,
        t1Col_14_V_read,
        t1Col_15_V_read,
        t2Col_0_V_read,
        t2Col_1_V_read,
        t2Col_2_V_read,
        t2Col_3_V_read,
        t2Col_4_V_read,
        t2Col_5_V_read,
        t2Col_6_V_read,
        t2Col_7_V_read,
        t2Col_8_V_read,
        t2Col_9_V_read,
        t2Col_10_V_read,
        t2Col_11_V_read,
        t2Col_12_V_read,
        t2Col_13_V_read,
        t2Col_14_V_read,
        t2Col_15_V_read,
        t2Col_16_V_read,
        t2Col_17_V_read,
        t2Col_18_V_read,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4,
        ap_return_5,
        ap_return_6,
        ap_ce
);


input   ap_clk;
input   ap_rst;
input  [3:0] t1Col_3_V_read;
input  [3:0] t1Col_4_V_read;
input  [3:0] t1Col_5_V_read;
input  [3:0] t1Col_6_V_read;
input  [3:0] t1Col_7_V_read;
input  [3:0] t1Col_8_V_read;
input  [3:0] t1Col_9_V_read;
input  [3:0] t1Col_10_V_read;
input  [3:0] t1Col_11_V_read;
input  [3:0] t1Col_12_V_read;
input  [3:0] t1Col_13_V_read;
input  [3:0] t1Col_14_V_read;
input  [3:0] t1Col_15_V_read;
input  [3:0] t2Col_0_V_read;
input  [3:0] t2Col_1_V_read;
input  [3:0] t2Col_2_V_read;
input  [3:0] t2Col_3_V_read;
input  [3:0] t2Col_4_V_read;
input  [3:0] t2Col_5_V_read;
input  [3:0] t2Col_6_V_read;
input  [3:0] t2Col_7_V_read;
input  [3:0] t2Col_8_V_read;
input  [3:0] t2Col_9_V_read;
input  [3:0] t2Col_10_V_read;
input  [3:0] t2Col_11_V_read;
input  [3:0] t2Col_12_V_read;
input  [3:0] t2Col_13_V_read;
input  [3:0] t2Col_14_V_read;
input  [3:0] t2Col_15_V_read;
input  [3:0] t2Col_16_V_read;
input  [3:0] t2Col_17_V_read;
input  [3:0] t2Col_18_V_read;
output  [15:0] ap_return_0;
output  [15:0] ap_return_1;
output  [15:0] ap_return_2;
output  [15:0] ap_return_3;
output  [15:0] ap_return_4;
output  [15:0] ap_return_5;
output  [15:0] ap_return_6;
input   ap_ce;

reg[15:0] ap_return_0;
reg[15:0] ap_return_1;
reg[15:0] ap_return_2;
reg[15:0] ap_return_3;
reg[15:0] ap_return_4;
reg[15:0] ap_return_5;
reg[15:0] ap_return_6;

wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] grp_sadScale1_fu_272_ap_return;
reg    grp_sadScale1_fu_272_ap_ce;
wire   [7:0] grp_sadScale1_fu_328_ap_return;
reg    grp_sadScale1_fu_328_ap_ce;
wire   [7:0] grp_sadScale1_fu_384_ap_return;
reg    grp_sadScale1_fu_384_ap_ce;
wire   [7:0] grp_sadScale1_fu_440_ap_return;
reg    grp_sadScale1_fu_440_ap_ce;
wire   [7:0] grp_sadScale1_fu_496_ap_return;
reg    grp_sadScale1_fu_496_ap_ce;
wire   [7:0] grp_sadScale1_fu_552_ap_return;
reg    grp_sadScale1_fu_552_ap_ce;
wire   [7:0] grp_sadScale1_fu_608_ap_return;
reg    grp_sadScale1_fu_608_ap_ce;
wire    ap_block_pp0_stage0;
wire   [15:0] retVal_0_write_assi_2_fu_664_p1;
wire   [15:0] retVal_1_write_assi_2_fu_668_p1;
wire   [15:0] retVal_2_write_assi_2_fu_672_p1;
wire   [15:0] retVal_3_write_assi_2_fu_676_p1;
wire   [15:0] retVal_4_write_assi_2_fu_680_p1;
wire   [15:0] retVal_5_write_assi_2_fu_684_p1;
wire   [15:0] retVal_6_write_assi_2_fu_688_p1;
reg    ap_ce_reg;
reg   [3:0] t1Col_3_V_read_int_reg;
reg   [3:0] t1Col_4_V_read_int_reg;
reg   [3:0] t1Col_5_V_read_int_reg;
reg   [3:0] t1Col_6_V_read_int_reg;
reg   [3:0] t1Col_7_V_read_int_reg;
reg   [3:0] t1Col_8_V_read_int_reg;
reg   [3:0] t1Col_9_V_read_int_reg;
reg   [3:0] t1Col_10_V_read_int_reg;
reg   [3:0] t1Col_11_V_read_int_reg;
reg   [3:0] t1Col_12_V_read_int_reg;
reg   [3:0] t1Col_13_V_read_int_reg;
reg   [3:0] t1Col_14_V_read_int_reg;
reg   [3:0] t1Col_15_V_read_int_reg;
reg   [3:0] t2Col_0_V_read_int_reg;
reg   [3:0] t2Col_1_V_read_int_reg;
reg   [3:0] t2Col_2_V_read_int_reg;
reg   [3:0] t2Col_3_V_read_int_reg;
reg   [3:0] t2Col_4_V_read_int_reg;
reg   [3:0] t2Col_5_V_read_int_reg;
reg   [3:0] t2Col_6_V_read_int_reg;
reg   [3:0] t2Col_7_V_read_int_reg;
reg   [3:0] t2Col_8_V_read_int_reg;
reg   [3:0] t2Col_9_V_read_int_reg;
reg   [3:0] t2Col_10_V_read_int_reg;
reg   [3:0] t2Col_11_V_read_int_reg;
reg   [3:0] t2Col_12_V_read_int_reg;
reg   [3:0] t2Col_13_V_read_int_reg;
reg   [3:0] t2Col_14_V_read_int_reg;
reg   [3:0] t2Col_15_V_read_int_reg;
reg   [3:0] t2Col_16_V_read_int_reg;
reg   [3:0] t2Col_17_V_read_int_reg;
reg   [3:0] t2Col_18_V_read_int_reg;
reg   [15:0] ap_return_0_int_reg;
reg   [15:0] ap_return_1_int_reg;
reg   [15:0] ap_return_2_int_reg;
reg   [15:0] ap_return_3_int_reg;
reg   [15:0] ap_return_4_int_reg;
reg   [15:0] ap_return_5_int_reg;
reg   [15:0] ap_return_6_int_reg;

sadScale1 grp_sadScale1_fu_272(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .refBlock_0_V_read(t1Col_3_V_read_int_reg),
    .refBlock_1_V_read(t1Col_4_V_read_int_reg),
    .refBlock_2_V_read(t1Col_5_V_read_int_reg),
    .refBlock_3_V_read(t1Col_6_V_read_int_reg),
    .refBlock_4_V_read(t1Col_7_V_read_int_reg),
    .refBlock_5_V_read(t1Col_8_V_read_int_reg),
    .refBlock_6_V_read(t1Col_9_V_read_int_reg),
    .refBlock_7_V_read(t1Col_10_V_read_int_reg),
    .refBlock_8_V_read(t1Col_11_V_read_int_reg),
    .refBlock_9_V_read(t1Col_12_V_read_int_reg),
    .refBlock_10_V_read(t1Col_13_V_read_int_reg),
    .refBlock_11_V_read(t1Col_14_V_read_int_reg),
    .refBlock_12_V_read(t1Col_15_V_read_int_reg),
    .targetBlocks_0_V_re(t2Col_0_V_read_int_reg),
    .targetBlocks_1_V_re(t2Col_1_V_read_int_reg),
    .targetBlocks_2_V_re(t2Col_2_V_read_int_reg),
    .targetBlocks_3_V_re(t2Col_3_V_read_int_reg),
    .targetBlocks_4_V_re(t2Col_4_V_read_int_reg),
    .targetBlocks_5_V_re(t2Col_5_V_read_int_reg),
    .targetBlocks_6_V_re(t2Col_6_V_read_int_reg),
    .targetBlocks_7_V_re(t2Col_7_V_read_int_reg),
    .targetBlocks_8_V_re(t2Col_8_V_read_int_reg),
    .targetBlocks_9_V_re(t2Col_9_V_read_int_reg),
    .targetBlocks_10_V_r(t2Col_10_V_read_int_reg),
    .targetBlocks_11_V_r(t2Col_11_V_read_int_reg),
    .targetBlocks_12_V_r(t2Col_12_V_read_int_reg),
    .ap_return(grp_sadScale1_fu_272_ap_return),
    .ap_ce(grp_sadScale1_fu_272_ap_ce)
);

sadScale1 grp_sadScale1_fu_328(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .refBlock_0_V_read(t1Col_3_V_read_int_reg),
    .refBlock_1_V_read(t1Col_4_V_read_int_reg),
    .refBlock_2_V_read(t1Col_5_V_read_int_reg),
    .refBlock_3_V_read(t1Col_6_V_read_int_reg),
    .refBlock_4_V_read(t1Col_7_V_read_int_reg),
    .refBlock_5_V_read(t1Col_8_V_read_int_reg),
    .refBlock_6_V_read(t1Col_9_V_read_int_reg),
    .refBlock_7_V_read(t1Col_10_V_read_int_reg),
    .refBlock_8_V_read(t1Col_11_V_read_int_reg),
    .refBlock_9_V_read(t1Col_12_V_read_int_reg),
    .refBlock_10_V_read(t1Col_13_V_read_int_reg),
    .refBlock_11_V_read(t1Col_14_V_read_int_reg),
    .refBlock_12_V_read(t1Col_15_V_read_int_reg),
    .targetBlocks_0_V_re(t2Col_1_V_read_int_reg),
    .targetBlocks_1_V_re(t2Col_2_V_read_int_reg),
    .targetBlocks_2_V_re(t2Col_3_V_read_int_reg),
    .targetBlocks_3_V_re(t2Col_4_V_read_int_reg),
    .targetBlocks_4_V_re(t2Col_5_V_read_int_reg),
    .targetBlocks_5_V_re(t2Col_6_V_read_int_reg),
    .targetBlocks_6_V_re(t2Col_7_V_read_int_reg),
    .targetBlocks_7_V_re(t2Col_8_V_read_int_reg),
    .targetBlocks_8_V_re(t2Col_9_V_read_int_reg),
    .targetBlocks_9_V_re(t2Col_10_V_read_int_reg),
    .targetBlocks_10_V_r(t2Col_11_V_read_int_reg),
    .targetBlocks_11_V_r(t2Col_12_V_read_int_reg),
    .targetBlocks_12_V_r(t2Col_13_V_read_int_reg),
    .ap_return(grp_sadScale1_fu_328_ap_return),
    .ap_ce(grp_sadScale1_fu_328_ap_ce)
);

sadScale1 grp_sadScale1_fu_384(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .refBlock_0_V_read(t1Col_3_V_read_int_reg),
    .refBlock_1_V_read(t1Col_4_V_read_int_reg),
    .refBlock_2_V_read(t1Col_5_V_read_int_reg),
    .refBlock_3_V_read(t1Col_6_V_read_int_reg),
    .refBlock_4_V_read(t1Col_7_V_read_int_reg),
    .refBlock_5_V_read(t1Col_8_V_read_int_reg),
    .refBlock_6_V_read(t1Col_9_V_read_int_reg),
    .refBlock_7_V_read(t1Col_10_V_read_int_reg),
    .refBlock_8_V_read(t1Col_11_V_read_int_reg),
    .refBlock_9_V_read(t1Col_12_V_read_int_reg),
    .refBlock_10_V_read(t1Col_13_V_read_int_reg),
    .refBlock_11_V_read(t1Col_14_V_read_int_reg),
    .refBlock_12_V_read(t1Col_15_V_read_int_reg),
    .targetBlocks_0_V_re(t2Col_2_V_read_int_reg),
    .targetBlocks_1_V_re(t2Col_3_V_read_int_reg),
    .targetBlocks_2_V_re(t2Col_4_V_read_int_reg),
    .targetBlocks_3_V_re(t2Col_5_V_read_int_reg),
    .targetBlocks_4_V_re(t2Col_6_V_read_int_reg),
    .targetBlocks_5_V_re(t2Col_7_V_read_int_reg),
    .targetBlocks_6_V_re(t2Col_8_V_read_int_reg),
    .targetBlocks_7_V_re(t2Col_9_V_read_int_reg),
    .targetBlocks_8_V_re(t2Col_10_V_read_int_reg),
    .targetBlocks_9_V_re(t2Col_11_V_read_int_reg),
    .targetBlocks_10_V_r(t2Col_12_V_read_int_reg),
    .targetBlocks_11_V_r(t2Col_13_V_read_int_reg),
    .targetBlocks_12_V_r(t2Col_14_V_read_int_reg),
    .ap_return(grp_sadScale1_fu_384_ap_return),
    .ap_ce(grp_sadScale1_fu_384_ap_ce)
);

sadScale1 grp_sadScale1_fu_440(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .refBlock_0_V_read(t1Col_3_V_read_int_reg),
    .refBlock_1_V_read(t1Col_4_V_read_int_reg),
    .refBlock_2_V_read(t1Col_5_V_read_int_reg),
    .refBlock_3_V_read(t1Col_6_V_read_int_reg),
    .refBlock_4_V_read(t1Col_7_V_read_int_reg),
    .refBlock_5_V_read(t1Col_8_V_read_int_reg),
    .refBlock_6_V_read(t1Col_9_V_read_int_reg),
    .refBlock_7_V_read(t1Col_10_V_read_int_reg),
    .refBlock_8_V_read(t1Col_11_V_read_int_reg),
    .refBlock_9_V_read(t1Col_12_V_read_int_reg),
    .refBlock_10_V_read(t1Col_13_V_read_int_reg),
    .refBlock_11_V_read(t1Col_14_V_read_int_reg),
    .refBlock_12_V_read(t1Col_15_V_read_int_reg),
    .targetBlocks_0_V_re(t2Col_3_V_read_int_reg),
    .targetBlocks_1_V_re(t2Col_4_V_read_int_reg),
    .targetBlocks_2_V_re(t2Col_5_V_read_int_reg),
    .targetBlocks_3_V_re(t2Col_6_V_read_int_reg),
    .targetBlocks_4_V_re(t2Col_7_V_read_int_reg),
    .targetBlocks_5_V_re(t2Col_8_V_read_int_reg),
    .targetBlocks_6_V_re(t2Col_9_V_read_int_reg),
    .targetBlocks_7_V_re(t2Col_10_V_read_int_reg),
    .targetBlocks_8_V_re(t2Col_11_V_read_int_reg),
    .targetBlocks_9_V_re(t2Col_12_V_read_int_reg),
    .targetBlocks_10_V_r(t2Col_13_V_read_int_reg),
    .targetBlocks_11_V_r(t2Col_14_V_read_int_reg),
    .targetBlocks_12_V_r(t2Col_15_V_read_int_reg),
    .ap_return(grp_sadScale1_fu_440_ap_return),
    .ap_ce(grp_sadScale1_fu_440_ap_ce)
);

sadScale1 grp_sadScale1_fu_496(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .refBlock_0_V_read(t1Col_3_V_read_int_reg),
    .refBlock_1_V_read(t1Col_4_V_read_int_reg),
    .refBlock_2_V_read(t1Col_5_V_read_int_reg),
    .refBlock_3_V_read(t1Col_6_V_read_int_reg),
    .refBlock_4_V_read(t1Col_7_V_read_int_reg),
    .refBlock_5_V_read(t1Col_8_V_read_int_reg),
    .refBlock_6_V_read(t1Col_9_V_read_int_reg),
    .refBlock_7_V_read(t1Col_10_V_read_int_reg),
    .refBlock_8_V_read(t1Col_11_V_read_int_reg),
    .refBlock_9_V_read(t1Col_12_V_read_int_reg),
    .refBlock_10_V_read(t1Col_13_V_read_int_reg),
    .refBlock_11_V_read(t1Col_14_V_read_int_reg),
    .refBlock_12_V_read(t1Col_15_V_read_int_reg),
    .targetBlocks_0_V_re(t2Col_4_V_read_int_reg),
    .targetBlocks_1_V_re(t2Col_5_V_read_int_reg),
    .targetBlocks_2_V_re(t2Col_6_V_read_int_reg),
    .targetBlocks_3_V_re(t2Col_7_V_read_int_reg),
    .targetBlocks_4_V_re(t2Col_8_V_read_int_reg),
    .targetBlocks_5_V_re(t2Col_9_V_read_int_reg),
    .targetBlocks_6_V_re(t2Col_10_V_read_int_reg),
    .targetBlocks_7_V_re(t2Col_11_V_read_int_reg),
    .targetBlocks_8_V_re(t2Col_12_V_read_int_reg),
    .targetBlocks_9_V_re(t2Col_13_V_read_int_reg),
    .targetBlocks_10_V_r(t2Col_14_V_read_int_reg),
    .targetBlocks_11_V_r(t2Col_15_V_read_int_reg),
    .targetBlocks_12_V_r(t2Col_16_V_read_int_reg),
    .ap_return(grp_sadScale1_fu_496_ap_return),
    .ap_ce(grp_sadScale1_fu_496_ap_ce)
);

sadScale1 grp_sadScale1_fu_552(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .refBlock_0_V_read(t1Col_3_V_read_int_reg),
    .refBlock_1_V_read(t1Col_4_V_read_int_reg),
    .refBlock_2_V_read(t1Col_5_V_read_int_reg),
    .refBlock_3_V_read(t1Col_6_V_read_int_reg),
    .refBlock_4_V_read(t1Col_7_V_read_int_reg),
    .refBlock_5_V_read(t1Col_8_V_read_int_reg),
    .refBlock_6_V_read(t1Col_9_V_read_int_reg),
    .refBlock_7_V_read(t1Col_10_V_read_int_reg),
    .refBlock_8_V_read(t1Col_11_V_read_int_reg),
    .refBlock_9_V_read(t1Col_12_V_read_int_reg),
    .refBlock_10_V_read(t1Col_13_V_read_int_reg),
    .refBlock_11_V_read(t1Col_14_V_read_int_reg),
    .refBlock_12_V_read(t1Col_15_V_read_int_reg),
    .targetBlocks_0_V_re(t2Col_5_V_read_int_reg),
    .targetBlocks_1_V_re(t2Col_6_V_read_int_reg),
    .targetBlocks_2_V_re(t2Col_7_V_read_int_reg),
    .targetBlocks_3_V_re(t2Col_8_V_read_int_reg),
    .targetBlocks_4_V_re(t2Col_9_V_read_int_reg),
    .targetBlocks_5_V_re(t2Col_10_V_read_int_reg),
    .targetBlocks_6_V_re(t2Col_11_V_read_int_reg),
    .targetBlocks_7_V_re(t2Col_12_V_read_int_reg),
    .targetBlocks_8_V_re(t2Col_13_V_read_int_reg),
    .targetBlocks_9_V_re(t2Col_14_V_read_int_reg),
    .targetBlocks_10_V_r(t2Col_15_V_read_int_reg),
    .targetBlocks_11_V_r(t2Col_16_V_read_int_reg),
    .targetBlocks_12_V_r(t2Col_17_V_read_int_reg),
    .ap_return(grp_sadScale1_fu_552_ap_return),
    .ap_ce(grp_sadScale1_fu_552_ap_ce)
);

sadScale1 grp_sadScale1_fu_608(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .refBlock_0_V_read(t1Col_3_V_read_int_reg),
    .refBlock_1_V_read(t1Col_4_V_read_int_reg),
    .refBlock_2_V_read(t1Col_5_V_read_int_reg),
    .refBlock_3_V_read(t1Col_6_V_read_int_reg),
    .refBlock_4_V_read(t1Col_7_V_read_int_reg),
    .refBlock_5_V_read(t1Col_8_V_read_int_reg),
    .refBlock_6_V_read(t1Col_9_V_read_int_reg),
    .refBlock_7_V_read(t1Col_10_V_read_int_reg),
    .refBlock_8_V_read(t1Col_11_V_read_int_reg),
    .refBlock_9_V_read(t1Col_12_V_read_int_reg),
    .refBlock_10_V_read(t1Col_13_V_read_int_reg),
    .refBlock_11_V_read(t1Col_14_V_read_int_reg),
    .refBlock_12_V_read(t1Col_15_V_read_int_reg),
    .targetBlocks_0_V_re(t2Col_6_V_read_int_reg),
    .targetBlocks_1_V_re(t2Col_7_V_read_int_reg),
    .targetBlocks_2_V_re(t2Col_8_V_read_int_reg),
    .targetBlocks_3_V_re(t2Col_9_V_read_int_reg),
    .targetBlocks_4_V_re(t2Col_10_V_read_int_reg),
    .targetBlocks_5_V_re(t2Col_11_V_read_int_reg),
    .targetBlocks_6_V_re(t2Col_12_V_read_int_reg),
    .targetBlocks_7_V_re(t2Col_13_V_read_int_reg),
    .targetBlocks_8_V_re(t2Col_14_V_read_int_reg),
    .targetBlocks_9_V_re(t2Col_15_V_read_int_reg),
    .targetBlocks_10_V_r(t2Col_16_V_read_int_reg),
    .targetBlocks_11_V_r(t2Col_17_V_read_int_reg),
    .targetBlocks_12_V_r(t2Col_18_V_read_int_reg),
    .ap_return(grp_sadScale1_fu_608_ap_return),
    .ap_ce(grp_sadScale1_fu_608_ap_ce)
);

always @ (posedge ap_clk) begin
    ap_ce_reg <= ap_ce;
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce_reg)) begin
        ap_return_0_int_reg[7 : 0] <= retVal_0_write_assi_2_fu_664_p1[7 : 0];
        ap_return_1_int_reg[7 : 0] <= retVal_1_write_assi_2_fu_668_p1[7 : 0];
        ap_return_2_int_reg[7 : 0] <= retVal_2_write_assi_2_fu_672_p1[7 : 0];
        ap_return_3_int_reg[7 : 0] <= retVal_3_write_assi_2_fu_676_p1[7 : 0];
        ap_return_4_int_reg[7 : 0] <= retVal_4_write_assi_2_fu_680_p1[7 : 0];
        ap_return_5_int_reg[7 : 0] <= retVal_5_write_assi_2_fu_684_p1[7 : 0];
        ap_return_6_int_reg[7 : 0] <= retVal_6_write_assi_2_fu_688_p1[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        t1Col_10_V_read_int_reg <= t1Col_10_V_read;
        t1Col_11_V_read_int_reg <= t1Col_11_V_read;
        t1Col_12_V_read_int_reg <= t1Col_12_V_read;
        t1Col_13_V_read_int_reg <= t1Col_13_V_read;
        t1Col_14_V_read_int_reg <= t1Col_14_V_read;
        t1Col_15_V_read_int_reg <= t1Col_15_V_read;
        t1Col_3_V_read_int_reg <= t1Col_3_V_read;
        t1Col_4_V_read_int_reg <= t1Col_4_V_read;
        t1Col_5_V_read_int_reg <= t1Col_5_V_read;
        t1Col_6_V_read_int_reg <= t1Col_6_V_read;
        t1Col_7_V_read_int_reg <= t1Col_7_V_read;
        t1Col_8_V_read_int_reg <= t1Col_8_V_read;
        t1Col_9_V_read_int_reg <= t1Col_9_V_read;
        t2Col_0_V_read_int_reg <= t2Col_0_V_read;
        t2Col_10_V_read_int_reg <= t2Col_10_V_read;
        t2Col_11_V_read_int_reg <= t2Col_11_V_read;
        t2Col_12_V_read_int_reg <= t2Col_12_V_read;
        t2Col_13_V_read_int_reg <= t2Col_13_V_read;
        t2Col_14_V_read_int_reg <= t2Col_14_V_read;
        t2Col_15_V_read_int_reg <= t2Col_15_V_read;
        t2Col_16_V_read_int_reg <= t2Col_16_V_read;
        t2Col_17_V_read_int_reg <= t2Col_17_V_read;
        t2Col_18_V_read_int_reg <= t2Col_18_V_read;
        t2Col_1_V_read_int_reg <= t2Col_1_V_read;
        t2Col_2_V_read_int_reg <= t2Col_2_V_read;
        t2Col_3_V_read_int_reg <= t2Col_3_V_read;
        t2Col_4_V_read_int_reg <= t2Col_4_V_read;
        t2Col_5_V_read_int_reg <= t2Col_5_V_read;
        t2Col_6_V_read_int_reg <= t2Col_6_V_read;
        t2Col_7_V_read_int_reg <= t2Col_7_V_read;
        t2Col_8_V_read_int_reg <= t2Col_8_V_read;
        t2Col_9_V_read_int_reg <= t2Col_9_V_read;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_0 = ap_return_0_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_0 = retVal_0_write_assi_2_fu_664_p1;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_1 = ap_return_1_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_1 = retVal_1_write_assi_2_fu_668_p1;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_2 = ap_return_2_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_2 = retVal_2_write_assi_2_fu_672_p1;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_3 = ap_return_3_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_3 = retVal_3_write_assi_2_fu_676_p1;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_4 = ap_return_4_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_4 = retVal_4_write_assi_2_fu_680_p1;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_5 = ap_return_5_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_5 = retVal_5_write_assi_2_fu_684_p1;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_6 = ap_return_6_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_6 = retVal_6_write_assi_2_fu_688_p1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        grp_sadScale1_fu_272_ap_ce = 1'b1;
    end else begin
        grp_sadScale1_fu_272_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        grp_sadScale1_fu_328_ap_ce = 1'b1;
    end else begin
        grp_sadScale1_fu_328_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        grp_sadScale1_fu_384_ap_ce = 1'b1;
    end else begin
        grp_sadScale1_fu_384_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        grp_sadScale1_fu_440_ap_ce = 1'b1;
    end else begin
        grp_sadScale1_fu_440_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        grp_sadScale1_fu_496_ap_ce = 1'b1;
    end else begin
        grp_sadScale1_fu_496_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        grp_sadScale1_fu_552_ap_ce = 1'b1;
    end else begin
        grp_sadScale1_fu_552_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        grp_sadScale1_fu_608_ap_ce = 1'b1;
    end else begin
        grp_sadScale1_fu_608_ap_ce = 1'b0;
    end
end

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign retVal_0_write_assi_2_fu_664_p1 = grp_sadScale1_fu_272_ap_return;

assign retVal_1_write_assi_2_fu_668_p1 = grp_sadScale1_fu_328_ap_return;

assign retVal_2_write_assi_2_fu_672_p1 = grp_sadScale1_fu_384_ap_return;

assign retVal_3_write_assi_2_fu_676_p1 = grp_sadScale1_fu_440_ap_return;

assign retVal_4_write_assi_2_fu_680_p1 = grp_sadScale1_fu_496_ap_return;

assign retVal_5_write_assi_2_fu_684_p1 = grp_sadScale1_fu_552_ap_return;

assign retVal_6_write_assi_2_fu_688_p1 = grp_sadScale1_fu_608_ap_return;

always @ (posedge ap_clk) begin
    ap_return_0_int_reg[15:8] <= 8'b00000000;
    ap_return_1_int_reg[15:8] <= 8'b00000000;
    ap_return_2_int_reg[15:8] <= 8'b00000000;
    ap_return_3_int_reg[15:8] <= 8'b00000000;
    ap_return_4_int_reg[15:8] <= 8'b00000000;
    ap_return_5_int_reg[15:8] <= 8'b00000000;
    ap_return_6_int_reg[15:8] <= 8'b00000000;
end

endmodule //colSADSumScale1