// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.1
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="sha256_top,hls_ip_2013_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.173500,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=4,HLS_SYN_DSP=0,HLS_SYN_FF=3545,HLS_SYN_LUT=4420}" *)

module sha256_top (
        ap_clk,
        ap_rst,
        ctx_in_data_address0,
        ctx_in_data_ce0,
        ctx_in_data_we0,
        ctx_in_data_d0,
        ctx_in_data_q0,
        ctx_in_data_address1,
        ctx_in_data_ce1,
        ctx_in_data_we1,
        ctx_in_data_d1,
        ctx_in_data_q1,
        ctx_datalen,
        ctx_datalen_ap_vld,
        ctx_bitlen_address0,
        ctx_bitlen_ce0,
        ctx_bitlen_we0,
        ctx_bitlen_d0,
        ctx_bitlen_q0,
        ctx_bitlen_address1,
        ctx_bitlen_ce1,
        ctx_bitlen_we1,
        ctx_bitlen_d1,
        ctx_bitlen_q1,
        ctx_state_address0,
        ctx_state_ce0,
        ctx_state_we0,
        ctx_state_d0,
        ctx_state_q0,
        ctx_state_address1,
        ctx_state_ce1,
        ctx_state_we1,
        ctx_state_d1,
        ctx_state_q1,
        data_dout,
        data_empty_n,
        data_read,
        hash_address1,
        hash_ce1,
        hash_we1,
        hash_d1,
        rst_array
);

input   ap_clk;
input   ap_rst;
output  [5:0] ctx_in_data_address0;
output   ctx_in_data_ce0;
output   ctx_in_data_we0;
output  [7:0] ctx_in_data_d0;
input  [7:0] ctx_in_data_q0;
output  [5:0] ctx_in_data_address1;
output   ctx_in_data_ce1;
output   ctx_in_data_we1;
output  [7:0] ctx_in_data_d1;
input  [7:0] ctx_in_data_q1;
output  [31:0] ctx_datalen;
output   ctx_datalen_ap_vld;
output  [0:0] ctx_bitlen_address0;
output   ctx_bitlen_ce0;
output   ctx_bitlen_we0;
output  [31:0] ctx_bitlen_d0;
input  [31:0] ctx_bitlen_q0;
output  [0:0] ctx_bitlen_address1;
output   ctx_bitlen_ce1;
output   ctx_bitlen_we1;
output  [31:0] ctx_bitlen_d1;
input  [31:0] ctx_bitlen_q1;
output  [2:0] ctx_state_address0;
output   ctx_state_ce0;
output   ctx_state_we0;
output  [31:0] ctx_state_d0;
input  [31:0] ctx_state_q0;
output  [2:0] ctx_state_address1;
output   ctx_state_ce1;
output   ctx_state_we1;
output  [31:0] ctx_state_d1;
input  [31:0] ctx_state_q1;
input  [7:0] data_dout;
input   data_empty_n;
output   data_read;
output  [5:0] hash_address1;
output   hash_ce1;
output   hash_we1;
output  [7:0] hash_d1;
input  [0:0] rst_array;

