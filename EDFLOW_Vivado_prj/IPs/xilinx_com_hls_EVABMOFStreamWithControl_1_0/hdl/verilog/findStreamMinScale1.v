// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module findStreamMinScale1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        inStream_V_dout,
        inStream_V_empty_n,
        inStream_V_read,
        OF_yStream_V_dout,
        OF_yStream_V_empty_n,
        OF_yStream_V_read,
        minStream_V_V_din,
        minStream_V_V_full_n,
        minStream_V_V_write,
        OFStream_V_V_din,
        OFStream_V_V_full_n,
        OFStream_V_V_write
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] inStream_V_dout;
input   inStream_V_empty_n;
output   inStream_V_read;
input  [7:0] OF_yStream_V_dout;
input   OF_yStream_V_empty_n;
output   OF_yStream_V_read;
output  [14:0] minStream_V_V_din;
input   minStream_V_V_full_n;
output   minStream_V_V_write;
output  [5:0] OFStream_V_V_din;
input   OFStream_V_V_full_n;
output   OFStream_V_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg inStream_V_read;
reg OF_yStream_V_read;
reg minStream_V_V_write;
reg OFStream_V_V_write;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [14:0] currentMinScale1_V;
reg    inStream_V_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] exitcond_fu_108_p2;
reg    OF_yStream_V_blk_n;
reg    minStream_V_V_blk_n;
wire    ap_CS_fsm_state3;
reg   [0:0] tmp_s_reg_225;
reg    OFStream_V_V_blk_n;
wire   [2:0] i_fu_114_p2;
reg   [2:0] i_reg_215;
reg    ap_block_state2;
wire   [2:0] tmpOF_y_V_fu_120_p1;
reg   [2:0] tmpOF_y_V_reg_220;
wire   [0:0] tmp_s_fu_124_p2;
wire   [0:0] compCond_V_fu_138_p2;
reg   [0:0] compCond_V_reg_229;
wire   [14:0] tmp_V_175_fu_148_p3;
reg   [14:0] tmp_V_175_reg_234;
reg   [2:0] p_Repl2_47_reg_92;
reg    ap_block_state3;
wire   [5:0] tmpVal_V_fu_185_p3;
reg   [5:0] tmp_V_fu_62;
wire   [5:0] p_Result_23_fu_162_p3;
wire   [15:0] tmp_1078_cast_fu_134_p1;
wire   [14:0] tmp_2536_fu_144_p1;
wire   [5:0] p_Result_s_fu_178_p3;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 currentMinScale1_V = 15'd32767;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((tmp_s_reg_225 == 1'd1) & (1'b0 == OFStream_V_V_full_n)) | ((tmp_s_reg_225 == 1'd1) & (minStream_V_V_full_n == 1'b0))) & (tmp_s_reg_225 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        currentMinScale1_V <= 15'd32767;
    end else if ((~(((exitcond_fu_108_p2 == 1'd0) & (1'b0 == OF_yStream_V_empty_n)) | ((exitcond_fu_108_p2 == 1'd0) & (inStream_V_empty_n == 1'b0))) & (tmp_s_fu_124_p2 == 1'd0) & (exitcond_fu_108_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        currentMinScale1_V <= tmp_V_175_fu_148_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((tmp_s_reg_225 == 1'd1) & (1'b0 == OFStream_V_V_full_n)) | ((tmp_s_reg_225 == 1'd1) & (minStream_V_V_full_n == 1'b0))) & (1'b1 == ap_CS_fsm_state3))) begin
        p_Repl2_47_reg_92 <= i_reg_215;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_Repl2_47_reg_92 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((tmp_s_reg_225 == 1'd1) & (1'b0 == OFStream_V_V_full_n)) | ((tmp_s_reg_225 == 1'd1) & (minStream_V_V_full_n == 1'b0))) & (tmp_s_reg_225 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp_V_fu_62 <= tmpVal_V_fu_185_p3;
    end else if ((~(((exitcond_fu_108_p2 == 1'd0) & (1'b0 == OF_yStream_V_empty_n)) | ((exitcond_fu_108_p2 == 1'd0) & (inStream_V_empty_n == 1'b0))) & (compCond_V_fu_138_p2 == 1'd1) & (tmp_s_fu_124_p2 == 1'd0) & (exitcond_fu_108_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_V_fu_62 <= p_Result_23_fu_162_p3;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_V_fu_62 <= 6'd63;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((exitcond_fu_108_p2 == 1'd0) & (1'b0 == OF_yStream_V_empty_n)) | ((exitcond_fu_108_p2 == 1'd0) & (inStream_V_empty_n == 1'b0))) & (exitcond_fu_108_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        compCond_V_reg_229 <= compCond_V_fu_138_p2;
        tmpOF_y_V_reg_220 <= tmpOF_y_V_fu_120_p1;
        tmp_V_175_reg_234 <= tmp_V_175_fu_148_p3;
        tmp_s_reg_225 <= tmp_s_fu_124_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((exitcond_fu_108_p2 == 1'd0) & (1'b0 == OF_yStream_V_empty_n)) | ((exitcond_fu_108_p2 == 1'd0) & (inStream_V_empty_n == 1'b0))) & (1'b1 == ap_CS_fsm_state2))) begin
        i_reg_215 <= i_fu_114_p2;
    end
end

always @ (*) begin
    if (((tmp_s_reg_225 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        OFStream_V_V_blk_n = OFStream_V_V_full_n;
    end else begin
        OFStream_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((tmp_s_reg_225 == 1'd1) & (1'b0 == OFStream_V_V_full_n)) | ((tmp_s_reg_225 == 1'd1) & (minStream_V_V_full_n == 1'b0))) & (tmp_s_reg_225 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        OFStream_V_V_write = 1'b1;
    end else begin
        OFStream_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_fu_108_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        OF_yStream_V_blk_n = OF_yStream_V_empty_n;
    end else begin
        OF_yStream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((exitcond_fu_108_p2 == 1'd0) & (1'b0 == OF_yStream_V_empty_n)) | ((exitcond_fu_108_p2 == 1'd0) & (inStream_V_empty_n == 1'b0))) & (exitcond_fu_108_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        OF_yStream_V_read = 1'b1;
    end else begin
        OF_yStream_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((~(((exitcond_fu_108_p2 == 1'd0) & (1'b0 == OF_yStream_V_empty_n)) | ((exitcond_fu_108_p2 == 1'd0) & (inStream_V_empty_n == 1'b0))) & (exitcond_fu_108_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~(((exitcond_fu_108_p2 == 1'd0) & (1'b0 == OF_yStream_V_empty_n)) | ((exitcond_fu_108_p2 == 1'd0) & (inStream_V_empty_n == 1'b0))) & (exitcond_fu_108_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_fu_108_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        inStream_V_blk_n = inStream_V_empty_n;
    end else begin
        inStream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((exitcond_fu_108_p2 == 1'd0) & (1'b0 == OF_yStream_V_empty_n)) | ((exitcond_fu_108_p2 == 1'd0) & (inStream_V_empty_n == 1'b0))) & (exitcond_fu_108_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        inStream_V_read = 1'b1;
    end else begin
        inStream_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_s_reg_225 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        minStream_V_V_blk_n = minStream_V_V_full_n;
    end else begin
        minStream_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((tmp_s_reg_225 == 1'd1) & (1'b0 == OFStream_V_V_full_n)) | ((tmp_s_reg_225 == 1'd1) & (minStream_V_V_full_n == 1'b0))) & (tmp_s_reg_225 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        minStream_V_V_write = 1'b1;
    end else begin
        minStream_V_V_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~(((exitcond_fu_108_p2 == 1'd0) & (1'b0 == OF_yStream_V_empty_n)) | ((exitcond_fu_108_p2 == 1'd0) & (inStream_V_empty_n == 1'b0))) & (exitcond_fu_108_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if ((~(((exitcond_fu_108_p2 == 1'd0) & (1'b0 == OF_yStream_V_empty_n)) | ((exitcond_fu_108_p2 == 1'd0) & (inStream_V_empty_n == 1'b0))) & (exitcond_fu_108_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if ((~(((tmp_s_reg_225 == 1'd1) & (1'b0 == OFStream_V_V_full_n)) | ((tmp_s_reg_225 == 1'd1) & (minStream_V_V_full_n == 1'b0))) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign OFStream_V_V_din = ((compCond_V_reg_229[0:0] === 1'b1) ? p_Result_s_fu_178_p3 : tmp_V_fu_62);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state2 = (((exitcond_fu_108_p2 == 1'd0) & (1'b0 == OF_yStream_V_empty_n)) | ((exitcond_fu_108_p2 == 1'd0) & (inStream_V_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state3 = (((tmp_s_reg_225 == 1'd1) & (1'b0 == OFStream_V_V_full_n)) | ((tmp_s_reg_225 == 1'd1) & (minStream_V_V_full_n == 1'b0)));
end

assign compCond_V_fu_138_p2 = (($signed(inStream_V_dout) < $signed(tmp_1078_cast_fu_134_p1)) ? 1'b1 : 1'b0);

assign exitcond_fu_108_p2 = ((p_Repl2_47_reg_92 == 3'd7) ? 1'b1 : 1'b0);

assign i_fu_114_p2 = (p_Repl2_47_reg_92 + 3'd1);

assign minStream_V_V_din = tmp_V_175_reg_234;

assign p_Result_23_fu_162_p3 = {{tmpOF_y_V_fu_120_p1}, {p_Repl2_47_reg_92}};

assign p_Result_s_fu_178_p3 = {{tmpOF_y_V_reg_220}, {3'd6}};

assign tmpOF_y_V_fu_120_p1 = OF_yStream_V_dout[2:0];

assign tmpVal_V_fu_185_p3 = ((compCond_V_reg_229[0:0] === 1'b1) ? p_Result_s_fu_178_p3 : tmp_V_fu_62);

assign tmp_1078_cast_fu_134_p1 = currentMinScale1_V;

assign tmp_2536_fu_144_p1 = inStream_V_dout[14:0];

assign tmp_V_175_fu_148_p3 = ((compCond_V_fu_138_p2[0:0] === 1'b1) ? tmp_2536_fu_144_p1 : currentMinScale1_V);

assign tmp_s_fu_124_p2 = ((p_Repl2_47_reg_92 == 3'd6) ? 1'b1 : 1'b0);

endmodule //findStreamMinScale1