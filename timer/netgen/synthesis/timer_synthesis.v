////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: timer_synthesis.v
// /___/   /\     Timestamp: MON 17 FEB 22:51:3 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim timer.ngc timer_synthesis.v 
// Device	: xc3s100e-4-cp132
// Input file	: timer.ngc
// Output file	: C:\FPGA\timer_fin\netgen\synthesis\timer_synthesis.v
// # of Modules	: 1
// Design Name	: timer
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module timer (
  SW_START_I, SW_RESET_I, LED1_O, LED2_O, LED3_O, LED4_O, CLK_I, DPOEN_O, SEG_O
);
  input SW_START_I;
  input SW_RESET_I;
  output LED1_O;
  output LED2_O;
  output LED3_O;
  output LED4_O;
  input CLK_I;
  output [3 : 0] DPOEN_O;
  output [7 : 0] SEG_O;
  wire CLK_I_BUFGP_1;
  wire DPOEN_O_0_OBUF_6;
  wire DPOEN_O_1_OBUF_7;
  wire DPOEN_O_2_OBUF_8;
  wire DPOEN_O_3_OBUF_9;
  wire \I_digit1/Mcount_out ;
  wire \I_digit1/Mcount_out1 ;
  wire \I_digit1/Mcount_out2 ;
  wire \I_digit1/Mcount_out3 ;
  wire \I_digit1/out_and0000 ;
  wire \I_digit10/Mcount_out ;
  wire \I_digit10/Mcount_out1 ;
  wire \I_digit10/Mcount_out2 ;
  wire \I_digit10/Mcount_out3 ;
  wire \I_digit10/Mcount_out_val ;
  wire \I_digit10/out_and0000 ;
  wire \I_digit10/out_cst ;
  wire \I_digit10/out_or0000 ;
  wire \I_digit100/Mcount_out ;
  wire \I_digit100/Mcount_out1 ;
  wire \I_digit100/Mcount_out2 ;
  wire \I_digit100/Mcount_out3 ;
  wire \I_digit100/out_not0003 ;
  wire \I_fsm/start_o_40 ;
  wire \I_fsm/timeout_41 ;
  wire \I_fsm/timeout_not0001 ;
  wire \I_fsm/timeout_not000119_43 ;
  wire \I_oe_gen/Mcount_OEN_counter_cy<10>_rt_46 ;
  wire \I_oe_gen/Mcount_OEN_counter_cy<11>_rt_48 ;
  wire \I_oe_gen/Mcount_OEN_counter_cy<12>_rt_50 ;
  wire \I_oe_gen/Mcount_OEN_counter_cy<13>_rt_52 ;
  wire \I_oe_gen/Mcount_OEN_counter_cy<14>_rt_54 ;
  wire \I_oe_gen/Mcount_OEN_counter_cy<15>_rt_56 ;
  wire \I_oe_gen/Mcount_OEN_counter_cy<16>_rt_58 ;
  wire \I_oe_gen/Mcount_OEN_counter_cy<1>_rt_60 ;
  wire \I_oe_gen/Mcount_OEN_counter_cy<2>_rt_62 ;
  wire \I_oe_gen/Mcount_OEN_counter_cy<3>_rt_64 ;
  wire \I_oe_gen/Mcount_OEN_counter_cy<4>_rt_66 ;
  wire \I_oe_gen/Mcount_OEN_counter_cy<5>_rt_68 ;
  wire \I_oe_gen/Mcount_OEN_counter_cy<6>_rt_70 ;
  wire \I_oe_gen/Mcount_OEN_counter_cy<7>_rt_72 ;
  wire \I_oe_gen/Mcount_OEN_counter_cy<8>_rt_74 ;
  wire \I_oe_gen/Mcount_OEN_counter_cy<9>_rt_76 ;
  wire \I_oe_gen/Mcount_OEN_counter_xor<17>_rt_78 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<10>_rt_99 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<11>_rt_101 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<12>_rt_103 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<13>_rt_105 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<14>_rt_107 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<15>_rt_109 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<16>_rt_111 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<17>_rt_113 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<18>_rt_115 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<19>_rt_117 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<1>_rt_119 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<20>_rt_121 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<21>_rt_123 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<22>_rt_125 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<23>_rt_127 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<24>_rt_129 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<25>_rt_131 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<26>_rt_133 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<27>_rt_135 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<28>_rt_137 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<29>_rt_139 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<2>_rt_141 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<30>_rt_143 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<3>_rt_145 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<4>_rt_147 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<5>_rt_149 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<6>_rt_151 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<7>_rt_153 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<8>_rt_155 ;
  wire \I_pulse1sec/Mcount_sec1_counter_cy<9>_rt_157 ;
  wire \I_pulse1sec/Mcount_sec1_counter_xor<31>_rt_159 ;
  wire \I_pulse1sec/sec1_160 ;
  wire \I_pulse1sec/sec1_counter_cmp_eq0000 ;
  wire \I_pulse1sec/sec1_counter_or0000 ;
  wire \I_seg7out/Mmux_data2 ;
  wire \I_seg7out/Mmux_data21_211 ;
  wire \I_seg7out/Mmux_data4 ;
  wire \I_seg7out/Mmux_data41_213 ;
  wire \I_seg7out/Mmux_data6 ;
  wire \I_seg7out/Mmux_data61_215 ;
  wire \I_seg7out/Mmux_data8 ;
  wire \I_seg7out/Mmux_data81_217 ;
  wire LED1_O_OBUF_223;
  wire LED2_O_OBUF_225;
  wire LED3_O_OBUF_227;
  wire N0;
  wire N1;
  wire N19;
  wire N28;
  wire N3;
  wire N30;
  wire \Result<0>1 ;
  wire \Result<10>1 ;
  wire \Result<11>1 ;
  wire \Result<12>1 ;
  wire \Result<13>1 ;
  wire \Result<14>1 ;
  wire \Result<15>1 ;
  wire \Result<16>1 ;
  wire \Result<17>1 ;
  wire \Result<1>1 ;
  wire \Result<2>1 ;
  wire \Result<3>1 ;
  wire \Result<4>1 ;
  wire \Result<5>1 ;
  wire \Result<6>1 ;
  wire \Result<7>1 ;
  wire \Result<8>1 ;
  wire \Result<9>1 ;
  wire SEG_O_0_OBUF_293;
  wire SEG_O_1_OBUF_294;
  wire SEG_O_2_OBUF_295;
  wire SEG_O_3_OBUF_296;
  wire SEG_O_4_OBUF_297;
  wire SEG_O_5_OBUF_298;
  wire SEG_O_6_OBUF_299;
  wire SW_START_I_IBUF_302;
  wire [3 : 0] \I_digit1/out ;
  wire [3 : 0] \I_digit10/out ;
  wire [3 : 0] \I_digit100/out ;
  wire [16 : 0] \I_oe_gen/Mcount_OEN_counter_cy ;
  wire [0 : 0] \I_oe_gen/Mcount_OEN_counter_lut ;
  wire [17 : 0] \I_oe_gen/OEN_counter ;
  wire [30 : 0] \I_pulse1sec/Mcount_sec1_counter_cy ;
  wire [0 : 0] \I_pulse1sec/Mcount_sec1_counter_lut ;
  wire [31 : 0] \I_pulse1sec/sec1_counter ;
  wire [6 : 0] \I_pulse1sec/sec1_counter_or00001_wg_cy ;
  wire [7 : 0] \I_pulse1sec/sec1_counter_or00001_wg_lut ;
  wire [3 : 0] \I_seg7out/data ;
  wire [31 : 0] Result;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FDRE   \I_fsm/timeout  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/timeout_not0001 ),
    .D(N1),
    .R(\I_digit10/out_cst ),
    .Q(\I_fsm/timeout_41 )
  );
  FDRE   \I_fsm/start_o  (
    .C(CLK_I_BUFGP_1),
    .CE(SW_START_I_IBUF_302),
    .D(N1),
    .R(\I_digit10/out_cst ),
    .Q(\I_fsm/start_o_40 )
  );
  FDRE   \I_pulse1sec/sec1  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(\I_pulse1sec/sec1_counter_cmp_eq0000 ),
    .R(\I_digit10/out_cst ),
    .Q(\I_pulse1sec/sec1_160 )
  );
  FDRSE   \I_digit1/out_0  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_pulse1sec/sec1_160 ),
    .D(\I_digit1/Mcount_out ),
    .R(\I_digit10/out_cst ),
    .S(\I_digit1/out_and0000 ),
    .Q(\I_digit1/out [0])
  );
  FDRSE   \I_digit1/out_1  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_pulse1sec/sec1_160 ),
    .D(\I_digit1/Mcount_out1 ),
    .R(\I_digit10/out_cst ),
    .S(\I_digit1/out_and0000 ),
    .Q(\I_digit1/out [1])
  );
  FDRSE   \I_digit1/out_2  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_pulse1sec/sec1_160 ),
    .D(\I_digit1/Mcount_out2 ),
    .R(\I_digit10/out_cst ),
    .S(\I_digit1/out_and0000 ),
    .Q(\I_digit1/out [2])
  );
  FDRSE   \I_digit1/out_3  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_pulse1sec/sec1_160 ),
    .D(\I_digit1/Mcount_out3 ),
    .R(\I_digit10/out_cst ),
    .S(\I_digit1/out_and0000 ),
    .Q(\I_digit1/out [3])
  );
  FDRE   \I_pulse1sec/sec1_counter_0  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[0]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [0])
  );
  FDRE   \I_pulse1sec/sec1_counter_1  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[1]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [1])
  );
  FDRE   \I_pulse1sec/sec1_counter_2  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[2]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [2])
  );
  FDRE   \I_pulse1sec/sec1_counter_3  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[3]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [3])
  );
  FDRE   \I_pulse1sec/sec1_counter_4  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[4]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [4])
  );
  FDRE   \I_pulse1sec/sec1_counter_5  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[5]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [5])
  );
  FDRE   \I_pulse1sec/sec1_counter_6  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[6]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [6])
  );
  FDRE   \I_pulse1sec/sec1_counter_7  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[7]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [7])
  );
  FDRE   \I_pulse1sec/sec1_counter_8  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[8]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [8])
  );
  FDRE   \I_pulse1sec/sec1_counter_9  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[9]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [9])
  );
  FDRE   \I_pulse1sec/sec1_counter_10  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[10]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [10])
  );
  FDRE   \I_pulse1sec/sec1_counter_11  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[11]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [11])
  );
  FDRE   \I_pulse1sec/sec1_counter_12  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[12]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [12])
  );
  FDRE   \I_pulse1sec/sec1_counter_13  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[13]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [13])
  );
  FDRE   \I_pulse1sec/sec1_counter_14  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[14]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [14])
  );
  FDRE   \I_pulse1sec/sec1_counter_15  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[15]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [15])
  );
  FDRE   \I_pulse1sec/sec1_counter_16  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[16]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [16])
  );
  FDRE   \I_pulse1sec/sec1_counter_17  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[17]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [17])
  );
  FDRE   \I_pulse1sec/sec1_counter_18  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[18]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [18])
  );
  FDRE   \I_pulse1sec/sec1_counter_19  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[19]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [19])
  );
  FDRE   \I_pulse1sec/sec1_counter_20  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[20]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [20])
  );
  FDRE   \I_pulse1sec/sec1_counter_21  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[21]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [21])
  );
  FDRE   \I_pulse1sec/sec1_counter_22  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[22]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [22])
  );
  FDRE   \I_pulse1sec/sec1_counter_23  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[23]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [23])
  );
  FDRE   \I_pulse1sec/sec1_counter_24  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[24]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [24])
  );
  FDRE   \I_pulse1sec/sec1_counter_25  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[25]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [25])
  );
  FDRE   \I_pulse1sec/sec1_counter_26  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[26]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [26])
  );
  FDRE   \I_pulse1sec/sec1_counter_27  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[27]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [27])
  );
  FDRE   \I_pulse1sec/sec1_counter_28  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[28]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [28])
  );
  FDRE   \I_pulse1sec/sec1_counter_29  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[29]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [29])
  );
  FDRE   \I_pulse1sec/sec1_counter_30  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[30]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [30])
  );
  FDRE   \I_pulse1sec/sec1_counter_31  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_fsm/start_o_40 ),
    .D(Result[31]),
    .R(\I_pulse1sec/sec1_counter_or0000 ),
    .Q(\I_pulse1sec/sec1_counter [31])
  );
  FDRSE   \I_digit100/out_0  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_digit100/out_not0003 ),
    .D(\I_digit100/Mcount_out ),
    .R(\I_digit10/out_cst ),
    .S(\I_digit1/out_and0000 ),
    .Q(\I_digit100/out [0])
  );
  FDRSE   \I_digit100/out_1  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_digit100/out_not0003 ),
    .D(\I_digit100/Mcount_out1 ),
    .R(\I_digit10/out_cst ),
    .S(\I_digit1/out_and0000 ),
    .Q(\I_digit100/out [1])
  );
  FDRSE   \I_digit100/out_2  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_digit100/out_not0003 ),
    .D(\I_digit100/Mcount_out2 ),
    .R(\I_digit10/out_cst ),
    .S(\I_digit1/out_and0000 ),
    .Q(\I_digit100/out [2])
  );
  FDRSE   \I_digit100/out_3  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_digit100/out_not0003 ),
    .D(\I_digit100/Mcount_out3 ),
    .R(\I_digit10/out_cst ),
    .S(\I_digit1/out_and0000 ),
    .Q(\I_digit100/out [3])
  );
  FDRSE   \I_digit10/out_2  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_digit10/out_or0000 ),
    .D(\I_digit10/Mcount_out2 ),
    .R(\I_digit10/out_cst ),
    .S(\I_digit10/out_and0000 ),
    .Q(\I_digit10/out [2])
  );
  FDSE   \I_digit10/out_0  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_digit10/out_or0000 ),
    .D(\I_digit10/Mcount_out ),
    .S(\I_digit10/Mcount_out_val ),
    .Q(\I_digit10/out [0])
  );
  FDRSE   \I_digit10/out_1  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_digit10/out_or0000 ),
    .D(\I_digit10/Mcount_out1 ),
    .R(\I_digit10/out_cst ),
    .S(\I_digit10/out_and0000 ),
    .Q(\I_digit10/out [1])
  );
  FDRSE   \I_digit10/out_3  (
    .C(CLK_I_BUFGP_1),
    .CE(\I_digit10/out_or0000 ),
    .D(\I_digit10/Mcount_out3 ),
    .R(\I_digit10/out_cst ),
    .S(\I_digit10/out_and0000 ),
    .Q(\I_digit10/out [3])
  );
  FD   \I_oe_gen/OEN_counter_0  (
    .C(CLK_I_BUFGP_1),
    .D(\Result<0>1 ),
    .Q(\I_oe_gen/OEN_counter [0])
  );
  FD   \I_oe_gen/OEN_counter_1  (
    .C(CLK_I_BUFGP_1),
    .D(\Result<1>1 ),
    .Q(\I_oe_gen/OEN_counter [1])
  );
  FD   \I_oe_gen/OEN_counter_2  (
    .C(CLK_I_BUFGP_1),
    .D(\Result<2>1 ),
    .Q(\I_oe_gen/OEN_counter [2])
  );
  FD   \I_oe_gen/OEN_counter_3  (
    .C(CLK_I_BUFGP_1),
    .D(\Result<3>1 ),
    .Q(\I_oe_gen/OEN_counter [3])
  );
  FD   \I_oe_gen/OEN_counter_4  (
    .C(CLK_I_BUFGP_1),
    .D(\Result<4>1 ),
    .Q(\I_oe_gen/OEN_counter [4])
  );
  FD   \I_oe_gen/OEN_counter_5  (
    .C(CLK_I_BUFGP_1),
    .D(\Result<5>1 ),
    .Q(\I_oe_gen/OEN_counter [5])
  );
  FD   \I_oe_gen/OEN_counter_6  (
    .C(CLK_I_BUFGP_1),
    .D(\Result<6>1 ),
    .Q(\I_oe_gen/OEN_counter [6])
  );
  FD   \I_oe_gen/OEN_counter_7  (
    .C(CLK_I_BUFGP_1),
    .D(\Result<7>1 ),
    .Q(\I_oe_gen/OEN_counter [7])
  );
  FD   \I_oe_gen/OEN_counter_8  (
    .C(CLK_I_BUFGP_1),
    .D(\Result<8>1 ),
    .Q(\I_oe_gen/OEN_counter [8])
  );
  FD   \I_oe_gen/OEN_counter_9  (
    .C(CLK_I_BUFGP_1),
    .D(\Result<9>1 ),
    .Q(\I_oe_gen/OEN_counter [9])
  );
  FD   \I_oe_gen/OEN_counter_10  (
    .C(CLK_I_BUFGP_1),
    .D(\Result<10>1 ),
    .Q(\I_oe_gen/OEN_counter [10])
  );
  FD   \I_oe_gen/OEN_counter_11  (
    .C(CLK_I_BUFGP_1),
    .D(\Result<11>1 ),
    .Q(\I_oe_gen/OEN_counter [11])
  );
  FD   \I_oe_gen/OEN_counter_12  (
    .C(CLK_I_BUFGP_1),
    .D(\Result<12>1 ),
    .Q(\I_oe_gen/OEN_counter [12])
  );
  FD   \I_oe_gen/OEN_counter_13  (
    .C(CLK_I_BUFGP_1),
    .D(\Result<13>1 ),
    .Q(\I_oe_gen/OEN_counter [13])
  );
  FD   \I_oe_gen/OEN_counter_14  (
    .C(CLK_I_BUFGP_1),
    .D(\Result<14>1 ),
    .Q(\I_oe_gen/OEN_counter [14])
  );
  FD   \I_oe_gen/OEN_counter_15  (
    .C(CLK_I_BUFGP_1),
    .D(\Result<15>1 ),
    .Q(\I_oe_gen/OEN_counter [15])
  );
  FD   \I_oe_gen/OEN_counter_16  (
    .C(CLK_I_BUFGP_1),
    .D(\Result<16>1 ),
    .Q(\I_oe_gen/OEN_counter [16])
  );
  FD   \I_oe_gen/OEN_counter_17  (
    .C(CLK_I_BUFGP_1),
    .D(\Result<17>1 ),
    .Q(\I_oe_gen/OEN_counter [17])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\I_pulse1sec/Mcount_sec1_counter_lut [0]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [0])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<0>  (
    .CI(N0),
    .LI(\I_pulse1sec/Mcount_sec1_counter_lut [0]),
    .O(Result[0])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<1>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [0]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<1>_rt_119 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [1])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<1>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [0]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<1>_rt_119 ),
    .O(Result[1])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<2>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [1]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<2>_rt_141 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [2])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<2>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [1]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<2>_rt_141 ),
    .O(Result[2])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<3>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [2]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<3>_rt_145 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [3])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<3>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [2]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<3>_rt_145 ),
    .O(Result[3])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<4>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [3]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<4>_rt_147 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [4])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<4>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [3]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<4>_rt_147 ),
    .O(Result[4])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<5>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [4]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<5>_rt_149 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [5])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<5>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [4]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<5>_rt_149 ),
    .O(Result[5])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<6>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [5]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<6>_rt_151 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [6])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<6>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [5]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<6>_rt_151 ),
    .O(Result[6])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<7>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [6]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<7>_rt_153 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [7])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<7>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [6]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<7>_rt_153 ),
    .O(Result[7])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<8>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [7]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<8>_rt_155 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [8])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<8>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [7]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<8>_rt_155 ),
    .O(Result[8])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<9>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [8]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<9>_rt_157 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [9])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<9>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [8]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<9>_rt_157 ),
    .O(Result[9])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<10>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [9]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<10>_rt_99 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [10])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<10>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [9]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<10>_rt_99 ),
    .O(Result[10])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<11>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [10]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<11>_rt_101 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [11])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<11>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [10]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<11>_rt_101 ),
    .O(Result[11])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<12>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [11]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<12>_rt_103 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [12])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<12>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [11]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<12>_rt_103 ),
    .O(Result[12])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<13>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [12]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<13>_rt_105 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [13])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<13>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [12]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<13>_rt_105 ),
    .O(Result[13])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<14>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [13]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<14>_rt_107 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [14])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<14>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [13]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<14>_rt_107 ),
    .O(Result[14])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<15>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [14]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<15>_rt_109 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [15])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<15>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [14]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<15>_rt_109 ),
    .O(Result[15])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<16>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [15]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<16>_rt_111 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [16])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<16>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [15]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<16>_rt_111 ),
    .O(Result[16])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<17>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [16]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<17>_rt_113 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [17])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<17>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [16]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<17>_rt_113 ),
    .O(Result[17])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<18>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [17]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<18>_rt_115 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [18])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<18>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [17]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<18>_rt_115 ),
    .O(Result[18])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<19>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [18]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<19>_rt_117 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [19])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<19>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [18]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<19>_rt_117 ),
    .O(Result[19])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<20>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [19]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<20>_rt_121 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [20])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<20>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [19]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<20>_rt_121 ),
    .O(Result[20])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<21>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [20]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<21>_rt_123 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [21])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<21>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [20]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<21>_rt_123 ),
    .O(Result[21])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<22>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [21]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<22>_rt_125 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [22])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<22>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [21]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<22>_rt_125 ),
    .O(Result[22])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<23>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [22]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<23>_rt_127 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [23])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<23>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [22]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<23>_rt_127 ),
    .O(Result[23])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<24>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [23]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<24>_rt_129 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [24])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<24>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [23]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<24>_rt_129 ),
    .O(Result[24])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<25>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [24]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<25>_rt_131 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [25])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<25>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [24]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<25>_rt_131 ),
    .O(Result[25])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<26>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [25]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<26>_rt_133 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [26])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<26>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [25]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<26>_rt_133 ),
    .O(Result[26])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<27>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [26]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<27>_rt_135 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [27])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<27>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [26]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<27>_rt_135 ),
    .O(Result[27])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<28>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [27]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<28>_rt_137 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [28])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<28>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [27]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<28>_rt_137 ),
    .O(Result[28])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<29>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [28]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<29>_rt_139 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [29])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<29>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [28]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<29>_rt_139 ),
    .O(Result[29])
  );
  MUXCY   \I_pulse1sec/Mcount_sec1_counter_cy<30>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [29]),
    .DI(N0),
    .S(\I_pulse1sec/Mcount_sec1_counter_cy<30>_rt_143 ),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy [30])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<30>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [29]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_cy<30>_rt_143 ),
    .O(Result[30])
  );
  XORCY   \I_pulse1sec/Mcount_sec1_counter_xor<31>  (
    .CI(\I_pulse1sec/Mcount_sec1_counter_cy [30]),
    .LI(\I_pulse1sec/Mcount_sec1_counter_xor<31>_rt_159 ),
    .O(Result[31])
  );
  MUXCY   \I_oe_gen/Mcount_OEN_counter_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\I_oe_gen/Mcount_OEN_counter_lut [0]),
    .O(\I_oe_gen/Mcount_OEN_counter_cy [0])
  );
  XORCY   \I_oe_gen/Mcount_OEN_counter_xor<0>  (
    .CI(N0),
    .LI(\I_oe_gen/Mcount_OEN_counter_lut [0]),
    .O(\Result<0>1 )
  );
  MUXCY   \I_oe_gen/Mcount_OEN_counter_cy<1>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [0]),
    .DI(N0),
    .S(\I_oe_gen/Mcount_OEN_counter_cy<1>_rt_60 ),
    .O(\I_oe_gen/Mcount_OEN_counter_cy [1])
  );
  XORCY   \I_oe_gen/Mcount_OEN_counter_xor<1>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [0]),
    .LI(\I_oe_gen/Mcount_OEN_counter_cy<1>_rt_60 ),
    .O(\Result<1>1 )
  );
  MUXCY   \I_oe_gen/Mcount_OEN_counter_cy<2>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [1]),
    .DI(N0),
    .S(\I_oe_gen/Mcount_OEN_counter_cy<2>_rt_62 ),
    .O(\I_oe_gen/Mcount_OEN_counter_cy [2])
  );
  XORCY   \I_oe_gen/Mcount_OEN_counter_xor<2>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [1]),
    .LI(\I_oe_gen/Mcount_OEN_counter_cy<2>_rt_62 ),
    .O(\Result<2>1 )
  );
  MUXCY   \I_oe_gen/Mcount_OEN_counter_cy<3>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [2]),
    .DI(N0),
    .S(\I_oe_gen/Mcount_OEN_counter_cy<3>_rt_64 ),
    .O(\I_oe_gen/Mcount_OEN_counter_cy [3])
  );
  XORCY   \I_oe_gen/Mcount_OEN_counter_xor<3>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [2]),
    .LI(\I_oe_gen/Mcount_OEN_counter_cy<3>_rt_64 ),
    .O(\Result<3>1 )
  );
  MUXCY   \I_oe_gen/Mcount_OEN_counter_cy<4>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [3]),
    .DI(N0),
    .S(\I_oe_gen/Mcount_OEN_counter_cy<4>_rt_66 ),
    .O(\I_oe_gen/Mcount_OEN_counter_cy [4])
  );
  XORCY   \I_oe_gen/Mcount_OEN_counter_xor<4>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [3]),
    .LI(\I_oe_gen/Mcount_OEN_counter_cy<4>_rt_66 ),
    .O(\Result<4>1 )
  );
  MUXCY   \I_oe_gen/Mcount_OEN_counter_cy<5>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [4]),
    .DI(N0),
    .S(\I_oe_gen/Mcount_OEN_counter_cy<5>_rt_68 ),
    .O(\I_oe_gen/Mcount_OEN_counter_cy [5])
  );
  XORCY   \I_oe_gen/Mcount_OEN_counter_xor<5>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [4]),
    .LI(\I_oe_gen/Mcount_OEN_counter_cy<5>_rt_68 ),
    .O(\Result<5>1 )
  );
  MUXCY   \I_oe_gen/Mcount_OEN_counter_cy<6>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [5]),
    .DI(N0),
    .S(\I_oe_gen/Mcount_OEN_counter_cy<6>_rt_70 ),
    .O(\I_oe_gen/Mcount_OEN_counter_cy [6])
  );
  XORCY   \I_oe_gen/Mcount_OEN_counter_xor<6>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [5]),
    .LI(\I_oe_gen/Mcount_OEN_counter_cy<6>_rt_70 ),
    .O(\Result<6>1 )
  );
  MUXCY   \I_oe_gen/Mcount_OEN_counter_cy<7>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [6]),
    .DI(N0),
    .S(\I_oe_gen/Mcount_OEN_counter_cy<7>_rt_72 ),
    .O(\I_oe_gen/Mcount_OEN_counter_cy [7])
  );
  XORCY   \I_oe_gen/Mcount_OEN_counter_xor<7>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [6]),
    .LI(\I_oe_gen/Mcount_OEN_counter_cy<7>_rt_72 ),
    .O(\Result<7>1 )
  );
  MUXCY   \I_oe_gen/Mcount_OEN_counter_cy<8>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [7]),
    .DI(N0),
    .S(\I_oe_gen/Mcount_OEN_counter_cy<8>_rt_74 ),
    .O(\I_oe_gen/Mcount_OEN_counter_cy [8])
  );
  XORCY   \I_oe_gen/Mcount_OEN_counter_xor<8>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [7]),
    .LI(\I_oe_gen/Mcount_OEN_counter_cy<8>_rt_74 ),
    .O(\Result<8>1 )
  );
  MUXCY   \I_oe_gen/Mcount_OEN_counter_cy<9>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [8]),
    .DI(N0),
    .S(\I_oe_gen/Mcount_OEN_counter_cy<9>_rt_76 ),
    .O(\I_oe_gen/Mcount_OEN_counter_cy [9])
  );
  XORCY   \I_oe_gen/Mcount_OEN_counter_xor<9>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [8]),
    .LI(\I_oe_gen/Mcount_OEN_counter_cy<9>_rt_76 ),
    .O(\Result<9>1 )
  );
  MUXCY   \I_oe_gen/Mcount_OEN_counter_cy<10>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [9]),
    .DI(N0),
    .S(\I_oe_gen/Mcount_OEN_counter_cy<10>_rt_46 ),
    .O(\I_oe_gen/Mcount_OEN_counter_cy [10])
  );
  XORCY   \I_oe_gen/Mcount_OEN_counter_xor<10>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [9]),
    .LI(\I_oe_gen/Mcount_OEN_counter_cy<10>_rt_46 ),
    .O(\Result<10>1 )
  );
  MUXCY   \I_oe_gen/Mcount_OEN_counter_cy<11>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [10]),
    .DI(N0),
    .S(\I_oe_gen/Mcount_OEN_counter_cy<11>_rt_48 ),
    .O(\I_oe_gen/Mcount_OEN_counter_cy [11])
  );
  XORCY   \I_oe_gen/Mcount_OEN_counter_xor<11>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [10]),
    .LI(\I_oe_gen/Mcount_OEN_counter_cy<11>_rt_48 ),
    .O(\Result<11>1 )
  );
  MUXCY   \I_oe_gen/Mcount_OEN_counter_cy<12>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [11]),
    .DI(N0),
    .S(\I_oe_gen/Mcount_OEN_counter_cy<12>_rt_50 ),
    .O(\I_oe_gen/Mcount_OEN_counter_cy [12])
  );
  XORCY   \I_oe_gen/Mcount_OEN_counter_xor<12>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [11]),
    .LI(\I_oe_gen/Mcount_OEN_counter_cy<12>_rt_50 ),
    .O(\Result<12>1 )
  );
  MUXCY   \I_oe_gen/Mcount_OEN_counter_cy<13>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [12]),
    .DI(N0),
    .S(\I_oe_gen/Mcount_OEN_counter_cy<13>_rt_52 ),
    .O(\I_oe_gen/Mcount_OEN_counter_cy [13])
  );
  XORCY   \I_oe_gen/Mcount_OEN_counter_xor<13>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [12]),
    .LI(\I_oe_gen/Mcount_OEN_counter_cy<13>_rt_52 ),
    .O(\Result<13>1 )
  );
  MUXCY   \I_oe_gen/Mcount_OEN_counter_cy<14>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [13]),
    .DI(N0),
    .S(\I_oe_gen/Mcount_OEN_counter_cy<14>_rt_54 ),
    .O(\I_oe_gen/Mcount_OEN_counter_cy [14])
  );
  XORCY   \I_oe_gen/Mcount_OEN_counter_xor<14>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [13]),
    .LI(\I_oe_gen/Mcount_OEN_counter_cy<14>_rt_54 ),
    .O(\Result<14>1 )
  );
  MUXCY   \I_oe_gen/Mcount_OEN_counter_cy<15>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [14]),
    .DI(N0),
    .S(\I_oe_gen/Mcount_OEN_counter_cy<15>_rt_56 ),
    .O(\I_oe_gen/Mcount_OEN_counter_cy [15])
  );
  XORCY   \I_oe_gen/Mcount_OEN_counter_xor<15>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [14]),
    .LI(\I_oe_gen/Mcount_OEN_counter_cy<15>_rt_56 ),
    .O(\Result<15>1 )
  );
  MUXCY   \I_oe_gen/Mcount_OEN_counter_cy<16>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [15]),
    .DI(N0),
    .S(\I_oe_gen/Mcount_OEN_counter_cy<16>_rt_58 ),
    .O(\I_oe_gen/Mcount_OEN_counter_cy [16])
  );
  XORCY   \I_oe_gen/Mcount_OEN_counter_xor<16>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [15]),
    .LI(\I_oe_gen/Mcount_OEN_counter_cy<16>_rt_58 ),
    .O(\Result<16>1 )
  );
  XORCY   \I_oe_gen/Mcount_OEN_counter_xor<17>  (
    .CI(\I_oe_gen/Mcount_OEN_counter_cy [16]),
    .LI(\I_oe_gen/Mcount_OEN_counter_xor<17>_rt_78 ),
    .O(\Result<17>1 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \I_pulse1sec/sec1_counter_or00001_wg_lut<0>  (
    .I0(\I_pulse1sec/sec1_counter [5]),
    .I1(\I_pulse1sec/sec1_counter [6]),
    .I2(\I_pulse1sec/sec1_counter [3]),
    .I3(\I_pulse1sec/sec1_counter [7]),
    .O(\I_pulse1sec/sec1_counter_or00001_wg_lut [0])
  );
  MUXCY   \I_pulse1sec/sec1_counter_or00001_wg_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\I_pulse1sec/sec1_counter_or00001_wg_lut [0]),
    .O(\I_pulse1sec/sec1_counter_or00001_wg_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \I_pulse1sec/sec1_counter_or00001_wg_lut<1>  (
    .I0(\I_pulse1sec/sec1_counter [8]),
    .I1(\I_pulse1sec/sec1_counter [9]),
    .I2(\I_pulse1sec/sec1_counter [4]),
    .I3(\I_pulse1sec/sec1_counter [11]),
    .O(\I_pulse1sec/sec1_counter_or00001_wg_lut [1])
  );
  MUXCY   \I_pulse1sec/sec1_counter_or00001_wg_cy<1>  (
    .CI(\I_pulse1sec/sec1_counter_or00001_wg_cy [0]),
    .DI(N0),
    .S(\I_pulse1sec/sec1_counter_or00001_wg_lut [1]),
    .O(\I_pulse1sec/sec1_counter_or00001_wg_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \I_pulse1sec/sec1_counter_or00001_wg_lut<2>  (
    .I0(\I_pulse1sec/sec1_counter [10]),
    .I1(\I_pulse1sec/sec1_counter [12]),
    .I2(\I_pulse1sec/sec1_counter [2]),
    .I3(\I_pulse1sec/sec1_counter [13]),
    .O(\I_pulse1sec/sec1_counter_or00001_wg_lut [2])
  );
  MUXCY   \I_pulse1sec/sec1_counter_or00001_wg_cy<2>  (
    .CI(\I_pulse1sec/sec1_counter_or00001_wg_cy [1]),
    .DI(N0),
    .S(\I_pulse1sec/sec1_counter_or00001_wg_lut [2]),
    .O(\I_pulse1sec/sec1_counter_or00001_wg_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \I_pulse1sec/sec1_counter_or00001_wg_lut<3>  (
    .I0(\I_pulse1sec/sec1_counter [1]),
    .I1(\I_pulse1sec/sec1_counter [14]),
    .I2(\I_pulse1sec/sec1_counter [16]),
    .I3(\I_pulse1sec/sec1_counter [15]),
    .O(\I_pulse1sec/sec1_counter_or00001_wg_lut [3])
  );
  MUXCY   \I_pulse1sec/sec1_counter_or00001_wg_cy<3>  (
    .CI(\I_pulse1sec/sec1_counter_or00001_wg_cy [2]),
    .DI(N0),
    .S(\I_pulse1sec/sec1_counter_or00001_wg_lut [3]),
    .O(\I_pulse1sec/sec1_counter_or00001_wg_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \I_pulse1sec/sec1_counter_or00001_wg_lut<4>  (
    .I0(\I_pulse1sec/sec1_counter [18]),
    .I1(\I_pulse1sec/sec1_counter [17]),
    .I2(\I_pulse1sec/sec1_counter [21]),
    .I3(\I_pulse1sec/sec1_counter [19]),
    .O(\I_pulse1sec/sec1_counter_or00001_wg_lut [4])
  );
  MUXCY   \I_pulse1sec/sec1_counter_or00001_wg_cy<4>  (
    .CI(\I_pulse1sec/sec1_counter_or00001_wg_cy [3]),
    .DI(N0),
    .S(\I_pulse1sec/sec1_counter_or00001_wg_lut [4]),
    .O(\I_pulse1sec/sec1_counter_or00001_wg_cy [4])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \I_pulse1sec/sec1_counter_or00001_wg_lut<5>  (
    .I0(\I_pulse1sec/sec1_counter [26]),
    .I1(\I_pulse1sec/sec1_counter [25]),
    .I2(\I_pulse1sec/sec1_counter [22]),
    .I3(\I_pulse1sec/sec1_counter [20]),
    .O(\I_pulse1sec/sec1_counter_or00001_wg_lut [5])
  );
  MUXCY   \I_pulse1sec/sec1_counter_or00001_wg_cy<5>  (
    .CI(\I_pulse1sec/sec1_counter_or00001_wg_cy [4]),
    .DI(N0),
    .S(\I_pulse1sec/sec1_counter_or00001_wg_lut [5]),
    .O(\I_pulse1sec/sec1_counter_or00001_wg_cy [5])
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \I_pulse1sec/sec1_counter_or00001_wg_lut<6>  (
    .I0(\I_pulse1sec/sec1_counter [27]),
    .I1(\I_pulse1sec/sec1_counter [29]),
    .I2(\I_pulse1sec/sec1_counter [28]),
    .I3(\I_pulse1sec/sec1_counter [23]),
    .O(\I_pulse1sec/sec1_counter_or00001_wg_lut [6])
  );
  MUXCY   \I_pulse1sec/sec1_counter_or00001_wg_cy<6>  (
    .CI(\I_pulse1sec/sec1_counter_or00001_wg_cy [5]),
    .DI(N0),
    .S(\I_pulse1sec/sec1_counter_or00001_wg_lut [6]),
    .O(\I_pulse1sec/sec1_counter_or00001_wg_cy [6])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \I_pulse1sec/sec1_counter_or00001_wg_lut<7>  (
    .I0(\I_pulse1sec/sec1_counter [31]),
    .I1(\I_pulse1sec/sec1_counter [0]),
    .I2(\I_pulse1sec/sec1_counter [30]),
    .I3(\I_pulse1sec/sec1_counter [24]),
    .O(\I_pulse1sec/sec1_counter_or00001_wg_lut [7])
  );
  MUXCY   \I_pulse1sec/sec1_counter_or00001_wg_cy<7>  (
    .CI(\I_pulse1sec/sec1_counter_or00001_wg_cy [6]),
    .DI(N0),
    .S(\I_pulse1sec/sec1_counter_or00001_wg_lut [7]),
    .O(\I_pulse1sec/sec1_counter_cmp_eq0000 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \I_seg7en/SEGEN_O<3>1  (
    .I0(\I_oe_gen/OEN_counter [17]),
    .I1(\I_oe_gen/OEN_counter [16]),
    .O(DPOEN_O_3_OBUF_9)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \I_seg7en/SEGEN_O<2>1  (
    .I0(\I_oe_gen/OEN_counter [16]),
    .I1(\I_oe_gen/OEN_counter [17]),
    .O(DPOEN_O_2_OBUF_8)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \I_seg7en/SEGEN_O<1>1  (
    .I0(\I_oe_gen/OEN_counter [17]),
    .I1(\I_oe_gen/OEN_counter [16]),
    .O(DPOEN_O_1_OBUF_7)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \I_seg7en/SEGEN_O<0>1  (
    .I0(\I_oe_gen/OEN_counter [17]),
    .I1(\I_oe_gen/OEN_counter [16]),
    .O(DPOEN_O_0_OBUF_6)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  LED3_O1 (
    .I0(\I_fsm/timeout_41 ),
    .I1(\I_pulse1sec/sec1_counter [24]),
    .I2(\I_pulse1sec/sec1_counter [23]),
    .O(LED3_O_OBUF_227)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  LED2_O1 (
    .I0(\I_fsm/timeout_41 ),
    .I1(\I_pulse1sec/sec1_counter [24]),
    .I2(\I_pulse1sec/sec1_counter [22]),
    .O(LED2_O_OBUF_225)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  LED1_O1 (
    .I0(\I_fsm/timeout_41 ),
    .I1(\I_pulse1sec/sec1_counter [24]),
    .I2(\I_pulse1sec/sec1_counter [21]),
    .O(LED1_O_OBUF_223)
  );
  LUT4 #(
    .INIT ( 16'h9998 ))
  \I_digit100/Mcount_out_xor<1>11  (
    .I0(\I_digit100/out [0]),
    .I1(\I_digit100/out [1]),
    .I2(\I_digit100/out [2]),
    .I3(\I_digit100/out [3]),
    .O(\I_digit100/Mcount_out1 )
  );
  LUT4 #(
    .INIT ( 16'h9998 ))
  \I_digit10/Mcount_out_xor<1>11  (
    .I0(\I_digit10/out [0]),
    .I1(\I_digit10/out [1]),
    .I2(\I_digit10/out [2]),
    .I3(\I_digit10/out [3]),
    .O(\I_digit10/Mcount_out1 )
  );
  LUT4 #(
    .INIT ( 16'h9998 ))
  \I_digit1/Mcount_out_xor<1>11  (
    .I0(\I_digit1/out [0]),
    .I1(\I_digit1/out [1]),
    .I2(\I_digit1/out [2]),
    .I3(\I_digit1/out [3]),
    .O(\I_digit1/Mcount_out1 )
  );
  LUT4 #(
    .INIT ( 16'hC9C8 ))
  \I_digit100/Mcount_out_xor<2>11  (
    .I0(\I_digit100/out [1]),
    .I1(\I_digit100/out [2]),
    .I2(\I_digit100/out [0]),
    .I3(\I_digit100/out [3]),
    .O(\I_digit100/Mcount_out2 )
  );
  LUT4 #(
    .INIT ( 16'hC9C8 ))
  \I_digit10/Mcount_out_xor<2>11  (
    .I0(\I_digit10/out [1]),
    .I1(\I_digit10/out [2]),
    .I2(\I_digit10/out [0]),
    .I3(\I_digit10/out [3]),
    .O(\I_digit10/Mcount_out2 )
  );
  LUT4 #(
    .INIT ( 16'hC9C8 ))
  \I_digit1/Mcount_out_xor<2>11  (
    .I0(\I_digit1/out [1]),
    .I1(\I_digit1/out [2]),
    .I2(\I_digit1/out [0]),
    .I3(\I_digit1/out [3]),
    .O(\I_digit1/Mcount_out2 )
  );
  LUT4 #(
    .INIT ( 16'hCCC9 ))
  \I_digit100/Mcount_out_xor<3>11  (
    .I0(\I_digit100/out [1]),
    .I1(\I_digit100/out [3]),
    .I2(\I_digit100/out [0]),
    .I3(\I_digit100/out [2]),
    .O(\I_digit100/Mcount_out3 )
  );
  LUT4 #(
    .INIT ( 16'hCCC9 ))
  \I_digit1/Mcount_out_xor<3>12  (
    .I0(\I_digit1/out [1]),
    .I1(\I_digit1/out [3]),
    .I2(\I_digit1/out [0]),
    .I3(\I_digit1/out [2]),
    .O(\I_digit1/Mcount_out3 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \I_digit10/out_or00001  (
    .I0(\I_pulse1sec/sec1_160 ),
    .I1(N19),
    .I2(\I_digit10/out_cst ),
    .O(\I_digit10/out_or0000 )
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \I_digit100/out_not00031  (
    .I0(N3),
    .I1(\I_pulse1sec/sec1_160 ),
    .I2(\I_digit10/out [3]),
    .I3(N19),
    .O(\I_digit100/out_not0003 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \I_fsm/timeout_not000119  (
    .I0(SW_START_I_IBUF_302),
    .I1(\I_digit100/out [2]),
    .I2(\I_digit100/out [3]),
    .I3(\I_digit10/out [3]),
    .O(\I_fsm/timeout_not000119_43 )
  );
  LUT4 #(
    .INIT ( 16'hFEF4 ))
  \I_seg7out/SEG_O<4>1  (
    .I0(\I_seg7out/data [1]),
    .I1(\I_seg7out/data [2]),
    .I2(\I_seg7out/data [0]),
    .I3(\I_seg7out/data [3]),
    .O(SEG_O_4_OBUF_297)
  );
  LUT4 #(
    .INIT ( 16'hE5E4 ))
  \I_seg7out/SEG_O<5>1  (
    .I0(\I_seg7out/data [2]),
    .I1(\I_seg7out/data [1]),
    .I2(\I_seg7out/data [3]),
    .I3(\I_seg7out/data [0]),
    .O(SEG_O_5_OBUF_298)
  );
  LUT4 #(
    .INIT ( 16'hA8AC ))
  \I_seg7out/SEG_O<2>1  (
    .I0(\I_seg7out/data [3]),
    .I1(\I_seg7out/data [1]),
    .I2(\I_seg7out/data [2]),
    .I3(\I_seg7out/data [0]),
    .O(SEG_O_2_OBUF_295)
  );
  LUT4 #(
    .INIT ( 16'hEE48 ))
  \I_seg7out/SEG_O<1>1  (
    .I0(\I_seg7out/data [1]),
    .I1(\I_seg7out/data [2]),
    .I2(\I_seg7out/data [0]),
    .I3(\I_seg7out/data [3]),
    .O(SEG_O_1_OBUF_294)
  );
  LUT4 #(
    .INIT ( 16'hFA85 ))
  \I_seg7out/SEG_O<6>1  (
    .I0(\I_seg7out/data [1]),
    .I1(\I_seg7out/data [0]),
    .I2(\I_seg7out/data [2]),
    .I3(\I_seg7out/data [3]),
    .O(SEG_O_6_OBUF_299)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \I_digit10/Mcount_out_val11  (
    .I0(\I_pulse1sec/sec1_160 ),
    .I1(\I_fsm/timeout_41 ),
    .O(\I_digit1/out_and0000 )
  );
  LUT4 #(
    .INIT ( 16'hFA14 ))
  \I_seg7out/SEG_O<0>1  (
    .I0(\I_seg7out/data [1]),
    .I1(\I_seg7out/data [0]),
    .I2(\I_seg7out/data [2]),
    .I3(\I_seg7out/data [3]),
    .O(SEG_O_0_OBUF_293)
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \I_pulse1sec/sec1_counter_or00001  (
    .I0(\I_digit10/out_cst ),
    .I1(\I_fsm/start_o_40 ),
    .I2(\I_pulse1sec/sec1_counter_cmp_eq0000 ),
    .O(\I_pulse1sec/sec1_counter_or0000 )
  );
  IBUF   SW_START_I_IBUF (
    .I(SW_START_I),
    .O(SW_START_I_IBUF_302)
  );
  IBUF   SW_RESET_I_IBUF (
    .I(SW_RESET_I),
    .O(\I_digit10/out_cst )
  );
  OBUF   LED1_O_OBUF (
    .I(LED1_O_OBUF_223),
    .O(LED1_O)
  );
  OBUF   LED2_O_OBUF (
    .I(LED2_O_OBUF_225),
    .O(LED2_O)
  );
  OBUF   LED3_O_OBUF (
    .I(LED3_O_OBUF_227),
    .O(LED3_O)
  );
  OBUF   LED4_O_OBUF (
    .I(\I_pulse1sec/sec1_counter [24]),
    .O(LED4_O)
  );
  OBUF   DPOEN_O_3_OBUF (
    .I(DPOEN_O_3_OBUF_9),
    .O(DPOEN_O[3])
  );
  OBUF   DPOEN_O_2_OBUF (
    .I(DPOEN_O_2_OBUF_8),
    .O(DPOEN_O[2])
  );
  OBUF   DPOEN_O_1_OBUF (
    .I(DPOEN_O_1_OBUF_7),
    .O(DPOEN_O[1])
  );
  OBUF   DPOEN_O_0_OBUF (
    .I(DPOEN_O_0_OBUF_6),
    .O(DPOEN_O[0])
  );
  OBUF   SEG_O_7_OBUF (
    .I(N1),
    .O(SEG_O[7])
  );
  OBUF   SEG_O_6_OBUF (
    .I(SEG_O_6_OBUF_299),
    .O(SEG_O[6])
  );
  OBUF   SEG_O_5_OBUF (
    .I(SEG_O_5_OBUF_298),
    .O(SEG_O[5])
  );
  OBUF   SEG_O_4_OBUF (
    .I(SEG_O_4_OBUF_297),
    .O(SEG_O[4])
  );
  OBUF   SEG_O_3_OBUF (
    .I(SEG_O_3_OBUF_296),
    .O(SEG_O[3])
  );
  OBUF   SEG_O_2_OBUF (
    .I(SEG_O_2_OBUF_295),
    .O(SEG_O[2])
  );
  OBUF   SEG_O_1_OBUF (
    .I(SEG_O_1_OBUF_294),
    .O(SEG_O[1])
  );
  OBUF   SEG_O_0_OBUF (
    .I(SEG_O_0_OBUF_293),
    .O(SEG_O[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<1>_rt  (
    .I0(\I_pulse1sec/sec1_counter [1]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<1>_rt_119 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<2>_rt  (
    .I0(\I_pulse1sec/sec1_counter [2]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<2>_rt_141 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<3>_rt  (
    .I0(\I_pulse1sec/sec1_counter [3]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<3>_rt_145 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<4>_rt  (
    .I0(\I_pulse1sec/sec1_counter [4]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<4>_rt_147 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<5>_rt  (
    .I0(\I_pulse1sec/sec1_counter [5]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<5>_rt_149 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<6>_rt  (
    .I0(\I_pulse1sec/sec1_counter [6]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<6>_rt_151 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<7>_rt  (
    .I0(\I_pulse1sec/sec1_counter [7]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<7>_rt_153 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<8>_rt  (
    .I0(\I_pulse1sec/sec1_counter [8]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<8>_rt_155 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<9>_rt  (
    .I0(\I_pulse1sec/sec1_counter [9]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<9>_rt_157 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<10>_rt  (
    .I0(\I_pulse1sec/sec1_counter [10]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<10>_rt_99 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<11>_rt  (
    .I0(\I_pulse1sec/sec1_counter [11]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<11>_rt_101 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<12>_rt  (
    .I0(\I_pulse1sec/sec1_counter [12]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<12>_rt_103 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<13>_rt  (
    .I0(\I_pulse1sec/sec1_counter [13]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<13>_rt_105 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<14>_rt  (
    .I0(\I_pulse1sec/sec1_counter [14]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<14>_rt_107 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<15>_rt  (
    .I0(\I_pulse1sec/sec1_counter [15]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<15>_rt_109 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<16>_rt  (
    .I0(\I_pulse1sec/sec1_counter [16]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<16>_rt_111 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<17>_rt  (
    .I0(\I_pulse1sec/sec1_counter [17]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<17>_rt_113 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<18>_rt  (
    .I0(\I_pulse1sec/sec1_counter [18]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<18>_rt_115 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<19>_rt  (
    .I0(\I_pulse1sec/sec1_counter [19]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<19>_rt_117 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<20>_rt  (
    .I0(\I_pulse1sec/sec1_counter [20]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<20>_rt_121 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<21>_rt  (
    .I0(\I_pulse1sec/sec1_counter [21]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<21>_rt_123 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<22>_rt  (
    .I0(\I_pulse1sec/sec1_counter [22]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<22>_rt_125 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<23>_rt  (
    .I0(\I_pulse1sec/sec1_counter [23]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<23>_rt_127 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<24>_rt  (
    .I0(\I_pulse1sec/sec1_counter [24]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<24>_rt_129 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<25>_rt  (
    .I0(\I_pulse1sec/sec1_counter [25]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<25>_rt_131 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<26>_rt  (
    .I0(\I_pulse1sec/sec1_counter [26]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<26>_rt_133 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<27>_rt  (
    .I0(\I_pulse1sec/sec1_counter [27]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<27>_rt_135 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<28>_rt  (
    .I0(\I_pulse1sec/sec1_counter [28]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<28>_rt_137 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<29>_rt  (
    .I0(\I_pulse1sec/sec1_counter [29]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<29>_rt_139 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_cy<30>_rt  (
    .I0(\I_pulse1sec/sec1_counter [30]),
    .O(\I_pulse1sec/Mcount_sec1_counter_cy<30>_rt_143 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_oe_gen/Mcount_OEN_counter_cy<1>_rt  (
    .I0(\I_oe_gen/OEN_counter [1]),
    .O(\I_oe_gen/Mcount_OEN_counter_cy<1>_rt_60 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_oe_gen/Mcount_OEN_counter_cy<2>_rt  (
    .I0(\I_oe_gen/OEN_counter [2]),
    .O(\I_oe_gen/Mcount_OEN_counter_cy<2>_rt_62 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_oe_gen/Mcount_OEN_counter_cy<3>_rt  (
    .I0(\I_oe_gen/OEN_counter [3]),
    .O(\I_oe_gen/Mcount_OEN_counter_cy<3>_rt_64 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_oe_gen/Mcount_OEN_counter_cy<4>_rt  (
    .I0(\I_oe_gen/OEN_counter [4]),
    .O(\I_oe_gen/Mcount_OEN_counter_cy<4>_rt_66 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_oe_gen/Mcount_OEN_counter_cy<5>_rt  (
    .I0(\I_oe_gen/OEN_counter [5]),
    .O(\I_oe_gen/Mcount_OEN_counter_cy<5>_rt_68 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_oe_gen/Mcount_OEN_counter_cy<6>_rt  (
    .I0(\I_oe_gen/OEN_counter [6]),
    .O(\I_oe_gen/Mcount_OEN_counter_cy<6>_rt_70 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_oe_gen/Mcount_OEN_counter_cy<7>_rt  (
    .I0(\I_oe_gen/OEN_counter [7]),
    .O(\I_oe_gen/Mcount_OEN_counter_cy<7>_rt_72 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_oe_gen/Mcount_OEN_counter_cy<8>_rt  (
    .I0(\I_oe_gen/OEN_counter [8]),
    .O(\I_oe_gen/Mcount_OEN_counter_cy<8>_rt_74 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_oe_gen/Mcount_OEN_counter_cy<9>_rt  (
    .I0(\I_oe_gen/OEN_counter [9]),
    .O(\I_oe_gen/Mcount_OEN_counter_cy<9>_rt_76 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_oe_gen/Mcount_OEN_counter_cy<10>_rt  (
    .I0(\I_oe_gen/OEN_counter [10]),
    .O(\I_oe_gen/Mcount_OEN_counter_cy<10>_rt_46 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_oe_gen/Mcount_OEN_counter_cy<11>_rt  (
    .I0(\I_oe_gen/OEN_counter [11]),
    .O(\I_oe_gen/Mcount_OEN_counter_cy<11>_rt_48 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_oe_gen/Mcount_OEN_counter_cy<12>_rt  (
    .I0(\I_oe_gen/OEN_counter [12]),
    .O(\I_oe_gen/Mcount_OEN_counter_cy<12>_rt_50 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_oe_gen/Mcount_OEN_counter_cy<13>_rt  (
    .I0(\I_oe_gen/OEN_counter [13]),
    .O(\I_oe_gen/Mcount_OEN_counter_cy<13>_rt_52 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_oe_gen/Mcount_OEN_counter_cy<14>_rt  (
    .I0(\I_oe_gen/OEN_counter [14]),
    .O(\I_oe_gen/Mcount_OEN_counter_cy<14>_rt_54 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_oe_gen/Mcount_OEN_counter_cy<15>_rt  (
    .I0(\I_oe_gen/OEN_counter [15]),
    .O(\I_oe_gen/Mcount_OEN_counter_cy<15>_rt_56 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_oe_gen/Mcount_OEN_counter_cy<16>_rt  (
    .I0(\I_oe_gen/OEN_counter [16]),
    .O(\I_oe_gen/Mcount_OEN_counter_cy<16>_rt_58 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_pulse1sec/Mcount_sec1_counter_xor<31>_rt  (
    .I0(\I_pulse1sec/sec1_counter [31]),
    .O(\I_pulse1sec/Mcount_sec1_counter_xor<31>_rt_159 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \I_oe_gen/Mcount_OEN_counter_xor<17>_rt  (
    .I0(\I_oe_gen/OEN_counter [17]),
    .O(\I_oe_gen/Mcount_OEN_counter_xor<17>_rt_78 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \I_digit10/out_and00001  (
    .I0(\I_pulse1sec/sec1_160 ),
    .I1(\I_fsm/timeout_41 ),
    .I2(\I_digit10/out_cst ),
    .O(\I_digit10/out_and0000 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \I_digit10/Mcount_out_val1  (
    .I0(\I_pulse1sec/sec1_160 ),
    .I1(\I_fsm/timeout_41 ),
    .I2(\I_digit10/out_cst ),
    .O(\I_digit10/Mcount_out_val )
  );
  LUT4 #(
    .INIT ( 16'hCCC9 ))
  \I_digit10/Mcount_out_xor<3>11  (
    .I0(\I_digit10/out [1]),
    .I1(\I_digit10/out [3]),
    .I2(\I_digit10/out [0]),
    .I3(\I_digit10/out [2]),
    .O(\I_digit10/Mcount_out3 )
  );
  LUT4 #(
    .INIT ( 16'hE9D8 ))
  \I_seg7out/SEG_O<3>1  (
    .I0(\I_seg7out/data [1]),
    .I1(\I_seg7out/data [3]),
    .I2(\I_seg7out/data [2]),
    .I3(\I_seg7out/data [0]),
    .O(SEG_O_3_OBUF_296)
  );
  LUT4 #(
    .INIT ( 16'hEFFF ))
  \I_fsm/timeout_not000131_SW0  (
    .I0(\I_digit100/out [1]),
    .I1(\I_digit100/out [0]),
    .I2(\I_fsm/timeout_not000119_43 ),
    .I3(N30),
    .O(N28)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \I_fsm/timeout_not000131  (
    .I0(\I_digit10/out [0]),
    .I1(\I_digit10/out [1]),
    .I2(\I_digit10/out [2]),
    .I3(N28),
    .O(\I_fsm/timeout_not0001 )
  );
  BUFGP   CLK_I_BUFGP (
    .I(CLK_I),
    .O(CLK_I_BUFGP_1)
  );
  INV   \I_pulse1sec/Mcount_sec1_counter_lut<0>_INV_0  (
    .I(\I_pulse1sec/sec1_counter [0]),
    .O(\I_pulse1sec/Mcount_sec1_counter_lut [0])
  );
  INV   \I_oe_gen/Mcount_OEN_counter_lut<0>_INV_0  (
    .I(\I_oe_gen/OEN_counter [0]),
    .O(\I_oe_gen/Mcount_OEN_counter_lut [0])
  );
  INV   \I_digit100/Mcount_out_xor<0>11_INV_0  (
    .I(\I_digit100/out [0]),
    .O(\I_digit100/Mcount_out )
  );
  INV   \I_digit10/Mcount_out_xor<0>11_INV_0  (
    .I(\I_digit10/out [0]),
    .O(\I_digit10/Mcount_out )
  );
  INV   \I_digit1/Mcount_out_xor<0>11_INV_0  (
    .I(\I_digit1/out [0]),
    .O(\I_digit1/Mcount_out )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \I_seg7out/Mmux_data81  (
    .I0(\I_oe_gen/OEN_counter [16]),
    .I1(\I_digit100/out [3]),
    .O(\I_seg7out/Mmux_data8 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \I_seg7out/Mmux_data82  (
    .I0(\I_oe_gen/OEN_counter [16]),
    .I1(\I_digit10/out [3]),
    .I2(\I_digit1/out [3]),
    .O(\I_seg7out/Mmux_data81_217 )
  );
  MUXF5   \I_seg7out/Mmux_data8_f5  (
    .I0(\I_seg7out/Mmux_data81_217 ),
    .I1(\I_seg7out/Mmux_data8 ),
    .S(\I_oe_gen/OEN_counter [17]),
    .O(\I_seg7out/data [3])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \I_seg7out/Mmux_data61  (
    .I0(\I_oe_gen/OEN_counter [16]),
    .I1(\I_digit100/out [2]),
    .O(\I_seg7out/Mmux_data6 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \I_seg7out/Mmux_data62  (
    .I0(\I_oe_gen/OEN_counter [16]),
    .I1(\I_digit10/out [2]),
    .I2(\I_digit1/out [2]),
    .O(\I_seg7out/Mmux_data61_215 )
  );
  MUXF5   \I_seg7out/Mmux_data6_f5  (
    .I0(\I_seg7out/Mmux_data61_215 ),
    .I1(\I_seg7out/Mmux_data6 ),
    .S(\I_oe_gen/OEN_counter [17]),
    .O(\I_seg7out/data [2])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \I_seg7out/Mmux_data41  (
    .I0(\I_oe_gen/OEN_counter [16]),
    .I1(\I_digit100/out [1]),
    .O(\I_seg7out/Mmux_data4 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \I_seg7out/Mmux_data42  (
    .I0(\I_oe_gen/OEN_counter [16]),
    .I1(\I_digit10/out [1]),
    .I2(\I_digit1/out [1]),
    .O(\I_seg7out/Mmux_data41_213 )
  );
  MUXF5   \I_seg7out/Mmux_data4_f5  (
    .I0(\I_seg7out/Mmux_data41_213 ),
    .I1(\I_seg7out/Mmux_data4 ),
    .S(\I_oe_gen/OEN_counter [17]),
    .O(\I_seg7out/data [1])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \I_seg7out/Mmux_data21  (
    .I0(\I_oe_gen/OEN_counter [16]),
    .I1(\I_digit100/out [0]),
    .O(\I_seg7out/Mmux_data2 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \I_seg7out/Mmux_data22  (
    .I0(\I_oe_gen/OEN_counter [16]),
    .I1(\I_digit10/out [0]),
    .I2(\I_digit1/out [0]),
    .O(\I_seg7out/Mmux_data21_211 )
  );
  MUXF5   \I_seg7out/Mmux_data2_f5  (
    .I0(\I_seg7out/Mmux_data21_211 ),
    .I1(\I_seg7out/Mmux_data2 ),
    .S(\I_oe_gen/OEN_counter [17]),
    .O(\I_seg7out/data [0])
  );
  LUT3_L #(
    .INIT ( 8'hFE ))
  \I_fsm/timeout_not000121  (
    .I0(\I_digit10/out [1]),
    .I1(\I_digit10/out [0]),
    .I2(\I_digit10/out [2]),
    .LO(N3)
  );
  LUT4_D #(
    .INIT ( 16'h0001 ))
  \I_digit1/Mcount_out_xor<3>111  (
    .I0(\I_digit1/out [3]),
    .I1(\I_digit1/out [2]),
    .I2(\I_digit1/out [0]),
    .I3(\I_digit1/out [1]),
    .LO(N30),
    .O(N19)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