reg[5:0] ctx_in_data_address0;
reg ctx_in_data_ce0;
reg ctx_in_data_we0;
reg[7:0] ctx_in_data_d0;
reg[5:0] ctx_in_data_address1;
reg ctx_in_data_ce1;
reg ctx_in_data_we1;
reg[31:0] ctx_datalen;
reg ctx_datalen_ap_vld;
reg[0:0] ctx_bitlen_address0;
reg ctx_bitlen_ce0;
reg ctx_bitlen_we0;
reg[31:0] ctx_bitlen_d0;
reg[0:0] ctx_bitlen_address1;
reg ctx_bitlen_ce1;
reg ctx_bitlen_we1;
reg[2:0] ctx_state_address0;
reg ctx_state_ce0;
reg ctx_state_we0;
reg[31:0] ctx_state_d0;
reg[2:0] ctx_state_address1;
reg ctx_state_ce1;
reg ctx_state_we1;
reg[31:0] ctx_state_d1;
reg data_read;
reg hash_ce1;
reg hash_we1;
wire   [6:0] grp_sha256_update_fu_210_ap_return;
reg   [6:0] call_ret_reg_228;
reg   [2:0] ap_CS_fsm = 3'b000;
wire    grp_sha256_update_fu_210_ap_done;
wire    grp_sha256_final_fu_195_ap_start;
wire    grp_sha256_final_fu_195_ap_done;
wire    grp_sha256_final_fu_195_ap_idle;
wire    grp_sha256_final_fu_195_ap_ready;
wire   [5:0] grp_sha256_final_fu_195_ctx_final_in_data_address0;
wire    grp_sha256_final_fu_195_ctx_final_in_data_ce0;
wire    grp_sha256_final_fu_195_ctx_final_in_data_we0;
wire   [7:0] grp_sha256_final_fu_195_ctx_final_in_data_d0;
wire   [7:0] grp_sha256_final_fu_195_ctx_final_in_data_q0;
wire   [5:0] grp_sha256_final_fu_195_ctx_final_in_data_address1;
wire    grp_sha256_final_fu_195_ctx_final_in_data_ce1;
wire    grp_sha256_final_fu_195_ctx_final_in_data_we1;
wire   [7:0] grp_sha256_final_fu_195_ctx_final_in_data_d1;
wire   [7:0] grp_sha256_final_fu_195_ctx_final_in_data_q1;
wire   [6:0] grp_sha256_final_fu_195_ctx_final_datalen_read;
wire   [0:0] grp_sha256_final_fu_195_ctx_final_bitlen_address0;
wire    grp_sha256_final_fu_195_ctx_final_bitlen_ce0;
wire    grp_sha256_final_fu_195_ctx_final_bitlen_we0;
wire   [31:0] grp_sha256_final_fu_195_ctx_final_bitlen_d0;
wire   [31:0] grp_sha256_final_fu_195_ctx_final_bitlen_q0;
wire   [0:0] grp_sha256_final_fu_195_ctx_final_bitlen_address1;
wire    grp_sha256_final_fu_195_ctx_final_bitlen_ce1;
wire   [31:0] grp_sha256_final_fu_195_ctx_final_bitlen_q1;
wire   [2:0] grp_sha256_final_fu_195_ctx_final_state_address0;
wire    grp_sha256_final_fu_195_ctx_final_state_ce0;
wire    grp_sha256_final_fu_195_ctx_final_state_we0;
wire   [31:0] grp_sha256_final_fu_195_ctx_final_state_d0;
wire   [31:0] grp_sha256_final_fu_195_ctx_final_state_q0;
wire   [2:0] grp_sha256_final_fu_195_ctx_final_state_address1;
wire    grp_sha256_final_fu_195_ctx_final_state_ce1;
wire    grp_sha256_final_fu_195_ctx_final_state_we1;
wire   [31:0] grp_sha256_final_fu_195_ctx_final_state_d1;
wire   [31:0] grp_sha256_final_fu_195_ctx_final_state_q1;
wire   [5:0] grp_sha256_final_fu_195_final_hash_address1;
wire    grp_sha256_final_fu_195_final_hash_ce1;
wire    grp_sha256_final_fu_195_final_hash_we1;
wire   [7:0] grp_sha256_final_fu_195_final_hash_d1;
wire    grp_sha256_update_fu_210_ap_start;
wire    grp_sha256_update_fu_210_ap_idle;
wire    grp_sha256_update_fu_210_ap_ready;
wire   [5:0] grp_sha256_update_fu_210_ctx_in_data_address0;
wire    grp_sha256_update_fu_210_ctx_in_data_ce0;
wire    grp_sha256_update_fu_210_ctx_in_data_we0;
wire   [7:0] grp_sha256_update_fu_210_ctx_in_data_d0;
wire   [7:0] grp_sha256_update_fu_210_ctx_in_data_q0;
wire   [5:0] grp_sha256_update_fu_210_ctx_in_data_address1;
wire    grp_sha256_update_fu_210_ctx_in_data_ce1;
wire   [7:0] grp_sha256_update_fu_210_ctx_in_data_q1;
wire   [0:0] grp_sha256_update_fu_210_ctx_bitlen_address0;
wire    grp_sha256_update_fu_210_ctx_bitlen_ce0;
wire    grp_sha256_update_fu_210_ctx_bitlen_we0;
wire   [31:0] grp_sha256_update_fu_210_ctx_bitlen_d0;
wire   [31:0] grp_sha256_update_fu_210_ctx_bitlen_q0;
wire   [2:0] grp_sha256_update_fu_210_ctx_state_address0;
wire    grp_sha256_update_fu_210_ctx_state_ce0;
wire    grp_sha256_update_fu_210_ctx_state_we0;
wire   [31:0] grp_sha256_update_fu_210_ctx_state_d0;
wire   [31:0] grp_sha256_update_fu_210_ctx_state_q0;
wire   [2:0] grp_sha256_update_fu_210_ctx_state_address1;
wire    grp_sha256_update_fu_210_ctx_state_ce1;
wire    grp_sha256_update_fu_210_ctx_state_we1;
wire   [31:0] grp_sha256_update_fu_210_ctx_state_d1;
wire   [31:0] grp_sha256_update_fu_210_ctx_state_q1;
wire   [7:0] grp_sha256_update_fu_210_data_dout;
wire    grp_sha256_update_fu_210_data_empty_n;
wire    grp_sha256_update_fu_210_data_read;
reg    grp_sha256_final_fu_195_ap_start_ap_start_reg = 1'b0;
reg    grp_sha256_update_fu_210_ap_start_ap_start_reg = 1'b0;
wire   [31:0] call_ret_ext_fu_224_p1;
reg   [2:0] ap_NS_fsm;
parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 3'b000;
parameter    ap_ST_st2_fsm_1 = 3'b1;
parameter    ap_ST_st3_fsm_2 = 3'b10;
parameter    ap_ST_st4_fsm_3 = 3'b11;
parameter    ap_ST_st5_fsm_4 = 3'b100;
parameter    ap_ST_st6_fsm_5 = 3'b101;
parameter    ap_ST_st7_fsm_6 = 3'b110;
parameter    ap_ST_st8_fsm_7 = 3'b111;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv32_6A09E667 = 32'b1101010000010011110011001100111;
parameter    ap_const_lv32_3C6EF372 = 32'b111100011011101111001101110010;
parameter    ap_const_lv32_510E527F = 32'b1010001000011100101001001111111;
parameter    ap_const_lv32_1F83D9AB = 32'b11111100000111101100110101011;
parameter    ap_const_lv32_BB67AE85 = 32'b10111011011001111010111010000101;
parameter    ap_const_lv32_A54FF53A = 32'b10100101010011111111010100111010;
parameter    ap_const_lv32_9B05688C = 32'b10011011000001010110100010001100;
parameter    ap_const_lv32_5BE0CD19 = 32'b1011011111000001100110100011001;
parameter    ap_true = 1'b1;


