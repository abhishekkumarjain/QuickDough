// megafunction wizard: %ALTFP_COMPARE%VBB%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: altfp_compare 

// ============================================================
// File Name: fagb3.v
// Megafunction Name(s):
// 			altfp_compare
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 15.1.0 Build 185 10/21/2015 SJ Standard Edition
// ************************************************************

//Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, the Altera Quartus Prime License Agreement,
//the Altera MegaCore Function License Agreement, or other 
//applicable license agreement, including, without limitation, 
//that your use is for the sole purpose of programming logic 
//devices manufactured by Altera and sold by Altera or its 
//authorized distributors.  Please refer to the applicable 
//agreement for further details.

module fagb3 (
	clock,
	dataa,
	datab,
	agb)/* synthesis synthesis_clearbox = 1 */;

	input	  clock;
	input	[31:0]  dataa;
	input	[31:0]  datab;
	output	  agb;

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: FPM_FORMAT NUMERIC "0"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
// Retrieval info: CONSTANT: PIPELINE NUMERIC "3"
// Retrieval info: CONSTANT: WIDTH_EXP NUMERIC "8"
// Retrieval info: CONSTANT: WIDTH_MAN NUMERIC "23"
// Retrieval info: USED_PORT: agb 0 0 0 0 OUTPUT NODEFVAL "agb"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
// Retrieval info: USED_PORT: dataa 0 0 32 0 INPUT NODEFVAL "dataa[31..0]"
// Retrieval info: USED_PORT: datab 0 0 32 0 INPUT NODEFVAL "datab[31..0]"
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: @dataa 0 0 32 0 dataa 0 0 32 0
// Retrieval info: CONNECT: @datab 0 0 32 0 datab 0 0 32 0
// Retrieval info: CONNECT: agb 0 0 0 0 @agb 0 0 0 0
// Retrieval info: GEN_FILE: TYPE_NORMAL fagb3.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL fagb3.inc TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL fagb3.cmp TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL fagb3.bsf TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL fagb3_inst.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL fagb3_bb.v TRUE
// Retrieval info: LIB_FILE: lpm
