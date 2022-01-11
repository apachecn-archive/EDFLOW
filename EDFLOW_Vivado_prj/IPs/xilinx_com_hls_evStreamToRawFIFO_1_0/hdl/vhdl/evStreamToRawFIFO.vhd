-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.1
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity evStreamToRawFIFO is
port (
    xStreamIn_V_V_TDATA : IN STD_LOGIC_VECTOR (15 downto 0);
    yStreamIn_V_V_TDATA : IN STD_LOGIC_VECTOR (15 downto 0);
    tsStreamIn_V_V_TDATA : IN STD_LOGIC_VECTOR (63 downto 0);
    polStreamIn_V_V_TDATA : IN STD_LOGIC_VECTOR (7 downto 0);
    custDataStreamIn_V_V_TDATA : IN STD_LOGIC_VECTOR (15 downto 0);
    tsReg_V : OUT STD_LOGIC_VECTOR (63 downto 0);
    glLastTSReg_V : OUT STD_LOGIC_VECTOR (63 downto 0);
    yReg_V : OUT STD_LOGIC_VECTOR (15 downto 0);
    glLastYReg_V : OUT STD_LOGIC_VECTOR (15 downto 0);
    tsDiffFlgReg_V : OUT STD_LOGIC_VECTOR (0 downto 0);
    yDiffFlgReg_V : OUT STD_LOGIC_VECTOR (0 downto 0);
    nonMonTSDiffFlgRegL1_V : OUT STD_LOGIC_VECTOR (0 downto 0);
    dataOut_V : OUT STD_LOGIC_VECTOR (15 downto 0);
    nonMonTSDiffFlgRegL2_V : OUT STD_LOGIC_VECTOR (0 downto 0);
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    xStreamIn_V_V_TVALID : IN STD_LOGIC;
    xStreamIn_V_V_TREADY : OUT STD_LOGIC;
    yStreamIn_V_V_TVALID : IN STD_LOGIC;
    yStreamIn_V_V_TREADY : OUT STD_LOGIC;
    tsStreamIn_V_V_TVALID : IN STD_LOGIC;
    tsStreamIn_V_V_TREADY : OUT STD_LOGIC;
    polStreamIn_V_V_TVALID : IN STD_LOGIC;
    polStreamIn_V_V_TREADY : OUT STD_LOGIC;
    custDataStreamIn_V_V_TVALID : IN STD_LOGIC;
    custDataStreamIn_V_V_TREADY : OUT STD_LOGIC;
    tsReg_V_ap_vld : OUT STD_LOGIC;
    glLastTSReg_V_ap_vld : OUT STD_LOGIC;
    yReg_V_ap_vld : OUT STD_LOGIC;
    glLastYReg_V_ap_vld : OUT STD_LOGIC;
    tsDiffFlgReg_V_ap_vld : OUT STD_LOGIC;
    yDiffFlgReg_V_ap_vld : OUT STD_LOGIC;
    nonMonTSDiffFlgRegL1_V_ap_vld : OUT STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    dataOut_V_ap_vld : OUT STD_LOGIC;
    nonMonTSDiffFlgRegL2_V_ap_vld : OUT STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC );
end;