sha256_final grp_sha256_final_fu_195(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst ),
    .ap_start( grp_sha256_final_fu_195_ap_start ),
    .ap_done( grp_sha256_final_fu_195_ap_done ),
    .ap_idle( grp_sha256_final_fu_195_ap_idle ),
    .ap_ready( grp_sha256_final_fu_195_ap_ready ),
    .ctx_final_in_data_address0( grp_sha256_final_fu_195_ctx_final_in_data_address0 ),
    .ctx_final_in_data_ce0( grp_sha256_final_fu_195_ctx_final_in_data_ce0 ),
    .ctx_final_in_data_we0( grp_sha256_final_fu_195_ctx_final_in_data_we0 ),
    .ctx_final_in_data_d0( grp_sha256_final_fu_195_ctx_final_in_data_d0 ),
    .ctx_final_in_data_q0( grp_sha256_final_fu_195_ctx_final_in_data_q0 ),
    .ctx_final_in_data_address1( grp_sha256_final_fu_195_ctx_final_in_data_address1 ),
    .ctx_final_in_data_ce1( grp_sha256_final_fu_195_ctx_final_in_data_ce1 ),
    .ctx_final_in_data_we1( grp_sha256_final_fu_195_ctx_final_in_data_we1 ),
    .ctx_final_in_data_d1( grp_sha256_final_fu_195_ctx_final_in_data_d1 ),
    .ctx_final_in_data_q1( grp_sha256_final_fu_195_ctx_final_in_data_q1 ),
    .ctx_final_datalen_read( grp_sha256_final_fu_195_ctx_final_datalen_read ),
    .ctx_final_bitlen_address0( grp_sha256_final_fu_195_ctx_final_bitlen_address0 ),
    .ctx_final_bitlen_ce0( grp_sha256_final_fu_195_ctx_final_bitlen_ce0 ),
    .ctx_final_bitlen_we0( grp_sha256_final_fu_195_ctx_final_bitlen_we0 ),
    .ctx_final_bitlen_d0( grp_sha256_final_fu_195_ctx_final_bitlen_d0 ),
    .ctx_final_bitlen_q0( grp_sha256_final_fu_195_ctx_final_bitlen_q0 ),
    .ctx_final_bitlen_address1( grp_sha256_final_fu_195_ctx_final_bitlen_address1 ),
    .ctx_final_bitlen_ce1( grp_sha256_final_fu_195_ctx_final_bitlen_ce1 ),
    .ctx_final_bitlen_q1( grp_sha256_final_fu_195_ctx_final_bitlen_q1 ),
    .ctx_final_state_address0( grp_sha256_final_fu_195_ctx_final_state_address0 ),
    .ctx_final_state_ce0( grp_sha256_final_fu_195_ctx_final_state_ce0 ),
    .ctx_final_state_we0( grp_sha256_final_fu_195_ctx_final_state_we0 ),
    .ctx_final_state_d0( grp_sha256_final_fu_195_ctx_final_state_d0 ),
    .ctx_final_state_q0( grp_sha256_final_fu_195_ctx_final_state_q0 ),
    .ctx_final_state_address1( grp_sha256_final_fu_195_ctx_final_state_address1 ),
    .ctx_final_state_ce1( grp_sha256_final_fu_195_ctx_final_state_ce1 ),
    .ctx_final_state_we1( grp_sha256_final_fu_195_ctx_final_state_we1 ),
    .ctx_final_state_d1( grp_sha256_final_fu_195_ctx_final_state_d1 ),
    .ctx_final_state_q1( grp_sha256_final_fu_195_ctx_final_state_q1 ),
    .final_hash_address1( grp_sha256_final_fu_195_final_hash_address1 ),
    .final_hash_ce1( grp_sha256_final_fu_195_final_hash_ce1 ),
    .final_hash_we1( grp_sha256_final_fu_195_final_hash_we1 ),
    .final_hash_d1( grp_sha256_final_fu_195_final_hash_d1 )
);

sha256_update grp_sha256_update_fu_210(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst ),
    .ap_start( grp_sha256_update_fu_210_ap_start ),
    .ap_done( grp_sha256_update_fu_210_ap_done ),
    .ap_idle( grp_sha256_update_fu_210_ap_idle ),
    .ap_ready( grp_sha256_update_fu_210_ap_ready ),
    .ctx_in_data_address0( grp_sha256_update_fu_210_ctx_in_data_address0 ),
    .ctx_in_data_ce0( grp_sha256_update_fu_210_ctx_in_data_ce0 ),
    .ctx_in_data_we0( grp_sha256_update_fu_210_ctx_in_data_we0 ),
    .ctx_in_data_d0( grp_sha256_update_fu_210_ctx_in_data_d0 ),
    .ctx_in_data_q0( grp_sha256_update_fu_210_ctx_in_data_q0 ),
    .ctx_in_data_address1( grp_sha256_update_fu_210_ctx_in_data_address1 ),
    .ctx_in_data_ce1( grp_sha256_update_fu_210_ctx_in_data_ce1 ),
    .ctx_in_data_q1( grp_sha256_update_fu_210_ctx_in_data_q1 ),
    .ctx_bitlen_address0( grp_sha256_update_fu_210_ctx_bitlen_address0 ),
    .ctx_bitlen_ce0( grp_sha256_update_fu_210_ctx_bitlen_ce0 ),
    .ctx_bitlen_we0( grp_sha256_update_fu_210_ctx_bitlen_we0 ),
    .ctx_bitlen_d0( grp_sha256_update_fu_210_ctx_bitlen_d0 ),
    .ctx_bitlen_q0( grp_sha256_update_fu_210_ctx_bitlen_q0 ),
    .ctx_state_address0( grp_sha256_update_fu_210_ctx_state_address0 ),
    .ctx_state_ce0( grp_sha256_update_fu_210_ctx_state_ce0 ),
    .ctx_state_we0( grp_sha256_update_fu_210_ctx_state_we0 ),
    .ctx_state_d0( grp_sha256_update_fu_210_ctx_state_d0 ),
    .ctx_state_q0( grp_sha256_update_fu_210_ctx_state_q0 ),
    .ctx_state_address1( grp_sha256_update_fu_210_ctx_state_address1 ),
    .ctx_state_ce1( grp_sha256_update_fu_210_ctx_state_ce1 ),
    .ctx_state_we1( grp_sha256_update_fu_210_ctx_state_we1 ),
    .ctx_state_d1( grp_sha256_update_fu_210_ctx_state_d1 ),
    .ctx_state_q1( grp_sha256_update_fu_210_ctx_state_q1 ),
    .data_dout( grp_sha256_update_fu_210_data_dout ),
    .data_empty_n( grp_sha256_update_fu_210_data_empty_n ),
    .data_read( grp_sha256_update_fu_210_data_read ),
    .ap_return( grp_sha256_update_fu_210_ap_return )
);



