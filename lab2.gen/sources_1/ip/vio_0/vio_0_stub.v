// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Jan 30 15:03:03 2026
// Host        : NU-CR-3M5ZT94 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/janarthanan.ak/Desktop/lab0_aj/lab2/lab2.gen/sources_1/ip/vio_0/vio_0_stub.v
// Design      : vio_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2022.1" *)
module vio_0(clk, probe_in0, probe_in1, probe_in2, probe_out0, 
  probe_out1, probe_out2)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[15:0],probe_in1[0:0],probe_in2[0:0],probe_out0[15:0],probe_out1[15:0],probe_out2[3:0]" */;
  input clk;
  input [15:0]probe_in0;
  input [0:0]probe_in1;
  input [0:0]probe_in2;
  output [15:0]probe_out0;
  output [15:0]probe_out1;
  output [3:0]probe_out2;
endmodule