architecture behav of evStreamToRawFIFO is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "evStreamToRawFIFO,hls_ip_2018_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z045ffg900-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=6.868000,HLS_SYN_LAT=4,HLS_SYN_TPT=3,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=439,HLS_SYN_LUT=1132}";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal ap_rst_n_inv : STD_LOGIC;
    signal XYTSStreamToRawStrea_U0_ap_start : STD_LOGIC;
    signal XYTSStreamToRawStrea_U0_ap_done : STD_LOGIC;
    signal XYTSStreamToRawStrea_U0_ap_continue : STD_LOGIC;
    signal XYTSStreamToRawStrea_U0_ap_idle : STD_LOGIC;
    signal XYTSStreamToRawStrea_U0_ap_ready : STD_LOGIC;
    signal XYTSStreamToRawStrea_U0_streamOut_V_V_din : STD_LOGIC_VECTOR (15 downto 0);
    signal XYTSStreamToRawStrea_U0_streamOut_V_V_write : STD_LOGIC;
    signal XYTSStreamToRawStrea_U0_start_out : STD_LOGIC;
    signal XYTSStreamToRawStrea_U0_start_write : STD_LOGIC;
    signal XYTSStreamToRawStrea_U0_xStreamIn_V_V_TREADY : STD_LOGIC;
    signal XYTSStreamToRawStrea_U0_yStreamIn_V_V_TREADY : STD_LOGIC;
    signal XYTSStreamToRawStrea_U0_tsStreamIn_V_V_TREADY : STD_LOGIC;
    signal XYTSStreamToRawStrea_U0_polStreamIn_V_V_TREADY : STD_LOGIC;
    signal XYTSStreamToRawStrea_U0_custDataStreamIn_V_V_TREADY : STD_LOGIC;
    signal XYTSStreamToRawStrea_U0_tsReg_V : STD_LOGIC_VECTOR (63 downto 0);
    signal XYTSStreamToRawStrea_U0_tsReg_V_ap_vld : STD_LOGIC;
    signal XYTSStreamToRawStrea_U0_glLastTSReg_V : STD_LOGIC_VECTOR (63 downto 0);
    signal XYTSStreamToRawStrea_U0_glLastTSReg_V_ap_vld : STD_LOGIC;
    signal XYTSStreamToRawStrea_U0_yReg_V : STD_LOGIC_VECTOR (15 downto 0);
    signal XYTSStreamToRawStrea_U0_yReg_V_ap_vld : STD_LOGIC;
    signal XYTSStreamToRawStrea_U0_glLastYReg_V : STD_LOGIC_VECTOR (15 downto 0);
    signal XYTSStreamToRawStrea_U0_glLastYReg_V_ap_vld : STD_LOGIC;
    signal XYTSStreamToRawStrea_U0_tsDiffFlgReg_V : STD_LOGIC_VECTOR (0 downto 0);
    signal XYTSStreamToRawStrea_U0_tsDiffFlgReg_V_ap_vld : STD_LOGIC;
    signal XYTSStreamToRawStrea_U0_yDiffFlgReg_V : STD_LOGIC_VECTOR (0 downto 0);
    signal XYTSStreamToRawStrea_U0_yDiffFlgReg_V_ap_vld : STD_LOGIC;
    signal XYTSStreamToRawStrea_U0_nonMonTSDiffFlgReg_V : STD_LOGIC_VECTOR (0 downto 0);
    signal XYTSStreamToRawStrea_U0_nonMonTSDiffFlgReg_V_ap_vld : STD_LOGIC;
    signal ap_sync_continue : STD_LOGIC;
    signal RawStreamToFIFO_U0_ap_start : STD_LOGIC;
    signal RawStreamToFIFO_U0_ap_done : STD_LOGIC;
    signal RawStreamToFIFO_U0_ap_continue : STD_LOGIC;
    signal RawStreamToFIFO_U0_ap_idle : STD_LOGIC;
    signal RawStreamToFIFO_U0_ap_ready : STD_LOGIC;
    signal RawStreamToFIFO_U0_streamIn_V_V_read : STD_LOGIC;
    signal RawStreamToFIFO_U0_dataOut_V : STD_LOGIC_VECTOR (15 downto 0);
    signal RawStreamToFIFO_U0_dataOut_V_ap_vld : STD_LOGIC;
    signal RawStreamToFIFO_U0_nonMonTSDiffFlgReg_V : STD_LOGIC_VECTOR (0 downto 0);
    signal RawStreamToFIFO_U0_nonMonTSDiffFlgReg_V_ap_vld : STD_LOGIC;
    signal internalStream_V_V_full_n : STD_LOGIC;
    signal internalStream_V_V_dout : STD_LOGIC_VECTOR (15 downto 0);
    signal internalStream_V_V_empty_n : STD_LOGIC;
    signal ap_sync_done : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal start_for_RawStreamToFIFO_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_RawStreamToFIFO_U0_full_n : STD_LOGIC;
    signal start_for_RawStreamToFIFO_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_RawStreamToFIFO_U0_empty_n : STD_LOGIC;
    signal RawStreamToFIFO_U0_start_full_n : STD_LOGIC;
    signal RawStreamToFIFO_U0_start_write : STD_LOGIC;

    component XYTSStreamToRawStrea IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        streamOut_V_V_din : OUT STD_LOGIC_VECTOR (15 downto 0);
        streamOut_V_V_full_n : IN STD_LOGIC;
        streamOut_V_V_write : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        xStreamIn_V_V_TDATA : IN STD_LOGIC_VECTOR (15 downto 0);
        xStreamIn_V_V_TVALID : IN STD_LOGIC;
        xStreamIn_V_V_TREADY : OUT STD_LOGIC;
        yStreamIn_V_V_TDATA : IN STD_LOGIC_VECTOR (15 downto 0);
        yStreamIn_V_V_TVALID : IN STD_LOGIC;
        yStreamIn_V_V_TREADY : OUT STD_LOGIC;
        tsStreamIn_V_V_TDATA : IN STD_LOGIC_VECTOR (63 downto 0);
        tsStreamIn_V_V_TVALID : IN STD_LOGIC;
        tsStreamIn_V_V_TREADY : OUT STD_LOGIC;
        polStreamIn_V_V_TDATA : IN STD_LOGIC_VECTOR (7 downto 0);
        polStreamIn_V_V_TVALID : IN STD_LOGIC;
        polStreamIn_V_V_TREADY : OUT STD_LOGIC;
        custDataStreamIn_V_V_TDATA : IN STD_LOGIC_VECTOR (15 downto 0);
        custDataStreamIn_V_V_TVALID : IN STD_LOGIC;
        custDataStreamIn_V_V_TREADY : OUT STD_LOGIC;
        tsReg_V : OUT STD_LOGIC_VECTOR (63 downto 0);
        tsReg_V_ap_vld : OUT STD_LOGIC;
        glLastTSReg_V : OUT STD_LOGIC_VECTOR (63 downto 0);
        glLastTSReg_V_ap_vld : OUT STD_LOGIC;
        yReg_V : OUT STD_LOGIC_VECTOR (15 downto 0);
        yReg_V_ap_vld : OUT STD_LOGIC;
        glLastYReg_V : OUT STD_LOGIC_VECTOR (15 downto 0);
        glLastYReg_V_ap_vld : OUT STD_LOGIC;
        tsDiffFlgReg_V : OUT STD_LOGIC_VECTOR (0 downto 0);
        tsDiffFlgReg_V_ap_vld : OUT STD_LOGIC;
        yDiffFlgReg_V : OUT STD_LOGIC_VECTOR (0 downto 0);
        yDiffFlgReg_V_ap_vld : OUT STD_LOGIC;
        nonMonTSDiffFlgReg_V : OUT STD_LOGIC_VECTOR (0 downto 0);
        nonMonTSDiffFlgReg_V_ap_vld : OUT STD_LOGIC );
    end component;


    component RawStreamToFIFO IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        streamIn_V_V_dout : IN STD_LOGIC_VECTOR (15 downto 0);
        streamIn_V_V_empty_n : IN STD_LOGIC;
        streamIn_V_V_read : OUT STD_LOGIC;
        dataOut_V : OUT STD_LOGIC_VECTOR (15 downto 0);
        dataOut_V_ap_vld : OUT STD_LOGIC;
        nonMonTSDiffFlgReg_V : OUT STD_LOGIC_VECTOR (0 downto 0);
        nonMonTSDiffFlgReg_V_ap_vld : OUT STD_LOGIC );
    end component;


    component fifo_w16_d1024_S IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (15 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (15 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_RawStrebkb IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    XYTSStreamToRawStrea_U0 : component XYTSStreamToRawStrea
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => XYTSStreamToRawStrea_U0_ap_start,
        start_full_n => start_for_RawStreamToFIFO_U0_full_n,
        ap_done => XYTSStreamToRawStrea_U0_ap_done,
        ap_continue => XYTSStreamToRawStrea_U0_ap_continue,
        ap_idle => XYTSStreamToRawStrea_U0_ap_idle,
        ap_ready => XYTSStreamToRawStrea_U0_ap_ready,
        streamOut_V_V_din => XYTSStreamToRawStrea_U0_streamOut_V_V_din,
        streamOut_V_V_full_n => internalStream_V_V_full_n,
        streamOut_V_V_write => XYTSStreamToRawStrea_U0_streamOut_V_V_write,
        start_out => XYTSStreamToRawStrea_U0_start_out,
        start_write => XYTSStreamToRawStrea_U0_start_write,
        xStreamIn_V_V_TDATA => xStreamIn_V_V_TDATA,
        xStreamIn_V_V_TVALID => xStreamIn_V_V_TVALID,
        xStreamIn_V_V_TREADY => XYTSStreamToRawStrea_U0_xStreamIn_V_V_TREADY,
        yStreamIn_V_V_TDATA => yStreamIn_V_V_TDATA,
        yStreamIn_V_V_TVALID => yStreamIn_V_V_TVALID,
        yStreamIn_V_V_TREADY => XYTSStreamToRawStrea_U0_yStreamIn_V_V_TREADY,
        tsStreamIn_V_V_TDATA => tsStreamIn_V_V_TDATA,
        tsStreamIn_V_V_TVALID => tsStreamIn_V_V_TVALID,
        tsStreamIn_V_V_TREADY => XYTSStreamToRawStrea_U0_tsStreamIn_V_V_TREADY,
        polStreamIn_V_V_TDATA => polStreamIn_V_V_TDATA,
        polStreamIn_V_V_TVALID => polStreamIn_V_V_TVALID,
        polStreamIn_V_V_TREADY => XYTSStreamToRawStrea_U0_polStreamIn_V_V_TREADY,
        custDataStreamIn_V_V_TDATA => custDataStreamIn_V_V_TDATA,
        custDataStreamIn_V_V_TVALID => custDataStreamIn_V_V_TVALID,
        custDataStreamIn_V_V_TREADY => XYTSStreamToRawStrea_U0_custDataStreamIn_V_V_TREADY,
        tsReg_V => XYTSStreamToRawStrea_U0_tsReg_V,
        tsReg_V_ap_vld => XYTSStreamToRawStrea_U0_tsReg_V_ap_vld,
        glLastTSReg_V => XYTSStreamToRawStrea_U0_glLastTSReg_V,
        glLastTSReg_V_ap_vld => XYTSStreamToRawStrea_U0_glLastTSReg_V_ap_vld,
        yReg_V => XYTSStreamToRawStrea_U0_yReg_V,
        yReg_V_ap_vld => XYTSStreamToRawStrea_U0_yReg_V_ap_vld,
        glLastYReg_V => XYTSStreamToRawStrea_U0_glLastYReg_V,
        glLastYReg_V_ap_vld => XYTSStreamToRawStrea_U0_glLastYReg_V_ap_vld,
        tsDiffFlgReg_V => XYTSStreamToRawStrea_U0_tsDiffFlgReg_V,
        tsDiffFlgReg_V_ap_vld => XYTSStreamToRawStrea_U0_tsDiffFlgReg_V_ap_vld,
        yDiffFlgReg_V => XYTSStreamToRawStrea_U0_yDiffFlgReg_V,
        yDiffFlgReg_V_ap_vld => XYTSStreamToRawStrea_U0_yDiffFlgReg_V_ap_vld,
        nonMonTSDiffFlgReg_V => XYTSStreamToRawStrea_U0_nonMonTSDiffFlgReg_V,
        nonMonTSDiffFlgReg_V_ap_vld => XYTSStreamToRawStrea_U0_nonMonTSDiffFlgReg_V_ap_vld);

    RawStreamToFIFO_U0 : component RawStreamToFIFO
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => RawStreamToFIFO_U0_ap_start,
        ap_done => RawStreamToFIFO_U0_ap_done,
        ap_continue => RawStreamToFIFO_U0_ap_continue,
        ap_idle => RawStreamToFIFO_U0_ap_idle,
        ap_ready => RawStreamToFIFO_U0_ap_ready,
        streamIn_V_V_dout => internalStream_V_V_dout,
        streamIn_V_V_empty_n => internalStream_V_V_empty_n,
        streamIn_V_V_read => RawStreamToFIFO_U0_streamIn_V_V_read,
        dataOut_V => RawStreamToFIFO_U0_dataOut_V,
        dataOut_V_ap_vld => RawStreamToFIFO_U0_dataOut_V_ap_vld,
        nonMonTSDiffFlgReg_V => RawStreamToFIFO_U0_nonMonTSDiffFlgReg_V,
        nonMonTSDiffFlgReg_V_ap_vld => RawStreamToFIFO_U0_nonMonTSDiffFlgReg_V_ap_vld);

    internalStream_V_V_U : component fifo_w16_d1024_S
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => XYTSStreamToRawStrea_U0_streamOut_V_V_din,
        if_full_n => internalStream_V_V_full_n,
        if_write => XYTSStreamToRawStrea_U0_streamOut_V_V_write,
        if_dout => internalStream_V_V_dout,
        if_empty_n => internalStream_V_V_empty_n,
        if_read => RawStreamToFIFO_U0_streamIn_V_V_read);

    start_for_RawStrebkb_U : component start_for_RawStrebkb
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_RawStreamToFIFO_U0_din,
        if_full_n => start_for_RawStreamToFIFO_U0_full_n,
        if_write => XYTSStreamToRawStrea_U0_start_write,
        if_dout => start_for_RawStreamToFIFO_U0_dout,
        if_empty_n => start_for_RawStreamToFIFO_U0_empty_n,
        if_read => RawStreamToFIFO_U0_ap_ready);




    RawStreamToFIFO_U0_ap_continue <= ap_sync_done;
    RawStreamToFIFO_U0_ap_start <= start_for_RawStreamToFIFO_U0_empty_n;
    RawStreamToFIFO_U0_start_full_n <= ap_const_logic_1;
    RawStreamToFIFO_U0_start_write <= ap_const_logic_0;
    XYTSStreamToRawStrea_U0_ap_continue <= ap_sync_done;
    XYTSStreamToRawStrea_U0_ap_start <= ap_start;
    ap_done <= ap_sync_done;
    ap_idle <= (XYTSStreamToRawStrea_U0_ap_idle and RawStreamToFIFO_U0_ap_idle);
    ap_ready <= XYTSStreamToRawStrea_U0_ap_ready;

    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    ap_sync_continue <= ap_sync_done;
    ap_sync_done <= (XYTSStreamToRawStrea_U0_ap_done and RawStreamToFIFO_U0_ap_done);
    ap_sync_ready <= XYTSStreamToRawStrea_U0_ap_ready;
    custDataStreamIn_V_V_TREADY <= XYTSStreamToRawStrea_U0_custDataStreamIn_V_V_TREADY;
    dataOut_V <= RawStreamToFIFO_U0_dataOut_V;
    dataOut_V_ap_vld <= RawStreamToFIFO_U0_dataOut_V_ap_vld;
    glLastTSReg_V <= XYTSStreamToRawStrea_U0_glLastTSReg_V;
    glLastTSReg_V_ap_vld <= XYTSStreamToRawStrea_U0_glLastTSReg_V_ap_vld;
    glLastYReg_V <= XYTSStreamToRawStrea_U0_glLastYReg_V;
    glLastYReg_V_ap_vld <= XYTSStreamToRawStrea_U0_glLastYReg_V_ap_vld;
    nonMonTSDiffFlgRegL1_V <= XYTSStreamToRawStrea_U0_nonMonTSDiffFlgReg_V;
    nonMonTSDiffFlgRegL1_V_ap_vld <= XYTSStreamToRawStrea_U0_nonMonTSDiffFlgReg_V_ap_vld;
    nonMonTSDiffFlgRegL2_V <= RawStreamToFIFO_U0_nonMonTSDiffFlgReg_V;
    nonMonTSDiffFlgRegL2_V_ap_vld <= RawStreamToFIFO_U0_nonMonTSDiffFlgReg_V_ap_vld;
    polStreamIn_V_V_TREADY <= XYTSStreamToRawStrea_U0_polStreamIn_V_V_TREADY;
    start_for_RawStreamToFIFO_U0_din <= (0=>ap_const_logic_1, others=>'-');
    tsDiffFlgReg_V <= XYTSStreamToRawStrea_U0_tsDiffFlgReg_V;
    tsDiffFlgReg_V_ap_vld <= XYTSStreamToRawStrea_U0_tsDiffFlgReg_V_ap_vld;
    tsReg_V <= XYTSStreamToRawStrea_U0_tsReg_V;
    tsReg_V_ap_vld <= XYTSStreamToRawStrea_U0_tsReg_V_ap_vld;
    tsStreamIn_V_V_TREADY <= XYTSStreamToRawStrea_U0_tsStreamIn_V_V_TREADY;
    xStreamIn_V_V_TREADY <= XYTSStreamToRawStrea_U0_xStreamIn_V_V_TREADY;
    yDiffFlgReg_V <= XYTSStreamToRawStrea_U0_yDiffFlgReg_V;
    yDiffFlgReg_V_ap_vld <= XYTSStreamToRawStrea_U0_yDiffFlgReg_V_ap_vld;
    yReg_V <= XYTSStreamToRawStrea_U0_yReg_V;
    yReg_V_ap_vld <= XYTSStreamToRawStrea_U0_yReg_V_ap_vld;
    yStreamIn_V_V_TREADY <= XYTSStreamToRawStrea_U0_yStreamIn_V_V_TREADY;
end behav;