/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// grp_sha256_final_fu_195_ap_start_ap_start_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_grp_sha256_final_fu_195_ap_start_ap_start_reg
    if (ap_rst == 1'b1) begin
        grp_sha256_final_fu_195_ap_start_ap_start_reg <= ap_const_logic_0;
    end else begin
        if ((ap_ST_st7_fsm_6 == ap_CS_fsm)) begin
            grp_sha256_final_fu_195_ap_start_ap_start_reg <= ap_const_logic_1;
        end else if ((ap_const_logic_1 == grp_sha256_final_fu_195_ap_ready)) begin
            grp_sha256_final_fu_195_ap_start_ap_start_reg <= ap_const_logic_0;
        end
    end
end

/// grp_sha256_update_fu_210_ap_start_ap_start_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_grp_sha256_update_fu_210_ap_start_ap_start_reg
    if (ap_rst == 1'b1) begin
        grp_sha256_update_fu_210_ap_start_ap_start_reg <= ap_const_logic_0;
    end else begin
        if ((ap_ST_st5_fsm_4 == ap_CS_fsm)) begin
            grp_sha256_update_fu_210_ap_start_ap_start_reg <= ap_const_logic_1;
        end else if ((ap_const_logic_1 == grp_sha256_update_fu_210_ap_ready)) begin
            grp_sha256_update_fu_210_ap_start_ap_start_reg <= ap_const_logic_0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st6_fsm_5 == ap_CS_fsm) & ~(ap_const_logic_0 == grp_sha256_update_fu_210_ap_done))) begin
        call_ret_reg_228 <= grp_sha256_update_fu_210_ap_return;
    end
end

/// ctx_bitlen_address0 assign process. ///
always @ (ap_CS_fsm or grp_sha256_final_fu_195_ctx_final_bitlen_address0 or grp_sha256_update_fu_210_ctx_bitlen_address0)
begin
    if ((ap_ST_st4_fsm_3 == ap_CS_fsm)) begin
        ctx_bitlen_address0 = ap_const_lv32_0;
    end else if ((ap_ST_st6_fsm_5 == ap_CS_fsm)) begin
        ctx_bitlen_address0 = grp_sha256_update_fu_210_ctx_bitlen_address0;
    end else if ((ap_ST_st8_fsm_7 == ap_CS_fsm)) begin
        ctx_bitlen_address0 = grp_sha256_final_fu_195_ctx_final_bitlen_address0;
    end else begin
        ctx_bitlen_address0 = ap_const_lv32_0;
    end
end

/// ctx_bitlen_address1 assign process. ///
always @ (ap_CS_fsm or grp_sha256_final_fu_195_ctx_final_bitlen_address1)
begin
    if ((ap_ST_st4_fsm_3 == ap_CS_fsm)) begin
        ctx_bitlen_address1 = ap_const_lv32_1;
    end else if ((ap_ST_st8_fsm_7 == ap_CS_fsm)) begin
        ctx_bitlen_address1 = grp_sha256_final_fu_195_ctx_final_bitlen_address1;
    end else begin
        ctx_bitlen_address1 = ap_const_lv32_1;
    end
end

/// ctx_bitlen_ce0 assign process. ///
always @ (ap_CS_fsm or grp_sha256_final_fu_195_ctx_final_bitlen_ce0 or grp_sha256_update_fu_210_ctx_bitlen_ce0)
begin
    if ((ap_ST_st4_fsm_3 == ap_CS_fsm)) begin
        ctx_bitlen_ce0 = ap_const_logic_1;
    end else if ((ap_ST_st6_fsm_5 == ap_CS_fsm)) begin
        ctx_bitlen_ce0 = grp_sha256_update_fu_210_ctx_bitlen_ce0;
    end else if ((ap_ST_st8_fsm_7 == ap_CS_fsm)) begin
        ctx_bitlen_ce0 = grp_sha256_final_fu_195_ctx_final_bitlen_ce0;
    end else begin
        ctx_bitlen_ce0 = ap_const_logic_0;
    end
end

/// ctx_bitlen_ce1 assign process. ///
always @ (ap_CS_fsm or grp_sha256_final_fu_195_ctx_final_bitlen_ce1)
begin
    if ((ap_ST_st4_fsm_3 == ap_CS_fsm)) begin
        ctx_bitlen_ce1 = ap_const_logic_1;
    end else if ((ap_ST_st8_fsm_7 == ap_CS_fsm)) begin
        ctx_bitlen_ce1 = grp_sha256_final_fu_195_ctx_final_bitlen_ce1;
    end else begin
        ctx_bitlen_ce1 = ap_const_logic_0;
    end
end

/// ctx_bitlen_d0 assign process. ///
always @ (ap_CS_fsm or grp_sha256_final_fu_195_ctx_final_bitlen_d0 or grp_sha256_update_fu_210_ctx_bitlen_d0)
begin
    if ((ap_ST_st4_fsm_3 == ap_CS_fsm)) begin
        ctx_bitlen_d0 = ap_const_lv32_0;
    end else if ((ap_ST_st6_fsm_5 == ap_CS_fsm)) begin
        ctx_bitlen_d0 = grp_sha256_update_fu_210_ctx_bitlen_d0;
    end else if ((ap_ST_st8_fsm_7 == ap_CS_fsm)) begin
        ctx_bitlen_d0 = grp_sha256_final_fu_195_ctx_final_bitlen_d0;
    end else begin
        ctx_bitlen_d0 = ap_const_lv32_0;
    end
end

/// ctx_bitlen_we0 assign process. ///
always @ (ap_CS_fsm or grp_sha256_final_fu_195_ctx_final_bitlen_we0 or grp_sha256_update_fu_210_ctx_bitlen_we0)
begin
    if ((ap_ST_st4_fsm_3 == ap_CS_fsm)) begin
        ctx_bitlen_we0 = ap_const_logic_1;
    end else if ((ap_ST_st6_fsm_5 == ap_CS_fsm)) begin
        ctx_bitlen_we0 = grp_sha256_update_fu_210_ctx_bitlen_we0;
    end else if ((ap_ST_st8_fsm_7 == ap_CS_fsm)) begin
        ctx_bitlen_we0 = grp_sha256_final_fu_195_ctx_final_bitlen_we0;
    end else begin
        ctx_bitlen_we0 = ap_const_logic_0;
    end
end

/// ctx_bitlen_we1 assign process. ///
always @ (ap_CS_fsm)
begin
    if ((ap_ST_st4_fsm_3 == ap_CS_fsm)) begin
        ctx_bitlen_we1 = ap_const_logic_1;
    end else begin
        ctx_bitlen_we1 = ap_const_logic_0;
    end
end

/// ctx_datalen assign process. ///
always @ (ap_CS_fsm or grp_sha256_update_fu_210_ap_done or call_ret_ext_fu_224_p1)
begin
    if ((ap_ST_st7_fsm_6 == ap_CS_fsm)) begin
        ctx_datalen = call_ret_ext_fu_224_p1;
    end else if (((ap_ST_st6_fsm_5 == ap_CS_fsm) & ~(ap_const_logic_0 == grp_sha256_update_fu_210_ap_done))) begin
        ctx_datalen = ap_const_lv32_0;
    end else begin
        ctx_datalen = call_ret_ext_fu_224_p1;
    end
end

/// ctx_datalen_ap_vld assign process. ///
always @ (ap_CS_fsm or grp_sha256_update_fu_210_ap_done)
begin
    if ((((ap_ST_st6_fsm_5 == ap_CS_fsm) & ~(ap_const_logic_0 == grp_sha256_update_fu_210_ap_done)) | (ap_ST_st7_fsm_6 == ap_CS_fsm))) begin
        ctx_datalen_ap_vld = ap_const_logic_1;
    end else begin
        ctx_datalen_ap_vld = ap_const_logic_0;
    end
end

/// ctx_in_data_address0 assign process. ///
always @ (ap_CS_fsm or grp_sha256_final_fu_195_ctx_final_in_data_address0 or grp_sha256_update_fu_210_ctx_in_data_address0)
begin
    if ((ap_ST_st6_fsm_5 == ap_CS_fsm)) begin
        ctx_in_data_address0 = grp_sha256_update_fu_210_ctx_in_data_address0;
    end else if ((ap_ST_st8_fsm_7 == ap_CS_fsm)) begin
        ctx_in_data_address0 = grp_sha256_final_fu_195_ctx_final_in_data_address0;
    end else begin
        ctx_in_data_address0 = grp_sha256_update_fu_210_ctx_in_data_address0;
    end
end

/// ctx_in_data_address1 assign process. ///
always @ (ap_CS_fsm or grp_sha256_final_fu_195_ctx_final_in_data_address1 or grp_sha256_update_fu_210_ctx_in_data_address1)
begin
    if ((ap_ST_st6_fsm_5 == ap_CS_fsm)) begin
        ctx_in_data_address1 = grp_sha256_update_fu_210_ctx_in_data_address1;
    end else if ((ap_ST_st8_fsm_7 == ap_CS_fsm)) begin
        ctx_in_data_address1 = grp_sha256_final_fu_195_ctx_final_in_data_address1;
    end else begin
        ctx_in_data_address1 = grp_sha256_update_fu_210_ctx_in_data_address1;
    end
end

/// ctx_in_data_ce0 assign process. ///
always @ (ap_CS_fsm or grp_sha256_final_fu_195_ctx_final_in_data_ce0 or grp_sha256_update_fu_210_ctx_in_data_ce0)
begin
    if ((ap_ST_st6_fsm_5 == ap_CS_fsm)) begin
        ctx_in_data_ce0 = grp_sha256_update_fu_210_ctx_in_data_ce0;
    end else if ((ap_ST_st8_fsm_7 == ap_CS_fsm)) begin
        ctx_in_data_ce0 = grp_sha256_final_fu_195_ctx_final_in_data_ce0;
    end else begin
        ctx_in_data_ce0 = ap_const_logic_0;
    end
end

/// ctx_in_data_ce1 assign process. ///
always @ (ap_CS_fsm or grp_sha256_final_fu_195_ctx_final_in_data_ce1 or grp_sha256_update_fu_210_ctx_in_data_ce1)
begin
    if ((ap_ST_st6_fsm_5 == ap_CS_fsm)) begin
        ctx_in_data_ce1 = grp_sha256_update_fu_210_ctx_in_data_ce1;
    end else if ((ap_ST_st8_fsm_7 == ap_CS_fsm)) begin
        ctx_in_data_ce1 = grp_sha256_final_fu_195_ctx_final_in_data_ce1;
    end else begin
        ctx_in_data_ce1 = ap_const_logic_0;
    end
end

/// ctx_in_data_d0 assign process. ///
always @ (ap_CS_fsm or grp_sha256_final_fu_195_ctx_final_in_data_d0 or grp_sha256_update_fu_210_ctx_in_data_d0)
begin
    if ((ap_ST_st6_fsm_5 == ap_CS_fsm)) begin
        ctx_in_data_d0 = grp_sha256_update_fu_210_ctx_in_data_d0;
    end else if ((ap_ST_st8_fsm_7 == ap_CS_fsm)) begin
        ctx_in_data_d0 = grp_sha256_final_fu_195_ctx_final_in_data_d0;
    end else begin
        ctx_in_data_d0 = grp_sha256_update_fu_210_ctx_in_data_d0;
    end
end

/// ctx_in_data_we0 assign process. ///
always @ (ap_CS_fsm or grp_sha256_final_fu_195_ctx_final_in_data_we0 or grp_sha256_update_fu_210_ctx_in_data_we0)
begin
    if ((ap_ST_st6_fsm_5 == ap_CS_fsm)) begin
        ctx_in_data_we0 = grp_sha256_update_fu_210_ctx_in_data_we0;
    end else if ((ap_ST_st8_fsm_7 == ap_CS_fsm)) begin
        ctx_in_data_we0 = grp_sha256_final_fu_195_ctx_final_in_data_we0;
    end else begin
        ctx_in_data_we0 = ap_const_logic_0;
    end
end

/// ctx_in_data_we1 assign process. ///
always @ (ap_CS_fsm or grp_sha256_final_fu_195_ctx_final_in_data_we1)
begin
    if ((ap_ST_st8_fsm_7 == ap_CS_fsm)) begin
        ctx_in_data_we1 = grp_sha256_final_fu_195_ctx_final_in_data_we1;
    end else begin
        ctx_in_data_we1 = ap_const_logic_0;
    end
end

/// ctx_state_address0 assign process. ///
always @ (ap_CS_fsm or grp_sha256_final_fu_195_ctx_final_state_address0 or grp_sha256_update_fu_210_ctx_state_address0)
begin
    if ((ap_ST_st4_fsm_3 == ap_CS_fsm)) begin
        ctx_state_address0 = ap_const_lv32_6;
    end else if ((ap_ST_st3_fsm_2 == ap_CS_fsm)) begin
        ctx_state_address0 = ap_const_lv32_4;
    end else if ((ap_ST_st2_fsm_1 == ap_CS_fsm)) begin
        ctx_state_address0 = ap_const_lv32_2;
    end else if ((ap_ST_st1_fsm_0 == ap_CS_fsm)) begin
        ctx_state_address0 = ap_const_lv32_0;
    end else if ((ap_ST_st6_fsm_5 == ap_CS_fsm)) begin
        ctx_state_address0 = grp_sha256_update_fu_210_ctx_state_address0;
    end else if ((ap_ST_st8_fsm_7 == ap_CS_fsm)) begin
        ctx_state_address0 = grp_sha256_final_fu_195_ctx_final_state_address0;
    end else begin
        ctx_state_address0 = ap_const_lv32_6;
    end
end

/// ctx_state_address1 assign process. ///
always @ (ap_CS_fsm or grp_sha256_final_fu_195_ctx_final_state_address1 or grp_sha256_update_fu_210_ctx_state_address1)
begin
    if ((ap_ST_st4_fsm_3 == ap_CS_fsm)) begin
        ctx_state_address1 = ap_const_lv32_7;
    end else if ((ap_ST_st3_fsm_2 == ap_CS_fsm)) begin
        ctx_state_address1 = ap_const_lv32_5;
    end else if ((ap_ST_st2_fsm_1 == ap_CS_fsm)) begin
        ctx_state_address1 = ap_const_lv32_3;
    end else if ((ap_ST_st1_fsm_0 == ap_CS_fsm)) begin
        ctx_state_address1 = ap_const_lv32_1;
    end else if ((ap_ST_st6_fsm_5 == ap_CS_fsm)) begin
        ctx_state_address1 = grp_sha256_update_fu_210_ctx_state_address1;
    end else if ((ap_ST_st8_fsm_7 == ap_CS_fsm)) begin
        ctx_state_address1 = grp_sha256_final_fu_195_ctx_final_state_address1;
    end else begin
        ctx_state_address1 = ap_const_lv32_7;
    end
end

/// ctx_state_ce0 assign process. ///
always @ (ap_CS_fsm or grp_sha256_final_fu_195_ctx_final_state_ce0 or grp_sha256_update_fu_210_ctx_state_ce0)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) | (ap_ST_st2_fsm_1 == ap_CS_fsm) | (ap_ST_st3_fsm_2 == ap_CS_fsm) | (ap_ST_st4_fsm_3 == ap_CS_fsm))) begin
        ctx_state_ce0 = ap_const_logic_1;
    end else if ((ap_ST_st6_fsm_5 == ap_CS_fsm)) begin
        ctx_state_ce0 = grp_sha256_update_fu_210_ctx_state_ce0;
    end else if ((ap_ST_st8_fsm_7 == ap_CS_fsm)) begin
        ctx_state_ce0 = grp_sha256_final_fu_195_ctx_final_state_ce0;
    end else begin
        ctx_state_ce0 = ap_const_logic_0;
    end
end

/// ctx_state_ce1 assign process. ///
always @ (ap_CS_fsm or grp_sha256_final_fu_195_ctx_final_state_ce1 or grp_sha256_update_fu_210_ctx_state_ce1)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) | (ap_ST_st2_fsm_1 == ap_CS_fsm) | (ap_ST_st3_fsm_2 == ap_CS_fsm) | (ap_ST_st4_fsm_3 == ap_CS_fsm))) begin
        ctx_state_ce1 = ap_const_logic_1;
    end else if ((ap_ST_st6_fsm_5 == ap_CS_fsm)) begin
        ctx_state_ce1 = grp_sha256_update_fu_210_ctx_state_ce1;
    end else if ((ap_ST_st8_fsm_7 == ap_CS_fsm)) begin
        ctx_state_ce1 = grp_sha256_final_fu_195_ctx_final_state_ce1;
    end else begin
        ctx_state_ce1 = ap_const_logic_0;
    end
end

/// ctx_state_d0 assign process. ///
always @ (ap_CS_fsm or grp_sha256_final_fu_195_ctx_final_state_d0 or grp_sha256_update_fu_210_ctx_state_d0)
begin
    if ((ap_ST_st4_fsm_3 == ap_CS_fsm)) begin
        ctx_state_d0 = ap_const_lv32_1F83D9AB;
    end else if ((ap_ST_st3_fsm_2 == ap_CS_fsm)) begin
        ctx_state_d0 = ap_const_lv32_510E527F;
    end else if ((ap_ST_st2_fsm_1 == ap_CS_fsm)) begin
        ctx_state_d0 = ap_const_lv32_3C6EF372;
    end else if ((ap_ST_st1_fsm_0 == ap_CS_fsm)) begin
        ctx_state_d0 = ap_const_lv32_6A09E667;
    end else if ((ap_ST_st6_fsm_5 == ap_CS_fsm)) begin
        ctx_state_d0 = grp_sha256_update_fu_210_ctx_state_d0;
    end else if ((ap_ST_st8_fsm_7 == ap_CS_fsm)) begin
        ctx_state_d0 = grp_sha256_final_fu_195_ctx_final_state_d0;
    end else begin
        ctx_state_d0 = ap_const_lv32_1F83D9AB;
    end
end

/// ctx_state_d1 assign process. ///
always @ (ap_CS_fsm or grp_sha256_final_fu_195_ctx_final_state_d1 or grp_sha256_update_fu_210_ctx_state_d1)
begin
    if ((ap_ST_st4_fsm_3 == ap_CS_fsm)) begin
        ctx_state_d1 = ap_const_lv32_5BE0CD19;
    end else if ((ap_ST_st3_fsm_2 == ap_CS_fsm)) begin
        ctx_state_d1 = ap_const_lv32_9B05688C;
    end else if ((ap_ST_st2_fsm_1 == ap_CS_fsm)) begin
        ctx_state_d1 = ap_const_lv32_A54FF53A;
    end else if ((ap_ST_st1_fsm_0 == ap_CS_fsm)) begin
        ctx_state_d1 = ap_const_lv32_BB67AE85;
    end else if ((ap_ST_st6_fsm_5 == ap_CS_fsm)) begin
        ctx_state_d1 = grp_sha256_update_fu_210_ctx_state_d1;
    end else if ((ap_ST_st8_fsm_7 == ap_CS_fsm)) begin
        ctx_state_d1 = grp_sha256_final_fu_195_ctx_final_state_d1;
    end else begin
        ctx_state_d1 = ap_const_lv32_5BE0CD19;
    end
end

/// ctx_state_we0 assign process. ///
always @ (ap_CS_fsm or grp_sha256_final_fu_195_ctx_final_state_we0 or grp_sha256_update_fu_210_ctx_state_we0)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) | (ap_ST_st2_fsm_1 == ap_CS_fsm) | (ap_ST_st3_fsm_2 == ap_CS_fsm) | (ap_ST_st4_fsm_3 == ap_CS_fsm))) begin
        ctx_state_we0 = ap_const_logic_1;
    end else if ((ap_ST_st6_fsm_5 == ap_CS_fsm)) begin
        ctx_state_we0 = grp_sha256_update_fu_210_ctx_state_we0;
    end else if ((ap_ST_st8_fsm_7 == ap_CS_fsm)) begin
        ctx_state_we0 = grp_sha256_final_fu_195_ctx_final_state_we0;
    end else begin
        ctx_state_we0 = ap_const_logic_0;
    end
end

/// ctx_state_we1 assign process. ///
always @ (ap_CS_fsm or grp_sha256_final_fu_195_ctx_final_state_we1 or grp_sha256_update_fu_210_ctx_state_we1)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) | (ap_ST_st2_fsm_1 == ap_CS_fsm) | (ap_ST_st3_fsm_2 == ap_CS_fsm) | (ap_ST_st4_fsm_3 == ap_CS_fsm))) begin
        ctx_state_we1 = ap_const_logic_1;
    end else if ((ap_ST_st6_fsm_5 == ap_CS_fsm)) begin
        ctx_state_we1 = grp_sha256_update_fu_210_ctx_state_we1;
    end else if ((ap_ST_st8_fsm_7 == ap_CS_fsm)) begin
        ctx_state_we1 = grp_sha256_final_fu_195_ctx_final_state_we1;
    end else begin
        ctx_state_we1 = ap_const_logic_0;
    end
end

/// data_read assign process. ///
always @ (ap_CS_fsm or grp_sha256_update_fu_210_data_read)
begin
    if (((ap_ST_st6_fsm_5 == ap_CS_fsm) | (ap_ST_st5_fsm_4 == ap_CS_fsm))) begin
        data_read = grp_sha256_update_fu_210_data_read;
    end else begin
        data_read = ap_const_logic_0;
    end
end

/// hash_ce1 assign process. ///
always @ (ap_CS_fsm or grp_sha256_final_fu_195_final_hash_ce1)
begin
    if ((ap_ST_st8_fsm_7 == ap_CS_fsm)) begin
        hash_ce1 = grp_sha256_final_fu_195_final_hash_ce1;
    end else begin
        hash_ce1 = ap_const_logic_0;
    end
end

/// hash_we1 assign process. ///
always @ (ap_CS_fsm or grp_sha256_final_fu_195_final_hash_we1)
begin
    if ((ap_ST_st8_fsm_7 == ap_CS_fsm)) begin
        hash_we1 = grp_sha256_final_fu_195_final_hash_we1;
    end else begin
        hash_we1 = ap_const_logic_0;
    end
end
always @ (ap_CS_fsm or grp_sha256_update_fu_210_ap_done or grp_sha256_final_fu_195_ap_done)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
            ap_NS_fsm = ap_ST_st2_fsm_1;
        ap_ST_st2_fsm_1 : 
            ap_NS_fsm = ap_ST_st3_fsm_2;
        ap_ST_st3_fsm_2 : 
            ap_NS_fsm = ap_ST_st4_fsm_3;
        ap_ST_st4_fsm_3 : 
            ap_NS_fsm = ap_ST_st5_fsm_4;
        ap_ST_st5_fsm_4 : 
            ap_NS_fsm = ap_ST_st6_fsm_5;
        ap_ST_st6_fsm_5 : 
            if (~(ap_const_logic_0 == grp_sha256_update_fu_210_ap_done)) begin
                ap_NS_fsm = ap_ST_st7_fsm_6;
            end else begin
                ap_NS_fsm = ap_ST_st6_fsm_5;
            end
        ap_ST_st7_fsm_6 : 
            ap_NS_fsm = ap_ST_st8_fsm_7;
        ap_ST_st8_fsm_7 : 
            if (~(ap_const_logic_0 == grp_sha256_final_fu_195_ap_done)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st8_fsm_7;
            end
        default : 
            ap_NS_fsm = 'bx;
    endcase
end
assign call_ret_ext_fu_224_p1 = $unsigned(call_ret_reg_228);
assign ctx_bitlen_d1 = ap_const_lv32_0;
assign ctx_in_data_d1 = grp_sha256_final_fu_195_ctx_final_in_data_d1;
assign grp_sha256_final_fu_195_ap_start = grp_sha256_final_fu_195_ap_start_ap_start_reg;
assign grp_sha256_final_fu_195_ctx_final_bitlen_q0 = ctx_bitlen_q0;
assign grp_sha256_final_fu_195_ctx_final_bitlen_q1 = ctx_bitlen_q1;
assign grp_sha256_final_fu_195_ctx_final_datalen_read = call_ret_reg_228;
assign grp_sha256_final_fu_195_ctx_final_in_data_q0 = ctx_in_data_q0;
assign grp_sha256_final_fu_195_ctx_final_in_data_q1 = ctx_in_data_q1;
assign grp_sha256_final_fu_195_ctx_final_state_q0 = ctx_state_q0;
assign grp_sha256_final_fu_195_ctx_final_state_q1 = ctx_state_q1;
assign grp_sha256_update_fu_210_ap_start = grp_sha256_update_fu_210_ap_start_ap_start_reg;
assign grp_sha256_update_fu_210_ctx_bitlen_q0 = ctx_bitlen_q0;
assign grp_sha256_update_fu_210_ctx_in_data_q0 = ctx_in_data_q0;
assign grp_sha256_update_fu_210_ctx_in_data_q1 = ctx_in_data_q1;
assign grp_sha256_update_fu_210_ctx_state_q0 = ctx_state_q0;
assign grp_sha256_update_fu_210_ctx_state_q1 = ctx_state_q1;
assign grp_sha256_update_fu_210_data_dout = data_dout;
assign grp_sha256_update_fu_210_data_empty_n = data_empty_n;
assign hash_address1 = grp_sha256_final_fu_195_final_hash_address1;
assign hash_d1 = grp_sha256_final_fu_195_final_hash_d1;


endmodule //sha256_top

