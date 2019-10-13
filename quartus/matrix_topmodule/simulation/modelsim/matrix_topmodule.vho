-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "10/13/2019 19:36:54"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	matrix_topmodule IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	start : IN std_logic;
	result : OUT std_logic_vector(15 DOWNTO 0);
	i : OUT std_logic_vector(7 DOWNTO 0);
	j : OUT std_logic_vector(7 DOWNTO 0)
	);
END matrix_topmodule;

-- Design Ports Information
-- result[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[9]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[10]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[11]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[12]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[13]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[14]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[15]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[3]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[4]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[7]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- j[0]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- j[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- j[2]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- j[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- j[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- j[5]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- j[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- j[7]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF matrix_topmodule IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_result : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_i : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_j : std_logic_vector(7 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \result[8]~output_o\ : std_logic;
SIGNAL \result[9]~output_o\ : std_logic;
SIGNAL \result[10]~output_o\ : std_logic;
SIGNAL \result[11]~output_o\ : std_logic;
SIGNAL \result[12]~output_o\ : std_logic;
SIGNAL \result[13]~output_o\ : std_logic;
SIGNAL \result[14]~output_o\ : std_logic;
SIGNAL \result[15]~output_o\ : std_logic;
SIGNAL \i[0]~output_o\ : std_logic;
SIGNAL \i[1]~output_o\ : std_logic;
SIGNAL \i[2]~output_o\ : std_logic;
SIGNAL \i[3]~output_o\ : std_logic;
SIGNAL \i[4]~output_o\ : std_logic;
SIGNAL \i[5]~output_o\ : std_logic;
SIGNAL \i[6]~output_o\ : std_logic;
SIGNAL \i[7]~output_o\ : std_logic;
SIGNAL \j[0]~output_o\ : std_logic;
SIGNAL \j[1]~output_o\ : std_logic;
SIGNAL \j[2]~output_o\ : std_logic;
SIGNAL \j[3]~output_o\ : std_logic;
SIGNAL \j[4]~output_o\ : std_logic;
SIGNAL \j[5]~output_o\ : std_logic;
SIGNAL \j[6]~output_o\ : std_logic;
SIGNAL \j[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \u1|next_state.s1~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \u1|current_state.s1~q\ : std_logic;
SIGNAL \u0|u12|Decoder0~0_combout\ : std_logic;
SIGNAL \u1|k_rst~combout\ : std_logic;
SIGNAL \u1|j_rst~combout\ : std_logic;
SIGNAL \u0|u0|q[3]~feeder_combout\ : std_logic;
SIGNAL \u0|u3|Mux4~0_combout\ : std_logic;
SIGNAL \u0|u3|Mux4~1_combout\ : std_logic;
SIGNAL \u0|u4|b[0]~1\ : std_logic;
SIGNAL \u0|u4|b[1]~3\ : std_logic;
SIGNAL \u0|u4|b[2]~4_combout\ : std_logic;
SIGNAL \u0|u0|q[2]~feeder_combout\ : std_logic;
SIGNAL \u0|u3|Mux5~0_combout\ : std_logic;
SIGNAL \u0|u3|Mux5~1_combout\ : std_logic;
SIGNAL \u0|u4|b[2]~5\ : std_logic;
SIGNAL \u0|u4|b[3]~6_combout\ : std_logic;
SIGNAL \u0|u3|Mux2~0_combout\ : std_logic;
SIGNAL \u0|u3|Mux2~1_combout\ : std_logic;
SIGNAL \u0|u4|b[3]~7\ : std_logic;
SIGNAL \u0|u4|b[4]~8_combout\ : std_logic;
SIGNAL \u0|u3|Mux3~0_combout\ : std_logic;
SIGNAL \u0|u3|Mux3~1_combout\ : std_logic;
SIGNAL \u0|u4|b[4]~9\ : std_logic;
SIGNAL \u0|u4|b[5]~10_combout\ : std_logic;
SIGNAL \u0|u3|Mux0~0_combout\ : std_logic;
SIGNAL \u0|u3|Mux0~1_combout\ : std_logic;
SIGNAL \u0|u4|b[5]~11\ : std_logic;
SIGNAL \u0|u4|b[6]~13\ : std_logic;
SIGNAL \u0|u4|b[7]~14_combout\ : std_logic;
SIGNAL \u0|u7|LessThan0~0_combout\ : std_logic;
SIGNAL \u1|next_state.s9~0_combout\ : std_logic;
SIGNAL \u1|current_state.s9~q\ : std_logic;
SIGNAL \u1|current_state.s10~q\ : std_logic;
SIGNAL \u0|u3|Mux1~0_combout\ : std_logic;
SIGNAL \u0|u3|Mux1~1_combout\ : std_logic;
SIGNAL \u0|u4|b[6]~12_combout\ : std_logic;
SIGNAL \u0|u5|LessThan0~0_combout\ : std_logic;
SIGNAL \u0|u5|LessThan0~1_combout\ : std_logic;
SIGNAL \u1|Selector0~0_combout\ : std_logic;
SIGNAL \u1|current_state.s0~q\ : std_logic;
SIGNAL \u1|next_state.s2~0_combout\ : std_logic;
SIGNAL \u1|current_state.s2~q\ : std_logic;
SIGNAL \u0|u3|Mux6~0_combout\ : std_logic;
SIGNAL \u0|u3|Mux6~1_combout\ : std_logic;
SIGNAL \u0|u4|b[1]~2_combout\ : std_logic;
SIGNAL \u0|u6|LessThan0~0_combout\ : std_logic;
SIGNAL \u0|u6|LessThan0~1_combout\ : std_logic;
SIGNAL \u1|next_state.s12~0_combout\ : std_logic;
SIGNAL \u1|current_state.s12~q\ : std_logic;
SIGNAL \u1|next_state.s3~combout\ : std_logic;
SIGNAL \u1|current_state.s3~q\ : std_logic;
SIGNAL \u1|next_state.s4~0_combout\ : std_logic;
SIGNAL \u1|current_state.s4~q\ : std_logic;
SIGNAL \u1|next_state.s5~combout\ : std_logic;
SIGNAL \u1|current_state.s5~q\ : std_logic;
SIGNAL \u1|next_state.s6~0_combout\ : std_logic;
SIGNAL \u1|current_state.s6~q\ : std_logic;
SIGNAL \u1|current_state.s7~q\ : std_logic;
SIGNAL \u1|next_state.s8~combout\ : std_logic;
SIGNAL \u1|current_state.s8~q\ : std_logic;
SIGNAL \u1|next_state.s11~0_combout\ : std_logic;
SIGNAL \u1|current_state.s11~q\ : std_logic;
SIGNAL \u0|u3|Mux7~0_combout\ : std_logic;
SIGNAL \u0|u3|Mux7~1_combout\ : std_logic;
SIGNAL \u0|u4|b[0]~0_combout\ : std_logic;
SIGNAL \u0|u8|Mux9~0_combout\ : std_logic;
SIGNAL \u0|u9|Mux5~0_combout\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|decoder_node[0][0]~combout\ : std_logic;
SIGNAL \u0|u11|c[0]~0_combout\ : std_logic;
SIGNAL \u0|u11|Add0~0_combout\ : std_logic;
SIGNAL \u0|u12|program[3][0][0]~2_combout\ : std_logic;
SIGNAL \u0|u12|program[3][0][0]~3_combout\ : std_logic;
SIGNAL \u0|u12|program[3][0][0]~q\ : std_logic;
SIGNAL \u0|u12|program[3][2][0]~2_combout\ : std_logic;
SIGNAL \u0|u12|program[3][2][0]~3_combout\ : std_logic;
SIGNAL \u0|u12|program[3][2][0]~q\ : std_logic;
SIGNAL \u0|u12|program[0][0][0]~0_combout\ : std_logic;
SIGNAL \u0|u12|program[2][0][0]~0_combout\ : std_logic;
SIGNAL \u0|u12|program[2][0][0]~q\ : std_logic;
SIGNAL \u0|u12|program[2][2][0]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[2][2][0]~0_combout\ : std_logic;
SIGNAL \u0|u12|program[2][2][0]~q\ : std_logic;
SIGNAL \u0|u12|Mux79~0_combout\ : std_logic;
SIGNAL \u0|u12|Mux79~1_combout\ : std_logic;
SIGNAL \u0|u12|program[3][3][0]~2_combout\ : std_logic;
SIGNAL \u0|u12|program[3][3][0]~3_combout\ : std_logic;
SIGNAL \u0|u12|program[3][3][0]~q\ : std_logic;
SIGNAL \u0|u12|program[2][3][0]~0_combout\ : std_logic;
SIGNAL \u0|u12|program[2][3][0]~q\ : std_logic;
SIGNAL \u0|u12|program[3][1][0]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[3][1][0]~2_combout\ : std_logic;
SIGNAL \u0|u12|program[3][1][0]~3_combout\ : std_logic;
SIGNAL \u0|u12|program[3][1][0]~q\ : std_logic;
SIGNAL \u0|u12|program[2][1][0]~0_combout\ : std_logic;
SIGNAL \u0|u12|program[2][1][0]~q\ : std_logic;
SIGNAL \u0|u12|Mux79~7_combout\ : std_logic;
SIGNAL \u0|u12|Mux79~8_combout\ : std_logic;
SIGNAL \u0|u12|program[0][3][0]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][3][0]~0_combout\ : std_logic;
SIGNAL \u0|u12|program[0][3][0]~q\ : std_logic;
SIGNAL \u0|u12|program[1][3][0]~2_combout\ : std_logic;
SIGNAL \u0|u12|program[1][3][0]~q\ : std_logic;
SIGNAL \u0|u12|program[1][1][0]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[1][1][0]~2_combout\ : std_logic;
SIGNAL \u0|u12|program[1][1][0]~q\ : std_logic;
SIGNAL \u0|u12|program[0][1][0]~0_combout\ : std_logic;
SIGNAL \u0|u12|program[0][1][0]~q\ : std_logic;
SIGNAL \u0|u12|Mux79~2_combout\ : std_logic;
SIGNAL \u0|u12|Mux79~3_combout\ : std_logic;
SIGNAL \u0|u12|program[1][0][0]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[1][0][0]~3_combout\ : std_logic;
SIGNAL \u0|u12|program[1][0][0]~q\ : std_logic;
SIGNAL \u0|u12|program[1][2][0]~2_combout\ : std_logic;
SIGNAL \u0|u12|program[1][2][0]~q\ : std_logic;
SIGNAL \u0|u12|program[0][0][0]~1_combout\ : std_logic;
SIGNAL \u0|u12|program[0][0][0]~q\ : std_logic;
SIGNAL \u0|u12|program[0][2][0]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][2][0]~0_combout\ : std_logic;
SIGNAL \u0|u12|program[0][2][0]~q\ : std_logic;
SIGNAL \u0|u12|Mux79~4_combout\ : std_logic;
SIGNAL \u0|u12|Mux79~5_combout\ : std_logic;
SIGNAL \u0|u12|Mux79~6_combout\ : std_logic;
SIGNAL \u0|u12|Mux79~9_combout\ : std_logic;
SIGNAL \u0|u8|Mux8~1_combout\ : std_logic;
SIGNAL \u0|u8|Mux8~0_combout\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|decoder_node[0][1]~combout\ : std_logic;
SIGNAL \u0|u9|Mux4~0_combout\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|decoder_node[1][0]~combout\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \u0|u11|c[0]~1\ : std_logic;
SIGNAL \u0|u11|c[1]~2_combout\ : std_logic;
SIGNAL \u0|u11|Add0~1_combout\ : std_logic;
SIGNAL \u0|u12|program[3][1][1]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[3][1][1]~q\ : std_logic;
SIGNAL \u0|u12|program[3][0][1]~q\ : std_logic;
SIGNAL \u0|u12|program[1][1][1]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[1][1][1]~q\ : std_logic;
SIGNAL \u0|u12|program[1][0][1]~q\ : std_logic;
SIGNAL \u0|u12|Mux78~0_combout\ : std_logic;
SIGNAL \u0|u12|Mux78~1_combout\ : std_logic;
SIGNAL \u0|u12|program[0][3][1]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][3][1]~q\ : std_logic;
SIGNAL \u0|u12|program[2][3][1]~q\ : std_logic;
SIGNAL \u0|u12|program[2][2][1]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[2][2][1]~q\ : std_logic;
SIGNAL \u0|u12|program[0][2][1]~q\ : std_logic;
SIGNAL \u0|u12|Mux78~2_combout\ : std_logic;
SIGNAL \u0|u12|Mux78~3_combout\ : std_logic;
SIGNAL \u0|u12|program[0][1][1]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][1][1]~q\ : std_logic;
SIGNAL \u0|u12|program[2][1][1]~q\ : std_logic;
SIGNAL \u0|u12|program[2][0][1]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[2][0][1]~q\ : std_logic;
SIGNAL \u0|u12|program[0][0][1]~q\ : std_logic;
SIGNAL \u0|u12|Mux78~4_combout\ : std_logic;
SIGNAL \u0|u12|Mux78~5_combout\ : std_logic;
SIGNAL \u0|u12|Mux78~6_combout\ : std_logic;
SIGNAL \u0|u12|program[3][3][1]~q\ : std_logic;
SIGNAL \u0|u12|program[3][2][1]~q\ : std_logic;
SIGNAL \u0|u12|program[1][3][1]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[1][3][1]~q\ : std_logic;
SIGNAL \u0|u12|program[1][2][1]~q\ : std_logic;
SIGNAL \u0|u12|Mux78~7_combout\ : std_logic;
SIGNAL \u0|u12|Mux78~8_combout\ : std_logic;
SIGNAL \u0|u12|Mux78~9_combout\ : std_logic;
SIGNAL \u0|u9|Mux3~0_combout\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|decoder_node[2][0]~combout\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|decoder_node[1][1]~combout\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|decoder_node[0][2]~3_combout\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|decoder_node[0][2]~combout\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \u0|u11|c[1]~3\ : std_logic;
SIGNAL \u0|u11|c[2]~4_combout\ : std_logic;
SIGNAL \u0|u11|Add0~2_combout\ : std_logic;
SIGNAL \u0|u12|program[3][3][2]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[3][3][2]~q\ : std_logic;
SIGNAL \u0|u12|program[3][1][2]~q\ : std_logic;
SIGNAL \u0|u12|program[2][1][2]~q\ : std_logic;
SIGNAL \u0|u12|program[2][3][2]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[2][3][2]~q\ : std_logic;
SIGNAL \u0|u12|Mux77~7_combout\ : std_logic;
SIGNAL \u0|u12|Mux77~8_combout\ : std_logic;
SIGNAL \u0|u12|program[1][1][2]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[1][1][2]~q\ : std_logic;
SIGNAL \u0|u12|program[1][3][2]~q\ : std_logic;
SIGNAL \u0|u12|program[0][1][2]~q\ : std_logic;
SIGNAL \u0|u12|program[0][3][2]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][3][2]~q\ : std_logic;
SIGNAL \u0|u12|Mux77~0_combout\ : std_logic;
SIGNAL \u0|u12|Mux77~1_combout\ : std_logic;
SIGNAL \u0|u12|program[0][2][2]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][2][2]~q\ : std_logic;
SIGNAL \u0|u12|program[1][2][2]~q\ : std_logic;
SIGNAL \u0|u12|program[1][0][2]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[1][0][2]~q\ : std_logic;
SIGNAL \u0|u12|program[0][0][2]~q\ : std_logic;
SIGNAL \u0|u12|Mux77~4_combout\ : std_logic;
SIGNAL \u0|u12|Mux77~5_combout\ : std_logic;
SIGNAL \u0|u12|program[2][2][2]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[2][2][2]~q\ : std_logic;
SIGNAL \u0|u12|program[3][2][2]~q\ : std_logic;
SIGNAL \u0|u12|program[3][0][2]~q\ : std_logic;
SIGNAL \u0|u12|program[2][0][2]~q\ : std_logic;
SIGNAL \u0|u12|Mux77~2_combout\ : std_logic;
SIGNAL \u0|u12|Mux77~3_combout\ : std_logic;
SIGNAL \u0|u12|Mux77~6_combout\ : std_logic;
SIGNAL \u0|u12|Mux77~9_combout\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \u0|u12|program[1][0][0]~2_combout\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|decoder_node[0][3]~combout\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \u0|u8|Mux8~2_combout\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|decoder_node[2][1]~combout\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \u0|u11|c[2]~5\ : std_logic;
SIGNAL \u0|u11|c[3]~6_combout\ : std_logic;
SIGNAL \u0|u11|Add0~3_combout\ : std_logic;
SIGNAL \u0|u12|program[3][3][3]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[3][3][3]~q\ : std_logic;
SIGNAL \u0|u12|program[1][3][3]~q\ : std_logic;
SIGNAL \u0|u12|program[3][2][3]~q\ : std_logic;
SIGNAL \u0|u12|program[1][2][3]~q\ : std_logic;
SIGNAL \u0|u12|Mux76~7_combout\ : std_logic;
SIGNAL \u0|u12|Mux76~8_combout\ : std_logic;
SIGNAL \u0|u12|program[2][3][3]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[2][3][3]~q\ : std_logic;
SIGNAL \u0|u12|program[2][2][3]~q\ : std_logic;
SIGNAL \u0|u12|program[0][3][3]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][3][3]~q\ : std_logic;
SIGNAL \u0|u12|program[0][2][3]~q\ : std_logic;
SIGNAL \u0|u12|Mux76~0_combout\ : std_logic;
SIGNAL \u0|u12|Mux76~1_combout\ : std_logic;
SIGNAL \u0|u12|program[2][0][3]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[2][0][3]~q\ : std_logic;
SIGNAL \u0|u12|program[2][1][3]~q\ : std_logic;
SIGNAL \u0|u12|program[0][1][3]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][1][3]~q\ : std_logic;
SIGNAL \u0|u12|program[0][0][3]~q\ : std_logic;
SIGNAL \u0|u12|Mux76~4_combout\ : std_logic;
SIGNAL \u0|u12|Mux76~5_combout\ : std_logic;
SIGNAL \u0|u12|program[1][1][3]~q\ : std_logic;
SIGNAL \u0|u12|program[3][1][3]~q\ : std_logic;
SIGNAL \u0|u12|program[3][0][3]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[3][0][3]~q\ : std_logic;
SIGNAL \u0|u12|program[1][0][3]~q\ : std_logic;
SIGNAL \u0|u12|Mux76~2_combout\ : std_logic;
SIGNAL \u0|u12|Mux76~3_combout\ : std_logic;
SIGNAL \u0|u12|Mux76~6_combout\ : std_logic;
SIGNAL \u0|u12|Mux76~9_combout\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|decoder_node[1][3]~combout\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \u0|u11|c[3]~7\ : std_logic;
SIGNAL \u0|u11|c[4]~8_combout\ : std_logic;
SIGNAL \u0|u11|Add0~4_combout\ : std_logic;
SIGNAL \u0|u12|program[3][3][4]~q\ : std_logic;
SIGNAL \u0|u12|program[2][3][4]~q\ : std_logic;
SIGNAL \u0|u12|program[3][1][4]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[3][1][4]~q\ : std_logic;
SIGNAL \u0|u12|program[2][1][4]~q\ : std_logic;
SIGNAL \u0|u12|Mux75~7_combout\ : std_logic;
SIGNAL \u0|u12|Mux75~8_combout\ : std_logic;
SIGNAL \u0|u12|program[3][0][4]~q\ : std_logic;
SIGNAL \u0|u12|program[3][2][4]~q\ : std_logic;
SIGNAL \u0|u12|program[2][0][4]~q\ : std_logic;
SIGNAL \u0|u12|program[2][2][4]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[2][2][4]~q\ : std_logic;
SIGNAL \u0|u12|Mux75~0_combout\ : std_logic;
SIGNAL \u0|u12|Mux75~1_combout\ : std_logic;
SIGNAL \u0|u12|program[1][0][4]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[1][0][4]~q\ : std_logic;
SIGNAL \u0|u12|program[1][2][4]~q\ : std_logic;
SIGNAL \u0|u12|program[0][0][4]~q\ : std_logic;
SIGNAL \u0|u12|program[0][2][4]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][2][4]~q\ : std_logic;
SIGNAL \u0|u12|Mux75~4_combout\ : std_logic;
SIGNAL \u0|u12|Mux75~5_combout\ : std_logic;
SIGNAL \u0|u12|program[1][3][4]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[1][3][4]~q\ : std_logic;
SIGNAL \u0|u12|program[0][3][4]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][3][4]~q\ : std_logic;
SIGNAL \u0|u12|program[0][1][4]~q\ : std_logic;
SIGNAL \u0|u12|program[1][1][4]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[1][1][4]~q\ : std_logic;
SIGNAL \u0|u12|Mux75~2_combout\ : std_logic;
SIGNAL \u0|u12|Mux75~3_combout\ : std_logic;
SIGNAL \u0|u12|Mux75~6_combout\ : std_logic;
SIGNAL \u0|u12|Mux75~9_combout\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|decoder_node[2][3]~combout\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \u0|u11|c[4]~9\ : std_logic;
SIGNAL \u0|u11|c[5]~10_combout\ : std_logic;
SIGNAL \u0|u11|Add0~5_combout\ : std_logic;
SIGNAL \u0|u12|program[3][1][5]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[3][1][5]~q\ : std_logic;
SIGNAL \u0|u12|program[3][0][5]~q\ : std_logic;
SIGNAL \u0|u12|program[1][1][5]~q\ : std_logic;
SIGNAL \u0|u12|program[1][0][5]~q\ : std_logic;
SIGNAL \u0|u12|Mux74~0_combout\ : std_logic;
SIGNAL \u0|u12|Mux74~1_combout\ : std_logic;
SIGNAL \u0|u12|program[3][2][5]~q\ : std_logic;
SIGNAL \u0|u12|program[3][3][5]~q\ : std_logic;
SIGNAL \u0|u12|program[1][3][5]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[1][3][5]~q\ : std_logic;
SIGNAL \u0|u12|program[1][2][5]~q\ : std_logic;
SIGNAL \u0|u12|Mux74~7_combout\ : std_logic;
SIGNAL \u0|u12|Mux74~8_combout\ : std_logic;
SIGNAL \u0|u12|program[0][1][5]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][1][5]~q\ : std_logic;
SIGNAL \u0|u12|program[2][1][5]~q\ : std_logic;
SIGNAL \u0|u12|program[2][0][5]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[2][0][5]~q\ : std_logic;
SIGNAL \u0|u12|program[0][0][5]~q\ : std_logic;
SIGNAL \u0|u12|Mux74~4_combout\ : std_logic;
SIGNAL \u0|u12|Mux74~5_combout\ : std_logic;
SIGNAL \u0|u12|program[0][3][5]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][3][5]~q\ : std_logic;
SIGNAL \u0|u12|program[2][3][5]~q\ : std_logic;
SIGNAL \u0|u12|program[2][2][5]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[2][2][5]~q\ : std_logic;
SIGNAL \u0|u12|program[0][2][5]~q\ : std_logic;
SIGNAL \u0|u12|Mux74~2_combout\ : std_logic;
SIGNAL \u0|u12|Mux74~3_combout\ : std_logic;
SIGNAL \u0|u12|Mux74~6_combout\ : std_logic;
SIGNAL \u0|u12|Mux74~9_combout\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \u0|u11|c[5]~11\ : std_logic;
SIGNAL \u0|u11|c[6]~12_combout\ : std_logic;
SIGNAL \u0|u11|Add0~6_combout\ : std_logic;
SIGNAL \u0|u12|program[3][3][6]~q\ : std_logic;
SIGNAL \u0|u12|program[3][1][6]~q\ : std_logic;
SIGNAL \u0|u12|program[2][3][6]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[2][3][6]~q\ : std_logic;
SIGNAL \u0|u12|program[2][1][6]~q\ : std_logic;
SIGNAL \u0|u12|Mux73~7_combout\ : std_logic;
SIGNAL \u0|u12|Mux73~8_combout\ : std_logic;
SIGNAL \u0|u12|program[2][2][6]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[2][2][6]~q\ : std_logic;
SIGNAL \u0|u12|program[3][2][6]~q\ : std_logic;
SIGNAL \u0|u12|program[3][0][6]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[3][0][6]~q\ : std_logic;
SIGNAL \u0|u12|program[2][0][6]~q\ : std_logic;
SIGNAL \u0|u12|Mux73~2_combout\ : std_logic;
SIGNAL \u0|u12|Mux73~3_combout\ : std_logic;
SIGNAL \u0|u12|program[0][2][6]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][2][6]~q\ : std_logic;
SIGNAL \u0|u12|program[1][2][6]~q\ : std_logic;
SIGNAL \u0|u12|program[1][0][6]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[1][0][6]~q\ : std_logic;
SIGNAL \u0|u12|program[0][0][6]~q\ : std_logic;
SIGNAL \u0|u12|Mux73~4_combout\ : std_logic;
SIGNAL \u0|u12|Mux73~5_combout\ : std_logic;
SIGNAL \u0|u12|Mux73~6_combout\ : std_logic;
SIGNAL \u0|u12|program[1][1][6]~q\ : std_logic;
SIGNAL \u0|u12|program[1][3][6]~q\ : std_logic;
SIGNAL \u0|u12|program[0][3][6]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][3][6]~q\ : std_logic;
SIGNAL \u0|u12|program[0][1][6]~q\ : std_logic;
SIGNAL \u0|u12|Mux73~0_combout\ : std_logic;
SIGNAL \u0|u12|Mux73~1_combout\ : std_logic;
SIGNAL \u0|u12|Mux73~9_combout\ : std_logic;
SIGNAL \u0|u11|c[6]~13\ : std_logic;
SIGNAL \u0|u11|c[7]~14_combout\ : std_logic;
SIGNAL \u0|u11|Add0~7_combout\ : std_logic;
SIGNAL \u0|u12|program[2][3][7]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[2][3][7]~q\ : std_logic;
SIGNAL \u0|u12|program[2][2][7]~q\ : std_logic;
SIGNAL \u0|u12|program[0][3][7]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][3][7]~q\ : std_logic;
SIGNAL \u0|u12|program[0][2][7]~q\ : std_logic;
SIGNAL \u0|u12|Mux72~0_combout\ : std_logic;
SIGNAL \u0|u12|Mux72~1_combout\ : std_logic;
SIGNAL \u0|u12|program[3][3][7]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[3][3][7]~q\ : std_logic;
SIGNAL \u0|u12|program[3][2][7]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[3][2][7]~q\ : std_logic;
SIGNAL \u0|u12|program[1][2][7]~q\ : std_logic;
SIGNAL \u0|u12|Mux72~7_combout\ : std_logic;
SIGNAL \u0|u12|program[1][3][7]~q\ : std_logic;
SIGNAL \u0|u12|Mux72~8_combout\ : std_logic;
SIGNAL \u0|u12|program[1][1][7]~q\ : std_logic;
SIGNAL \u0|u12|program[3][1][7]~q\ : std_logic;
SIGNAL \u0|u12|program[3][0][7]~q\ : std_logic;
SIGNAL \u0|u12|program[1][0][7]~q\ : std_logic;
SIGNAL \u0|u12|Mux72~2_combout\ : std_logic;
SIGNAL \u0|u12|Mux72~3_combout\ : std_logic;
SIGNAL \u0|u12|program[0][1][7]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][1][7]~q\ : std_logic;
SIGNAL \u0|u12|program[0][0][7]~q\ : std_logic;
SIGNAL \u0|u12|Mux72~4_combout\ : std_logic;
SIGNAL \u0|u12|program[2][1][7]~q\ : std_logic;
SIGNAL \u0|u12|program[2][0][7]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[2][0][7]~q\ : std_logic;
SIGNAL \u0|u12|Mux72~5_combout\ : std_logic;
SIGNAL \u0|u12|Mux72~6_combout\ : std_logic;
SIGNAL \u0|u12|Mux72~9_combout\ : std_logic;
SIGNAL \u0|u11|c[7]~15\ : std_logic;
SIGNAL \u0|u11|c[8]~16_combout\ : std_logic;
SIGNAL \u0|u11|Add0~8_combout\ : std_logic;
SIGNAL \u0|u12|program[3][0][8]~q\ : std_logic;
SIGNAL \u0|u12|program[3][2][8]~q\ : std_logic;
SIGNAL \u0|u12|program[2][2][8]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[2][2][8]~q\ : std_logic;
SIGNAL \u0|u12|program[2][0][8]~q\ : std_logic;
SIGNAL \u0|u12|Mux71~0_combout\ : std_logic;
SIGNAL \u0|u12|Mux71~1_combout\ : std_logic;
SIGNAL \u0|u12|program[3][1][8]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[3][1][8]~q\ : std_logic;
SIGNAL \u0|u12|program[2][1][8]~q\ : std_logic;
SIGNAL \u0|u12|Mux71~7_combout\ : std_logic;
SIGNAL \u0|u12|program[3][3][8]~q\ : std_logic;
SIGNAL \u0|u12|program[2][3][8]~q\ : std_logic;
SIGNAL \u0|u12|Mux71~8_combout\ : std_logic;
SIGNAL \u0|u12|program[1][0][8]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[1][0][8]~q\ : std_logic;
SIGNAL \u0|u12|program[1][2][8]~q\ : std_logic;
SIGNAL \u0|u12|program[0][0][8]~q\ : std_logic;
SIGNAL \u0|u12|program[0][2][8]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][2][8]~q\ : std_logic;
SIGNAL \u0|u12|Mux71~4_combout\ : std_logic;
SIGNAL \u0|u12|Mux71~5_combout\ : std_logic;
SIGNAL \u0|u12|program[0][3][8]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][3][8]~q\ : std_logic;
SIGNAL \u0|u12|program[1][3][8]~q\ : std_logic;
SIGNAL \u0|u12|program[1][1][8]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[1][1][8]~q\ : std_logic;
SIGNAL \u0|u12|program[0][1][8]~q\ : std_logic;
SIGNAL \u0|u12|Mux71~2_combout\ : std_logic;
SIGNAL \u0|u12|Mux71~3_combout\ : std_logic;
SIGNAL \u0|u12|Mux71~6_combout\ : std_logic;
SIGNAL \u0|u12|Mux71~9_combout\ : std_logic;
SIGNAL \u0|u11|c[8]~17\ : std_logic;
SIGNAL \u0|u11|c[9]~18_combout\ : std_logic;
SIGNAL \u0|u11|Add0~9_combout\ : std_logic;
SIGNAL \u0|u12|program[3][3][9]~q\ : std_logic;
SIGNAL \u0|u12|program[3][2][9]~q\ : std_logic;
SIGNAL \u0|u12|program[1][2][9]~q\ : std_logic;
SIGNAL \u0|u12|program[1][3][9]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[1][3][9]~q\ : std_logic;
SIGNAL \u0|u12|Mux70~7_combout\ : std_logic;
SIGNAL \u0|u12|Mux70~8_combout\ : std_logic;
SIGNAL \u0|u12|program[0][1][9]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][1][9]~q\ : std_logic;
SIGNAL \u0|u12|program[2][1][9]~q\ : std_logic;
SIGNAL \u0|u12|program[2][0][9]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[2][0][9]~q\ : std_logic;
SIGNAL \u0|u12|program[0][0][9]~q\ : std_logic;
SIGNAL \u0|u12|Mux70~4_combout\ : std_logic;
SIGNAL \u0|u12|Mux70~5_combout\ : std_logic;
SIGNAL \u0|u12|program[0][3][9]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][3][9]~q\ : std_logic;
SIGNAL \u0|u12|program[2][3][9]~q\ : std_logic;
SIGNAL \u0|u12|program[0][2][9]~q\ : std_logic;
SIGNAL \u0|u12|program[2][2][9]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[2][2][9]~q\ : std_logic;
SIGNAL \u0|u12|Mux70~2_combout\ : std_logic;
SIGNAL \u0|u12|Mux70~3_combout\ : std_logic;
SIGNAL \u0|u12|Mux70~6_combout\ : std_logic;
SIGNAL \u0|u12|program[1][0][9]~q\ : std_logic;
SIGNAL \u0|u12|program[1][1][9]~q\ : std_logic;
SIGNAL \u0|u12|Mux70~0_combout\ : std_logic;
SIGNAL \u0|u12|program[3][1][9]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[3][1][9]~q\ : std_logic;
SIGNAL \u0|u12|program[3][0][9]~q\ : std_logic;
SIGNAL \u0|u12|Mux70~1_combout\ : std_logic;
SIGNAL \u0|u12|Mux70~9_combout\ : std_logic;
SIGNAL \u0|u11|c[9]~19\ : std_logic;
SIGNAL \u0|u11|c[10]~20_combout\ : std_logic;
SIGNAL \u0|u11|Add0~10_combout\ : std_logic;
SIGNAL \u0|u12|program[3][3][10]~q\ : std_logic;
SIGNAL \u0|u12|program[3][1][10]~q\ : std_logic;
SIGNAL \u0|u12|program[2][1][10]~q\ : std_logic;
SIGNAL \u0|u12|program[2][3][10]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[2][3][10]~q\ : std_logic;
SIGNAL \u0|u12|Mux69~7_combout\ : std_logic;
SIGNAL \u0|u12|Mux69~8_combout\ : std_logic;
SIGNAL \u0|u12|program[1][1][10]~q\ : std_logic;
SIGNAL \u0|u12|program[0][3][10]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][3][10]~q\ : std_logic;
SIGNAL \u0|u12|program[0][1][10]~q\ : std_logic;
SIGNAL \u0|u12|Mux69~0_combout\ : std_logic;
SIGNAL \u0|u12|program[1][3][10]~q\ : std_logic;
SIGNAL \u0|u12|Mux69~1_combout\ : std_logic;
SIGNAL \u0|u12|program[0][2][10]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][2][10]~q\ : std_logic;
SIGNAL \u0|u12|program[1][2][10]~q\ : std_logic;
SIGNAL \u0|u12|program[0][0][10]~q\ : std_logic;
SIGNAL \u0|u12|program[1][0][10]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[1][0][10]~q\ : std_logic;
SIGNAL \u0|u12|Mux69~4_combout\ : std_logic;
SIGNAL \u0|u12|Mux69~5_combout\ : std_logic;
SIGNAL \u0|u12|program[2][2][10]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[2][2][10]~q\ : std_logic;
SIGNAL \u0|u12|program[3][2][10]~q\ : std_logic;
SIGNAL \u0|u12|program[3][0][10]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[3][0][10]~q\ : std_logic;
SIGNAL \u0|u12|program[2][0][10]~q\ : std_logic;
SIGNAL \u0|u12|Mux69~2_combout\ : std_logic;
SIGNAL \u0|u12|Mux69~3_combout\ : std_logic;
SIGNAL \u0|u12|Mux69~6_combout\ : std_logic;
SIGNAL \u0|u12|Mux69~9_combout\ : std_logic;
SIGNAL \u0|u11|c[10]~21\ : std_logic;
SIGNAL \u0|u11|c[11]~22_combout\ : std_logic;
SIGNAL \u0|u11|Add0~11_combout\ : std_logic;
SIGNAL \u0|u12|program[2][0][11]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[2][0][11]~q\ : std_logic;
SIGNAL \u0|u12|program[2][1][11]~q\ : std_logic;
SIGNAL \u0|u12|program[0][0][11]~q\ : std_logic;
SIGNAL \u0|u12|program[0][1][11]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][1][11]~q\ : std_logic;
SIGNAL \u0|u12|Mux68~4_combout\ : std_logic;
SIGNAL \u0|u12|Mux68~5_combout\ : std_logic;
SIGNAL \u0|u12|program[1][1][11]~q\ : std_logic;
SIGNAL \u0|u12|program[3][1][11]~q\ : std_logic;
SIGNAL \u0|u12|program[3][0][11]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[3][0][11]~q\ : std_logic;
SIGNAL \u0|u12|program[1][0][11]~q\ : std_logic;
SIGNAL \u0|u12|Mux68~2_combout\ : std_logic;
SIGNAL \u0|u12|Mux68~3_combout\ : std_logic;
SIGNAL \u0|u12|Mux68~6_combout\ : std_logic;
SIGNAL \u0|u12|program[2][3][11]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[2][3][11]~q\ : std_logic;
SIGNAL \u0|u12|program[2][2][11]~q\ : std_logic;
SIGNAL \u0|u12|program[0][2][11]~q\ : std_logic;
SIGNAL \u0|u12|program[0][3][11]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][3][11]~q\ : std_logic;
SIGNAL \u0|u12|Mux68~0_combout\ : std_logic;
SIGNAL \u0|u12|Mux68~1_combout\ : std_logic;
SIGNAL \u0|u12|program[3][3][11]~q\ : std_logic;
SIGNAL \u0|u12|program[1][3][11]~q\ : std_logic;
SIGNAL \u0|u12|program[1][2][11]~q\ : std_logic;
SIGNAL \u0|u12|program[3][2][11]~q\ : std_logic;
SIGNAL \u0|u12|Mux68~7_combout\ : std_logic;
SIGNAL \u0|u12|Mux68~8_combout\ : std_logic;
SIGNAL \u0|u12|Mux68~9_combout\ : std_logic;
SIGNAL \u0|u11|c[11]~23\ : std_logic;
SIGNAL \u0|u11|c[12]~24_combout\ : std_logic;
SIGNAL \u0|u11|Add0~12_combout\ : std_logic;
SIGNAL \u0|u12|program[3][0][12]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[3][0][12]~q\ : std_logic;
SIGNAL \u0|u12|program[3][2][12]~q\ : std_logic;
SIGNAL \u0|u12|program[2][2][12]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[2][2][12]~q\ : std_logic;
SIGNAL \u0|u12|program[2][0][12]~q\ : std_logic;
SIGNAL \u0|u12|Mux67~0_combout\ : std_logic;
SIGNAL \u0|u12|Mux67~1_combout\ : std_logic;
SIGNAL \u0|u12|program[3][3][12]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[3][3][12]~q\ : std_logic;
SIGNAL \u0|u12|program[2][3][12]~q\ : std_logic;
SIGNAL \u0|u12|program[3][1][12]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[3][1][12]~q\ : std_logic;
SIGNAL \u0|u12|program[2][1][12]~q\ : std_logic;
SIGNAL \u0|u12|Mux67~7_combout\ : std_logic;
SIGNAL \u0|u12|Mux67~8_combout\ : std_logic;
SIGNAL \u0|u12|program[1][0][12]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[1][0][12]~q\ : std_logic;
SIGNAL \u0|u12|program[1][2][12]~q\ : std_logic;
SIGNAL \u0|u12|program[0][0][12]~q\ : std_logic;
SIGNAL \u0|u12|program[0][2][12]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][2][12]~q\ : std_logic;
SIGNAL \u0|u12|Mux67~4_combout\ : std_logic;
SIGNAL \u0|u12|Mux67~5_combout\ : std_logic;
SIGNAL \u0|u12|program[0][3][12]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][3][12]~q\ : std_logic;
SIGNAL \u0|u12|program[1][3][12]~q\ : std_logic;
SIGNAL \u0|u12|program[1][1][12]~q\ : std_logic;
SIGNAL \u0|u12|program[0][1][12]~q\ : std_logic;
SIGNAL \u0|u12|Mux67~2_combout\ : std_logic;
SIGNAL \u0|u12|Mux67~3_combout\ : std_logic;
SIGNAL \u0|u12|Mux67~6_combout\ : std_logic;
SIGNAL \u0|u12|Mux67~9_combout\ : std_logic;
SIGNAL \u0|u11|c[12]~25\ : std_logic;
SIGNAL \u0|u11|c[13]~26_combout\ : std_logic;
SIGNAL \u0|u11|Add0~13_combout\ : std_logic;
SIGNAL \u0|u12|program[0][3][13]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][3][13]~q\ : std_logic;
SIGNAL \u0|u12|program[2][3][13]~q\ : std_logic;
SIGNAL \u0|u12|program[2][2][13]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[2][2][13]~q\ : std_logic;
SIGNAL \u0|u12|program[0][2][13]~q\ : std_logic;
SIGNAL \u0|u12|Mux66~2_combout\ : std_logic;
SIGNAL \u0|u12|Mux66~3_combout\ : std_logic;
SIGNAL \u0|u12|program[0][1][13]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][1][13]~q\ : std_logic;
SIGNAL \u0|u12|program[2][1][13]~q\ : std_logic;
SIGNAL \u0|u12|program[2][0][13]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[2][0][13]~q\ : std_logic;
SIGNAL \u0|u12|program[0][0][13]~q\ : std_logic;
SIGNAL \u0|u12|Mux66~4_combout\ : std_logic;
SIGNAL \u0|u12|Mux66~5_combout\ : std_logic;
SIGNAL \u0|u12|Mux66~6_combout\ : std_logic;
SIGNAL \u0|u12|program[3][2][13]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[3][2][13]~q\ : std_logic;
SIGNAL \u0|u12|program[3][3][13]~q\ : std_logic;
SIGNAL \u0|u12|program[1][2][13]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[1][2][13]~q\ : std_logic;
SIGNAL \u0|u12|program[1][3][13]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[1][3][13]~q\ : std_logic;
SIGNAL \u0|u12|Mux66~7_combout\ : std_logic;
SIGNAL \u0|u12|Mux66~8_combout\ : std_logic;
SIGNAL \u0|u12|program[3][1][13]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[3][1][13]~q\ : std_logic;
SIGNAL \u0|u12|program[3][0][13]~q\ : std_logic;
SIGNAL \u0|u12|program[1][1][13]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[1][1][13]~q\ : std_logic;
SIGNAL \u0|u12|program[1][0][13]~q\ : std_logic;
SIGNAL \u0|u12|Mux66~0_combout\ : std_logic;
SIGNAL \u0|u12|Mux66~1_combout\ : std_logic;
SIGNAL \u0|u12|Mux66~9_combout\ : std_logic;
SIGNAL \u0|u11|c[13]~27\ : std_logic;
SIGNAL \u0|u11|c[14]~28_combout\ : std_logic;
SIGNAL \u0|u11|Add0~14_combout\ : std_logic;
SIGNAL \u0|u12|program[0][2][14]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][2][14]~q\ : std_logic;
SIGNAL \u0|u12|program[1][2][14]~q\ : std_logic;
SIGNAL \u0|u12|program[1][0][14]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[1][0][14]~q\ : std_logic;
SIGNAL \u0|u12|program[0][0][14]~q\ : std_logic;
SIGNAL \u0|u12|Mux65~4_combout\ : std_logic;
SIGNAL \u0|u12|Mux65~5_combout\ : std_logic;
SIGNAL \u0|u12|program[3][0][14]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[3][0][14]~q\ : std_logic;
SIGNAL \u0|u12|program[2][0][14]~q\ : std_logic;
SIGNAL \u0|u12|Mux65~2_combout\ : std_logic;
SIGNAL \u0|u12|program[2][2][14]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[2][2][14]~q\ : std_logic;
SIGNAL \u0|u12|program[3][2][14]~q\ : std_logic;
SIGNAL \u0|u12|Mux65~3_combout\ : std_logic;
SIGNAL \u0|u12|Mux65~6_combout\ : std_logic;
SIGNAL \u0|u12|program[3][3][14]~q\ : std_logic;
SIGNAL \u0|u12|program[3][1][14]~q\ : std_logic;
SIGNAL \u0|u12|program[2][3][14]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[2][3][14]~q\ : std_logic;
SIGNAL \u0|u12|program[2][1][14]~q\ : std_logic;
SIGNAL \u0|u12|Mux65~7_combout\ : std_logic;
SIGNAL \u0|u12|Mux65~8_combout\ : std_logic;
SIGNAL \u0|u12|program[0][3][14]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][3][14]~q\ : std_logic;
SIGNAL \u0|u12|program[0][1][14]~q\ : std_logic;
SIGNAL \u0|u12|Mux65~0_combout\ : std_logic;
SIGNAL \u0|u12|program[1][1][14]~q\ : std_logic;
SIGNAL \u0|u12|program[1][3][14]~q\ : std_logic;
SIGNAL \u0|u12|Mux65~1_combout\ : std_logic;
SIGNAL \u0|u12|Mux65~9_combout\ : std_logic;
SIGNAL \u0|u11|c[14]~29\ : std_logic;
SIGNAL \u0|u11|c[15]~30_combout\ : std_logic;
SIGNAL \u0|u11|Add0~15_combout\ : std_logic;
SIGNAL \u0|u12|program[2][3][15]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[2][3][15]~q\ : std_logic;
SIGNAL \u0|u12|program[2][2][15]~q\ : std_logic;
SIGNAL \u0|u12|program[0][3][15]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][3][15]~q\ : std_logic;
SIGNAL \u0|u12|program[0][2][15]~q\ : std_logic;
SIGNAL \u0|u12|Mux64~0_combout\ : std_logic;
SIGNAL \u0|u12|Mux64~1_combout\ : std_logic;
SIGNAL \u0|u12|program[3][0][15]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[3][0][15]~q\ : std_logic;
SIGNAL \u0|u12|program[1][0][15]~q\ : std_logic;
SIGNAL \u0|u12|Mux64~2_combout\ : std_logic;
SIGNAL \u0|u12|program[3][1][15]~q\ : std_logic;
SIGNAL \u0|u12|program[1][1][15]~q\ : std_logic;
SIGNAL \u0|u12|Mux64~3_combout\ : std_logic;
SIGNAL \u0|u12|program[2][0][15]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[2][0][15]~q\ : std_logic;
SIGNAL \u0|u12|program[2][1][15]~q\ : std_logic;
SIGNAL \u0|u12|program[0][1][15]~feeder_combout\ : std_logic;
SIGNAL \u0|u12|program[0][1][15]~q\ : std_logic;
SIGNAL \u0|u12|program[0][0][15]~q\ : std_logic;
SIGNAL \u0|u12|Mux64~4_combout\ : std_logic;
SIGNAL \u0|u12|Mux64~5_combout\ : std_logic;
SIGNAL \u0|u12|Mux64~6_combout\ : std_logic;
SIGNAL \u0|u12|program[3][3][15]~q\ : std_logic;
SIGNAL \u0|u12|program[1][3][15]~q\ : std_logic;
SIGNAL \u0|u12|program[3][2][15]~q\ : std_logic;
SIGNAL \u0|u12|program[1][2][15]~q\ : std_logic;
SIGNAL \u0|u12|Mux64~7_combout\ : std_logic;
SIGNAL \u0|u12|Mux64~8_combout\ : std_logic;
SIGNAL \u0|u12|Mux64~9_combout\ : std_logic;
SIGNAL \u0|u0|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|u1|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|u2|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \u1|ALT_INV_k_rst~combout\ : std_logic;
SIGNAL \u1|ALT_INV_j_rst~combout\ : std_logic;
SIGNAL \u1|ALT_INV_current_state.s2~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_start <= start;
result <= ww_result;
i <= ww_i;
j <= ww_j;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\u1|ALT_INV_k_rst~combout\ <= NOT \u1|k_rst~combout\;
\u1|ALT_INV_j_rst~combout\ <= NOT \u1|j_rst~combout\;
\u1|ALT_INV_current_state.s2~q\ <= NOT \u1|current_state.s2~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y34_N9
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u12|Mux79~9_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u12|Mux78~9_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u12|Mux77~9_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u12|Mux76~9_combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u12|Mux75~9_combout\,
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u12|Mux74~9_combout\,
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u12|Mux73~9_combout\,
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u12|Mux72~9_combout\,
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\result[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u12|Mux71~9_combout\,
	devoe => ww_devoe,
	o => \result[8]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\result[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u12|Mux70~9_combout\,
	devoe => ww_devoe,
	o => \result[9]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\result[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u12|Mux69~9_combout\,
	devoe => ww_devoe,
	o => \result[10]~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\result[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u12|Mux68~9_combout\,
	devoe => ww_devoe,
	o => \result[11]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\result[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u12|Mux67~9_combout\,
	devoe => ww_devoe,
	o => \result[12]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\result[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u12|Mux66~9_combout\,
	devoe => ww_devoe,
	o => \result[13]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\result[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u12|Mux65~9_combout\,
	devoe => ww_devoe,
	o => \result[14]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\result[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u12|Mux64~9_combout\,
	devoe => ww_devoe,
	o => \result[15]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\i[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u0|q\(0),
	devoe => ww_devoe,
	o => \i[0]~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\i[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u0|q\(1),
	devoe => ww_devoe,
	o => \i[1]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\i[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u0|q\(2),
	devoe => ww_devoe,
	o => \i[2]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\i[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u0|q\(3),
	devoe => ww_devoe,
	o => \i[3]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\i[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u0|q\(4),
	devoe => ww_devoe,
	o => \i[4]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\i[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u0|q\(5),
	devoe => ww_devoe,
	o => \i[5]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\i[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u0|q\(6),
	devoe => ww_devoe,
	o => \i[6]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\i[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u0|q\(7),
	devoe => ww_devoe,
	o => \i[7]~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\j[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u1|q\(0),
	devoe => ww_devoe,
	o => \j[0]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\j[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u1|q\(1),
	devoe => ww_devoe,
	o => \j[1]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\j[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u1|q\(2),
	devoe => ww_devoe,
	o => \j[2]~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\j[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u1|q\(3),
	devoe => ww_devoe,
	o => \j[3]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\j[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u1|q\(4),
	devoe => ww_devoe,
	o => \j[4]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\j[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u1|q\(5),
	devoe => ww_devoe,
	o => \j[5]~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\j[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u1|q\(6),
	devoe => ww_devoe,
	o => \j[6]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\j[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u1|q\(7),
	devoe => ww_devoe,
	o => \j[7]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X53_Y13_N8
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X43_Y20_N14
\u1|next_state.s1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|next_state.s1~0_combout\ = (!\u1|current_state.s0~q\ & !\start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|current_state.s0~q\,
	datad => \start~input_o\,
	combout => \u1|next_state.s1~0_combout\);

-- Location: IOIBUF_X0_Y16_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X43_Y20_N15
\u1|current_state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|next_state.s1~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|current_state.s1~q\);

-- Location: LCCOMB_X45_Y20_N20
\u0|u12|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Decoder0~0_combout\ = (\u0|u0|q\(0) & \u0|u0|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u0|q\(0),
	datad => \u0|u0|q\(1),
	combout => \u0|u12|Decoder0~0_combout\);

-- Location: LCCOMB_X43_Y20_N10
\u1|k_rst\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|k_rst~combout\ = (\u1|current_state.s2~q\) # (\u1|current_state.s7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|current_state.s2~q\,
	datad => \u1|current_state.s7~q\,
	combout => \u1|k_rst~combout\);

-- Location: LCCOMB_X43_Y20_N26
\u1|j_rst\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|j_rst~combout\ = (\u1|current_state.s2~q\) # (\u1|current_state.s4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|current_state.s2~q\,
	datad => \u1|current_state.s4~q\,
	combout => \u1|j_rst~combout\);

-- Location: FF_X43_Y20_N27
\u0|u1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u4|b[3]~6_combout\,
	clrn => \u1|ALT_INV_j_rst~combout\,
	sload => VCC,
	ena => \u1|current_state.s11~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u1|q\(3));

-- Location: LCCOMB_X44_Y20_N2
\u0|u0|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u0|q[3]~feeder_combout\ = \u0|u4|b[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u4|b[3]~6_combout\,
	combout => \u0|u0|q[3]~feeder_combout\);

-- Location: FF_X44_Y20_N3
\u0|u0|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u0|q[3]~feeder_combout\,
	clrn => \u1|ALT_INV_current_state.s2~q\,
	ena => \u1|current_state.s12~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u0|q\(3));

-- Location: LCCOMB_X44_Y20_N6
\u0|u3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u3|Mux4~0_combout\ = (!\u1|current_state.s11~q\ & ((\u1|current_state.s10~q\ & ((\u0|u2|q\(3)))) # (!\u1|current_state.s10~q\ & (\u0|u0|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|current_state.s11~q\,
	datab => \u0|u0|q\(3),
	datac => \u0|u2|q\(3),
	datad => \u1|current_state.s10~q\,
	combout => \u0|u3|Mux4~0_combout\);

-- Location: LCCOMB_X44_Y20_N8
\u0|u3|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u3|Mux4~1_combout\ = (\u0|u3|Mux4~0_combout\) # ((\u0|u1|q\(3) & \u1|current_state.s11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(3),
	datab => \u0|u3|Mux4~0_combout\,
	datad => \u1|current_state.s11~q\,
	combout => \u0|u3|Mux4~1_combout\);

-- Location: LCCOMB_X41_Y20_N6
\u0|u4|b[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u4|b[0]~0_combout\ = \u0|u3|Mux7~1_combout\ $ (VCC)
-- \u0|u4|b[0]~1\ = CARRY(\u0|u3|Mux7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u3|Mux7~1_combout\,
	datad => VCC,
	combout => \u0|u4|b[0]~0_combout\,
	cout => \u0|u4|b[0]~1\);

-- Location: LCCOMB_X41_Y20_N8
\u0|u4|b[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u4|b[1]~2_combout\ = (\u0|u3|Mux6~1_combout\ & (!\u0|u4|b[0]~1\)) # (!\u0|u3|Mux6~1_combout\ & ((\u0|u4|b[0]~1\) # (GND)))
-- \u0|u4|b[1]~3\ = CARRY((!\u0|u4|b[0]~1\) # (!\u0|u3|Mux6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u3|Mux6~1_combout\,
	datad => VCC,
	cin => \u0|u4|b[0]~1\,
	combout => \u0|u4|b[1]~2_combout\,
	cout => \u0|u4|b[1]~3\);

-- Location: LCCOMB_X41_Y20_N10
\u0|u4|b[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u4|b[2]~4_combout\ = (\u0|u3|Mux5~1_combout\ & (\u0|u4|b[1]~3\ $ (GND))) # (!\u0|u3|Mux5~1_combout\ & (!\u0|u4|b[1]~3\ & VCC))
-- \u0|u4|b[2]~5\ = CARRY((\u0|u3|Mux5~1_combout\ & !\u0|u4|b[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u3|Mux5~1_combout\,
	datad => VCC,
	cin => \u0|u4|b[1]~3\,
	combout => \u0|u4|b[2]~4_combout\,
	cout => \u0|u4|b[2]~5\);

-- Location: FF_X43_Y20_N11
\u0|u1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u4|b[2]~4_combout\,
	clrn => \u1|ALT_INV_j_rst~combout\,
	sload => VCC,
	ena => \u1|current_state.s11~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u1|q\(2));

-- Location: FF_X41_Y20_N5
\u0|u2|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u4|b[2]~4_combout\,
	clrn => \u1|ALT_INV_k_rst~combout\,
	sload => VCC,
	ena => \u1|current_state.s10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u2|q\(2));

-- Location: LCCOMB_X44_Y20_N24
\u0|u0|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u0|q[2]~feeder_combout\ = \u0|u4|b[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u4|b[2]~4_combout\,
	combout => \u0|u0|q[2]~feeder_combout\);

-- Location: FF_X44_Y20_N25
\u0|u0|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u0|q[2]~feeder_combout\,
	clrn => \u1|ALT_INV_current_state.s2~q\,
	ena => \u1|current_state.s12~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u0|q\(2));

-- Location: LCCOMB_X44_Y20_N0
\u0|u3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u3|Mux5~0_combout\ = (!\u1|current_state.s11~q\ & ((\u1|current_state.s10~q\ & (\u0|u2|q\(2))) # (!\u1|current_state.s10~q\ & ((\u0|u0|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|current_state.s11~q\,
	datab => \u1|current_state.s10~q\,
	datac => \u0|u2|q\(2),
	datad => \u0|u0|q\(2),
	combout => \u0|u3|Mux5~0_combout\);

-- Location: LCCOMB_X43_Y20_N22
\u0|u3|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u3|Mux5~1_combout\ = (\u0|u3|Mux5~0_combout\) # ((\u0|u1|q\(2) & \u1|current_state.s11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(2),
	datac => \u0|u3|Mux5~0_combout\,
	datad => \u1|current_state.s11~q\,
	combout => \u0|u3|Mux5~1_combout\);

-- Location: LCCOMB_X41_Y20_N12
\u0|u4|b[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u4|b[3]~6_combout\ = (\u0|u3|Mux4~1_combout\ & (!\u0|u4|b[2]~5\)) # (!\u0|u3|Mux4~1_combout\ & ((\u0|u4|b[2]~5\) # (GND)))
-- \u0|u4|b[3]~7\ = CARRY((!\u0|u4|b[2]~5\) # (!\u0|u3|Mux4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|u3|Mux4~1_combout\,
	datad => VCC,
	cin => \u0|u4|b[2]~5\,
	combout => \u0|u4|b[3]~6_combout\,
	cout => \u0|u4|b[3]~7\);

-- Location: FF_X41_Y20_N13
\u0|u2|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u4|b[3]~6_combout\,
	clrn => \u1|ALT_INV_k_rst~combout\,
	ena => \u1|current_state.s10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u2|q\(3));

-- Location: FF_X44_Y20_N19
\u0|u0|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u4|b[5]~10_combout\,
	clrn => \u1|ALT_INV_current_state.s2~q\,
	sload => VCC,
	ena => \u1|current_state.s12~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u0|q\(5));

-- Location: LCCOMB_X44_Y20_N18
\u0|u3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u3|Mux2~0_combout\ = (!\u1|current_state.s11~q\ & ((\u1|current_state.s10~q\ & (\u0|u2|q\(5))) # (!\u1|current_state.s10~q\ & ((\u0|u0|q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|q\(5),
	datab => \u1|current_state.s10~q\,
	datac => \u0|u0|q\(5),
	datad => \u1|current_state.s11~q\,
	combout => \u0|u3|Mux2~0_combout\);

-- Location: FF_X43_Y20_N29
\u0|u1|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u4|b[5]~10_combout\,
	clrn => \u1|ALT_INV_j_rst~combout\,
	sload => VCC,
	ena => \u1|current_state.s11~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u1|q\(5));

-- Location: LCCOMB_X43_Y20_N28
\u0|u3|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u3|Mux2~1_combout\ = (\u0|u3|Mux2~0_combout\) # ((\u0|u1|q\(5) & \u1|current_state.s11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u3|Mux2~0_combout\,
	datac => \u0|u1|q\(5),
	datad => \u1|current_state.s11~q\,
	combout => \u0|u3|Mux2~1_combout\);

-- Location: LCCOMB_X41_Y20_N14
\u0|u4|b[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u4|b[4]~8_combout\ = (\u0|u3|Mux3~1_combout\ & (\u0|u4|b[3]~7\ $ (GND))) # (!\u0|u3|Mux3~1_combout\ & (!\u0|u4|b[3]~7\ & VCC))
-- \u0|u4|b[4]~9\ = CARRY((\u0|u3|Mux3~1_combout\ & !\u0|u4|b[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u3|Mux3~1_combout\,
	datad => VCC,
	cin => \u0|u4|b[3]~7\,
	combout => \u0|u4|b[4]~8_combout\,
	cout => \u0|u4|b[4]~9\);

-- Location: FF_X44_Y20_N9
\u0|u0|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u4|b[4]~8_combout\,
	clrn => \u1|ALT_INV_current_state.s2~q\,
	sload => VCC,
	ena => \u1|current_state.s12~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u0|q\(4));

-- Location: FF_X41_Y20_N15
\u0|u2|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u4|b[4]~8_combout\,
	clrn => \u1|ALT_INV_k_rst~combout\,
	ena => \u1|current_state.s10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u2|q\(4));

-- Location: LCCOMB_X44_Y20_N4
\u0|u3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u3|Mux3~0_combout\ = (!\u1|current_state.s11~q\ & ((\u1|current_state.s10~q\ & ((\u0|u2|q\(4)))) # (!\u1|current_state.s10~q\ & (\u0|u0|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|current_state.s11~q\,
	datab => \u1|current_state.s10~q\,
	datac => \u0|u0|q\(4),
	datad => \u0|u2|q\(4),
	combout => \u0|u3|Mux3~0_combout\);

-- Location: FF_X43_Y20_N1
\u0|u1|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u4|b[4]~8_combout\,
	clrn => \u1|ALT_INV_j_rst~combout\,
	sload => VCC,
	ena => \u1|current_state.s11~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u1|q\(4));

-- Location: LCCOMB_X43_Y20_N0
\u0|u3|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u3|Mux3~1_combout\ = (\u0|u3|Mux3~0_combout\) # ((\u0|u1|q\(4) & \u1|current_state.s11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u3|Mux3~0_combout\,
	datac => \u0|u1|q\(4),
	datad => \u1|current_state.s11~q\,
	combout => \u0|u3|Mux3~1_combout\);

-- Location: LCCOMB_X41_Y20_N16
\u0|u4|b[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u4|b[5]~10_combout\ = (\u0|u3|Mux2~1_combout\ & (!\u0|u4|b[4]~9\)) # (!\u0|u3|Mux2~1_combout\ & ((\u0|u4|b[4]~9\) # (GND)))
-- \u0|u4|b[5]~11\ = CARRY((!\u0|u4|b[4]~9\) # (!\u0|u3|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u3|Mux2~1_combout\,
	datad => VCC,
	cin => \u0|u4|b[4]~9\,
	combout => \u0|u4|b[5]~10_combout\,
	cout => \u0|u4|b[5]~11\);

-- Location: FF_X41_Y20_N17
\u0|u2|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u4|b[5]~10_combout\,
	clrn => \u1|ALT_INV_k_rst~combout\,
	ena => \u1|current_state.s10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u2|q\(5));

-- Location: FF_X43_Y20_N13
\u0|u1|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u4|b[7]~14_combout\,
	clrn => \u1|ALT_INV_j_rst~combout\,
	sload => VCC,
	ena => \u1|current_state.s11~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u1|q\(7));

-- Location: FF_X44_Y20_N27
\u0|u0|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u4|b[7]~14_combout\,
	clrn => \u1|ALT_INV_current_state.s2~q\,
	sload => VCC,
	ena => \u1|current_state.s12~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u0|q\(7));

-- Location: LCCOMB_X44_Y20_N26
\u0|u3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u3|Mux0~0_combout\ = (!\u1|current_state.s11~q\ & ((\u1|current_state.s10~q\ & (\u0|u2|q\(7))) # (!\u1|current_state.s10~q\ & ((\u0|u0|q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|current_state.s11~q\,
	datab => \u0|u2|q\(7),
	datac => \u0|u0|q\(7),
	datad => \u1|current_state.s10~q\,
	combout => \u0|u3|Mux0~0_combout\);

-- Location: LCCOMB_X43_Y20_N18
\u0|u3|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u3|Mux0~1_combout\ = (\u0|u3|Mux0~0_combout\) # ((\u1|current_state.s11~q\ & \u0|u1|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|current_state.s11~q\,
	datab => \u0|u1|q\(7),
	datad => \u0|u3|Mux0~0_combout\,
	combout => \u0|u3|Mux0~1_combout\);

-- Location: LCCOMB_X41_Y20_N18
\u0|u4|b[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u4|b[6]~12_combout\ = (\u0|u3|Mux1~1_combout\ & (\u0|u4|b[5]~11\ $ (GND))) # (!\u0|u3|Mux1~1_combout\ & (!\u0|u4|b[5]~11\ & VCC))
-- \u0|u4|b[6]~13\ = CARRY((\u0|u3|Mux1~1_combout\ & !\u0|u4|b[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u3|Mux1~1_combout\,
	datad => VCC,
	cin => \u0|u4|b[5]~11\,
	combout => \u0|u4|b[6]~12_combout\,
	cout => \u0|u4|b[6]~13\);

-- Location: LCCOMB_X41_Y20_N20
\u0|u4|b[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u4|b[7]~14_combout\ = \u0|u4|b[6]~13\ $ (\u0|u3|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u0|u3|Mux0~1_combout\,
	cin => \u0|u4|b[6]~13\,
	combout => \u0|u4|b[7]~14_combout\);

-- Location: FF_X41_Y20_N21
\u0|u2|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u4|b[7]~14_combout\,
	clrn => \u1|ALT_INV_k_rst~combout\,
	ena => \u1|current_state.s10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u2|q\(7));

-- Location: LCCOMB_X44_Y20_N14
\u0|u7|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u7|LessThan0~0_combout\ = (\u0|u2|q\(5)) # ((\u0|u2|q\(6)) # ((\u0|u2|q\(7)) # (\u0|u2|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|q\(5),
	datab => \u0|u2|q\(6),
	datac => \u0|u2|q\(7),
	datad => \u0|u2|q\(4),
	combout => \u0|u7|LessThan0~0_combout\);

-- Location: LCCOMB_X44_Y20_N12
\u1|next_state.s9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|next_state.s9~0_combout\ = (\u1|current_state.s8~q\ & (!\u0|u2|q\(3) & (!\u0|u7|LessThan0~0_combout\ & !\u0|u2|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|current_state.s8~q\,
	datab => \u0|u2|q\(3),
	datac => \u0|u7|LessThan0~0_combout\,
	datad => \u0|u2|q\(2),
	combout => \u1|next_state.s9~0_combout\);

-- Location: FF_X44_Y20_N13
\u1|current_state.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|next_state.s9~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|current_state.s9~q\);

-- Location: FF_X39_Y20_N11
\u1|current_state.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u1|current_state.s9~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|current_state.s10~q\);

-- Location: FF_X41_Y20_N19
\u0|u2|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u4|b[6]~12_combout\,
	clrn => \u1|ALT_INV_k_rst~combout\,
	ena => \u1|current_state.s10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u2|q\(6));

-- Location: LCCOMB_X44_Y20_N28
\u0|u3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u3|Mux1~0_combout\ = (!\u1|current_state.s11~q\ & ((\u1|current_state.s10~q\ & (\u0|u2|q\(6))) # (!\u1|current_state.s10~q\ & ((\u0|u0|q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|current_state.s11~q\,
	datab => \u0|u2|q\(6),
	datac => \u0|u0|q\(6),
	datad => \u1|current_state.s10~q\,
	combout => \u0|u3|Mux1~0_combout\);

-- Location: FF_X43_Y20_N17
\u0|u1|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u4|b[6]~12_combout\,
	clrn => \u1|ALT_INV_j_rst~combout\,
	sload => VCC,
	ena => \u1|current_state.s11~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u1|q\(6));

-- Location: LCCOMB_X43_Y20_N16
\u0|u3|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u3|Mux1~1_combout\ = (\u0|u3|Mux1~0_combout\) # ((\u0|u1|q\(6) & \u1|current_state.s11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u3|Mux1~0_combout\,
	datac => \u0|u1|q\(6),
	datad => \u1|current_state.s11~q\,
	combout => \u0|u3|Mux1~1_combout\);

-- Location: FF_X44_Y20_N29
\u0|u0|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u4|b[6]~12_combout\,
	clrn => \u1|ALT_INV_current_state.s2~q\,
	sload => VCC,
	ena => \u1|current_state.s12~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u0|q\(6));

-- Location: LCCOMB_X44_Y20_N20
\u0|u5|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u5|LessThan0~0_combout\ = (!\u0|u0|q\(3) & (!\u0|u0|q\(5) & (!\u0|u0|q\(4) & !\u0|u0|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(3),
	datab => \u0|u0|q\(5),
	datac => \u0|u0|q\(4),
	datad => \u0|u0|q\(2),
	combout => \u0|u5|LessThan0~0_combout\);

-- Location: LCCOMB_X44_Y20_N22
\u0|u5|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u5|LessThan0~1_combout\ = (!\u0|u12|Decoder0~0_combout\ & (!\u0|u0|q\(6) & (!\u0|u0|q\(7) & \u0|u5|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|Decoder0~0_combout\,
	datab => \u0|u0|q\(6),
	datac => \u0|u0|q\(7),
	datad => \u0|u5|LessThan0~0_combout\,
	combout => \u0|u5|LessThan0~1_combout\);

-- Location: LCCOMB_X43_Y20_N4
\u1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Selector0~0_combout\ = (!\u1|current_state.s1~q\ & ((\u0|u5|LessThan0~1_combout\) # (!\u1|current_state.s3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|current_state.s1~q\,
	datac => \u1|current_state.s3~q\,
	datad => \u0|u5|LessThan0~1_combout\,
	combout => \u1|Selector0~0_combout\);

-- Location: FF_X43_Y20_N5
\u1|current_state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|Selector0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|current_state.s0~q\);

-- Location: LCCOMB_X43_Y20_N8
\u1|next_state.s2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|next_state.s2~0_combout\ = (!\u1|current_state.s0~q\ & \start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|current_state.s0~q\,
	datad => \start~input_o\,
	combout => \u1|next_state.s2~0_combout\);

-- Location: FF_X43_Y20_N9
\u1|current_state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|next_state.s2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|current_state.s2~q\);

-- Location: FF_X41_Y20_N23
\u0|u0|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u4|b[1]~2_combout\,
	clrn => \u1|ALT_INV_current_state.s2~q\,
	sload => VCC,
	ena => \u1|current_state.s12~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u0|q\(1));

-- Location: FF_X41_Y20_N31
\u0|u2|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u4|b[1]~2_combout\,
	clrn => \u1|ALT_INV_k_rst~combout\,
	sload => VCC,
	ena => \u1|current_state.s10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u2|q\(1));

-- Location: LCCOMB_X39_Y20_N8
\u0|u3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u3|Mux6~0_combout\ = (!\u1|current_state.s11~q\ & ((\u1|current_state.s10~q\ & ((\u0|u2|q\(1)))) # (!\u1|current_state.s10~q\ & (\u0|u0|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(1),
	datab => \u0|u2|q\(1),
	datac => \u1|current_state.s10~q\,
	datad => \u1|current_state.s11~q\,
	combout => \u0|u3|Mux6~0_combout\);

-- Location: LCCOMB_X39_Y20_N30
\u0|u3|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u3|Mux6~1_combout\ = (\u0|u3|Mux6~0_combout\) # ((\u0|u1|q\(1) & \u1|current_state.s11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u1|q\(1),
	datac => \u0|u3|Mux6~0_combout\,
	datad => \u1|current_state.s11~q\,
	combout => \u0|u3|Mux6~1_combout\);

-- Location: FF_X40_Y20_N1
\u0|u1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u4|b[1]~2_combout\,
	clrn => \u1|ALT_INV_j_rst~combout\,
	sload => VCC,
	ena => \u1|current_state.s11~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u1|q\(1));

-- Location: FF_X40_Y20_N15
\u0|u1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u4|b[0]~0_combout\,
	clrn => \u1|ALT_INV_j_rst~combout\,
	sload => VCC,
	ena => \u1|current_state.s11~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u1|q\(0));

-- Location: LCCOMB_X43_Y20_N12
\u0|u6|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u6|LessThan0~0_combout\ = (\u0|u1|q\(6)) # ((\u0|u1|q\(7)) # ((\u0|u1|q\(1) & \u0|u1|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(1),
	datab => \u0|u1|q\(6),
	datac => \u0|u1|q\(7),
	datad => \u0|u1|q\(0),
	combout => \u0|u6|LessThan0~0_combout\);

-- Location: LCCOMB_X43_Y20_N24
\u0|u6|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u6|LessThan0~1_combout\ = (\u0|u1|q\(3)) # ((\u0|u1|q\(5)) # ((\u0|u1|q\(2)) # (\u0|u1|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(3),
	datab => \u0|u1|q\(5),
	datac => \u0|u1|q\(2),
	datad => \u0|u1|q\(4),
	combout => \u0|u6|LessThan0~1_combout\);

-- Location: LCCOMB_X43_Y20_N6
\u1|next_state.s12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|next_state.s12~0_combout\ = (\u1|current_state.s5~q\ & ((\u0|u6|LessThan0~0_combout\) # (\u0|u6|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|current_state.s5~q\,
	datac => \u0|u6|LessThan0~0_combout\,
	datad => \u0|u6|LessThan0~1_combout\,
	combout => \u1|next_state.s12~0_combout\);

-- Location: FF_X43_Y20_N7
\u1|current_state.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|next_state.s12~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|current_state.s12~q\);

-- Location: LCCOMB_X44_Y20_N30
\u1|next_state.s3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|next_state.s3~combout\ = (\u1|current_state.s12~q\) # (\u1|current_state.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|current_state.s12~q\,
	datad => \u1|current_state.s2~q\,
	combout => \u1|next_state.s3~combout\);

-- Location: FF_X44_Y20_N31
\u1|current_state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|next_state.s3~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|current_state.s3~q\);

-- Location: LCCOMB_X43_Y20_N2
\u1|next_state.s4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|next_state.s4~0_combout\ = (\u1|current_state.s3~q\ & \u0|u5|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|current_state.s3~q\,
	datad => \u0|u5|LessThan0~1_combout\,
	combout => \u1|next_state.s4~0_combout\);

-- Location: FF_X43_Y20_N3
\u1|current_state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|next_state.s4~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|current_state.s4~q\);

-- Location: LCCOMB_X43_Y20_N20
\u1|next_state.s5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|next_state.s5~combout\ = (\u1|current_state.s4~q\) # (\u1|current_state.s11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|current_state.s4~q\,
	datad => \u1|current_state.s11~q\,
	combout => \u1|next_state.s5~combout\);

-- Location: FF_X43_Y20_N21
\u1|current_state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|next_state.s5~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|current_state.s5~q\);

-- Location: LCCOMB_X43_Y20_N30
\u1|next_state.s6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|next_state.s6~0_combout\ = (\u1|current_state.s5~q\ & (!\u0|u6|LessThan0~0_combout\ & !\u0|u6|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|current_state.s5~q\,
	datac => \u0|u6|LessThan0~0_combout\,
	datad => \u0|u6|LessThan0~1_combout\,
	combout => \u1|next_state.s6~0_combout\);

-- Location: FF_X43_Y20_N31
\u1|current_state.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|next_state.s6~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|current_state.s6~q\);

-- Location: FF_X43_Y20_N19
\u1|current_state.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u1|current_state.s6~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|current_state.s7~q\);

-- Location: LCCOMB_X44_Y20_N16
\u1|next_state.s8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|next_state.s8~combout\ = (\u1|current_state.s7~q\) # (\u1|current_state.s10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|current_state.s7~q\,
	datad => \u1|current_state.s10~q\,
	combout => \u1|next_state.s8~combout\);

-- Location: FF_X44_Y20_N17
\u1|current_state.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|next_state.s8~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|current_state.s8~q\);

-- Location: LCCOMB_X44_Y20_N10
\u1|next_state.s11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|next_state.s11~0_combout\ = (\u1|current_state.s8~q\ & ((\u0|u2|q\(3)) # ((\u0|u7|LessThan0~0_combout\) # (\u0|u2|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|current_state.s8~q\,
	datab => \u0|u2|q\(3),
	datac => \u0|u7|LessThan0~0_combout\,
	datad => \u0|u2|q\(2),
	combout => \u1|next_state.s11~0_combout\);

-- Location: FF_X44_Y20_N11
\u1|current_state.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|next_state.s11~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|current_state.s11~q\);

-- Location: FF_X41_Y20_N29
\u0|u2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u4|b[0]~0_combout\,
	clrn => \u1|ALT_INV_k_rst~combout\,
	sload => VCC,
	ena => \u1|current_state.s10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u2|q\(0));

-- Location: LCCOMB_X39_Y20_N12
\u0|u3|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u3|Mux7~0_combout\ = (!\u1|current_state.s11~q\ & ((\u1|current_state.s10~q\ & ((\u0|u2|q\(0)))) # (!\u1|current_state.s10~q\ & (\u0|u0|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|current_state.s11~q\,
	datab => \u0|u0|q\(0),
	datac => \u0|u2|q\(0),
	datad => \u1|current_state.s10~q\,
	combout => \u0|u3|Mux7~0_combout\);

-- Location: LCCOMB_X39_Y20_N18
\u0|u3|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u3|Mux7~1_combout\ = (\u0|u3|Mux7~0_combout\) # ((\u1|current_state.s11~q\ & \u0|u1|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|current_state.s11~q\,
	datab => \u0|u1|q\(0),
	datad => \u0|u3|Mux7~0_combout\,
	combout => \u0|u3|Mux7~1_combout\);

-- Location: FF_X41_Y20_N25
\u0|u0|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u4|b[0]~0_combout\,
	clrn => \u1|ALT_INV_current_state.s2~q\,
	sload => VCC,
	ena => \u1|current_state.s12~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u0|q\(0));

-- Location: LCCOMB_X39_Y20_N24
\u0|u8|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u8|Mux9~0_combout\ = (\u0|u2|q\(1) & (((!\u0|u0|q\(0) & !\u0|u0|q\(1))))) # (!\u0|u2|q\(1) & (\u0|u2|q\(0) & ((!\u0|u0|q\(1)) # (!\u0|u0|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|q\(0),
	datab => \u0|u2|q\(1),
	datac => \u0|u0|q\(0),
	datad => \u0|u0|q\(1),
	combout => \u0|u8|Mux9~0_combout\);

-- Location: LCCOMB_X40_Y20_N14
\u0|u9|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u9|Mux5~0_combout\ = (\u0|u1|q\(1) & (\u0|u2|q\(1) & (!\u0|u1|q\(0)))) # (!\u0|u1|q\(1) & ((\u0|u1|q\(0) $ (!\u0|u2|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|q\(1),
	datab => \u0|u1|q\(1),
	datac => \u0|u1|q\(0),
	datad => \u0|u2|q\(0),
	combout => \u0|u9|Mux5~0_combout\);

-- Location: LCCOMB_X39_Y20_N2
\u0|u10|Mult0|mult_core|decoder_node[0][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u10|Mult0|mult_core|decoder_node[0][0]~combout\ = (!\u0|u2|q\(2) & (\u0|u8|Mux9~0_combout\ & \u0|u9|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|q\(2),
	datab => \u0|u8|Mux9~0_combout\,
	datac => \u0|u9|Mux5~0_combout\,
	combout => \u0|u10|Mult0|mult_core|decoder_node[0][0]~combout\);

-- Location: LCCOMB_X39_Y21_N0
\u0|u11|c[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|c[0]~0_combout\ = (\u0|u10|Mult0|mult_core|decoder_node[0][0]~combout\ & (\u0|u12|Mux79~9_combout\ $ (VCC))) # (!\u0|u10|Mult0|mult_core|decoder_node[0][0]~combout\ & (\u0|u12|Mux79~9_combout\ & VCC))
-- \u0|u11|c[0]~1\ = CARRY((\u0|u10|Mult0|mult_core|decoder_node[0][0]~combout\ & \u0|u12|Mux79~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u10|Mult0|mult_core|decoder_node[0][0]~combout\,
	datab => \u0|u12|Mux79~9_combout\,
	datad => VCC,
	combout => \u0|u11|c[0]~0_combout\,
	cout => \u0|u11|c[0]~1\);

-- Location: LCCOMB_X40_Y21_N12
\u0|u11|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|Add0~0_combout\ = (\u0|u11|c[0]~0_combout\ & !\u1|current_state.s6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|c[0]~0_combout\,
	datad => \u1|current_state.s6~q\,
	combout => \u0|u11|Add0~0_combout\);

-- Location: LCCOMB_X40_Y19_N12
\u0|u12|program[3][0][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[3][0][0]~2_combout\ = (!\u0|u1|q\(0) & (!\u0|u1|q\(1) & ((\u1|current_state.s6~q\) # (\u1|current_state.s9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u1|q\(1),
	datac => \u1|current_state.s6~q\,
	datad => \u1|current_state.s9~q\,
	combout => \u0|u12|program[3][0][0]~2_combout\);

-- Location: LCCOMB_X40_Y19_N10
\u0|u12|program[3][0][0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[3][0][0]~3_combout\ = (\u0|u0|q\(0) & (\u0|u0|q\(1) & \u0|u12|program[3][0][0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(0),
	datac => \u0|u0|q\(1),
	datad => \u0|u12|program[3][0][0]~2_combout\,
	combout => \u0|u12|program[3][0][0]~3_combout\);

-- Location: FF_X39_Y21_N19
\u0|u12|program[3][0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~0_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][0][0]~q\);

-- Location: LCCOMB_X40_Y19_N6
\u0|u12|program[3][2][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[3][2][0]~2_combout\ = (\u0|u1|q\(1) & ((\u1|current_state.s6~q\) # (\u1|current_state.s9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u1|q\(1),
	datac => \u1|current_state.s6~q\,
	datad => \u1|current_state.s9~q\,
	combout => \u0|u12|program[3][2][0]~2_combout\);

-- Location: LCCOMB_X40_Y19_N0
\u0|u12|program[3][2][0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[3][2][0]~3_combout\ = (\u0|u0|q\(0) & (!\u0|u1|q\(0) & (\u0|u0|q\(1) & \u0|u12|program[3][2][0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(0),
	datab => \u0|u1|q\(0),
	datac => \u0|u0|q\(1),
	datad => \u0|u12|program[3][2][0]~2_combout\,
	combout => \u0|u12|program[3][2][0]~3_combout\);

-- Location: FF_X38_Y21_N29
\u0|u12|program[3][2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~0_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][2][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][2][0]~q\);

-- Location: LCCOMB_X39_Y20_N28
\u0|u12|program[0][0][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][0][0]~0_combout\ = (!\u0|u1|q\(1) & (!\u0|u0|q\(0) & ((\u1|current_state.s9~q\) # (\u1|current_state.s6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|current_state.s9~q\,
	datab => \u1|current_state.s6~q\,
	datac => \u0|u1|q\(1),
	datad => \u0|u0|q\(0),
	combout => \u0|u12|program[0][0][0]~0_combout\);

-- Location: LCCOMB_X37_Y21_N8
\u0|u12|program[2][0][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][0][0]~0_combout\ = (\u0|u0|q\(1) & (!\u0|u1|q\(0) & \u0|u12|program[0][0][0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(1),
	datab => \u0|u1|q\(0),
	datad => \u0|u12|program[0][0][0]~0_combout\,
	combout => \u0|u12|program[2][0][0]~0_combout\);

-- Location: FF_X39_Y20_N1
\u0|u12|program[2][0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~0_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][0][0]~q\);

-- Location: LCCOMB_X40_Y19_N16
\u0|u12|program[2][2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][2][0]~feeder_combout\ = \u0|u11|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~0_combout\,
	combout => \u0|u12|program[2][2][0]~feeder_combout\);

-- Location: LCCOMB_X40_Y19_N20
\u0|u12|program[2][2][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][2][0]~0_combout\ = (!\u0|u0|q\(0) & (!\u0|u1|q\(0) & (\u0|u0|q\(1) & \u0|u12|program[3][2][0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(0),
	datab => \u0|u1|q\(0),
	datac => \u0|u0|q\(1),
	datad => \u0|u12|program[3][2][0]~2_combout\,
	combout => \u0|u12|program[2][2][0]~0_combout\);

-- Location: FF_X40_Y19_N17
\u0|u12|program[2][2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[2][2][0]~feeder_combout\,
	ena => \u0|u12|program[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][2][0]~q\);

-- Location: LCCOMB_X39_Y20_N0
\u0|u12|Mux79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux79~0_combout\ = (\u0|u0|q\(0) & (\u0|u1|q\(1))) # (!\u0|u0|q\(0) & ((\u0|u1|q\(1) & ((\u0|u12|program[2][2][0]~q\))) # (!\u0|u1|q\(1) & (\u0|u12|program[2][0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(0),
	datab => \u0|u1|q\(1),
	datac => \u0|u12|program[2][0][0]~q\,
	datad => \u0|u12|program[2][2][0]~q\,
	combout => \u0|u12|Mux79~0_combout\);

-- Location: LCCOMB_X38_Y21_N28
\u0|u12|Mux79~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux79~1_combout\ = (\u0|u0|q\(0) & ((\u0|u12|Mux79~0_combout\ & ((\u0|u12|program[3][2][0]~q\))) # (!\u0|u12|Mux79~0_combout\ & (\u0|u12|program[3][0][0]~q\)))) # (!\u0|u0|q\(0) & (((\u0|u12|Mux79~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(0),
	datab => \u0|u12|program[3][0][0]~q\,
	datac => \u0|u12|program[3][2][0]~q\,
	datad => \u0|u12|Mux79~0_combout\,
	combout => \u0|u12|Mux79~1_combout\);

-- Location: LCCOMB_X40_Y19_N2
\u0|u12|program[3][3][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[3][3][0]~2_combout\ = (\u0|u1|q\(0) & (\u0|u1|q\(1) & ((\u1|current_state.s6~q\) # (\u1|current_state.s9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u1|q\(1),
	datac => \u1|current_state.s6~q\,
	datad => \u1|current_state.s9~q\,
	combout => \u0|u12|program[3][3][0]~2_combout\);

-- Location: LCCOMB_X40_Y21_N20
\u0|u12|program[3][3][0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[3][3][0]~3_combout\ = (\u0|u0|q\(1) & (\u0|u0|q\(0) & \u0|u12|program[3][3][0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(1),
	datab => \u0|u0|q\(0),
	datad => \u0|u12|program[3][3][0]~2_combout\,
	combout => \u0|u12|program[3][3][0]~3_combout\);

-- Location: FF_X40_Y21_N13
\u0|u12|program[3][3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u11|Add0~0_combout\,
	ena => \u0|u12|program[3][3][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][3][0]~q\);

-- Location: LCCOMB_X40_Y21_N30
\u0|u12|program[2][3][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][3][0]~0_combout\ = (\u0|u0|q\(1) & (!\u0|u0|q\(0) & \u0|u12|program[3][3][0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(1),
	datab => \u0|u0|q\(0),
	datad => \u0|u12|program[3][3][0]~2_combout\,
	combout => \u0|u12|program[2][3][0]~0_combout\);

-- Location: FF_X38_Y23_N17
\u0|u12|program[2][3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~0_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][3][0]~q\);

-- Location: LCCOMB_X38_Y20_N24
\u0|u12|program[3][1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[3][1][0]~feeder_combout\ = \u0|u11|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~0_combout\,
	combout => \u0|u12|program[3][1][0]~feeder_combout\);

-- Location: LCCOMB_X39_Y20_N26
\u0|u12|program[3][1][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[3][1][0]~2_combout\ = (!\u0|u1|q\(1) & (\u0|u1|q\(0) & ((\u1|current_state.s9~q\) # (\u1|current_state.s6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|current_state.s9~q\,
	datab => \u1|current_state.s6~q\,
	datac => \u0|u1|q\(1),
	datad => \u0|u1|q\(0),
	combout => \u0|u12|program[3][1][0]~2_combout\);

-- Location: LCCOMB_X38_Y20_N0
\u0|u12|program[3][1][0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[3][1][0]~3_combout\ = (\u0|u0|q\(1) & (\u0|u0|q\(0) & \u0|u12|program[3][1][0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u0|q\(1),
	datac => \u0|u0|q\(0),
	datad => \u0|u12|program[3][1][0]~2_combout\,
	combout => \u0|u12|program[3][1][0]~3_combout\);

-- Location: FF_X38_Y20_N25
\u0|u12|program[3][1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[3][1][0]~feeder_combout\,
	ena => \u0|u12|program[3][1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][1][0]~q\);

-- Location: LCCOMB_X38_Y20_N28
\u0|u12|program[2][1][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][1][0]~0_combout\ = (\u0|u0|q\(1) & (!\u0|u0|q\(0) & \u0|u12|program[3][1][0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u0|q\(1),
	datac => \u0|u0|q\(0),
	datad => \u0|u12|program[3][1][0]~2_combout\,
	combout => \u0|u12|program[2][1][0]~0_combout\);

-- Location: FF_X38_Y20_N23
\u0|u12|program[2][1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~0_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][1][0]~q\);

-- Location: LCCOMB_X38_Y20_N22
\u0|u12|Mux79~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux79~7_combout\ = (\u0|u0|q\(0) & ((\u0|u12|program[3][1][0]~q\) # ((\u0|u1|q\(1))))) # (!\u0|u0|q\(0) & (((\u0|u12|program[2][1][0]~q\ & !\u0|u1|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(0),
	datab => \u0|u12|program[3][1][0]~q\,
	datac => \u0|u12|program[2][1][0]~q\,
	datad => \u0|u1|q\(1),
	combout => \u0|u12|Mux79~7_combout\);

-- Location: LCCOMB_X38_Y23_N16
\u0|u12|Mux79~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux79~8_combout\ = (\u0|u1|q\(1) & ((\u0|u12|Mux79~7_combout\ & (\u0|u12|program[3][3][0]~q\)) # (!\u0|u12|Mux79~7_combout\ & ((\u0|u12|program[2][3][0]~q\))))) # (!\u0|u1|q\(1) & (((\u0|u12|Mux79~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[3][3][0]~q\,
	datab => \u0|u1|q\(1),
	datac => \u0|u12|program[2][3][0]~q\,
	datad => \u0|u12|Mux79~7_combout\,
	combout => \u0|u12|Mux79~8_combout\);

-- Location: LCCOMB_X39_Y23_N12
\u0|u12|program[0][3][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][3][0]~feeder_combout\ = \u0|u11|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~0_combout\,
	combout => \u0|u12|program[0][3][0]~feeder_combout\);

-- Location: LCCOMB_X40_Y21_N4
\u0|u12|program[0][3][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][3][0]~0_combout\ = (!\u0|u0|q\(1) & (!\u0|u0|q\(0) & \u0|u12|program[3][3][0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(1),
	datab => \u0|u0|q\(0),
	datad => \u0|u12|program[3][3][0]~2_combout\,
	combout => \u0|u12|program[0][3][0]~0_combout\);

-- Location: FF_X39_Y23_N13
\u0|u12|program[0][3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][3][0]~feeder_combout\,
	ena => \u0|u12|program[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][3][0]~q\);

-- Location: LCCOMB_X40_Y19_N22
\u0|u12|program[1][3][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[1][3][0]~2_combout\ = (\u0|u0|q\(0) & (!\u0|u0|q\(1) & \u0|u12|program[3][3][0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(0),
	datac => \u0|u0|q\(1),
	datad => \u0|u12|program[3][3][0]~2_combout\,
	combout => \u0|u12|program[1][3][0]~2_combout\);

-- Location: FF_X37_Y23_N21
\u0|u12|program[1][3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~0_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][3][0]~q\);

-- Location: LCCOMB_X36_Y20_N12
\u0|u12|program[1][1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[1][1][0]~feeder_combout\ = \u0|u11|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~0_combout\,
	combout => \u0|u12|program[1][1][0]~feeder_combout\);

-- Location: LCCOMB_X38_Y20_N30
\u0|u12|program[1][1][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[1][1][0]~2_combout\ = (!\u0|u0|q\(1) & (\u0|u0|q\(0) & \u0|u12|program[3][1][0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u0|q\(1),
	datac => \u0|u0|q\(0),
	datad => \u0|u12|program[3][1][0]~2_combout\,
	combout => \u0|u12|program[1][1][0]~2_combout\);

-- Location: FF_X36_Y20_N13
\u0|u12|program[1][1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[1][1][0]~feeder_combout\,
	ena => \u0|u12|program[1][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][1][0]~q\);

-- Location: LCCOMB_X38_Y20_N2
\u0|u12|program[0][1][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][1][0]~0_combout\ = (!\u0|u0|q\(1) & (!\u0|u0|q\(0) & \u0|u12|program[3][1][0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u0|q\(1),
	datac => \u0|u0|q\(0),
	datad => \u0|u12|program[3][1][0]~2_combout\,
	combout => \u0|u12|program[0][1][0]~0_combout\);

-- Location: FF_X36_Y20_N19
\u0|u12|program[0][1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~0_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][1][0]~q\);

-- Location: LCCOMB_X36_Y20_N18
\u0|u12|Mux79~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux79~2_combout\ = (\u0|u1|q\(1) & (((\u0|u0|q\(0))))) # (!\u0|u1|q\(1) & ((\u0|u0|q\(0) & (\u0|u12|program[1][1][0]~q\)) # (!\u0|u0|q\(0) & ((\u0|u12|program[0][1][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[1][1][0]~q\,
	datab => \u0|u1|q\(1),
	datac => \u0|u12|program[0][1][0]~q\,
	datad => \u0|u0|q\(0),
	combout => \u0|u12|Mux79~2_combout\);

-- Location: LCCOMB_X37_Y23_N20
\u0|u12|Mux79~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux79~3_combout\ = (\u0|u1|q\(1) & ((\u0|u12|Mux79~2_combout\ & ((\u0|u12|program[1][3][0]~q\))) # (!\u0|u12|Mux79~2_combout\ & (\u0|u12|program[0][3][0]~q\)))) # (!\u0|u1|q\(1) & (((\u0|u12|Mux79~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(1),
	datab => \u0|u12|program[0][3][0]~q\,
	datac => \u0|u12|program[1][3][0]~q\,
	datad => \u0|u12|Mux79~2_combout\,
	combout => \u0|u12|Mux79~3_combout\);

-- Location: LCCOMB_X41_Y23_N20
\u0|u12|program[1][0][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[1][0][0]~feeder_combout\ = \u0|u11|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~0_combout\,
	combout => \u0|u12|program[1][0][0]~feeder_combout\);

-- Location: LCCOMB_X40_Y19_N8
\u0|u12|program[1][0][0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[1][0][0]~3_combout\ = (\u0|u0|q\(0) & (!\u0|u0|q\(1) & \u0|u12|program[3][0][0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(0),
	datac => \u0|u0|q\(1),
	datad => \u0|u12|program[3][0][0]~2_combout\,
	combout => \u0|u12|program[1][0][0]~3_combout\);

-- Location: FF_X41_Y23_N21
\u0|u12|program[1][0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[1][0][0]~feeder_combout\,
	ena => \u0|u12|program[1][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][0][0]~q\);

-- Location: LCCOMB_X40_Y19_N26
\u0|u12|program[1][2][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[1][2][0]~2_combout\ = (\u0|u0|q\(0) & (!\u0|u1|q\(0) & (!\u0|u0|q\(1) & \u0|u12|program[3][2][0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(0),
	datab => \u0|u1|q\(0),
	datac => \u0|u0|q\(1),
	datad => \u0|u12|program[3][2][0]~2_combout\,
	combout => \u0|u12|program[1][2][0]~2_combout\);

-- Location: FF_X40_Y23_N23
\u0|u12|program[1][2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~0_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][2][0]~q\);

-- Location: LCCOMB_X37_Y21_N6
\u0|u12|program[0][0][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][0][0]~1_combout\ = (!\u0|u0|q\(1) & (!\u0|u1|q\(0) & \u0|u12|program[0][0][0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(1),
	datab => \u0|u1|q\(0),
	datad => \u0|u12|program[0][0][0]~0_combout\,
	combout => \u0|u12|program[0][0][0]~1_combout\);

-- Location: FF_X41_Y23_N19
\u0|u12|program[0][0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~0_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][0][0]~q\);

-- Location: LCCOMB_X40_Y23_N12
\u0|u12|program[0][2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][2][0]~feeder_combout\ = \u0|u11|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~0_combout\,
	combout => \u0|u12|program[0][2][0]~feeder_combout\);

-- Location: LCCOMB_X40_Y19_N24
\u0|u12|program[0][2][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][2][0]~0_combout\ = (!\u0|u0|q\(0) & (!\u0|u0|q\(1) & (!\u0|u1|q\(0) & \u0|u12|program[3][2][0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(0),
	datab => \u0|u0|q\(1),
	datac => \u0|u1|q\(0),
	datad => \u0|u12|program[3][2][0]~2_combout\,
	combout => \u0|u12|program[0][2][0]~0_combout\);

-- Location: FF_X40_Y23_N13
\u0|u12|program[0][2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][2][0]~feeder_combout\,
	ena => \u0|u12|program[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][2][0]~q\);

-- Location: LCCOMB_X41_Y23_N18
\u0|u12|Mux79~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux79~4_combout\ = (\u0|u1|q\(1) & ((\u0|u0|q\(0)) # ((\u0|u12|program[0][2][0]~q\)))) # (!\u0|u1|q\(1) & (!\u0|u0|q\(0) & (\u0|u12|program[0][0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(1),
	datab => \u0|u0|q\(0),
	datac => \u0|u12|program[0][0][0]~q\,
	datad => \u0|u12|program[0][2][0]~q\,
	combout => \u0|u12|Mux79~4_combout\);

-- Location: LCCOMB_X40_Y23_N22
\u0|u12|Mux79~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux79~5_combout\ = (\u0|u0|q\(0) & ((\u0|u12|Mux79~4_combout\ & ((\u0|u12|program[1][2][0]~q\))) # (!\u0|u12|Mux79~4_combout\ & (\u0|u12|program[1][0][0]~q\)))) # (!\u0|u0|q\(0) & (((\u0|u12|Mux79~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[1][0][0]~q\,
	datab => \u0|u0|q\(0),
	datac => \u0|u12|program[1][2][0]~q\,
	datad => \u0|u12|Mux79~4_combout\,
	combout => \u0|u12|Mux79~5_combout\);

-- Location: LCCOMB_X39_Y23_N10
\u0|u12|Mux79~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux79~6_combout\ = (\u0|u1|q\(0) & ((\u0|u0|q\(1)) # ((\u0|u12|Mux79~3_combout\)))) # (!\u0|u1|q\(0) & (!\u0|u0|q\(1) & ((\u0|u12|Mux79~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u0|q\(1),
	datac => \u0|u12|Mux79~3_combout\,
	datad => \u0|u12|Mux79~5_combout\,
	combout => \u0|u12|Mux79~6_combout\);

-- Location: LCCOMB_X39_Y23_N0
\u0|u12|Mux79~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux79~9_combout\ = (\u0|u0|q\(1) & ((\u0|u12|Mux79~6_combout\ & ((\u0|u12|Mux79~8_combout\))) # (!\u0|u12|Mux79~6_combout\ & (\u0|u12|Mux79~1_combout\)))) # (!\u0|u0|q\(1) & (((\u0|u12|Mux79~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|Mux79~1_combout\,
	datab => \u0|u0|q\(1),
	datac => \u0|u12|Mux79~8_combout\,
	datad => \u0|u12|Mux79~6_combout\,
	combout => \u0|u12|Mux79~9_combout\);

-- Location: LCCOMB_X41_Y20_N30
\u0|u8|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u8|Mux8~1_combout\ = (\u0|u0|q\(1) & (!\u0|u0|q\(0) & (\u0|u2|q\(1) $ (!\u0|u2|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(1),
	datab => \u0|u0|q\(0),
	datac => \u0|u2|q\(1),
	datad => \u0|u2|q\(0),
	combout => \u0|u8|Mux8~1_combout\);

-- Location: LCCOMB_X41_Y20_N28
\u0|u8|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u8|Mux8~0_combout\ = (!\u0|u0|q\(1) & (\u0|u2|q\(1) & ((!\u0|u0|q\(0)) # (!\u0|u2|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(1),
	datab => \u0|u2|q\(1),
	datac => \u0|u2|q\(0),
	datad => \u0|u0|q\(0),
	combout => \u0|u8|Mux8~0_combout\);

-- Location: LCCOMB_X40_Y20_N18
\u0|u10|Mult0|mult_core|decoder_node[0][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u10|Mult0|mult_core|decoder_node[0][1]~combout\ = (!\u0|u2|q\(2) & (\u0|u9|Mux5~0_combout\ & ((\u0|u8|Mux8~1_combout\) # (\u0|u8|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|q\(2),
	datab => \u0|u9|Mux5~0_combout\,
	datac => \u0|u8|Mux8~1_combout\,
	datad => \u0|u8|Mux8~0_combout\,
	combout => \u0|u10|Mult0|mult_core|decoder_node[0][1]~combout\);

-- Location: LCCOMB_X40_Y20_N0
\u0|u9|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u9|Mux4~0_combout\ = (\u0|u2|q\(1) & (\u0|u1|q\(0) & (!\u0|u1|q\(1) & !\u0|u2|q\(0)))) # (!\u0|u2|q\(1) & (!\u0|u1|q\(0) & ((!\u0|u2|q\(0)) # (!\u0|u1|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|q\(1),
	datab => \u0|u1|q\(0),
	datac => \u0|u1|q\(1),
	datad => \u0|u2|q\(0),
	combout => \u0|u9|Mux4~0_combout\);

-- Location: LCCOMB_X40_Y20_N16
\u0|u10|Mult0|mult_core|decoder_node[1][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u10|Mult0|mult_core|decoder_node[1][0]~combout\ = (!\u0|u2|q\(2) & (\u0|u9|Mux4~0_combout\ & \u0|u8|Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|q\(2),
	datab => \u0|u9|Mux4~0_combout\,
	datad => \u0|u8|Mux9~0_combout\,
	combout => \u0|u10|Mult0|mult_core|decoder_node[1][0]~combout\);

-- Location: LCCOMB_X40_Y20_N22
\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\u0|u10|Mult0|mult_core|decoder_node[0][1]~combout\ & (\u0|u10|Mult0|mult_core|decoder_node[1][0]~combout\ $ (VCC))) # (!\u0|u10|Mult0|mult_core|decoder_node[0][1]~combout\ & 
-- (\u0|u10|Mult0|mult_core|decoder_node[1][0]~combout\ & VCC))
-- \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\u0|u10|Mult0|mult_core|decoder_node[0][1]~combout\ & \u0|u10|Mult0|mult_core|decoder_node[1][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u10|Mult0|mult_core|decoder_node[0][1]~combout\,
	datab => \u0|u10|Mult0|mult_core|decoder_node[1][0]~combout\,
	datad => VCC,
	combout => \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X39_Y21_N2
\u0|u11|c[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|c[1]~2_combout\ = (\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & ((\u0|u12|Mux78~9_combout\ & (\u0|u11|c[0]~1\ & VCC)) # (!\u0|u12|Mux78~9_combout\ & (!\u0|u11|c[0]~1\)))) # 
-- (!\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & ((\u0|u12|Mux78~9_combout\ & (!\u0|u11|c[0]~1\)) # (!\u0|u12|Mux78~9_combout\ & ((\u0|u11|c[0]~1\) # (GND)))))
-- \u0|u11|c[1]~3\ = CARRY((\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & (!\u0|u12|Mux78~9_combout\ & !\u0|u11|c[0]~1\)) # (!\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & ((!\u0|u11|c[0]~1\) # 
-- (!\u0|u12|Mux78~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datab => \u0|u12|Mux78~9_combout\,
	datad => VCC,
	cin => \u0|u11|c[0]~1\,
	combout => \u0|u11|c[1]~2_combout\,
	cout => \u0|u11|c[1]~3\);

-- Location: LCCOMB_X38_Y21_N20
\u0|u11|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|Add0~1_combout\ = (!\u1|current_state.s6~q\ & \u0|u11|c[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|current_state.s6~q\,
	datad => \u0|u11|c[1]~2_combout\,
	combout => \u0|u11|Add0~1_combout\);

-- Location: LCCOMB_X38_Y20_N12
\u0|u12|program[3][1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[3][1][1]~feeder_combout\ = \u0|u11|Add0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~1_combout\,
	combout => \u0|u12|program[3][1][1]~feeder_combout\);

-- Location: FF_X38_Y20_N13
\u0|u12|program[3][1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[3][1][1]~feeder_combout\,
	ena => \u0|u12|program[3][1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][1][1]~q\);

-- Location: FF_X38_Y22_N1
\u0|u12|program[3][0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~1_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][0][1]~q\);

-- Location: LCCOMB_X38_Y23_N30
\u0|u12|program[1][1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[1][1][1]~feeder_combout\ = \u0|u11|Add0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~1_combout\,
	combout => \u0|u12|program[1][1][1]~feeder_combout\);

-- Location: FF_X38_Y23_N31
\u0|u12|program[1][1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[1][1][1]~feeder_combout\,
	ena => \u0|u12|program[1][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][1][1]~q\);

-- Location: FF_X38_Y22_N11
\u0|u12|program[1][0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~1_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][0][1]~q\);

-- Location: LCCOMB_X38_Y22_N10
\u0|u12|Mux78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux78~0_combout\ = (\u0|u0|q\(1) & (((\u0|u1|q\(0))))) # (!\u0|u0|q\(1) & ((\u0|u1|q\(0) & (\u0|u12|program[1][1][1]~q\)) # (!\u0|u1|q\(0) & ((\u0|u12|program[1][0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[1][1][1]~q\,
	datab => \u0|u0|q\(1),
	datac => \u0|u12|program[1][0][1]~q\,
	datad => \u0|u1|q\(0),
	combout => \u0|u12|Mux78~0_combout\);

-- Location: LCCOMB_X38_Y22_N0
\u0|u12|Mux78~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux78~1_combout\ = (\u0|u0|q\(1) & ((\u0|u12|Mux78~0_combout\ & (\u0|u12|program[3][1][1]~q\)) # (!\u0|u12|Mux78~0_combout\ & ((\u0|u12|program[3][0][1]~q\))))) # (!\u0|u0|q\(1) & (((\u0|u12|Mux78~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[3][1][1]~q\,
	datab => \u0|u0|q\(1),
	datac => \u0|u12|program[3][0][1]~q\,
	datad => \u0|u12|Mux78~0_combout\,
	combout => \u0|u12|Mux78~1_combout\);

-- Location: LCCOMB_X39_Y23_N18
\u0|u12|program[0][3][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][3][1]~feeder_combout\ = \u0|u11|Add0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~1_combout\,
	combout => \u0|u12|program[0][3][1]~feeder_combout\);

-- Location: FF_X39_Y23_N19
\u0|u12|program[0][3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][3][1]~feeder_combout\,
	ena => \u0|u12|program[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][3][1]~q\);

-- Location: FF_X38_Y23_N5
\u0|u12|program[2][3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~1_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][3][1]~q\);

-- Location: LCCOMB_X36_Y21_N8
\u0|u12|program[2][2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][2][1]~feeder_combout\ = \u0|u11|Add0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~1_combout\,
	combout => \u0|u12|program[2][2][1]~feeder_combout\);

-- Location: FF_X36_Y21_N9
\u0|u12|program[2][2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[2][2][1]~feeder_combout\,
	ena => \u0|u12|program[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][2][1]~q\);

-- Location: FF_X39_Y23_N5
\u0|u12|program[0][2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~1_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][2][1]~q\);

-- Location: LCCOMB_X39_Y23_N4
\u0|u12|Mux78~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux78~2_combout\ = (\u0|u1|q\(0) & (((\u0|u0|q\(1))))) # (!\u0|u1|q\(0) & ((\u0|u0|q\(1) & (\u0|u12|program[2][2][1]~q\)) # (!\u0|u0|q\(1) & ((\u0|u12|program[0][2][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u12|program[2][2][1]~q\,
	datac => \u0|u12|program[0][2][1]~q\,
	datad => \u0|u0|q\(1),
	combout => \u0|u12|Mux78~2_combout\);

-- Location: LCCOMB_X38_Y23_N4
\u0|u12|Mux78~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux78~3_combout\ = (\u0|u1|q\(0) & ((\u0|u12|Mux78~2_combout\ & ((\u0|u12|program[2][3][1]~q\))) # (!\u0|u12|Mux78~2_combout\ & (\u0|u12|program[0][3][1]~q\)))) # (!\u0|u1|q\(0) & (((\u0|u12|Mux78~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u12|program[0][3][1]~q\,
	datac => \u0|u12|program[2][3][1]~q\,
	datad => \u0|u12|Mux78~2_combout\,
	combout => \u0|u12|Mux78~3_combout\);

-- Location: LCCOMB_X35_Y21_N20
\u0|u12|program[0][1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][1][1]~feeder_combout\ = \u0|u11|Add0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~1_combout\,
	combout => \u0|u12|program[0][1][1]~feeder_combout\);

-- Location: FF_X35_Y21_N21
\u0|u12|program[0][1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][1][1]~feeder_combout\,
	ena => \u0|u12|program[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][1][1]~q\);

-- Location: FF_X37_Y21_N3
\u0|u12|program[2][1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~1_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][1][1]~q\);

-- Location: LCCOMB_X41_Y21_N12
\u0|u12|program[2][0][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][0][1]~feeder_combout\ = \u0|u11|Add0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~1_combout\,
	combout => \u0|u12|program[2][0][1]~feeder_combout\);

-- Location: FF_X41_Y21_N13
\u0|u12|program[2][0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[2][0][1]~feeder_combout\,
	ena => \u0|u12|program[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][0][1]~q\);

-- Location: FF_X37_Y21_N21
\u0|u12|program[0][0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~1_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][0][1]~q\);

-- Location: LCCOMB_X37_Y21_N20
\u0|u12|Mux78~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux78~4_combout\ = (\u0|u0|q\(1) & ((\u0|u12|program[2][0][1]~q\) # ((\u0|u1|q\(0))))) # (!\u0|u0|q\(1) & (((\u0|u12|program[0][0][1]~q\ & !\u0|u1|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(1),
	datab => \u0|u12|program[2][0][1]~q\,
	datac => \u0|u12|program[0][0][1]~q\,
	datad => \u0|u1|q\(0),
	combout => \u0|u12|Mux78~4_combout\);

-- Location: LCCOMB_X37_Y21_N2
\u0|u12|Mux78~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux78~5_combout\ = (\u0|u1|q\(0) & ((\u0|u12|Mux78~4_combout\ & ((\u0|u12|program[2][1][1]~q\))) # (!\u0|u12|Mux78~4_combout\ & (\u0|u12|program[0][1][1]~q\)))) # (!\u0|u1|q\(0) & (((\u0|u12|Mux78~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u12|program[0][1][1]~q\,
	datac => \u0|u12|program[2][1][1]~q\,
	datad => \u0|u12|Mux78~4_combout\,
	combout => \u0|u12|Mux78~5_combout\);

-- Location: LCCOMB_X38_Y23_N26
\u0|u12|Mux78~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux78~6_combout\ = (\u0|u0|q\(0) & (\u0|u1|q\(1))) # (!\u0|u0|q\(0) & ((\u0|u1|q\(1) & (\u0|u12|Mux78~3_combout\)) # (!\u0|u1|q\(1) & ((\u0|u12|Mux78~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(0),
	datab => \u0|u1|q\(1),
	datac => \u0|u12|Mux78~3_combout\,
	datad => \u0|u12|Mux78~5_combout\,
	combout => \u0|u12|Mux78~6_combout\);

-- Location: FF_X38_Y21_N21
\u0|u12|program[3][3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u11|Add0~1_combout\,
	ena => \u0|u12|program[3][3][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][3][1]~q\);

-- Location: FF_X38_Y21_N11
\u0|u12|program[3][2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~1_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][2][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][2][1]~q\);

-- Location: LCCOMB_X37_Y23_N26
\u0|u12|program[1][3][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[1][3][1]~feeder_combout\ = \u0|u11|Add0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~1_combout\,
	combout => \u0|u12|program[1][3][1]~feeder_combout\);

-- Location: FF_X37_Y23_N27
\u0|u12|program[1][3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[1][3][1]~feeder_combout\,
	ena => \u0|u12|program[1][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][3][1]~q\);

-- Location: FF_X37_Y23_N29
\u0|u12|program[1][2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~1_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][2][1]~q\);

-- Location: LCCOMB_X37_Y23_N28
\u0|u12|Mux78~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux78~7_combout\ = (\u0|u0|q\(1) & (((\u0|u1|q\(0))))) # (!\u0|u0|q\(1) & ((\u0|u1|q\(0) & (\u0|u12|program[1][3][1]~q\)) # (!\u0|u1|q\(0) & ((\u0|u12|program[1][2][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[1][3][1]~q\,
	datab => \u0|u0|q\(1),
	datac => \u0|u12|program[1][2][1]~q\,
	datad => \u0|u1|q\(0),
	combout => \u0|u12|Mux78~7_combout\);

-- Location: LCCOMB_X38_Y21_N10
\u0|u12|Mux78~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux78~8_combout\ = (\u0|u0|q\(1) & ((\u0|u12|Mux78~7_combout\ & (\u0|u12|program[3][3][1]~q\)) # (!\u0|u12|Mux78~7_combout\ & ((\u0|u12|program[3][2][1]~q\))))) # (!\u0|u0|q\(1) & (((\u0|u12|Mux78~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(1),
	datab => \u0|u12|program[3][3][1]~q\,
	datac => \u0|u12|program[3][2][1]~q\,
	datad => \u0|u12|Mux78~7_combout\,
	combout => \u0|u12|Mux78~8_combout\);

-- Location: LCCOMB_X38_Y23_N28
\u0|u12|Mux78~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux78~9_combout\ = (\u0|u0|q\(0) & ((\u0|u12|Mux78~6_combout\ & ((\u0|u12|Mux78~8_combout\))) # (!\u0|u12|Mux78~6_combout\ & (\u0|u12|Mux78~1_combout\)))) # (!\u0|u0|q\(0) & (((\u0|u12|Mux78~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(0),
	datab => \u0|u12|Mux78~1_combout\,
	datac => \u0|u12|Mux78~6_combout\,
	datad => \u0|u12|Mux78~8_combout\,
	combout => \u0|u12|Mux78~9_combout\);

-- Location: LCCOMB_X41_Y20_N26
\u0|u9|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u9|Mux3~0_combout\ = (!\u0|u2|q\(2) & ((!\u0|u2|q\(0)) # (!\u0|u2|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u2|q\(1),
	datac => \u0|u2|q\(2),
	datad => \u0|u2|q\(0),
	combout => \u0|u9|Mux3~0_combout\);

-- Location: LCCOMB_X39_Y20_N16
\u0|u10|Mult0|mult_core|decoder_node[2][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u10|Mult0|mult_core|decoder_node[2][0]~combout\ = (\u0|u1|q\(0) & (\u0|u8|Mux9~0_combout\ & (!\u0|u1|q\(1) & \u0|u9|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u8|Mux9~0_combout\,
	datac => \u0|u1|q\(1),
	datad => \u0|u9|Mux3~0_combout\,
	combout => \u0|u10|Mult0|mult_core|decoder_node[2][0]~combout\);

-- Location: LCCOMB_X40_Y20_N20
\u0|u10|Mult0|mult_core|decoder_node[1][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u10|Mult0|mult_core|decoder_node[1][1]~combout\ = (!\u0|u2|q\(2) & (\u0|u9|Mux4~0_combout\ & ((\u0|u8|Mux8~1_combout\) # (\u0|u8|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|q\(2),
	datab => \u0|u9|Mux4~0_combout\,
	datac => \u0|u8|Mux8~1_combout\,
	datad => \u0|u8|Mux8~0_combout\,
	combout => \u0|u10|Mult0|mult_core|decoder_node[1][1]~combout\);

-- Location: LCCOMB_X41_Y20_N24
\u0|u10|Mult0|mult_core|decoder_node[0][2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u10|Mult0|mult_core|decoder_node[0][2]~3_combout\ = (!\u0|u0|q\(1) & (\u0|u2|q\(1) & \u0|u2|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(1),
	datab => \u0|u2|q\(1),
	datad => \u0|u2|q\(0),
	combout => \u0|u10|Mult0|mult_core|decoder_node[0][2]~3_combout\);

-- Location: LCCOMB_X40_Y20_N2
\u0|u10|Mult0|mult_core|decoder_node[0][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u10|Mult0|mult_core|decoder_node[0][2]~combout\ = (!\u0|u2|q\(2) & (\u0|u9|Mux5~0_combout\ & \u0|u10|Mult0|mult_core|decoder_node[0][2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|q\(2),
	datab => \u0|u9|Mux5~0_combout\,
	datad => \u0|u10|Mult0|mult_core|decoder_node[0][2]~3_combout\,
	combout => \u0|u10|Mult0|mult_core|decoder_node[0][2]~combout\);

-- Location: LCCOMB_X40_Y20_N24
\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\u0|u10|Mult0|mult_core|decoder_node[1][1]~combout\ & ((\u0|u10|Mult0|mult_core|decoder_node[0][2]~combout\ & (\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) 
-- # (!\u0|u10|Mult0|mult_core|decoder_node[0][2]~combout\ & (!\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\u0|u10|Mult0|mult_core|decoder_node[1][1]~combout\ & ((\u0|u10|Mult0|mult_core|decoder_node[0][2]~combout\ & 
-- (!\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\u0|u10|Mult0|mult_core|decoder_node[0][2]~combout\ & ((\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\u0|u10|Mult0|mult_core|decoder_node[1][1]~combout\ & (!\u0|u10|Mult0|mult_core|decoder_node[0][2]~combout\ & !\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\u0|u10|Mult0|mult_core|decoder_node[1][1]~combout\ & ((!\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\u0|u10|Mult0|mult_core|decoder_node[0][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u10|Mult0|mult_core|decoder_node[1][1]~combout\,
	datab => \u0|u10|Mult0|mult_core|decoder_node[0][2]~combout\,
	datad => VCC,
	cin => \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X40_Y20_N4
\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ = (\u0|u10|Mult0|mult_core|decoder_node[2][0]~combout\ & (\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ $ (VCC))) # 
-- (!\u0|u10|Mult0|mult_core|decoder_node[2][0]~combout\ & (\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & VCC))
-- \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ = CARRY((\u0|u10|Mult0|mult_core|decoder_node[2][0]~combout\ & \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u10|Mult0|mult_core|decoder_node[2][0]~combout\,
	datab => \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	combout => \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	cout => \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X39_Y21_N4
\u0|u11|c[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|c[2]~4_combout\ = ((\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ $ (\u0|u12|Mux77~9_combout\ $ (!\u0|u11|c[1]~3\)))) # (GND)
-- \u0|u11|c[2]~5\ = CARRY((\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & ((\u0|u12|Mux77~9_combout\) # (!\u0|u11|c[1]~3\))) # (!\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & 
-- (\u0|u12|Mux77~9_combout\ & !\u0|u11|c[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datab => \u0|u12|Mux77~9_combout\,
	datad => VCC,
	cin => \u0|u11|c[1]~3\,
	combout => \u0|u11|c[2]~4_combout\,
	cout => \u0|u11|c[2]~5\);

-- Location: LCCOMB_X38_Y21_N8
\u0|u11|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|Add0~2_combout\ = (!\u1|current_state.s6~q\ & \u0|u11|c[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|current_state.s6~q\,
	datad => \u0|u11|c[2]~4_combout\,
	combout => \u0|u11|Add0~2_combout\);

-- Location: LCCOMB_X38_Y21_N16
\u0|u12|program[3][3][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[3][3][2]~feeder_combout\ = \u0|u11|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~2_combout\,
	combout => \u0|u12|program[3][3][2]~feeder_combout\);

-- Location: FF_X38_Y21_N17
\u0|u12|program[3][3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[3][3][2]~feeder_combout\,
	ena => \u0|u12|program[3][3][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][3][2]~q\);

-- Location: FF_X38_Y20_N5
\u0|u12|program[3][1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~2_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][1][2]~q\);

-- Location: FF_X38_Y20_N19
\u0|u12|program[2][1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~2_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][1][2]~q\);

-- Location: LCCOMB_X38_Y23_N8
\u0|u12|program[2][3][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][3][2]~feeder_combout\ = \u0|u11|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~2_combout\,
	combout => \u0|u12|program[2][3][2]~feeder_combout\);

-- Location: FF_X38_Y23_N9
\u0|u12|program[2][3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[2][3][2]~feeder_combout\,
	ena => \u0|u12|program[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][3][2]~q\);

-- Location: LCCOMB_X38_Y20_N18
\u0|u12|Mux77~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux77~7_combout\ = (\u0|u0|q\(0) & (\u0|u1|q\(1))) # (!\u0|u0|q\(0) & ((\u0|u1|q\(1) & ((\u0|u12|program[2][3][2]~q\))) # (!\u0|u1|q\(1) & (\u0|u12|program[2][1][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(0),
	datab => \u0|u1|q\(1),
	datac => \u0|u12|program[2][1][2]~q\,
	datad => \u0|u12|program[2][3][2]~q\,
	combout => \u0|u12|Mux77~7_combout\);

-- Location: LCCOMB_X38_Y20_N4
\u0|u12|Mux77~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux77~8_combout\ = (\u0|u0|q\(0) & ((\u0|u12|Mux77~7_combout\ & (\u0|u12|program[3][3][2]~q\)) # (!\u0|u12|Mux77~7_combout\ & ((\u0|u12|program[3][1][2]~q\))))) # (!\u0|u0|q\(0) & (((\u0|u12|Mux77~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(0),
	datab => \u0|u12|program[3][3][2]~q\,
	datac => \u0|u12|program[3][1][2]~q\,
	datad => \u0|u12|Mux77~7_combout\,
	combout => \u0|u12|Mux77~8_combout\);

-- Location: LCCOMB_X38_Y23_N22
\u0|u12|program[1][1][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[1][1][2]~feeder_combout\ = \u0|u11|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~2_combout\,
	combout => \u0|u12|program[1][1][2]~feeder_combout\);

-- Location: FF_X38_Y23_N23
\u0|u12|program[1][1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[1][1][2]~feeder_combout\,
	ena => \u0|u12|program[1][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][1][2]~q\);

-- Location: FF_X37_Y23_N23
\u0|u12|program[1][3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~2_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][3][2]~q\);

-- Location: FF_X37_Y20_N25
\u0|u12|program[0][1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~2_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][1][2]~q\);

-- Location: LCCOMB_X36_Y22_N20
\u0|u12|program[0][3][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][3][2]~feeder_combout\ = \u0|u11|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~2_combout\,
	combout => \u0|u12|program[0][3][2]~feeder_combout\);

-- Location: FF_X36_Y22_N21
\u0|u12|program[0][3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][3][2]~feeder_combout\,
	ena => \u0|u12|program[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][3][2]~q\);

-- Location: LCCOMB_X37_Y20_N24
\u0|u12|Mux77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux77~0_combout\ = (\u0|u0|q\(0) & (\u0|u1|q\(1))) # (!\u0|u0|q\(0) & ((\u0|u1|q\(1) & ((\u0|u12|program[0][3][2]~q\))) # (!\u0|u1|q\(1) & (\u0|u12|program[0][1][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(0),
	datab => \u0|u1|q\(1),
	datac => \u0|u12|program[0][1][2]~q\,
	datad => \u0|u12|program[0][3][2]~q\,
	combout => \u0|u12|Mux77~0_combout\);

-- Location: LCCOMB_X37_Y23_N22
\u0|u12|Mux77~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux77~1_combout\ = (\u0|u0|q\(0) & ((\u0|u12|Mux77~0_combout\ & ((\u0|u12|program[1][3][2]~q\))) # (!\u0|u12|Mux77~0_combout\ & (\u0|u12|program[1][1][2]~q\)))) # (!\u0|u0|q\(0) & (((\u0|u12|Mux77~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(0),
	datab => \u0|u12|program[1][1][2]~q\,
	datac => \u0|u12|program[1][3][2]~q\,
	datad => \u0|u12|Mux77~0_combout\,
	combout => \u0|u12|Mux77~1_combout\);

-- Location: LCCOMB_X39_Y23_N22
\u0|u12|program[0][2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][2][2]~feeder_combout\ = \u0|u11|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~2_combout\,
	combout => \u0|u12|program[0][2][2]~feeder_combout\);

-- Location: FF_X39_Y23_N23
\u0|u12|program[0][2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][2][2]~feeder_combout\,
	ena => \u0|u12|program[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][2][2]~q\);

-- Location: FF_X37_Y23_N13
\u0|u12|program[1][2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~2_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][2][2]~q\);

-- Location: LCCOMB_X41_Y23_N0
\u0|u12|program[1][0][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[1][0][2]~feeder_combout\ = \u0|u11|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~2_combout\,
	combout => \u0|u12|program[1][0][2]~feeder_combout\);

-- Location: FF_X41_Y23_N1
\u0|u12|program[1][0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[1][0][2]~feeder_combout\,
	ena => \u0|u12|program[1][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][0][2]~q\);

-- Location: FF_X41_Y23_N27
\u0|u12|program[0][0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~2_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][0][2]~q\);

-- Location: LCCOMB_X41_Y23_N26
\u0|u12|Mux77~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux77~4_combout\ = (\u0|u1|q\(1) & (((\u0|u0|q\(0))))) # (!\u0|u1|q\(1) & ((\u0|u0|q\(0) & (\u0|u12|program[1][0][2]~q\)) # (!\u0|u0|q\(0) & ((\u0|u12|program[0][0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[1][0][2]~q\,
	datab => \u0|u1|q\(1),
	datac => \u0|u12|program[0][0][2]~q\,
	datad => \u0|u0|q\(0),
	combout => \u0|u12|Mux77~4_combout\);

-- Location: LCCOMB_X37_Y23_N12
\u0|u12|Mux77~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux77~5_combout\ = (\u0|u1|q\(1) & ((\u0|u12|Mux77~4_combout\ & ((\u0|u12|program[1][2][2]~q\))) # (!\u0|u12|Mux77~4_combout\ & (\u0|u12|program[0][2][2]~q\)))) # (!\u0|u1|q\(1) & (((\u0|u12|Mux77~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(1),
	datab => \u0|u12|program[0][2][2]~q\,
	datac => \u0|u12|program[1][2][2]~q\,
	datad => \u0|u12|Mux77~4_combout\,
	combout => \u0|u12|Mux77~5_combout\);

-- Location: LCCOMB_X36_Y21_N2
\u0|u12|program[2][2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][2][2]~feeder_combout\ = \u0|u11|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~2_combout\,
	combout => \u0|u12|program[2][2][2]~feeder_combout\);

-- Location: FF_X36_Y21_N3
\u0|u12|program[2][2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[2][2][2]~feeder_combout\,
	ena => \u0|u12|program[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][2][2]~q\);

-- Location: FF_X38_Y21_N27
\u0|u12|program[3][2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~2_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][2][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][2][2]~q\);

-- Location: FF_X39_Y21_N15
\u0|u12|program[3][0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~2_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][0][2]~q\);

-- Location: FF_X39_Y20_N15
\u0|u12|program[2][0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~2_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][0][2]~q\);

-- Location: LCCOMB_X39_Y20_N14
\u0|u12|Mux77~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux77~2_combout\ = (\u0|u1|q\(1) & (((\u0|u0|q\(0))))) # (!\u0|u1|q\(1) & ((\u0|u0|q\(0) & (\u0|u12|program[3][0][2]~q\)) # (!\u0|u0|q\(0) & ((\u0|u12|program[2][0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[3][0][2]~q\,
	datab => \u0|u1|q\(1),
	datac => \u0|u12|program[2][0][2]~q\,
	datad => \u0|u0|q\(0),
	combout => \u0|u12|Mux77~2_combout\);

-- Location: LCCOMB_X38_Y21_N26
\u0|u12|Mux77~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux77~3_combout\ = (\u0|u1|q\(1) & ((\u0|u12|Mux77~2_combout\ & ((\u0|u12|program[3][2][2]~q\))) # (!\u0|u12|Mux77~2_combout\ & (\u0|u12|program[2][2][2]~q\)))) # (!\u0|u1|q\(1) & (((\u0|u12|Mux77~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(1),
	datab => \u0|u12|program[2][2][2]~q\,
	datac => \u0|u12|program[3][2][2]~q\,
	datad => \u0|u12|Mux77~2_combout\,
	combout => \u0|u12|Mux77~3_combout\);

-- Location: LCCOMB_X38_Y20_N10
\u0|u12|Mux77~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux77~6_combout\ = (\u0|u1|q\(0) & (\u0|u0|q\(1))) # (!\u0|u1|q\(0) & ((\u0|u0|q\(1) & ((\u0|u12|Mux77~3_combout\))) # (!\u0|u0|q\(1) & (\u0|u12|Mux77~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u0|q\(1),
	datac => \u0|u12|Mux77~5_combout\,
	datad => \u0|u12|Mux77~3_combout\,
	combout => \u0|u12|Mux77~6_combout\);

-- Location: LCCOMB_X38_Y20_N16
\u0|u12|Mux77~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux77~9_combout\ = (\u0|u1|q\(0) & ((\u0|u12|Mux77~6_combout\ & (\u0|u12|Mux77~8_combout\)) # (!\u0|u12|Mux77~6_combout\ & ((\u0|u12|Mux77~1_combout\))))) # (!\u0|u1|q\(0) & (((\u0|u12|Mux77~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u12|Mux77~8_combout\,
	datac => \u0|u12|Mux77~1_combout\,
	datad => \u0|u12|Mux77~6_combout\,
	combout => \u0|u12|Mux77~9_combout\);

-- Location: LCCOMB_X40_Y19_N28
\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|~QUARTUS_CREATED_GND~I\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|~QUARTUS_CREATED_GND~I_combout\);

-- Location: LCCOMB_X41_Y20_N22
\u0|u12|program[1][0][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[1][0][0]~2_combout\ = (!\u0|u0|q\(1) & \u0|u0|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u0|q\(1),
	datad => \u0|u0|q\(0),
	combout => \u0|u12|program[1][0][0]~2_combout\);

-- Location: LCCOMB_X41_Y20_N0
\u0|u10|Mult0|mult_core|decoder_node[0][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u10|Mult0|mult_core|decoder_node[0][3]~combout\ = (!\u0|u2|q\(2) & (\u0|u12|program[1][0][0]~2_combout\ & (\u0|u9|Mux3~0_combout\ & \u0|u9|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|q\(2),
	datab => \u0|u12|program[1][0][0]~2_combout\,
	datac => \u0|u9|Mux3~0_combout\,
	datad => \u0|u9|Mux5~0_combout\,
	combout => \u0|u10|Mult0|mult_core|decoder_node[0][3]~combout\);

-- Location: LCCOMB_X40_Y20_N26
\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|~QUARTUS_CREATED_GND~I_combout\ $ (\u0|u10|Mult0|mult_core|decoder_node[0][3]~combout\ $ 
-- (!\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|~QUARTUS_CREATED_GND~I_combout\ & ((\u0|u10|Mult0|mult_core|decoder_node[0][3]~combout\) # 
-- (!\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # (!\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|~QUARTUS_CREATED_GND~I_combout\ & (\u0|u10|Mult0|mult_core|decoder_node[0][3]~combout\ & 
-- !\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|~QUARTUS_CREATED_GND~I_combout\,
	datab => \u0|u10|Mult0|mult_core|decoder_node[0][3]~combout\,
	datad => VCC,
	cin => \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X41_Y20_N4
\u0|u8|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u8|Mux8~2_combout\ = (\u0|u8|Mux8~0_combout\) # ((\u0|u8|Mux8~1_combout\ & !\u0|u2|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u8|Mux8~1_combout\,
	datac => \u0|u2|q\(2),
	datad => \u0|u8|Mux8~0_combout\,
	combout => \u0|u8|Mux8~2_combout\);

-- Location: LCCOMB_X39_Y20_N22
\u0|u10|Mult0|mult_core|decoder_node[2][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u10|Mult0|mult_core|decoder_node[2][1]~combout\ = (\u0|u1|q\(0) & (!\u0|u1|q\(1) & (\u0|u8|Mux8~2_combout\ & \u0|u9|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u1|q\(1),
	datac => \u0|u8|Mux8~2_combout\,
	datad => \u0|u9|Mux3~0_combout\,
	combout => \u0|u10|Mult0|mult_core|decoder_node[2][1]~combout\);

-- Location: LCCOMB_X40_Y20_N6
\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ = (\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\u0|u10|Mult0|mult_core|decoder_node[2][1]~combout\ & 
-- (\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\u0|u10|Mult0|mult_core|decoder_node[2][1]~combout\ & (!\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)))) # 
-- (!\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\u0|u10|Mult0|mult_core|decoder_node[2][1]~combout\ & (!\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # 
-- (!\u0|u10|Mult0|mult_core|decoder_node[2][1]~combout\ & ((\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ = CARRY((\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (!\u0|u10|Mult0|mult_core|decoder_node[2][1]~combout\ & 
-- !\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((!\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # 
-- (!\u0|u10|Mult0|mult_core|decoder_node[2][1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datab => \u0|u10|Mult0|mult_core|decoder_node[2][1]~combout\,
	datad => VCC,
	cin => \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\,
	combout => \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	cout => \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X39_Y21_N6
\u0|u11|c[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|c[3]~6_combout\ = (\u0|u12|Mux76~9_combout\ & ((\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & (\u0|u11|c[2]~5\ & VCC)) # (!\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & 
-- (!\u0|u11|c[2]~5\)))) # (!\u0|u12|Mux76~9_combout\ & ((\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & (!\u0|u11|c[2]~5\)) # (!\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & 
-- ((\u0|u11|c[2]~5\) # (GND)))))
-- \u0|u11|c[3]~7\ = CARRY((\u0|u12|Mux76~9_combout\ & (!\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & !\u0|u11|c[2]~5\)) # (!\u0|u12|Mux76~9_combout\ & ((!\u0|u11|c[2]~5\) # 
-- (!\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|Mux76~9_combout\,
	datab => \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \u0|u11|c[2]~5\,
	combout => \u0|u11|c[3]~6_combout\,
	cout => \u0|u11|c[3]~7\);

-- Location: LCCOMB_X40_Y21_N18
\u0|u11|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|Add0~3_combout\ = (\u0|u11|c[3]~6_combout\ & !\u1|current_state.s6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|u11|c[3]~6_combout\,
	datad => \u1|current_state.s6~q\,
	combout => \u0|u11|Add0~3_combout\);

-- Location: LCCOMB_X40_Y21_N26
\u0|u12|program[3][3][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[3][3][3]~feeder_combout\ = \u0|u11|Add0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~3_combout\,
	combout => \u0|u12|program[3][3][3]~feeder_combout\);

-- Location: FF_X40_Y21_N27
\u0|u12|program[3][3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[3][3][3]~feeder_combout\,
	ena => \u0|u12|program[3][3][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][3][3]~q\);

-- Location: FF_X37_Y23_N11
\u0|u12|program[1][3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~3_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][3][3]~q\);

-- Location: FF_X40_Y20_N3
\u0|u12|program[3][2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~3_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][2][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][2][3]~q\);

-- Location: FF_X37_Y23_N17
\u0|u12|program[1][2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~3_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][2][3]~q\);

-- Location: LCCOMB_X37_Y23_N16
\u0|u12|Mux76~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux76~7_combout\ = (\u0|u0|q\(1) & ((\u0|u12|program[3][2][3]~q\) # ((\u0|u1|q\(0))))) # (!\u0|u0|q\(1) & (((\u0|u12|program[1][2][3]~q\ & !\u0|u1|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[3][2][3]~q\,
	datab => \u0|u0|q\(1),
	datac => \u0|u12|program[1][2][3]~q\,
	datad => \u0|u1|q\(0),
	combout => \u0|u12|Mux76~7_combout\);

-- Location: LCCOMB_X37_Y23_N10
\u0|u12|Mux76~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux76~8_combout\ = (\u0|u1|q\(0) & ((\u0|u12|Mux76~7_combout\ & (\u0|u12|program[3][3][3]~q\)) # (!\u0|u12|Mux76~7_combout\ & ((\u0|u12|program[1][3][3]~q\))))) # (!\u0|u1|q\(0) & (((\u0|u12|Mux76~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u12|program[3][3][3]~q\,
	datac => \u0|u12|program[1][3][3]~q\,
	datad => \u0|u12|Mux76~7_combout\,
	combout => \u0|u12|Mux76~8_combout\);

-- Location: LCCOMB_X40_Y22_N16
\u0|u12|program[2][3][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][3][3]~feeder_combout\ = \u0|u11|Add0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~3_combout\,
	combout => \u0|u12|program[2][3][3]~feeder_combout\);

-- Location: FF_X40_Y22_N17
\u0|u12|program[2][3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[2][3][3]~feeder_combout\,
	ena => \u0|u12|program[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][3][3]~q\);

-- Location: FF_X36_Y21_N17
\u0|u12|program[2][2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~3_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][2][3]~q\);

-- Location: LCCOMB_X39_Y23_N16
\u0|u12|program[0][3][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][3][3]~feeder_combout\ = \u0|u11|Add0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~3_combout\,
	combout => \u0|u12|program[0][3][3]~feeder_combout\);

-- Location: FF_X39_Y23_N17
\u0|u12|program[0][3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][3][3]~feeder_combout\,
	ena => \u0|u12|program[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][3][3]~q\);

-- Location: FF_X39_Y23_N3
\u0|u12|program[0][2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~3_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][2][3]~q\);

-- Location: LCCOMB_X39_Y23_N2
\u0|u12|Mux76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux76~0_combout\ = (\u0|u1|q\(0) & ((\u0|u12|program[0][3][3]~q\) # ((\u0|u0|q\(1))))) # (!\u0|u1|q\(0) & (((\u0|u12|program[0][2][3]~q\ & !\u0|u0|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u12|program[0][3][3]~q\,
	datac => \u0|u12|program[0][2][3]~q\,
	datad => \u0|u0|q\(1),
	combout => \u0|u12|Mux76~0_combout\);

-- Location: LCCOMB_X36_Y21_N16
\u0|u12|Mux76~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux76~1_combout\ = (\u0|u0|q\(1) & ((\u0|u12|Mux76~0_combout\ & (\u0|u12|program[2][3][3]~q\)) # (!\u0|u12|Mux76~0_combout\ & ((\u0|u12|program[2][2][3]~q\))))) # (!\u0|u0|q\(1) & (((\u0|u12|Mux76~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(1),
	datab => \u0|u12|program[2][3][3]~q\,
	datac => \u0|u12|program[2][2][3]~q\,
	datad => \u0|u12|Mux76~0_combout\,
	combout => \u0|u12|Mux76~1_combout\);

-- Location: LCCOMB_X41_Y21_N14
\u0|u12|program[2][0][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][0][3]~feeder_combout\ = \u0|u11|Add0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~3_combout\,
	combout => \u0|u12|program[2][0][3]~feeder_combout\);

-- Location: FF_X41_Y21_N15
\u0|u12|program[2][0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[2][0][3]~feeder_combout\,
	ena => \u0|u12|program[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][0][3]~q\);

-- Location: FF_X37_Y21_N23
\u0|u12|program[2][1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~3_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][1][3]~q\);

-- Location: LCCOMB_X37_Y20_N2
\u0|u12|program[0][1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][1][3]~feeder_combout\ = \u0|u11|Add0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~3_combout\,
	combout => \u0|u12|program[0][1][3]~feeder_combout\);

-- Location: FF_X37_Y20_N3
\u0|u12|program[0][1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][1][3]~feeder_combout\,
	ena => \u0|u12|program[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][1][3]~q\);

-- Location: FF_X37_Y21_N17
\u0|u12|program[0][0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~3_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][0][3]~q\);

-- Location: LCCOMB_X37_Y21_N16
\u0|u12|Mux76~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux76~4_combout\ = (\u0|u0|q\(1) & (((\u0|u1|q\(0))))) # (!\u0|u0|q\(1) & ((\u0|u1|q\(0) & (\u0|u12|program[0][1][3]~q\)) # (!\u0|u1|q\(0) & ((\u0|u12|program[0][0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(1),
	datab => \u0|u12|program[0][1][3]~q\,
	datac => \u0|u12|program[0][0][3]~q\,
	datad => \u0|u1|q\(0),
	combout => \u0|u12|Mux76~4_combout\);

-- Location: LCCOMB_X37_Y21_N22
\u0|u12|Mux76~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux76~5_combout\ = (\u0|u0|q\(1) & ((\u0|u12|Mux76~4_combout\ & ((\u0|u12|program[2][1][3]~q\))) # (!\u0|u12|Mux76~4_combout\ & (\u0|u12|program[2][0][3]~q\)))) # (!\u0|u0|q\(1) & (((\u0|u12|Mux76~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(1),
	datab => \u0|u12|program[2][0][3]~q\,
	datac => \u0|u12|program[2][1][3]~q\,
	datad => \u0|u12|Mux76~4_combout\,
	combout => \u0|u12|Mux76~5_combout\);

-- Location: FF_X39_Y21_N21
\u0|u12|program[1][1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~3_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][1][3]~q\);

-- Location: FF_X39_Y22_N21
\u0|u12|program[3][1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~3_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][1][3]~q\);

-- Location: LCCOMB_X38_Y22_N28
\u0|u12|program[3][0][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[3][0][3]~feeder_combout\ = \u0|u11|Add0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~3_combout\,
	combout => \u0|u12|program[3][0][3]~feeder_combout\);

-- Location: FF_X38_Y22_N29
\u0|u12|program[3][0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[3][0][3]~feeder_combout\,
	ena => \u0|u12|program[3][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][0][3]~q\);

-- Location: FF_X38_Y22_N15
\u0|u12|program[1][0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~3_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][0][3]~q\);

-- Location: LCCOMB_X38_Y22_N14
\u0|u12|Mux76~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux76~2_combout\ = (\u0|u0|q\(1) & ((\u0|u12|program[3][0][3]~q\) # ((\u0|u1|q\(0))))) # (!\u0|u0|q\(1) & (((\u0|u12|program[1][0][3]~q\ & !\u0|u1|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(1),
	datab => \u0|u12|program[3][0][3]~q\,
	datac => \u0|u12|program[1][0][3]~q\,
	datad => \u0|u1|q\(0),
	combout => \u0|u12|Mux76~2_combout\);

-- Location: LCCOMB_X39_Y22_N20
\u0|u12|Mux76~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux76~3_combout\ = (\u0|u1|q\(0) & ((\u0|u12|Mux76~2_combout\ & ((\u0|u12|program[3][1][3]~q\))) # (!\u0|u12|Mux76~2_combout\ & (\u0|u12|program[1][1][3]~q\)))) # (!\u0|u1|q\(0) & (((\u0|u12|Mux76~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u12|program[1][1][3]~q\,
	datac => \u0|u12|program[3][1][3]~q\,
	datad => \u0|u12|Mux76~2_combout\,
	combout => \u0|u12|Mux76~3_combout\);

-- Location: LCCOMB_X37_Y21_N24
\u0|u12|Mux76~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux76~6_combout\ = (\u0|u1|q\(1) & (((\u0|u0|q\(0))))) # (!\u0|u1|q\(1) & ((\u0|u0|q\(0) & ((\u0|u12|Mux76~3_combout\))) # (!\u0|u0|q\(0) & (\u0|u12|Mux76~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|Mux76~5_combout\,
	datab => \u0|u1|q\(1),
	datac => \u0|u12|Mux76~3_combout\,
	datad => \u0|u0|q\(0),
	combout => \u0|u12|Mux76~6_combout\);

-- Location: LCCOMB_X37_Y21_N18
\u0|u12|Mux76~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux76~9_combout\ = (\u0|u1|q\(1) & ((\u0|u12|Mux76~6_combout\ & (\u0|u12|Mux76~8_combout\)) # (!\u0|u12|Mux76~6_combout\ & ((\u0|u12|Mux76~1_combout\))))) # (!\u0|u1|q\(1) & (((\u0|u12|Mux76~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|Mux76~8_combout\,
	datab => \u0|u1|q\(1),
	datac => \u0|u12|Mux76~1_combout\,
	datad => \u0|u12|Mux76~6_combout\,
	combout => \u0|u12|Mux76~9_combout\);

-- Location: LCCOMB_X41_Y20_N2
\u0|u10|Mult0|mult_core|decoder_node[1][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u10|Mult0|mult_core|decoder_node[1][3]~combout\ = (\u0|u9|Mux3~0_combout\ & (!\u0|u2|q\(2) & (\u0|u9|Mux4~0_combout\ & \u0|u12|program[1][0][0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u9|Mux3~0_combout\,
	datab => \u0|u2|q\(2),
	datac => \u0|u9|Mux4~0_combout\,
	datad => \u0|u12|program[1][0][0]~2_combout\,
	combout => \u0|u10|Mult0|mult_core|decoder_node[1][3]~combout\);

-- Location: LCCOMB_X40_Y20_N28
\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\u0|u10|Mult0|mult_core|decoder_node[1][3]~combout\ & (!\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\u0|u10|Mult0|mult_core|decoder_node[1][3]~combout\ & 
-- ((\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))
-- \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((!\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\u0|u10|Mult0|mult_core|decoder_node[1][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u10|Mult0|mult_core|decoder_node[1][3]~combout\,
	datad => VCC,
	cin => \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X40_Y20_N8
\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ = ((\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|~QUARTUS_CREATED_GND~I_combout\ $ 
-- (\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ $ (!\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ = CARRY((\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|~QUARTUS_CREATED_GND~I_combout\ & 
-- ((\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\) # (!\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\))) # 
-- (!\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|~QUARTUS_CREATED_GND~I_combout\ & (\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & !\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|~QUARTUS_CREATED_GND~I_combout\,
	datab => \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\,
	combout => \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	cout => \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X39_Y21_N8
\u0|u11|c[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|c[4]~8_combout\ = ((\u0|u12|Mux75~9_combout\ $ (\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ $ (!\u0|u11|c[3]~7\)))) # (GND)
-- \u0|u11|c[4]~9\ = CARRY((\u0|u12|Mux75~9_combout\ & ((\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\) # (!\u0|u11|c[3]~7\))) # (!\u0|u12|Mux75~9_combout\ & 
-- (\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & !\u0|u11|c[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|Mux75~9_combout\,
	datab => \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \u0|u11|c[3]~7\,
	combout => \u0|u11|c[4]~8_combout\,
	cout => \u0|u11|c[4]~9\);

-- Location: LCCOMB_X38_Y21_N4
\u0|u11|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|Add0~4_combout\ = (!\u1|current_state.s6~q\ & \u0|u11|c[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|current_state.s6~q\,
	datac => \u0|u11|c[4]~8_combout\,
	combout => \u0|u11|Add0~4_combout\);

-- Location: FF_X38_Y21_N5
\u0|u12|program[3][3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u11|Add0~4_combout\,
	ena => \u0|u12|program[3][3][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][3][4]~q\);

-- Location: FF_X38_Y23_N13
\u0|u12|program[2][3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~4_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][3][4]~q\);

-- Location: LCCOMB_X43_Y21_N28
\u0|u12|program[3][1][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[3][1][4]~feeder_combout\ = \u0|u11|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~4_combout\,
	combout => \u0|u12|program[3][1][4]~feeder_combout\);

-- Location: FF_X43_Y21_N29
\u0|u12|program[3][1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[3][1][4]~feeder_combout\,
	ena => \u0|u12|program[3][1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][1][4]~q\);

-- Location: FF_X37_Y21_N5
\u0|u12|program[2][1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~4_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][1][4]~q\);

-- Location: LCCOMB_X37_Y21_N4
\u0|u12|Mux75~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux75~7_combout\ = (\u0|u1|q\(1) & (((\u0|u0|q\(0))))) # (!\u0|u1|q\(1) & ((\u0|u0|q\(0) & (\u0|u12|program[3][1][4]~q\)) # (!\u0|u0|q\(0) & ((\u0|u12|program[2][1][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(1),
	datab => \u0|u12|program[3][1][4]~q\,
	datac => \u0|u12|program[2][1][4]~q\,
	datad => \u0|u0|q\(0),
	combout => \u0|u12|Mux75~7_combout\);

-- Location: LCCOMB_X38_Y23_N12
\u0|u12|Mux75~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux75~8_combout\ = (\u0|u1|q\(1) & ((\u0|u12|Mux75~7_combout\ & (\u0|u12|program[3][3][4]~q\)) # (!\u0|u12|Mux75~7_combout\ & ((\u0|u12|program[2][3][4]~q\))))) # (!\u0|u1|q\(1) & (((\u0|u12|Mux75~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[3][3][4]~q\,
	datab => \u0|u1|q\(1),
	datac => \u0|u12|program[2][3][4]~q\,
	datad => \u0|u12|Mux75~7_combout\,
	combout => \u0|u12|Mux75~8_combout\);

-- Location: FF_X39_Y21_N23
\u0|u12|program[3][0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~4_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][0][4]~q\);

-- Location: FF_X38_Y21_N3
\u0|u12|program[3][2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~4_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][2][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][2][4]~q\);

-- Location: FF_X37_Y20_N5
\u0|u12|program[2][0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~4_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][0][4]~q\);

-- Location: LCCOMB_X36_Y21_N18
\u0|u12|program[2][2][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][2][4]~feeder_combout\ = \u0|u11|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~4_combout\,
	combout => \u0|u12|program[2][2][4]~feeder_combout\);

-- Location: FF_X36_Y21_N19
\u0|u12|program[2][2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[2][2][4]~feeder_combout\,
	ena => \u0|u12|program[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][2][4]~q\);

-- Location: LCCOMB_X37_Y20_N4
\u0|u12|Mux75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux75~0_combout\ = (\u0|u0|q\(0) & (\u0|u1|q\(1))) # (!\u0|u0|q\(0) & ((\u0|u1|q\(1) & ((\u0|u12|program[2][2][4]~q\))) # (!\u0|u1|q\(1) & (\u0|u12|program[2][0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(0),
	datab => \u0|u1|q\(1),
	datac => \u0|u12|program[2][0][4]~q\,
	datad => \u0|u12|program[2][2][4]~q\,
	combout => \u0|u12|Mux75~0_combout\);

-- Location: LCCOMB_X38_Y21_N2
\u0|u12|Mux75~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux75~1_combout\ = (\u0|u0|q\(0) & ((\u0|u12|Mux75~0_combout\ & ((\u0|u12|program[3][2][4]~q\))) # (!\u0|u12|Mux75~0_combout\ & (\u0|u12|program[3][0][4]~q\)))) # (!\u0|u0|q\(0) & (((\u0|u12|Mux75~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(0),
	datab => \u0|u12|program[3][0][4]~q\,
	datac => \u0|u12|program[3][2][4]~q\,
	datad => \u0|u12|Mux75~0_combout\,
	combout => \u0|u12|Mux75~1_combout\);

-- Location: LCCOMB_X38_Y22_N20
\u0|u12|program[1][0][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[1][0][4]~feeder_combout\ = \u0|u11|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~4_combout\,
	combout => \u0|u12|program[1][0][4]~feeder_combout\);

-- Location: FF_X38_Y22_N21
\u0|u12|program[1][0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[1][0][4]~feeder_combout\,
	ena => \u0|u12|program[1][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][0][4]~q\);

-- Location: FF_X37_Y23_N5
\u0|u12|program[1][2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~4_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][2][4]~q\);

-- Location: FF_X41_Y23_N13
\u0|u12|program[0][0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~4_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][0][4]~q\);

-- Location: LCCOMB_X39_Y23_N26
\u0|u12|program[0][2][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][2][4]~feeder_combout\ = \u0|u11|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~4_combout\,
	combout => \u0|u12|program[0][2][4]~feeder_combout\);

-- Location: FF_X39_Y23_N27
\u0|u12|program[0][2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][2][4]~feeder_combout\,
	ena => \u0|u12|program[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][2][4]~q\);

-- Location: LCCOMB_X41_Y23_N12
\u0|u12|Mux75~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux75~4_combout\ = (\u0|u1|q\(1) & ((\u0|u0|q\(0)) # ((\u0|u12|program[0][2][4]~q\)))) # (!\u0|u1|q\(1) & (!\u0|u0|q\(0) & (\u0|u12|program[0][0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(1),
	datab => \u0|u0|q\(0),
	datac => \u0|u12|program[0][0][4]~q\,
	datad => \u0|u12|program[0][2][4]~q\,
	combout => \u0|u12|Mux75~4_combout\);

-- Location: LCCOMB_X37_Y23_N4
\u0|u12|Mux75~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux75~5_combout\ = (\u0|u0|q\(0) & ((\u0|u12|Mux75~4_combout\ & ((\u0|u12|program[1][2][4]~q\))) # (!\u0|u12|Mux75~4_combout\ & (\u0|u12|program[1][0][4]~q\)))) # (!\u0|u0|q\(0) & (((\u0|u12|Mux75~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(0),
	datab => \u0|u12|program[1][0][4]~q\,
	datac => \u0|u12|program[1][2][4]~q\,
	datad => \u0|u12|Mux75~4_combout\,
	combout => \u0|u12|Mux75~5_combout\);

-- Location: LCCOMB_X37_Y23_N14
\u0|u12|program[1][3][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[1][3][4]~feeder_combout\ = \u0|u11|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~4_combout\,
	combout => \u0|u12|program[1][3][4]~feeder_combout\);

-- Location: FF_X37_Y23_N15
\u0|u12|program[1][3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[1][3][4]~feeder_combout\,
	ena => \u0|u12|program[1][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][3][4]~q\);

-- Location: LCCOMB_X39_Y23_N8
\u0|u12|program[0][3][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][3][4]~feeder_combout\ = \u0|u11|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~4_combout\,
	combout => \u0|u12|program[0][3][4]~feeder_combout\);

-- Location: FF_X39_Y23_N9
\u0|u12|program[0][3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][3][4]~feeder_combout\,
	ena => \u0|u12|program[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][3][4]~q\);

-- Location: FF_X37_Y20_N19
\u0|u12|program[0][1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~4_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][1][4]~q\);

-- Location: LCCOMB_X38_Y23_N18
\u0|u12|program[1][1][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[1][1][4]~feeder_combout\ = \u0|u11|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~4_combout\,
	combout => \u0|u12|program[1][1][4]~feeder_combout\);

-- Location: FF_X38_Y23_N19
\u0|u12|program[1][1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[1][1][4]~feeder_combout\,
	ena => \u0|u12|program[1][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][1][4]~q\);

-- Location: LCCOMB_X37_Y20_N18
\u0|u12|Mux75~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux75~2_combout\ = (\u0|u0|q\(0) & ((\u0|u1|q\(1)) # ((\u0|u12|program[1][1][4]~q\)))) # (!\u0|u0|q\(0) & (!\u0|u1|q\(1) & (\u0|u12|program[0][1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(0),
	datab => \u0|u1|q\(1),
	datac => \u0|u12|program[0][1][4]~q\,
	datad => \u0|u12|program[1][1][4]~q\,
	combout => \u0|u12|Mux75~2_combout\);

-- Location: LCCOMB_X38_Y23_N24
\u0|u12|Mux75~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux75~3_combout\ = (\u0|u1|q\(1) & ((\u0|u12|Mux75~2_combout\ & (\u0|u12|program[1][3][4]~q\)) # (!\u0|u12|Mux75~2_combout\ & ((\u0|u12|program[0][3][4]~q\))))) # (!\u0|u1|q\(1) & (((\u0|u12|Mux75~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[1][3][4]~q\,
	datab => \u0|u12|program[0][3][4]~q\,
	datac => \u0|u1|q\(1),
	datad => \u0|u12|Mux75~2_combout\,
	combout => \u0|u12|Mux75~3_combout\);

-- Location: LCCOMB_X38_Y23_N10
\u0|u12|Mux75~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux75~6_combout\ = (\u0|u1|q\(0) & ((\u0|u0|q\(1)) # ((\u0|u12|Mux75~3_combout\)))) # (!\u0|u1|q\(0) & (!\u0|u0|q\(1) & (\u0|u12|Mux75~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u0|q\(1),
	datac => \u0|u12|Mux75~5_combout\,
	datad => \u0|u12|Mux75~3_combout\,
	combout => \u0|u12|Mux75~6_combout\);

-- Location: LCCOMB_X38_Y23_N14
\u0|u12|Mux75~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux75~9_combout\ = (\u0|u0|q\(1) & ((\u0|u12|Mux75~6_combout\ & (\u0|u12|Mux75~8_combout\)) # (!\u0|u12|Mux75~6_combout\ & ((\u0|u12|Mux75~1_combout\))))) # (!\u0|u0|q\(1) & (((\u0|u12|Mux75~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|Mux75~8_combout\,
	datab => \u0|u0|q\(1),
	datac => \u0|u12|Mux75~1_combout\,
	datad => \u0|u12|Mux75~6_combout\,
	combout => \u0|u12|Mux75~9_combout\);

-- Location: LCCOMB_X40_Y20_N30
\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = !\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\);

-- Location: LCCOMB_X39_Y20_N20
\u0|u10|Mult0|mult_core|decoder_node[2][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u10|Mult0|mult_core|decoder_node[2][3]~combout\ = (\u0|u12|program[1][0][0]~2_combout\ & (\u0|u9|Mux3~0_combout\ & (!\u0|u1|q\(1) & \u0|u1|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[1][0][0]~2_combout\,
	datab => \u0|u9|Mux3~0_combout\,
	datac => \u0|u1|q\(1),
	datad => \u0|u1|q\(0),
	combout => \u0|u10|Mult0|mult_core|decoder_node[2][3]~combout\);

-- Location: LCCOMB_X40_Y20_N10
\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ = (\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((\u0|u10|Mult0|mult_core|decoder_node[2][3]~combout\ & 
-- (\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ & VCC)) # (!\u0|u10|Mult0|mult_core|decoder_node[2][3]~combout\ & (!\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)))) # 
-- (!\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((\u0|u10|Mult0|mult_core|decoder_node[2][3]~combout\ & (!\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # 
-- (!\u0|u10|Mult0|mult_core|decoder_node[2][3]~combout\ & ((\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ = CARRY((\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (!\u0|u10|Mult0|mult_core|decoder_node[2][3]~combout\ & 
-- !\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # (!\u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((!\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # 
-- (!\u0|u10|Mult0|mult_core|decoder_node[2][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u10|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => \u0|u10|Mult0|mult_core|decoder_node[2][3]~combout\,
	datad => VCC,
	cin => \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\,
	combout => \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	cout => \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X39_Y21_N10
\u0|u11|c[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|c[5]~10_combout\ = (\u0|u12|Mux74~9_combout\ & ((\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (\u0|u11|c[4]~9\ & VCC)) # (!\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & 
-- (!\u0|u11|c[4]~9\)))) # (!\u0|u12|Mux74~9_combout\ & ((\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (!\u0|u11|c[4]~9\)) # (!\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & 
-- ((\u0|u11|c[4]~9\) # (GND)))))
-- \u0|u11|c[5]~11\ = CARRY((\u0|u12|Mux74~9_combout\ & (!\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & !\u0|u11|c[4]~9\)) # (!\u0|u12|Mux74~9_combout\ & ((!\u0|u11|c[4]~9\) # 
-- (!\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|Mux74~9_combout\,
	datab => \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \u0|u11|c[4]~9\,
	combout => \u0|u11|c[5]~10_combout\,
	cout => \u0|u11|c[5]~11\);

-- Location: LCCOMB_X38_Y21_N24
\u0|u11|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|Add0~5_combout\ = (!\u1|current_state.s6~q\ & \u0|u11|c[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|current_state.s6~q\,
	datad => \u0|u11|c[5]~10_combout\,
	combout => \u0|u11|Add0~5_combout\);

-- Location: LCCOMB_X43_Y21_N6
\u0|u12|program[3][1][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[3][1][5]~feeder_combout\ = \u0|u11|Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~5_combout\,
	combout => \u0|u12|program[3][1][5]~feeder_combout\);

-- Location: FF_X43_Y21_N7
\u0|u12|program[3][1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[3][1][5]~feeder_combout\,
	ena => \u0|u12|program[3][1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][1][5]~q\);

-- Location: FF_X38_Y22_N31
\u0|u12|program[3][0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~5_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][0][5]~q\);

-- Location: FF_X39_Y21_N17
\u0|u12|program[1][1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~5_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][1][5]~q\);

-- Location: FF_X38_Y22_N17
\u0|u12|program[1][0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~5_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][0][5]~q\);

-- Location: LCCOMB_X38_Y22_N16
\u0|u12|Mux74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux74~0_combout\ = (\u0|u0|q\(1) & (((\u0|u1|q\(0))))) # (!\u0|u0|q\(1) & ((\u0|u1|q\(0) & (\u0|u12|program[1][1][5]~q\)) # (!\u0|u1|q\(0) & ((\u0|u12|program[1][0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[1][1][5]~q\,
	datab => \u0|u0|q\(1),
	datac => \u0|u12|program[1][0][5]~q\,
	datad => \u0|u1|q\(0),
	combout => \u0|u12|Mux74~0_combout\);

-- Location: LCCOMB_X38_Y22_N30
\u0|u12|Mux74~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux74~1_combout\ = (\u0|u0|q\(1) & ((\u0|u12|Mux74~0_combout\ & (\u0|u12|program[3][1][5]~q\)) # (!\u0|u12|Mux74~0_combout\ & ((\u0|u12|program[3][0][5]~q\))))) # (!\u0|u0|q\(1) & (((\u0|u12|Mux74~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[3][1][5]~q\,
	datab => \u0|u0|q\(1),
	datac => \u0|u12|program[3][0][5]~q\,
	datad => \u0|u12|Mux74~0_combout\,
	combout => \u0|u12|Mux74~1_combout\);

-- Location: FF_X38_Y21_N23
\u0|u12|program[3][2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~5_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][2][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][2][5]~q\);

-- Location: FF_X38_Y21_N25
\u0|u12|program[3][3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u11|Add0~5_combout\,
	ena => \u0|u12|program[3][3][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][3][5]~q\);

-- Location: LCCOMB_X37_Y23_N6
\u0|u12|program[1][3][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[1][3][5]~feeder_combout\ = \u0|u11|Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~5_combout\,
	combout => \u0|u12|program[1][3][5]~feeder_combout\);

-- Location: FF_X37_Y23_N7
\u0|u12|program[1][3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[1][3][5]~feeder_combout\,
	ena => \u0|u12|program[1][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][3][5]~q\);

-- Location: FF_X37_Y23_N9
\u0|u12|program[1][2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~5_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][2][5]~q\);

-- Location: LCCOMB_X37_Y23_N8
\u0|u12|Mux74~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux74~7_combout\ = (\u0|u0|q\(1) & (((\u0|u1|q\(0))))) # (!\u0|u0|q\(1) & ((\u0|u1|q\(0) & (\u0|u12|program[1][3][5]~q\)) # (!\u0|u1|q\(0) & ((\u0|u12|program[1][2][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[1][3][5]~q\,
	datab => \u0|u0|q\(1),
	datac => \u0|u12|program[1][2][5]~q\,
	datad => \u0|u1|q\(0),
	combout => \u0|u12|Mux74~7_combout\);

-- Location: LCCOMB_X38_Y22_N8
\u0|u12|Mux74~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux74~8_combout\ = (\u0|u0|q\(1) & ((\u0|u12|Mux74~7_combout\ & ((\u0|u12|program[3][3][5]~q\))) # (!\u0|u12|Mux74~7_combout\ & (\u0|u12|program[3][2][5]~q\)))) # (!\u0|u0|q\(1) & (((\u0|u12|Mux74~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[3][2][5]~q\,
	datab => \u0|u12|program[3][3][5]~q\,
	datac => \u0|u0|q\(1),
	datad => \u0|u12|Mux74~7_combout\,
	combout => \u0|u12|Mux74~8_combout\);

-- Location: LCCOMB_X37_Y20_N0
\u0|u12|program[0][1][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][1][5]~feeder_combout\ = \u0|u11|Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~5_combout\,
	combout => \u0|u12|program[0][1][5]~feeder_combout\);

-- Location: FF_X37_Y20_N1
\u0|u12|program[0][1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][1][5]~feeder_combout\,
	ena => \u0|u12|program[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][1][5]~q\);

-- Location: FF_X37_Y21_N1
\u0|u12|program[2][1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~5_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][1][5]~q\);

-- Location: LCCOMB_X41_Y21_N8
\u0|u12|program[2][0][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][0][5]~feeder_combout\ = \u0|u11|Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~5_combout\,
	combout => \u0|u12|program[2][0][5]~feeder_combout\);

-- Location: FF_X41_Y21_N9
\u0|u12|program[2][0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[2][0][5]~feeder_combout\,
	ena => \u0|u12|program[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][0][5]~q\);

-- Location: FF_X37_Y21_N11
\u0|u12|program[0][0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~5_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][0][5]~q\);

-- Location: LCCOMB_X37_Y21_N10
\u0|u12|Mux74~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux74~4_combout\ = (\u0|u0|q\(1) & ((\u0|u12|program[2][0][5]~q\) # ((\u0|u1|q\(0))))) # (!\u0|u0|q\(1) & (((\u0|u12|program[0][0][5]~q\ & !\u0|u1|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(1),
	datab => \u0|u12|program[2][0][5]~q\,
	datac => \u0|u12|program[0][0][5]~q\,
	datad => \u0|u1|q\(0),
	combout => \u0|u12|Mux74~4_combout\);

-- Location: LCCOMB_X37_Y21_N0
\u0|u12|Mux74~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux74~5_combout\ = (\u0|u1|q\(0) & ((\u0|u12|Mux74~4_combout\ & ((\u0|u12|program[2][1][5]~q\))) # (!\u0|u12|Mux74~4_combout\ & (\u0|u12|program[0][1][5]~q\)))) # (!\u0|u1|q\(0) & (((\u0|u12|Mux74~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[0][1][5]~q\,
	datab => \u0|u1|q\(0),
	datac => \u0|u12|program[2][1][5]~q\,
	datad => \u0|u12|Mux74~4_combout\,
	combout => \u0|u12|Mux74~5_combout\);

-- Location: LCCOMB_X39_Y23_N28
\u0|u12|program[0][3][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][3][5]~feeder_combout\ = \u0|u11|Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~5_combout\,
	combout => \u0|u12|program[0][3][5]~feeder_combout\);

-- Location: FF_X39_Y23_N29
\u0|u12|program[0][3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][3][5]~feeder_combout\,
	ena => \u0|u12|program[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][3][5]~q\);

-- Location: FF_X38_Y23_N21
\u0|u12|program[2][3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~5_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][3][5]~q\);

-- Location: LCCOMB_X36_Y21_N20
\u0|u12|program[2][2][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][2][5]~feeder_combout\ = \u0|u11|Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~5_combout\,
	combout => \u0|u12|program[2][2][5]~feeder_combout\);

-- Location: FF_X36_Y21_N21
\u0|u12|program[2][2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[2][2][5]~feeder_combout\,
	ena => \u0|u12|program[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][2][5]~q\);

-- Location: FF_X39_Y23_N7
\u0|u12|program[0][2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~5_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][2][5]~q\);

-- Location: LCCOMB_X39_Y23_N6
\u0|u12|Mux74~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux74~2_combout\ = (\u0|u1|q\(0) & (((\u0|u0|q\(1))))) # (!\u0|u1|q\(0) & ((\u0|u0|q\(1) & (\u0|u12|program[2][2][5]~q\)) # (!\u0|u0|q\(1) & ((\u0|u12|program[0][2][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u12|program[2][2][5]~q\,
	datac => \u0|u12|program[0][2][5]~q\,
	datad => \u0|u0|q\(1),
	combout => \u0|u12|Mux74~2_combout\);

-- Location: LCCOMB_X38_Y23_N20
\u0|u12|Mux74~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux74~3_combout\ = (\u0|u1|q\(0) & ((\u0|u12|Mux74~2_combout\ & ((\u0|u12|program[2][3][5]~q\))) # (!\u0|u12|Mux74~2_combout\ & (\u0|u12|program[0][3][5]~q\)))) # (!\u0|u1|q\(0) & (((\u0|u12|Mux74~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u12|program[0][3][5]~q\,
	datac => \u0|u12|program[2][3][5]~q\,
	datad => \u0|u12|Mux74~2_combout\,
	combout => \u0|u12|Mux74~3_combout\);

-- Location: LCCOMB_X38_Y22_N6
\u0|u12|Mux74~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux74~6_combout\ = (\u0|u0|q\(0) & (\u0|u1|q\(1))) # (!\u0|u0|q\(0) & ((\u0|u1|q\(1) & ((\u0|u12|Mux74~3_combout\))) # (!\u0|u1|q\(1) & (\u0|u12|Mux74~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(0),
	datab => \u0|u1|q\(1),
	datac => \u0|u12|Mux74~5_combout\,
	datad => \u0|u12|Mux74~3_combout\,
	combout => \u0|u12|Mux74~6_combout\);

-- Location: LCCOMB_X38_Y22_N2
\u0|u12|Mux74~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux74~9_combout\ = (\u0|u0|q\(0) & ((\u0|u12|Mux74~6_combout\ & ((\u0|u12|Mux74~8_combout\))) # (!\u0|u12|Mux74~6_combout\ & (\u0|u12|Mux74~1_combout\)))) # (!\u0|u0|q\(0) & (((\u0|u12|Mux74~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|Mux74~1_combout\,
	datab => \u0|u0|q\(0),
	datac => \u0|u12|Mux74~8_combout\,
	datad => \u0|u12|Mux74~6_combout\,
	combout => \u0|u12|Mux74~9_combout\);

-- Location: LCCOMB_X40_Y20_N12
\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ = !\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\,
	combout => \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\);

-- Location: LCCOMB_X39_Y21_N12
\u0|u11|c[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|c[6]~12_combout\ = ((\u0|u12|Mux73~9_combout\ $ (\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ $ (!\u0|u11|c[5]~11\)))) # (GND)
-- \u0|u11|c[6]~13\ = CARRY((\u0|u12|Mux73~9_combout\ & ((\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\) # (!\u0|u11|c[5]~11\))) # (!\u0|u12|Mux73~9_combout\ & 
-- (\u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & !\u0|u11|c[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|Mux73~9_combout\,
	datab => \u0|u10|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \u0|u11|c[5]~11\,
	combout => \u0|u11|c[6]~12_combout\,
	cout => \u0|u11|c[6]~13\);

-- Location: LCCOMB_X40_Y21_N10
\u0|u11|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|Add0~6_combout\ = (!\u1|current_state.s6~q\ & \u0|u11|c[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|current_state.s6~q\,
	datad => \u0|u11|c[6]~12_combout\,
	combout => \u0|u11|Add0~6_combout\);

-- Location: FF_X40_Y21_N21
\u0|u12|program[3][3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~6_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][3][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][3][6]~q\);

-- Location: FF_X39_Y22_N31
\u0|u12|program[3][1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~6_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][1][6]~q\);

-- Location: LCCOMB_X40_Y22_N10
\u0|u12|program[2][3][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][3][6]~feeder_combout\ = \u0|u11|Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~6_combout\,
	combout => \u0|u12|program[2][3][6]~feeder_combout\);

-- Location: FF_X40_Y22_N11
\u0|u12|program[2][3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[2][3][6]~feeder_combout\,
	ena => \u0|u12|program[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][3][6]~q\);

-- Location: FF_X40_Y22_N29
\u0|u12|program[2][1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~6_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][1][6]~q\);

-- Location: LCCOMB_X40_Y22_N28
\u0|u12|Mux73~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux73~7_combout\ = (\u0|u0|q\(0) & (((\u0|u1|q\(1))))) # (!\u0|u0|q\(0) & ((\u0|u1|q\(1) & (\u0|u12|program[2][3][6]~q\)) # (!\u0|u1|q\(1) & ((\u0|u12|program[2][1][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[2][3][6]~q\,
	datab => \u0|u0|q\(0),
	datac => \u0|u12|program[2][1][6]~q\,
	datad => \u0|u1|q\(1),
	combout => \u0|u12|Mux73~7_combout\);

-- Location: LCCOMB_X39_Y22_N30
\u0|u12|Mux73~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux73~8_combout\ = (\u0|u0|q\(0) & ((\u0|u12|Mux73~7_combout\ & (\u0|u12|program[3][3][6]~q\)) # (!\u0|u12|Mux73~7_combout\ & ((\u0|u12|program[3][1][6]~q\))))) # (!\u0|u0|q\(0) & (((\u0|u12|Mux73~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[3][3][6]~q\,
	datab => \u0|u0|q\(0),
	datac => \u0|u12|program[3][1][6]~q\,
	datad => \u0|u12|Mux73~7_combout\,
	combout => \u0|u12|Mux73~8_combout\);

-- Location: LCCOMB_X36_Y21_N6
\u0|u12|program[2][2][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][2][6]~feeder_combout\ = \u0|u11|Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~6_combout\,
	combout => \u0|u12|program[2][2][6]~feeder_combout\);

-- Location: FF_X36_Y21_N7
\u0|u12|program[2][2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[2][2][6]~feeder_combout\,
	ena => \u0|u12|program[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][2][6]~q\);

-- Location: FF_X36_Y21_N5
\u0|u12|program[3][2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~6_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][2][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][2][6]~q\);

-- Location: LCCOMB_X41_Y21_N26
\u0|u12|program[3][0][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[3][0][6]~feeder_combout\ = \u0|u11|Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~6_combout\,
	combout => \u0|u12|program[3][0][6]~feeder_combout\);

-- Location: FF_X41_Y21_N27
\u0|u12|program[3][0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[3][0][6]~feeder_combout\,
	ena => \u0|u12|program[3][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][0][6]~q\);

-- Location: FF_X41_Y21_N5
\u0|u12|program[2][0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~6_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][0][6]~q\);

-- Location: LCCOMB_X41_Y21_N4
\u0|u12|Mux73~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux73~2_combout\ = (\u0|u1|q\(1) & (((\u0|u0|q\(0))))) # (!\u0|u1|q\(1) & ((\u0|u0|q\(0) & (\u0|u12|program[3][0][6]~q\)) # (!\u0|u0|q\(0) & ((\u0|u12|program[2][0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[3][0][6]~q\,
	datab => \u0|u1|q\(1),
	datac => \u0|u12|program[2][0][6]~q\,
	datad => \u0|u0|q\(0),
	combout => \u0|u12|Mux73~2_combout\);

-- Location: LCCOMB_X36_Y21_N4
\u0|u12|Mux73~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux73~3_combout\ = (\u0|u1|q\(1) & ((\u0|u12|Mux73~2_combout\ & ((\u0|u12|program[3][2][6]~q\))) # (!\u0|u12|Mux73~2_combout\ & (\u0|u12|program[2][2][6]~q\)))) # (!\u0|u1|q\(1) & (((\u0|u12|Mux73~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[2][2][6]~q\,
	datab => \u0|u1|q\(1),
	datac => \u0|u12|program[3][2][6]~q\,
	datad => \u0|u12|Mux73~2_combout\,
	combout => \u0|u12|Mux73~3_combout\);

-- Location: LCCOMB_X40_Y23_N4
\u0|u12|program[0][2][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][2][6]~feeder_combout\ = \u0|u11|Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~6_combout\,
	combout => \u0|u12|program[0][2][6]~feeder_combout\);

-- Location: FF_X40_Y23_N5
\u0|u12|program[0][2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][2][6]~feeder_combout\,
	ena => \u0|u12|program[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][2][6]~q\);

-- Location: FF_X40_Y23_N27
\u0|u12|program[1][2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~6_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][2][6]~q\);

-- Location: LCCOMB_X41_Y23_N14
\u0|u12|program[1][0][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[1][0][6]~feeder_combout\ = \u0|u11|Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~6_combout\,
	combout => \u0|u12|program[1][0][6]~feeder_combout\);

-- Location: FF_X41_Y23_N15
\u0|u12|program[1][0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[1][0][6]~feeder_combout\,
	ena => \u0|u12|program[1][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][0][6]~q\);

-- Location: FF_X41_Y23_N25
\u0|u12|program[0][0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~6_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][0][6]~q\);

-- Location: LCCOMB_X41_Y23_N24
\u0|u12|Mux73~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux73~4_combout\ = (\u0|u1|q\(1) & (((\u0|u0|q\(0))))) # (!\u0|u1|q\(1) & ((\u0|u0|q\(0) & (\u0|u12|program[1][0][6]~q\)) # (!\u0|u0|q\(0) & ((\u0|u12|program[0][0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(1),
	datab => \u0|u12|program[1][0][6]~q\,
	datac => \u0|u12|program[0][0][6]~q\,
	datad => \u0|u0|q\(0),
	combout => \u0|u12|Mux73~4_combout\);

-- Location: LCCOMB_X40_Y23_N26
\u0|u12|Mux73~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux73~5_combout\ = (\u0|u1|q\(1) & ((\u0|u12|Mux73~4_combout\ & ((\u0|u12|program[1][2][6]~q\))) # (!\u0|u12|Mux73~4_combout\ & (\u0|u12|program[0][2][6]~q\)))) # (!\u0|u1|q\(1) & (((\u0|u12|Mux73~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(1),
	datab => \u0|u12|program[0][2][6]~q\,
	datac => \u0|u12|program[1][2][6]~q\,
	datad => \u0|u12|Mux73~4_combout\,
	combout => \u0|u12|Mux73~5_combout\);

-- Location: LCCOMB_X37_Y21_N26
\u0|u12|Mux73~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux73~6_combout\ = (\u0|u0|q\(1) & ((\u0|u1|q\(0)) # ((\u0|u12|Mux73~3_combout\)))) # (!\u0|u0|q\(1) & (!\u0|u1|q\(0) & ((\u0|u12|Mux73~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(1),
	datab => \u0|u1|q\(0),
	datac => \u0|u12|Mux73~3_combout\,
	datad => \u0|u12|Mux73~5_combout\,
	combout => \u0|u12|Mux73~6_combout\);

-- Location: FF_X39_Y21_N25
\u0|u12|program[1][1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~6_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][1][6]~q\);

-- Location: FF_X36_Y22_N31
\u0|u12|program[1][3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~6_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][3][6]~q\);

-- Location: LCCOMB_X41_Y22_N12
\u0|u12|program[0][3][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][3][6]~feeder_combout\ = \u0|u11|Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~6_combout\,
	combout => \u0|u12|program[0][3][6]~feeder_combout\);

-- Location: FF_X41_Y22_N13
\u0|u12|program[0][3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][3][6]~feeder_combout\,
	ena => \u0|u12|program[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][3][6]~q\);

-- Location: FF_X41_Y22_N27
\u0|u12|program[0][1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~6_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][1][6]~q\);

-- Location: LCCOMB_X41_Y22_N26
\u0|u12|Mux73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux73~0_combout\ = (\u0|u1|q\(1) & ((\u0|u12|program[0][3][6]~q\) # ((\u0|u0|q\(0))))) # (!\u0|u1|q\(1) & (((\u0|u12|program[0][1][6]~q\ & !\u0|u0|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[0][3][6]~q\,
	datab => \u0|u1|q\(1),
	datac => \u0|u12|program[0][1][6]~q\,
	datad => \u0|u0|q\(0),
	combout => \u0|u12|Mux73~0_combout\);

-- Location: LCCOMB_X36_Y22_N30
\u0|u12|Mux73~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux73~1_combout\ = (\u0|u0|q\(0) & ((\u0|u12|Mux73~0_combout\ & ((\u0|u12|program[1][3][6]~q\))) # (!\u0|u12|Mux73~0_combout\ & (\u0|u12|program[1][1][6]~q\)))) # (!\u0|u0|q\(0) & (((\u0|u12|Mux73~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(0),
	datab => \u0|u12|program[1][1][6]~q\,
	datac => \u0|u12|program[1][3][6]~q\,
	datad => \u0|u12|Mux73~0_combout\,
	combout => \u0|u12|Mux73~1_combout\);

-- Location: LCCOMB_X37_Y21_N12
\u0|u12|Mux73~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux73~9_combout\ = (\u0|u1|q\(0) & ((\u0|u12|Mux73~6_combout\ & (\u0|u12|Mux73~8_combout\)) # (!\u0|u12|Mux73~6_combout\ & ((\u0|u12|Mux73~1_combout\))))) # (!\u0|u1|q\(0) & (((\u0|u12|Mux73~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|Mux73~8_combout\,
	datab => \u0|u1|q\(0),
	datac => \u0|u12|Mux73~6_combout\,
	datad => \u0|u12|Mux73~1_combout\,
	combout => \u0|u12|Mux73~9_combout\);

-- Location: LCCOMB_X39_Y21_N14
\u0|u11|c[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|c[7]~14_combout\ = (\u0|u12|Mux72~9_combout\ & (!\u0|u11|c[6]~13\)) # (!\u0|u12|Mux72~9_combout\ & ((\u0|u11|c[6]~13\) # (GND)))
-- \u0|u11|c[7]~15\ = CARRY((!\u0|u11|c[6]~13\) # (!\u0|u12|Mux72~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|Mux72~9_combout\,
	datad => VCC,
	cin => \u0|u11|c[6]~13\,
	combout => \u0|u11|c[7]~14_combout\,
	cout => \u0|u11|c[7]~15\);

-- Location: LCCOMB_X38_Y21_N22
\u0|u11|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|Add0~7_combout\ = (!\u1|current_state.s6~q\ & \u0|u11|c[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|current_state.s6~q\,
	datab => \u0|u11|c[7]~14_combout\,
	combout => \u0|u11|Add0~7_combout\);

-- Location: LCCOMB_X37_Y22_N10
\u0|u12|program[2][3][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][3][7]~feeder_combout\ = \u0|u11|Add0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~7_combout\,
	combout => \u0|u12|program[2][3][7]~feeder_combout\);

-- Location: FF_X37_Y22_N11
\u0|u12|program[2][3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[2][3][7]~feeder_combout\,
	ena => \u0|u12|program[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][3][7]~q\);

-- Location: FF_X36_Y21_N11
\u0|u12|program[2][2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~7_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][2][7]~q\);

-- Location: LCCOMB_X36_Y22_N24
\u0|u12|program[0][3][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][3][7]~feeder_combout\ = \u0|u11|Add0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~7_combout\,
	combout => \u0|u12|program[0][3][7]~feeder_combout\);

-- Location: FF_X36_Y22_N25
\u0|u12|program[0][3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][3][7]~feeder_combout\,
	ena => \u0|u12|program[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][3][7]~q\);

-- Location: FF_X37_Y22_N9
\u0|u12|program[0][2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~7_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][2][7]~q\);

-- Location: LCCOMB_X37_Y22_N8
\u0|u12|Mux72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux72~0_combout\ = (\u0|u1|q\(0) & ((\u0|u12|program[0][3][7]~q\) # ((\u0|u0|q\(1))))) # (!\u0|u1|q\(0) & (((\u0|u12|program[0][2][7]~q\ & !\u0|u0|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u12|program[0][3][7]~q\,
	datac => \u0|u12|program[0][2][7]~q\,
	datad => \u0|u0|q\(1),
	combout => \u0|u12|Mux72~0_combout\);

-- Location: LCCOMB_X36_Y21_N10
\u0|u12|Mux72~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux72~1_combout\ = (\u0|u0|q\(1) & ((\u0|u12|Mux72~0_combout\ & (\u0|u12|program[2][3][7]~q\)) # (!\u0|u12|Mux72~0_combout\ & ((\u0|u12|program[2][2][7]~q\))))) # (!\u0|u0|q\(1) & (((\u0|u12|Mux72~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(1),
	datab => \u0|u12|program[2][3][7]~q\,
	datac => \u0|u12|program[2][2][7]~q\,
	datad => \u0|u12|Mux72~0_combout\,
	combout => \u0|u12|Mux72~1_combout\);

-- Location: LCCOMB_X38_Y21_N12
\u0|u12|program[3][3][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[3][3][7]~feeder_combout\ = \u0|u11|Add0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~7_combout\,
	combout => \u0|u12|program[3][3][7]~feeder_combout\);

-- Location: FF_X38_Y21_N13
\u0|u12|program[3][3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[3][3][7]~feeder_combout\,
	ena => \u0|u12|program[3][3][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][3][7]~q\);

-- Location: LCCOMB_X38_Y21_N18
\u0|u12|program[3][2][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[3][2][7]~feeder_combout\ = \u0|u11|Add0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~7_combout\,
	combout => \u0|u12|program[3][2][7]~feeder_combout\);

-- Location: FF_X38_Y21_N19
\u0|u12|program[3][2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[3][2][7]~feeder_combout\,
	ena => \u0|u12|program[3][2][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][2][7]~q\);

-- Location: FF_X37_Y23_N25
\u0|u12|program[1][2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~7_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][2][7]~q\);

-- Location: LCCOMB_X37_Y23_N24
\u0|u12|Mux72~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux72~7_combout\ = (\u0|u0|q\(1) & ((\u0|u12|program[3][2][7]~q\) # ((\u0|u1|q\(0))))) # (!\u0|u0|q\(1) & (((\u0|u12|program[1][2][7]~q\ & !\u0|u1|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(1),
	datab => \u0|u12|program[3][2][7]~q\,
	datac => \u0|u12|program[1][2][7]~q\,
	datad => \u0|u1|q\(0),
	combout => \u0|u12|Mux72~7_combout\);

-- Location: FF_X37_Y23_N3
\u0|u12|program[1][3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~7_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][3][7]~q\);

-- Location: LCCOMB_X37_Y23_N2
\u0|u12|Mux72~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux72~8_combout\ = (\u0|u12|Mux72~7_combout\ & ((\u0|u12|program[3][3][7]~q\) # ((!\u0|u1|q\(0))))) # (!\u0|u12|Mux72~7_combout\ & (((\u0|u12|program[1][3][7]~q\ & \u0|u1|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[3][3][7]~q\,
	datab => \u0|u12|Mux72~7_combout\,
	datac => \u0|u12|program[1][3][7]~q\,
	datad => \u0|u1|q\(0),
	combout => \u0|u12|Mux72~8_combout\);

-- Location: FF_X39_Y21_N11
\u0|u12|program[1][1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~7_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][1][7]~q\);

-- Location: FF_X43_Y21_N19
\u0|u12|program[3][1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~7_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][1][7]~q\);

-- Location: FF_X39_Y21_N27
\u0|u12|program[3][0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~7_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][0][7]~q\);

-- Location: FF_X43_Y21_N25
\u0|u12|program[1][0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~7_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][0][7]~q\);

-- Location: LCCOMB_X43_Y21_N24
\u0|u12|Mux72~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux72~2_combout\ = (\u0|u0|q\(1) & ((\u0|u12|program[3][0][7]~q\) # ((\u0|u1|q\(0))))) # (!\u0|u0|q\(1) & (((\u0|u12|program[1][0][7]~q\ & !\u0|u1|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(1),
	datab => \u0|u12|program[3][0][7]~q\,
	datac => \u0|u12|program[1][0][7]~q\,
	datad => \u0|u1|q\(0),
	combout => \u0|u12|Mux72~2_combout\);

-- Location: LCCOMB_X43_Y21_N18
\u0|u12|Mux72~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux72~3_combout\ = (\u0|u1|q\(0) & ((\u0|u12|Mux72~2_combout\ & ((\u0|u12|program[3][1][7]~q\))) # (!\u0|u12|Mux72~2_combout\ & (\u0|u12|program[1][1][7]~q\)))) # (!\u0|u1|q\(0) & (((\u0|u12|Mux72~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u12|program[1][1][7]~q\,
	datac => \u0|u12|program[3][1][7]~q\,
	datad => \u0|u12|Mux72~2_combout\,
	combout => \u0|u12|Mux72~3_combout\);

-- Location: LCCOMB_X37_Y20_N6
\u0|u12|program[0][1][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][1][7]~feeder_combout\ = \u0|u11|Add0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~7_combout\,
	combout => \u0|u12|program[0][1][7]~feeder_combout\);

-- Location: FF_X37_Y20_N7
\u0|u12|program[0][1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][1][7]~feeder_combout\,
	ena => \u0|u12|program[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][1][7]~q\);

-- Location: FF_X37_Y21_N31
\u0|u12|program[0][0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~7_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][0][7]~q\);

-- Location: LCCOMB_X37_Y21_N30
\u0|u12|Mux72~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux72~4_combout\ = (\u0|u0|q\(1) & (((\u0|u1|q\(0))))) # (!\u0|u0|q\(1) & ((\u0|u1|q\(0) & (\u0|u12|program[0][1][7]~q\)) # (!\u0|u1|q\(0) & ((\u0|u12|program[0][0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(1),
	datab => \u0|u12|program[0][1][7]~q\,
	datac => \u0|u12|program[0][0][7]~q\,
	datad => \u0|u1|q\(0),
	combout => \u0|u12|Mux72~4_combout\);

-- Location: FF_X37_Y21_N29
\u0|u12|program[2][1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~7_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][1][7]~q\);

-- Location: LCCOMB_X41_Y21_N22
\u0|u12|program[2][0][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][0][7]~feeder_combout\ = \u0|u11|Add0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~7_combout\,
	combout => \u0|u12|program[2][0][7]~feeder_combout\);

-- Location: FF_X41_Y21_N23
\u0|u12|program[2][0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[2][0][7]~feeder_combout\,
	ena => \u0|u12|program[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][0][7]~q\);

-- Location: LCCOMB_X37_Y21_N28
\u0|u12|Mux72~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux72~5_combout\ = (\u0|u12|Mux72~4_combout\ & (((\u0|u12|program[2][1][7]~q\)) # (!\u0|u0|q\(1)))) # (!\u0|u12|Mux72~4_combout\ & (\u0|u0|q\(1) & ((\u0|u12|program[2][0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|Mux72~4_combout\,
	datab => \u0|u0|q\(1),
	datac => \u0|u12|program[2][1][7]~q\,
	datad => \u0|u12|program[2][0][7]~q\,
	combout => \u0|u12|Mux72~5_combout\);

-- Location: LCCOMB_X36_Y21_N28
\u0|u12|Mux72~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux72~6_combout\ = (\u0|u1|q\(1) & (((\u0|u0|q\(0))))) # (!\u0|u1|q\(1) & ((\u0|u0|q\(0) & (\u0|u12|Mux72~3_combout\)) # (!\u0|u0|q\(0) & ((\u0|u12|Mux72~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|Mux72~3_combout\,
	datab => \u0|u1|q\(1),
	datac => \u0|u0|q\(0),
	datad => \u0|u12|Mux72~5_combout\,
	combout => \u0|u12|Mux72~6_combout\);

-- Location: LCCOMB_X36_Y21_N14
\u0|u12|Mux72~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux72~9_combout\ = (\u0|u1|q\(1) & ((\u0|u12|Mux72~6_combout\ & ((\u0|u12|Mux72~8_combout\))) # (!\u0|u12|Mux72~6_combout\ & (\u0|u12|Mux72~1_combout\)))) # (!\u0|u1|q\(1) & (((\u0|u12|Mux72~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|Mux72~1_combout\,
	datab => \u0|u1|q\(1),
	datac => \u0|u12|Mux72~8_combout\,
	datad => \u0|u12|Mux72~6_combout\,
	combout => \u0|u12|Mux72~9_combout\);

-- Location: LCCOMB_X39_Y21_N16
\u0|u11|c[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|c[8]~16_combout\ = (\u0|u12|Mux71~9_combout\ & (\u0|u11|c[7]~15\ $ (GND))) # (!\u0|u12|Mux71~9_combout\ & (!\u0|u11|c[7]~15\ & VCC))
-- \u0|u11|c[8]~17\ = CARRY((\u0|u12|Mux71~9_combout\ & !\u0|u11|c[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|u12|Mux71~9_combout\,
	datad => VCC,
	cin => \u0|u11|c[7]~15\,
	combout => \u0|u11|c[8]~16_combout\,
	cout => \u0|u11|c[8]~17\);

-- Location: LCCOMB_X40_Y21_N0
\u0|u11|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|Add0~8_combout\ = (\u0|u11|c[8]~16_combout\ & !\u1|current_state.s6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|c[8]~16_combout\,
	datad => \u1|current_state.s6~q\,
	combout => \u0|u11|Add0~8_combout\);

-- Location: FF_X39_Y21_N13
\u0|u12|program[3][0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~8_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][0][8]~q\);

-- Location: FF_X38_Y21_N7
\u0|u12|program[3][2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~8_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][2][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][2][8]~q\);

-- Location: LCCOMB_X36_Y21_N24
\u0|u12|program[2][2][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][2][8]~feeder_combout\ = \u0|u11|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~8_combout\,
	combout => \u0|u12|program[2][2][8]~feeder_combout\);

-- Location: FF_X36_Y21_N25
\u0|u12|program[2][2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[2][2][8]~feeder_combout\,
	ena => \u0|u12|program[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][2][8]~q\);

-- Location: FF_X39_Y20_N5
\u0|u12|program[2][0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~8_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][0][8]~q\);

-- Location: LCCOMB_X39_Y20_N4
\u0|u12|Mux71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux71~0_combout\ = (\u0|u1|q\(1) & ((\u0|u12|program[2][2][8]~q\) # ((\u0|u0|q\(0))))) # (!\u0|u1|q\(1) & (((\u0|u12|program[2][0][8]~q\ & !\u0|u0|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[2][2][8]~q\,
	datab => \u0|u1|q\(1),
	datac => \u0|u12|program[2][0][8]~q\,
	datad => \u0|u0|q\(0),
	combout => \u0|u12|Mux71~0_combout\);

-- Location: LCCOMB_X38_Y21_N6
\u0|u12|Mux71~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux71~1_combout\ = (\u0|u0|q\(0) & ((\u0|u12|Mux71~0_combout\ & ((\u0|u12|program[3][2][8]~q\))) # (!\u0|u12|Mux71~0_combout\ & (\u0|u12|program[3][0][8]~q\)))) # (!\u0|u0|q\(0) & (((\u0|u12|Mux71~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(0),
	datab => \u0|u12|program[3][0][8]~q\,
	datac => \u0|u12|program[3][2][8]~q\,
	datad => \u0|u12|Mux71~0_combout\,
	combout => \u0|u12|Mux71~1_combout\);

-- Location: LCCOMB_X39_Y22_N12
\u0|u12|program[3][1][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[3][1][8]~feeder_combout\ = \u0|u11|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~8_combout\,
	combout => \u0|u12|program[3][1][8]~feeder_combout\);

-- Location: FF_X39_Y22_N13
\u0|u12|program[3][1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[3][1][8]~feeder_combout\,
	ena => \u0|u12|program[3][1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][1][8]~q\);

-- Location: FF_X40_Y22_N13
\u0|u12|program[2][1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~8_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][1][8]~q\);

-- Location: LCCOMB_X40_Y22_N12
\u0|u12|Mux71~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux71~7_combout\ = (\u0|u0|q\(0) & ((\u0|u12|program[3][1][8]~q\) # ((\u0|u1|q\(1))))) # (!\u0|u0|q\(0) & (((\u0|u12|program[2][1][8]~q\ & !\u0|u1|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[3][1][8]~q\,
	datab => \u0|u0|q\(0),
	datac => \u0|u12|program[2][1][8]~q\,
	datad => \u0|u1|q\(1),
	combout => \u0|u12|Mux71~7_combout\);

-- Location: FF_X40_Y21_N1
\u0|u12|program[3][3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u11|Add0~8_combout\,
	ena => \u0|u12|program[3][3][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][3][8]~q\);

-- Location: FF_X40_Y22_N15
\u0|u12|program[2][3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~8_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][3][8]~q\);

-- Location: LCCOMB_X40_Y22_N14
\u0|u12|Mux71~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux71~8_combout\ = (\u0|u12|Mux71~7_combout\ & ((\u0|u12|program[3][3][8]~q\) # ((!\u0|u1|q\(1))))) # (!\u0|u12|Mux71~7_combout\ & (((\u0|u12|program[2][3][8]~q\ & \u0|u1|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|Mux71~7_combout\,
	datab => \u0|u12|program[3][3][8]~q\,
	datac => \u0|u12|program[2][3][8]~q\,
	datad => \u0|u1|q\(1),
	combout => \u0|u12|Mux71~8_combout\);

-- Location: LCCOMB_X41_Y23_N10
\u0|u12|program[1][0][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[1][0][8]~feeder_combout\ = \u0|u11|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~8_combout\,
	combout => \u0|u12|program[1][0][8]~feeder_combout\);

-- Location: FF_X41_Y23_N11
\u0|u12|program[1][0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[1][0][8]~feeder_combout\,
	ena => \u0|u12|program[1][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][0][8]~q\);

-- Location: FF_X40_Y23_N3
\u0|u12|program[1][2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~8_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][2][8]~q\);

-- Location: FF_X41_Y23_N5
\u0|u12|program[0][0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~8_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][0][8]~q\);

-- Location: LCCOMB_X40_Y23_N28
\u0|u12|program[0][2][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][2][8]~feeder_combout\ = \u0|u11|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~8_combout\,
	combout => \u0|u12|program[0][2][8]~feeder_combout\);

-- Location: FF_X40_Y23_N29
\u0|u12|program[0][2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][2][8]~feeder_combout\,
	ena => \u0|u12|program[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][2][8]~q\);

-- Location: LCCOMB_X41_Y23_N4
\u0|u12|Mux71~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux71~4_combout\ = (\u0|u1|q\(1) & ((\u0|u0|q\(0)) # ((\u0|u12|program[0][2][8]~q\)))) # (!\u0|u1|q\(1) & (!\u0|u0|q\(0) & (\u0|u12|program[0][0][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(1),
	datab => \u0|u0|q\(0),
	datac => \u0|u12|program[0][0][8]~q\,
	datad => \u0|u12|program[0][2][8]~q\,
	combout => \u0|u12|Mux71~4_combout\);

-- Location: LCCOMB_X40_Y23_N2
\u0|u12|Mux71~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux71~5_combout\ = (\u0|u0|q\(0) & ((\u0|u12|Mux71~4_combout\ & ((\u0|u12|program[1][2][8]~q\))) # (!\u0|u12|Mux71~4_combout\ & (\u0|u12|program[1][0][8]~q\)))) # (!\u0|u0|q\(0) & (((\u0|u12|Mux71~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[1][0][8]~q\,
	datab => \u0|u0|q\(0),
	datac => \u0|u12|program[1][2][8]~q\,
	datad => \u0|u12|Mux71~4_combout\,
	combout => \u0|u12|Mux71~5_combout\);

-- Location: LCCOMB_X41_Y22_N24
\u0|u12|program[0][3][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][3][8]~feeder_combout\ = \u0|u11|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~8_combout\,
	combout => \u0|u12|program[0][3][8]~feeder_combout\);

-- Location: FF_X41_Y22_N25
\u0|u12|program[0][3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][3][8]~feeder_combout\,
	ena => \u0|u12|program[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][3][8]~q\);

-- Location: FF_X39_Y22_N17
\u0|u12|program[1][3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~8_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][3][8]~q\);

-- Location: LCCOMB_X40_Y21_N6
\u0|u12|program[1][1][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[1][1][8]~feeder_combout\ = \u0|u11|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~8_combout\,
	combout => \u0|u12|program[1][1][8]~feeder_combout\);

-- Location: FF_X40_Y21_N7
\u0|u12|program[1][1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[1][1][8]~feeder_combout\,
	ena => \u0|u12|program[1][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][1][8]~q\);

-- Location: FF_X41_Y22_N23
\u0|u12|program[0][1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~8_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][1][8]~q\);

-- Location: LCCOMB_X41_Y22_N22
\u0|u12|Mux71~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux71~2_combout\ = (\u0|u1|q\(1) & (((\u0|u0|q\(0))))) # (!\u0|u1|q\(1) & ((\u0|u0|q\(0) & (\u0|u12|program[1][1][8]~q\)) # (!\u0|u0|q\(0) & ((\u0|u12|program[0][1][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[1][1][8]~q\,
	datab => \u0|u1|q\(1),
	datac => \u0|u12|program[0][1][8]~q\,
	datad => \u0|u0|q\(0),
	combout => \u0|u12|Mux71~2_combout\);

-- Location: LCCOMB_X39_Y22_N16
\u0|u12|Mux71~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux71~3_combout\ = (\u0|u1|q\(1) & ((\u0|u12|Mux71~2_combout\ & ((\u0|u12|program[1][3][8]~q\))) # (!\u0|u12|Mux71~2_combout\ & (\u0|u12|program[0][3][8]~q\)))) # (!\u0|u1|q\(1) & (((\u0|u12|Mux71~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[0][3][8]~q\,
	datab => \u0|u1|q\(1),
	datac => \u0|u12|program[1][3][8]~q\,
	datad => \u0|u12|Mux71~2_combout\,
	combout => \u0|u12|Mux71~3_combout\);

-- Location: LCCOMB_X39_Y22_N18
\u0|u12|Mux71~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux71~6_combout\ = (\u0|u1|q\(0) & ((\u0|u0|q\(1)) # ((\u0|u12|Mux71~3_combout\)))) # (!\u0|u1|q\(0) & (!\u0|u0|q\(1) & (\u0|u12|Mux71~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u0|q\(1),
	datac => \u0|u12|Mux71~5_combout\,
	datad => \u0|u12|Mux71~3_combout\,
	combout => \u0|u12|Mux71~6_combout\);

-- Location: LCCOMB_X39_Y22_N6
\u0|u12|Mux71~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux71~9_combout\ = (\u0|u0|q\(1) & ((\u0|u12|Mux71~6_combout\ & ((\u0|u12|Mux71~8_combout\))) # (!\u0|u12|Mux71~6_combout\ & (\u0|u12|Mux71~1_combout\)))) # (!\u0|u0|q\(1) & (((\u0|u12|Mux71~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|Mux71~1_combout\,
	datab => \u0|u0|q\(1),
	datac => \u0|u12|Mux71~8_combout\,
	datad => \u0|u12|Mux71~6_combout\,
	combout => \u0|u12|Mux71~9_combout\);

-- Location: LCCOMB_X39_Y21_N18
\u0|u11|c[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|c[9]~18_combout\ = (\u0|u12|Mux70~9_combout\ & (!\u0|u11|c[8]~17\)) # (!\u0|u12|Mux70~9_combout\ & ((\u0|u11|c[8]~17\) # (GND)))
-- \u0|u11|c[9]~19\ = CARRY((!\u0|u11|c[8]~17\) # (!\u0|u12|Mux70~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|Mux70~9_combout\,
	datad => VCC,
	cin => \u0|u11|c[8]~17\,
	combout => \u0|u11|c[9]~18_combout\,
	cout => \u0|u11|c[9]~19\);

-- Location: LCCOMB_X40_Y21_N28
\u0|u11|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|Add0~9_combout\ = (!\u1|current_state.s6~q\ & \u0|u11|c[9]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|current_state.s6~q\,
	datad => \u0|u11|c[9]~18_combout\,
	combout => \u0|u11|Add0~9_combout\);

-- Location: FF_X40_Y21_N29
\u0|u12|program[3][3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u11|Add0~9_combout\,
	ena => \u0|u12|program[3][3][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][3][9]~q\);

-- Location: FF_X44_Y21_N25
\u0|u12|program[3][2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~9_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][2][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][2][9]~q\);

-- Location: FF_X40_Y23_N7
\u0|u12|program[1][2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~9_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][2][9]~q\);

-- Location: LCCOMB_X39_Y22_N8
\u0|u12|program[1][3][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[1][3][9]~feeder_combout\ = \u0|u11|Add0~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~9_combout\,
	combout => \u0|u12|program[1][3][9]~feeder_combout\);

-- Location: FF_X39_Y22_N9
\u0|u12|program[1][3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[1][3][9]~feeder_combout\,
	ena => \u0|u12|program[1][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][3][9]~q\);

-- Location: LCCOMB_X40_Y23_N6
\u0|u12|Mux70~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux70~7_combout\ = (\u0|u1|q\(0) & ((\u0|u0|q\(1)) # ((\u0|u12|program[1][3][9]~q\)))) # (!\u0|u1|q\(0) & (!\u0|u0|q\(1) & (\u0|u12|program[1][2][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u0|q\(1),
	datac => \u0|u12|program[1][2][9]~q\,
	datad => \u0|u12|program[1][3][9]~q\,
	combout => \u0|u12|Mux70~7_combout\);

-- Location: LCCOMB_X44_Y21_N24
\u0|u12|Mux70~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux70~8_combout\ = (\u0|u0|q\(1) & ((\u0|u12|Mux70~7_combout\ & (\u0|u12|program[3][3][9]~q\)) # (!\u0|u12|Mux70~7_combout\ & ((\u0|u12|program[3][2][9]~q\))))) # (!\u0|u0|q\(1) & (((\u0|u12|Mux70~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[3][3][9]~q\,
	datab => \u0|u0|q\(1),
	datac => \u0|u12|program[3][2][9]~q\,
	datad => \u0|u12|Mux70~7_combout\,
	combout => \u0|u12|Mux70~8_combout\);

-- Location: LCCOMB_X41_Y22_N2
\u0|u12|program[0][1][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][1][9]~feeder_combout\ = \u0|u11|Add0~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~9_combout\,
	combout => \u0|u12|program[0][1][9]~feeder_combout\);

-- Location: FF_X41_Y22_N3
\u0|u12|program[0][1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][1][9]~feeder_combout\,
	ena => \u0|u12|program[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][1][9]~q\);

-- Location: FF_X40_Y22_N9
\u0|u12|program[2][1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~9_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][1][9]~q\);

-- Location: LCCOMB_X41_Y21_N30
\u0|u12|program[2][0][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][0][9]~feeder_combout\ = \u0|u11|Add0~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~9_combout\,
	combout => \u0|u12|program[2][0][9]~feeder_combout\);

-- Location: FF_X41_Y21_N31
\u0|u12|program[2][0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[2][0][9]~feeder_combout\,
	ena => \u0|u12|program[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][0][9]~q\);

-- Location: FF_X41_Y23_N9
\u0|u12|program[0][0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~9_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][0][9]~q\);

-- Location: LCCOMB_X41_Y23_N8
\u0|u12|Mux70~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux70~4_combout\ = (\u0|u1|q\(0) & (((\u0|u0|q\(1))))) # (!\u0|u1|q\(0) & ((\u0|u0|q\(1) & (\u0|u12|program[2][0][9]~q\)) # (!\u0|u0|q\(1) & ((\u0|u12|program[0][0][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u12|program[2][0][9]~q\,
	datac => \u0|u12|program[0][0][9]~q\,
	datad => \u0|u0|q\(1),
	combout => \u0|u12|Mux70~4_combout\);

-- Location: LCCOMB_X40_Y22_N8
\u0|u12|Mux70~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux70~5_combout\ = (\u0|u1|q\(0) & ((\u0|u12|Mux70~4_combout\ & ((\u0|u12|program[2][1][9]~q\))) # (!\u0|u12|Mux70~4_combout\ & (\u0|u12|program[0][1][9]~q\)))) # (!\u0|u1|q\(0) & (((\u0|u12|Mux70~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[0][1][9]~q\,
	datab => \u0|u1|q\(0),
	datac => \u0|u12|program[2][1][9]~q\,
	datad => \u0|u12|Mux70~4_combout\,
	combout => \u0|u12|Mux70~5_combout\);

-- Location: LCCOMB_X41_Y22_N4
\u0|u12|program[0][3][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][3][9]~feeder_combout\ = \u0|u11|Add0~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~9_combout\,
	combout => \u0|u12|program[0][3][9]~feeder_combout\);

-- Location: FF_X41_Y22_N5
\u0|u12|program[0][3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][3][9]~feeder_combout\,
	ena => \u0|u12|program[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][3][9]~q\);

-- Location: FF_X40_Y22_N19
\u0|u12|program[2][3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~9_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][3][9]~q\);

-- Location: FF_X40_Y23_N9
\u0|u12|program[0][2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~9_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][2][9]~q\);

-- Location: LCCOMB_X43_Y23_N16
\u0|u12|program[2][2][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][2][9]~feeder_combout\ = \u0|u11|Add0~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~9_combout\,
	combout => \u0|u12|program[2][2][9]~feeder_combout\);

-- Location: FF_X43_Y23_N17
\u0|u12|program[2][2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[2][2][9]~feeder_combout\,
	ena => \u0|u12|program[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][2][9]~q\);

-- Location: LCCOMB_X40_Y23_N8
\u0|u12|Mux70~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux70~2_combout\ = (\u0|u1|q\(0) & (\u0|u0|q\(1))) # (!\u0|u1|q\(0) & ((\u0|u0|q\(1) & ((\u0|u12|program[2][2][9]~q\))) # (!\u0|u0|q\(1) & (\u0|u12|program[0][2][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u0|q\(1),
	datac => \u0|u12|program[0][2][9]~q\,
	datad => \u0|u12|program[2][2][9]~q\,
	combout => \u0|u12|Mux70~2_combout\);

-- Location: LCCOMB_X40_Y22_N18
\u0|u12|Mux70~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux70~3_combout\ = (\u0|u1|q\(0) & ((\u0|u12|Mux70~2_combout\ & ((\u0|u12|program[2][3][9]~q\))) # (!\u0|u12|Mux70~2_combout\ & (\u0|u12|program[0][3][9]~q\)))) # (!\u0|u1|q\(0) & (((\u0|u12|Mux70~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[0][3][9]~q\,
	datab => \u0|u1|q\(0),
	datac => \u0|u12|program[2][3][9]~q\,
	datad => \u0|u12|Mux70~2_combout\,
	combout => \u0|u12|Mux70~3_combout\);

-- Location: LCCOMB_X40_Y22_N26
\u0|u12|Mux70~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux70~6_combout\ = (\u0|u1|q\(1) & ((\u0|u0|q\(0)) # ((\u0|u12|Mux70~3_combout\)))) # (!\u0|u1|q\(1) & (!\u0|u0|q\(0) & (\u0|u12|Mux70~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(1),
	datab => \u0|u0|q\(0),
	datac => \u0|u12|Mux70~5_combout\,
	datad => \u0|u12|Mux70~3_combout\,
	combout => \u0|u12|Mux70~6_combout\);

-- Location: FF_X41_Y23_N31
\u0|u12|program[1][0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~9_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][0][9]~q\);

-- Location: FF_X40_Y21_N23
\u0|u12|program[1][1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~9_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][1][9]~q\);

-- Location: LCCOMB_X41_Y23_N30
\u0|u12|Mux70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux70~0_combout\ = (\u0|u1|q\(0) & ((\u0|u0|q\(1)) # ((\u0|u12|program[1][1][9]~q\)))) # (!\u0|u1|q\(0) & (!\u0|u0|q\(1) & (\u0|u12|program[1][0][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u0|q\(1),
	datac => \u0|u12|program[1][0][9]~q\,
	datad => \u0|u12|program[1][1][9]~q\,
	combout => \u0|u12|Mux70~0_combout\);

-- Location: LCCOMB_X43_Y21_N12
\u0|u12|program[3][1][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[3][1][9]~feeder_combout\ = \u0|u11|Add0~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~9_combout\,
	combout => \u0|u12|program[3][1][9]~feeder_combout\);

-- Location: FF_X43_Y21_N13
\u0|u12|program[3][1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[3][1][9]~feeder_combout\,
	ena => \u0|u12|program[3][1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][1][9]~q\);

-- Location: FF_X41_Y21_N17
\u0|u12|program[3][0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~9_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][0][9]~q\);

-- Location: LCCOMB_X41_Y21_N16
\u0|u12|Mux70~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux70~1_combout\ = (\u0|u12|Mux70~0_combout\ & ((\u0|u12|program[3][1][9]~q\) # ((!\u0|u0|q\(1))))) # (!\u0|u12|Mux70~0_combout\ & (((\u0|u12|program[3][0][9]~q\ & \u0|u0|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|Mux70~0_combout\,
	datab => \u0|u12|program[3][1][9]~q\,
	datac => \u0|u12|program[3][0][9]~q\,
	datad => \u0|u0|q\(1),
	combout => \u0|u12|Mux70~1_combout\);

-- Location: LCCOMB_X41_Y21_N0
\u0|u12|Mux70~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux70~9_combout\ = (\u0|u0|q\(0) & ((\u0|u12|Mux70~6_combout\ & (\u0|u12|Mux70~8_combout\)) # (!\u0|u12|Mux70~6_combout\ & ((\u0|u12|Mux70~1_combout\))))) # (!\u0|u0|q\(0) & (((\u0|u12|Mux70~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|Mux70~8_combout\,
	datab => \u0|u0|q\(0),
	datac => \u0|u12|Mux70~6_combout\,
	datad => \u0|u12|Mux70~1_combout\,
	combout => \u0|u12|Mux70~9_combout\);

-- Location: LCCOMB_X39_Y21_N20
\u0|u11|c[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|c[10]~20_combout\ = (\u0|u12|Mux69~9_combout\ & (\u0|u11|c[9]~19\ $ (GND))) # (!\u0|u12|Mux69~9_combout\ & (!\u0|u11|c[9]~19\ & VCC))
-- \u0|u11|c[10]~21\ = CARRY((\u0|u12|Mux69~9_combout\ & !\u0|u11|c[9]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|u12|Mux69~9_combout\,
	datad => VCC,
	cin => \u0|u11|c[9]~19\,
	combout => \u0|u11|c[10]~20_combout\,
	cout => \u0|u11|c[10]~21\);

-- Location: LCCOMB_X40_Y21_N8
\u0|u11|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|Add0~10_combout\ = (!\u1|current_state.s6~q\ & \u0|u11|c[10]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|current_state.s6~q\,
	datad => \u0|u11|c[10]~20_combout\,
	combout => \u0|u11|Add0~10_combout\);

-- Location: FF_X40_Y21_N9
\u0|u12|program[3][3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u11|Add0~10_combout\,
	ena => \u0|u12|program[3][3][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][3][10]~q\);

-- Location: FF_X39_Y22_N3
\u0|u12|program[3][1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~10_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][1][10]~q\);

-- Location: FF_X40_Y22_N23
\u0|u12|program[2][1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~10_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][1][10]~q\);

-- Location: LCCOMB_X40_Y22_N24
\u0|u12|program[2][3][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][3][10]~feeder_combout\ = \u0|u11|Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~10_combout\,
	combout => \u0|u12|program[2][3][10]~feeder_combout\);

-- Location: FF_X40_Y22_N25
\u0|u12|program[2][3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[2][3][10]~feeder_combout\,
	ena => \u0|u12|program[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][3][10]~q\);

-- Location: LCCOMB_X40_Y22_N22
\u0|u12|Mux69~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux69~7_combout\ = (\u0|u1|q\(1) & ((\u0|u0|q\(0)) # ((\u0|u12|program[2][3][10]~q\)))) # (!\u0|u1|q\(1) & (!\u0|u0|q\(0) & (\u0|u12|program[2][1][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(1),
	datab => \u0|u0|q\(0),
	datac => \u0|u12|program[2][1][10]~q\,
	datad => \u0|u12|program[2][3][10]~q\,
	combout => \u0|u12|Mux69~7_combout\);

-- Location: LCCOMB_X39_Y22_N2
\u0|u12|Mux69~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux69~8_combout\ = (\u0|u0|q\(0) & ((\u0|u12|Mux69~7_combout\ & (\u0|u12|program[3][3][10]~q\)) # (!\u0|u12|Mux69~7_combout\ & ((\u0|u12|program[3][1][10]~q\))))) # (!\u0|u0|q\(0) & (((\u0|u12|Mux69~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[3][3][10]~q\,
	datab => \u0|u0|q\(0),
	datac => \u0|u12|program[3][1][10]~q\,
	datad => \u0|u12|Mux69~7_combout\,
	combout => \u0|u12|Mux69~8_combout\);

-- Location: FF_X40_Y21_N19
\u0|u12|program[1][1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~10_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][1][10]~q\);

-- Location: LCCOMB_X41_Y22_N28
\u0|u12|program[0][3][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][3][10]~feeder_combout\ = \u0|u11|Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~10_combout\,
	combout => \u0|u12|program[0][3][10]~feeder_combout\);

-- Location: FF_X41_Y22_N29
\u0|u12|program[0][3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][3][10]~feeder_combout\,
	ena => \u0|u12|program[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][3][10]~q\);

-- Location: FF_X41_Y22_N11
\u0|u12|program[0][1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~10_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][1][10]~q\);

-- Location: LCCOMB_X41_Y22_N10
\u0|u12|Mux69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux69~0_combout\ = (\u0|u1|q\(1) & ((\u0|u12|program[0][3][10]~q\) # ((\u0|u0|q\(0))))) # (!\u0|u1|q\(1) & (((\u0|u12|program[0][1][10]~q\ & !\u0|u0|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[0][3][10]~q\,
	datab => \u0|u1|q\(1),
	datac => \u0|u12|program[0][1][10]~q\,
	datad => \u0|u0|q\(0),
	combout => \u0|u12|Mux69~0_combout\);

-- Location: FF_X39_Y22_N23
\u0|u12|program[1][3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~10_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][3][10]~q\);

-- Location: LCCOMB_X39_Y22_N22
\u0|u12|Mux69~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux69~1_combout\ = (\u0|u12|Mux69~0_combout\ & (((\u0|u12|program[1][3][10]~q\) # (!\u0|u0|q\(0))))) # (!\u0|u12|Mux69~0_combout\ & (\u0|u12|program[1][1][10]~q\ & ((\u0|u0|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[1][1][10]~q\,
	datab => \u0|u12|Mux69~0_combout\,
	datac => \u0|u12|program[1][3][10]~q\,
	datad => \u0|u0|q\(0),
	combout => \u0|u12|Mux69~1_combout\);

-- Location: LCCOMB_X40_Y23_N24
\u0|u12|program[0][2][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][2][10]~feeder_combout\ = \u0|u11|Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~10_combout\,
	combout => \u0|u12|program[0][2][10]~feeder_combout\);

-- Location: FF_X40_Y23_N25
\u0|u12|program[0][2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][2][10]~feeder_combout\,
	ena => \u0|u12|program[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][2][10]~q\);

-- Location: FF_X40_Y23_N19
\u0|u12|program[1][2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~10_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][2][10]~q\);

-- Location: FF_X41_Y23_N29
\u0|u12|program[0][0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~10_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][0][10]~q\);

-- Location: LCCOMB_X41_Y23_N2
\u0|u12|program[1][0][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[1][0][10]~feeder_combout\ = \u0|u11|Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~10_combout\,
	combout => \u0|u12|program[1][0][10]~feeder_combout\);

-- Location: FF_X41_Y23_N3
\u0|u12|program[1][0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[1][0][10]~feeder_combout\,
	ena => \u0|u12|program[1][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][0][10]~q\);

-- Location: LCCOMB_X41_Y23_N28
\u0|u12|Mux69~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux69~4_combout\ = (\u0|u1|q\(1) & (\u0|u0|q\(0))) # (!\u0|u1|q\(1) & ((\u0|u0|q\(0) & ((\u0|u12|program[1][0][10]~q\))) # (!\u0|u0|q\(0) & (\u0|u12|program[0][0][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(1),
	datab => \u0|u0|q\(0),
	datac => \u0|u12|program[0][0][10]~q\,
	datad => \u0|u12|program[1][0][10]~q\,
	combout => \u0|u12|Mux69~4_combout\);

-- Location: LCCOMB_X40_Y23_N18
\u0|u12|Mux69~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux69~5_combout\ = (\u0|u1|q\(1) & ((\u0|u12|Mux69~4_combout\ & ((\u0|u12|program[1][2][10]~q\))) # (!\u0|u12|Mux69~4_combout\ & (\u0|u12|program[0][2][10]~q\)))) # (!\u0|u1|q\(1) & (((\u0|u12|Mux69~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(1),
	datab => \u0|u12|program[0][2][10]~q\,
	datac => \u0|u12|program[1][2][10]~q\,
	datad => \u0|u12|Mux69~4_combout\,
	combout => \u0|u12|Mux69~5_combout\);

-- Location: LCCOMB_X36_Y21_N30
\u0|u12|program[2][2][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][2][10]~feeder_combout\ = \u0|u11|Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~10_combout\,
	combout => \u0|u12|program[2][2][10]~feeder_combout\);

-- Location: FF_X36_Y21_N31
\u0|u12|program[2][2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[2][2][10]~feeder_combout\,
	ena => \u0|u12|program[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][2][10]~q\);

-- Location: FF_X36_Y21_N1
\u0|u12|program[3][2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~10_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][2][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][2][10]~q\);

-- Location: LCCOMB_X41_Y21_N18
\u0|u12|program[3][0][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[3][0][10]~feeder_combout\ = \u0|u11|Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~10_combout\,
	combout => \u0|u12|program[3][0][10]~feeder_combout\);

-- Location: FF_X41_Y21_N19
\u0|u12|program[3][0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[3][0][10]~feeder_combout\,
	ena => \u0|u12|program[3][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][0][10]~q\);

-- Location: FF_X41_Y21_N29
\u0|u12|program[2][0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~10_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][0][10]~q\);

-- Location: LCCOMB_X41_Y21_N28
\u0|u12|Mux69~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux69~2_combout\ = (\u0|u1|q\(1) & (((\u0|u0|q\(0))))) # (!\u0|u1|q\(1) & ((\u0|u0|q\(0) & (\u0|u12|program[3][0][10]~q\)) # (!\u0|u0|q\(0) & ((\u0|u12|program[2][0][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[3][0][10]~q\,
	datab => \u0|u1|q\(1),
	datac => \u0|u12|program[2][0][10]~q\,
	datad => \u0|u0|q\(0),
	combout => \u0|u12|Mux69~2_combout\);

-- Location: LCCOMB_X36_Y21_N0
\u0|u12|Mux69~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux69~3_combout\ = (\u0|u1|q\(1) & ((\u0|u12|Mux69~2_combout\ & ((\u0|u12|program[3][2][10]~q\))) # (!\u0|u12|Mux69~2_combout\ & (\u0|u12|program[2][2][10]~q\)))) # (!\u0|u1|q\(1) & (((\u0|u12|Mux69~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[2][2][10]~q\,
	datab => \u0|u1|q\(1),
	datac => \u0|u12|program[3][2][10]~q\,
	datad => \u0|u12|Mux69~2_combout\,
	combout => \u0|u12|Mux69~3_combout\);

-- Location: LCCOMB_X39_Y22_N28
\u0|u12|Mux69~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux69~6_combout\ = (\u0|u1|q\(0) & (\u0|u0|q\(1))) # (!\u0|u1|q\(0) & ((\u0|u0|q\(1) & ((\u0|u12|Mux69~3_combout\))) # (!\u0|u0|q\(1) & (\u0|u12|Mux69~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u0|q\(1),
	datac => \u0|u12|Mux69~5_combout\,
	datad => \u0|u12|Mux69~3_combout\,
	combout => \u0|u12|Mux69~6_combout\);

-- Location: LCCOMB_X39_Y22_N0
\u0|u12|Mux69~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux69~9_combout\ = (\u0|u1|q\(0) & ((\u0|u12|Mux69~6_combout\ & (\u0|u12|Mux69~8_combout\)) # (!\u0|u12|Mux69~6_combout\ & ((\u0|u12|Mux69~1_combout\))))) # (!\u0|u1|q\(0) & (((\u0|u12|Mux69~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u12|Mux69~8_combout\,
	datac => \u0|u12|Mux69~1_combout\,
	datad => \u0|u12|Mux69~6_combout\,
	combout => \u0|u12|Mux69~9_combout\);

-- Location: LCCOMB_X39_Y21_N22
\u0|u11|c[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|c[11]~22_combout\ = (\u0|u12|Mux68~9_combout\ & (!\u0|u11|c[10]~21\)) # (!\u0|u12|Mux68~9_combout\ & ((\u0|u11|c[10]~21\) # (GND)))
-- \u0|u11|c[11]~23\ = CARRY((!\u0|u11|c[10]~21\) # (!\u0|u12|Mux68~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|Mux68~9_combout\,
	datad => VCC,
	cin => \u0|u11|c[10]~21\,
	combout => \u0|u11|c[11]~22_combout\,
	cout => \u0|u11|c[11]~23\);

-- Location: LCCOMB_X40_Y21_N14
\u0|u11|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|Add0~11_combout\ = (!\u1|current_state.s6~q\ & \u0|u11|c[11]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|current_state.s6~q\,
	datad => \u0|u11|c[11]~22_combout\,
	combout => \u0|u11|Add0~11_combout\);

-- Location: LCCOMB_X40_Y19_N18
\u0|u12|program[2][0][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][0][11]~feeder_combout\ = \u0|u11|Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~11_combout\,
	combout => \u0|u12|program[2][0][11]~feeder_combout\);

-- Location: FF_X40_Y19_N19
\u0|u12|program[2][0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[2][0][11]~feeder_combout\,
	ena => \u0|u12|program[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][0][11]~q\);

-- Location: FF_X39_Y19_N3
\u0|u12|program[2][1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~11_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][1][11]~q\);

-- Location: FF_X39_Y19_N29
\u0|u12|program[0][0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~11_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][0][11]~q\);

-- Location: LCCOMB_X41_Y22_N14
\u0|u12|program[0][1][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][1][11]~feeder_combout\ = \u0|u11|Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~11_combout\,
	combout => \u0|u12|program[0][1][11]~feeder_combout\);

-- Location: FF_X41_Y22_N15
\u0|u12|program[0][1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][1][11]~feeder_combout\,
	ena => \u0|u12|program[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][1][11]~q\);

-- Location: LCCOMB_X39_Y19_N28
\u0|u12|Mux68~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux68~4_combout\ = (\u0|u1|q\(0) & ((\u0|u0|q\(1)) # ((\u0|u12|program[0][1][11]~q\)))) # (!\u0|u1|q\(0) & (!\u0|u0|q\(1) & (\u0|u12|program[0][0][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u0|q\(1),
	datac => \u0|u12|program[0][0][11]~q\,
	datad => \u0|u12|program[0][1][11]~q\,
	combout => \u0|u12|Mux68~4_combout\);

-- Location: LCCOMB_X39_Y19_N2
\u0|u12|Mux68~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux68~5_combout\ = (\u0|u0|q\(1) & ((\u0|u12|Mux68~4_combout\ & ((\u0|u12|program[2][1][11]~q\))) # (!\u0|u12|Mux68~4_combout\ & (\u0|u12|program[2][0][11]~q\)))) # (!\u0|u0|q\(1) & (((\u0|u12|Mux68~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(1),
	datab => \u0|u12|program[2][0][11]~q\,
	datac => \u0|u12|program[2][1][11]~q\,
	datad => \u0|u12|Mux68~4_combout\,
	combout => \u0|u12|Mux68~5_combout\);

-- Location: FF_X40_Y21_N15
\u0|u12|program[1][1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u11|Add0~11_combout\,
	ena => \u0|u12|program[1][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][1][11]~q\);

-- Location: FF_X43_Y21_N21
\u0|u12|program[3][1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~11_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][1][11]~q\);

-- Location: LCCOMB_X41_Y21_N6
\u0|u12|program[3][0][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[3][0][11]~feeder_combout\ = \u0|u11|Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~11_combout\,
	combout => \u0|u12|program[3][0][11]~feeder_combout\);

-- Location: FF_X41_Y21_N7
\u0|u12|program[3][0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[3][0][11]~feeder_combout\,
	ena => \u0|u12|program[3][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][0][11]~q\);

-- Location: FF_X43_Y21_N11
\u0|u12|program[1][0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~11_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][0][11]~q\);

-- Location: LCCOMB_X43_Y21_N10
\u0|u12|Mux68~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux68~2_combout\ = (\u0|u0|q\(1) & ((\u0|u12|program[3][0][11]~q\) # ((\u0|u1|q\(0))))) # (!\u0|u0|q\(1) & (((\u0|u12|program[1][0][11]~q\ & !\u0|u1|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[3][0][11]~q\,
	datab => \u0|u0|q\(1),
	datac => \u0|u12|program[1][0][11]~q\,
	datad => \u0|u1|q\(0),
	combout => \u0|u12|Mux68~2_combout\);

-- Location: LCCOMB_X43_Y21_N20
\u0|u12|Mux68~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux68~3_combout\ = (\u0|u1|q\(0) & ((\u0|u12|Mux68~2_combout\ & ((\u0|u12|program[3][1][11]~q\))) # (!\u0|u12|Mux68~2_combout\ & (\u0|u12|program[1][1][11]~q\)))) # (!\u0|u1|q\(0) & (((\u0|u12|Mux68~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u12|program[1][1][11]~q\,
	datac => \u0|u12|program[3][1][11]~q\,
	datad => \u0|u12|Mux68~2_combout\,
	combout => \u0|u12|Mux68~3_combout\);

-- Location: LCCOMB_X43_Y21_N26
\u0|u12|Mux68~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux68~6_combout\ = (\u0|u0|q\(0) & ((\u0|u1|q\(1)) # ((\u0|u12|Mux68~3_combout\)))) # (!\u0|u0|q\(0) & (!\u0|u1|q\(1) & (\u0|u12|Mux68~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(0),
	datab => \u0|u1|q\(1),
	datac => \u0|u12|Mux68~5_combout\,
	datad => \u0|u12|Mux68~3_combout\,
	combout => \u0|u12|Mux68~6_combout\);

-- Location: LCCOMB_X40_Y22_N4
\u0|u12|program[2][3][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][3][11]~feeder_combout\ = \u0|u11|Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~11_combout\,
	combout => \u0|u12|program[2][3][11]~feeder_combout\);

-- Location: FF_X40_Y22_N5
\u0|u12|program[2][3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[2][3][11]~feeder_combout\,
	ena => \u0|u12|program[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][3][11]~q\);

-- Location: FF_X43_Y23_N23
\u0|u12|program[2][2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~11_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][2][11]~q\);

-- Location: FF_X40_Y23_N17
\u0|u12|program[0][2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~11_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][2][11]~q\);

-- Location: LCCOMB_X41_Y22_N0
\u0|u12|program[0][3][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][3][11]~feeder_combout\ = \u0|u11|Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~11_combout\,
	combout => \u0|u12|program[0][3][11]~feeder_combout\);

-- Location: FF_X41_Y22_N1
\u0|u12|program[0][3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][3][11]~feeder_combout\,
	ena => \u0|u12|program[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][3][11]~q\);

-- Location: LCCOMB_X40_Y23_N16
\u0|u12|Mux68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux68~0_combout\ = (\u0|u1|q\(0) & ((\u0|u0|q\(1)) # ((\u0|u12|program[0][3][11]~q\)))) # (!\u0|u1|q\(0) & (!\u0|u0|q\(1) & (\u0|u12|program[0][2][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u0|q\(1),
	datac => \u0|u12|program[0][2][11]~q\,
	datad => \u0|u12|program[0][3][11]~q\,
	combout => \u0|u12|Mux68~0_combout\);

-- Location: LCCOMB_X43_Y23_N22
\u0|u12|Mux68~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux68~1_combout\ = (\u0|u0|q\(1) & ((\u0|u12|Mux68~0_combout\ & (\u0|u12|program[2][3][11]~q\)) # (!\u0|u12|Mux68~0_combout\ & ((\u0|u12|program[2][2][11]~q\))))) # (!\u0|u0|q\(1) & (((\u0|u12|Mux68~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[2][3][11]~q\,
	datab => \u0|u0|q\(1),
	datac => \u0|u12|program[2][2][11]~q\,
	datad => \u0|u12|Mux68~0_combout\,
	combout => \u0|u12|Mux68~1_combout\);

-- Location: FF_X40_Y21_N5
\u0|u12|program[3][3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~11_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][3][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][3][11]~q\);

-- Location: FF_X39_Y22_N15
\u0|u12|program[1][3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~11_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][3][11]~q\);

-- Location: FF_X40_Y23_N31
\u0|u12|program[1][2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~11_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][2][11]~q\);

-- Location: FF_X40_Y20_N17
\u0|u12|program[3][2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~11_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][2][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][2][11]~q\);

-- Location: LCCOMB_X40_Y23_N30
\u0|u12|Mux68~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux68~7_combout\ = (\u0|u1|q\(0) & (\u0|u0|q\(1))) # (!\u0|u1|q\(0) & ((\u0|u0|q\(1) & ((\u0|u12|program[3][2][11]~q\))) # (!\u0|u0|q\(1) & (\u0|u12|program[1][2][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u0|q\(1),
	datac => \u0|u12|program[1][2][11]~q\,
	datad => \u0|u12|program[3][2][11]~q\,
	combout => \u0|u12|Mux68~7_combout\);

-- Location: LCCOMB_X39_Y22_N14
\u0|u12|Mux68~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux68~8_combout\ = (\u0|u1|q\(0) & ((\u0|u12|Mux68~7_combout\ & (\u0|u12|program[3][3][11]~q\)) # (!\u0|u12|Mux68~7_combout\ & ((\u0|u12|program[1][3][11]~q\))))) # (!\u0|u1|q\(0) & (((\u0|u12|Mux68~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[3][3][11]~q\,
	datab => \u0|u1|q\(0),
	datac => \u0|u12|program[1][3][11]~q\,
	datad => \u0|u12|Mux68~7_combout\,
	combout => \u0|u12|Mux68~8_combout\);

-- Location: LCCOMB_X43_Y21_N4
\u0|u12|Mux68~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux68~9_combout\ = (\u0|u12|Mux68~6_combout\ & (((\u0|u12|Mux68~8_combout\)) # (!\u0|u1|q\(1)))) # (!\u0|u12|Mux68~6_combout\ & (\u0|u1|q\(1) & (\u0|u12|Mux68~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|Mux68~6_combout\,
	datab => \u0|u1|q\(1),
	datac => \u0|u12|Mux68~1_combout\,
	datad => \u0|u12|Mux68~8_combout\,
	combout => \u0|u12|Mux68~9_combout\);

-- Location: LCCOMB_X39_Y21_N24
\u0|u11|c[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|c[12]~24_combout\ = (\u0|u12|Mux67~9_combout\ & (\u0|u11|c[11]~23\ $ (GND))) # (!\u0|u12|Mux67~9_combout\ & (!\u0|u11|c[11]~23\ & VCC))
-- \u0|u11|c[12]~25\ = CARRY((\u0|u12|Mux67~9_combout\ & !\u0|u11|c[11]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|u12|Mux67~9_combout\,
	datad => VCC,
	cin => \u0|u11|c[11]~23\,
	combout => \u0|u11|c[12]~24_combout\,
	cout => \u0|u11|c[12]~25\);

-- Location: LCCOMB_X40_Y21_N22
\u0|u11|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|Add0~12_combout\ = (!\u1|current_state.s6~q\ & \u0|u11|c[12]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|current_state.s6~q\,
	datad => \u0|u11|c[12]~24_combout\,
	combout => \u0|u11|Add0~12_combout\);

-- Location: LCCOMB_X41_Y21_N24
\u0|u12|program[3][0][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[3][0][12]~feeder_combout\ = \u0|u11|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~12_combout\,
	combout => \u0|u12|program[3][0][12]~feeder_combout\);

-- Location: FF_X41_Y21_N25
\u0|u12|program[3][0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[3][0][12]~feeder_combout\,
	ena => \u0|u12|program[3][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][0][12]~q\);

-- Location: FF_X44_Y21_N23
\u0|u12|program[3][2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~12_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][2][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][2][12]~q\);

-- Location: LCCOMB_X45_Y21_N28
\u0|u12|program[2][2][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][2][12]~feeder_combout\ = \u0|u11|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~12_combout\,
	combout => \u0|u12|program[2][2][12]~feeder_combout\);

-- Location: FF_X45_Y21_N29
\u0|u12|program[2][2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[2][2][12]~feeder_combout\,
	ena => \u0|u12|program[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][2][12]~q\);

-- Location: FF_X45_Y21_N27
\u0|u12|program[2][0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~12_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][0][12]~q\);

-- Location: LCCOMB_X45_Y21_N26
\u0|u12|Mux67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux67~0_combout\ = (\u0|u1|q\(1) & ((\u0|u12|program[2][2][12]~q\) # ((\u0|u0|q\(0))))) # (!\u0|u1|q\(1) & (((\u0|u12|program[2][0][12]~q\ & !\u0|u0|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(1),
	datab => \u0|u12|program[2][2][12]~q\,
	datac => \u0|u12|program[2][0][12]~q\,
	datad => \u0|u0|q\(0),
	combout => \u0|u12|Mux67~0_combout\);

-- Location: LCCOMB_X44_Y21_N22
\u0|u12|Mux67~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux67~1_combout\ = (\u0|u0|q\(0) & ((\u0|u12|Mux67~0_combout\ & ((\u0|u12|program[3][2][12]~q\))) # (!\u0|u12|Mux67~0_combout\ & (\u0|u12|program[3][0][12]~q\)))) # (!\u0|u0|q\(0) & (((\u0|u12|Mux67~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[3][0][12]~q\,
	datab => \u0|u0|q\(0),
	datac => \u0|u12|program[3][2][12]~q\,
	datad => \u0|u12|Mux67~0_combout\,
	combout => \u0|u12|Mux67~1_combout\);

-- Location: LCCOMB_X38_Y21_N0
\u0|u12|program[3][3][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[3][3][12]~feeder_combout\ = \u0|u11|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~12_combout\,
	combout => \u0|u12|program[3][3][12]~feeder_combout\);

-- Location: FF_X38_Y21_N1
\u0|u12|program[3][3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[3][3][12]~feeder_combout\,
	ena => \u0|u12|program[3][3][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][3][12]~q\);

-- Location: FF_X40_Y22_N31
\u0|u12|program[2][3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~12_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][3][12]~q\);

-- Location: LCCOMB_X43_Y21_N22
\u0|u12|program[3][1][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[3][1][12]~feeder_combout\ = \u0|u11|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~12_combout\,
	combout => \u0|u12|program[3][1][12]~feeder_combout\);

-- Location: FF_X43_Y21_N23
\u0|u12|program[3][1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[3][1][12]~feeder_combout\,
	ena => \u0|u12|program[3][1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][1][12]~q\);

-- Location: FF_X40_Y22_N1
\u0|u12|program[2][1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~12_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][1][12]~q\);

-- Location: LCCOMB_X40_Y22_N0
\u0|u12|Mux67~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux67~7_combout\ = (\u0|u0|q\(0) & ((\u0|u12|program[3][1][12]~q\) # ((\u0|u1|q\(1))))) # (!\u0|u0|q\(0) & (((\u0|u12|program[2][1][12]~q\ & !\u0|u1|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[3][1][12]~q\,
	datab => \u0|u0|q\(0),
	datac => \u0|u12|program[2][1][12]~q\,
	datad => \u0|u1|q\(1),
	combout => \u0|u12|Mux67~7_combout\);

-- Location: LCCOMB_X40_Y22_N30
\u0|u12|Mux67~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux67~8_combout\ = (\u0|u1|q\(1) & ((\u0|u12|Mux67~7_combout\ & (\u0|u12|program[3][3][12]~q\)) # (!\u0|u12|Mux67~7_combout\ & ((\u0|u12|program[2][3][12]~q\))))) # (!\u0|u1|q\(1) & (((\u0|u12|Mux67~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[3][3][12]~q\,
	datab => \u0|u1|q\(1),
	datac => \u0|u12|program[2][3][12]~q\,
	datad => \u0|u12|Mux67~7_combout\,
	combout => \u0|u12|Mux67~8_combout\);

-- Location: LCCOMB_X36_Y23_N0
\u0|u12|program[1][0][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[1][0][12]~feeder_combout\ = \u0|u11|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~12_combout\,
	combout => \u0|u12|program[1][0][12]~feeder_combout\);

-- Location: FF_X36_Y23_N1
\u0|u12|program[1][0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[1][0][12]~feeder_combout\,
	ena => \u0|u12|program[1][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][0][12]~q\);

-- Location: FF_X40_Y23_N15
\u0|u12|program[1][2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~12_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][2][12]~q\);

-- Location: FF_X41_Y23_N7
\u0|u12|program[0][0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~12_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][0][12]~q\);

-- Location: LCCOMB_X40_Y23_N20
\u0|u12|program[0][2][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][2][12]~feeder_combout\ = \u0|u11|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~12_combout\,
	combout => \u0|u12|program[0][2][12]~feeder_combout\);

-- Location: FF_X40_Y23_N21
\u0|u12|program[0][2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][2][12]~feeder_combout\,
	ena => \u0|u12|program[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][2][12]~q\);

-- Location: LCCOMB_X41_Y23_N6
\u0|u12|Mux67~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux67~4_combout\ = (\u0|u1|q\(1) & ((\u0|u0|q\(0)) # ((\u0|u12|program[0][2][12]~q\)))) # (!\u0|u1|q\(1) & (!\u0|u0|q\(0) & (\u0|u12|program[0][0][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(1),
	datab => \u0|u0|q\(0),
	datac => \u0|u12|program[0][0][12]~q\,
	datad => \u0|u12|program[0][2][12]~q\,
	combout => \u0|u12|Mux67~4_combout\);

-- Location: LCCOMB_X40_Y23_N14
\u0|u12|Mux67~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux67~5_combout\ = (\u0|u0|q\(0) & ((\u0|u12|Mux67~4_combout\ & ((\u0|u12|program[1][2][12]~q\))) # (!\u0|u12|Mux67~4_combout\ & (\u0|u12|program[1][0][12]~q\)))) # (!\u0|u0|q\(0) & (((\u0|u12|Mux67~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[1][0][12]~q\,
	datab => \u0|u0|q\(0),
	datac => \u0|u12|program[1][2][12]~q\,
	datad => \u0|u12|Mux67~4_combout\,
	combout => \u0|u12|Mux67~5_combout\);

-- Location: LCCOMB_X41_Y22_N16
\u0|u12|program[0][3][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][3][12]~feeder_combout\ = \u0|u11|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~12_combout\,
	combout => \u0|u12|program[0][3][12]~feeder_combout\);

-- Location: FF_X41_Y22_N17
\u0|u12|program[0][3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][3][12]~feeder_combout\,
	ena => \u0|u12|program[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][3][12]~q\);

-- Location: FF_X44_Y21_N29
\u0|u12|program[1][3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~12_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][3][12]~q\);

-- Location: FF_X40_Y21_N31
\u0|u12|program[1][1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~12_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][1][12]~q\);

-- Location: FF_X41_Y22_N31
\u0|u12|program[0][1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~12_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][1][12]~q\);

-- Location: LCCOMB_X41_Y22_N30
\u0|u12|Mux67~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux67~2_combout\ = (\u0|u1|q\(1) & (((\u0|u0|q\(0))))) # (!\u0|u1|q\(1) & ((\u0|u0|q\(0) & (\u0|u12|program[1][1][12]~q\)) # (!\u0|u0|q\(0) & ((\u0|u12|program[0][1][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[1][1][12]~q\,
	datab => \u0|u1|q\(1),
	datac => \u0|u12|program[0][1][12]~q\,
	datad => \u0|u0|q\(0),
	combout => \u0|u12|Mux67~2_combout\);

-- Location: LCCOMB_X44_Y21_N28
\u0|u12|Mux67~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux67~3_combout\ = (\u0|u1|q\(1) & ((\u0|u12|Mux67~2_combout\ & ((\u0|u12|program[1][3][12]~q\))) # (!\u0|u12|Mux67~2_combout\ & (\u0|u12|program[0][3][12]~q\)))) # (!\u0|u1|q\(1) & (((\u0|u12|Mux67~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(1),
	datab => \u0|u12|program[0][3][12]~q\,
	datac => \u0|u12|program[1][3][12]~q\,
	datad => \u0|u12|Mux67~2_combout\,
	combout => \u0|u12|Mux67~3_combout\);

-- Location: LCCOMB_X44_Y21_N10
\u0|u12|Mux67~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux67~6_combout\ = (\u0|u1|q\(0) & ((\u0|u0|q\(1)) # ((\u0|u12|Mux67~3_combout\)))) # (!\u0|u1|q\(0) & (!\u0|u0|q\(1) & (\u0|u12|Mux67~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u0|q\(1),
	datac => \u0|u12|Mux67~5_combout\,
	datad => \u0|u12|Mux67~3_combout\,
	combout => \u0|u12|Mux67~6_combout\);

-- Location: LCCOMB_X44_Y21_N0
\u0|u12|Mux67~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux67~9_combout\ = (\u0|u0|q\(1) & ((\u0|u12|Mux67~6_combout\ & ((\u0|u12|Mux67~8_combout\))) # (!\u0|u12|Mux67~6_combout\ & (\u0|u12|Mux67~1_combout\)))) # (!\u0|u0|q\(1) & (((\u0|u12|Mux67~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|Mux67~1_combout\,
	datab => \u0|u0|q\(1),
	datac => \u0|u12|Mux67~8_combout\,
	datad => \u0|u12|Mux67~6_combout\,
	combout => \u0|u12|Mux67~9_combout\);

-- Location: LCCOMB_X39_Y21_N26
\u0|u11|c[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|c[13]~26_combout\ = (\u0|u12|Mux66~9_combout\ & (!\u0|u11|c[12]~25\)) # (!\u0|u12|Mux66~9_combout\ & ((\u0|u11|c[12]~25\) # (GND)))
-- \u0|u11|c[13]~27\ = CARRY((!\u0|u11|c[12]~25\) # (!\u0|u12|Mux66~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|u12|Mux66~9_combout\,
	datad => VCC,
	cin => \u0|u11|c[12]~25\,
	combout => \u0|u11|c[13]~26_combout\,
	cout => \u0|u11|c[13]~27\);

-- Location: LCCOMB_X40_Y21_N2
\u0|u11|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|Add0~13_combout\ = (\u0|u11|c[13]~26_combout\ & !\u1|current_state.s6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|c[13]~26_combout\,
	datad => \u1|current_state.s6~q\,
	combout => \u0|u11|Add0~13_combout\);

-- Location: LCCOMB_X39_Y24_N24
\u0|u12|program[0][3][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][3][13]~feeder_combout\ = \u0|u11|Add0~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~13_combout\,
	combout => \u0|u12|program[0][3][13]~feeder_combout\);

-- Location: FF_X39_Y24_N25
\u0|u12|program[0][3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][3][13]~feeder_combout\,
	ena => \u0|u12|program[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][3][13]~q\);

-- Location: FF_X40_Y24_N19
\u0|u12|program[2][3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~13_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][3][13]~q\);

-- Location: LCCOMB_X39_Y24_N6
\u0|u12|program[2][2][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][2][13]~feeder_combout\ = \u0|u11|Add0~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~13_combout\,
	combout => \u0|u12|program[2][2][13]~feeder_combout\);

-- Location: FF_X39_Y24_N7
\u0|u12|program[2][2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[2][2][13]~feeder_combout\,
	ena => \u0|u12|program[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][2][13]~q\);

-- Location: FF_X40_Y24_N1
\u0|u12|program[0][2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~13_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][2][13]~q\);

-- Location: LCCOMB_X40_Y24_N0
\u0|u12|Mux66~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux66~2_combout\ = (\u0|u1|q\(0) & (((\u0|u0|q\(1))))) # (!\u0|u1|q\(0) & ((\u0|u0|q\(1) & (\u0|u12|program[2][2][13]~q\)) # (!\u0|u0|q\(1) & ((\u0|u12|program[0][2][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u12|program[2][2][13]~q\,
	datac => \u0|u12|program[0][2][13]~q\,
	datad => \u0|u0|q\(1),
	combout => \u0|u12|Mux66~2_combout\);

-- Location: LCCOMB_X40_Y24_N18
\u0|u12|Mux66~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux66~3_combout\ = (\u0|u1|q\(0) & ((\u0|u12|Mux66~2_combout\ & ((\u0|u12|program[2][3][13]~q\))) # (!\u0|u12|Mux66~2_combout\ & (\u0|u12|program[0][3][13]~q\)))) # (!\u0|u1|q\(0) & (((\u0|u12|Mux66~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u12|program[0][3][13]~q\,
	datac => \u0|u12|program[2][3][13]~q\,
	datad => \u0|u12|Mux66~2_combout\,
	combout => \u0|u12|Mux66~3_combout\);

-- Location: LCCOMB_X35_Y21_N2
\u0|u12|program[0][1][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][1][13]~feeder_combout\ = \u0|u11|Add0~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~13_combout\,
	combout => \u0|u12|program[0][1][13]~feeder_combout\);

-- Location: FF_X35_Y21_N3
\u0|u12|program[0][1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][1][13]~feeder_combout\,
	ena => \u0|u12|program[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][1][13]~q\);

-- Location: FF_X40_Y22_N3
\u0|u12|program[2][1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~13_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][1][13]~q\);

-- Location: LCCOMB_X41_Y19_N28
\u0|u12|program[2][0][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][0][13]~feeder_combout\ = \u0|u11|Add0~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~13_combout\,
	combout => \u0|u12|program[2][0][13]~feeder_combout\);

-- Location: FF_X41_Y19_N29
\u0|u12|program[2][0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[2][0][13]~feeder_combout\,
	ena => \u0|u12|program[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][0][13]~q\);

-- Location: FF_X41_Y19_N7
\u0|u12|program[0][0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~13_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][0][13]~q\);

-- Location: LCCOMB_X41_Y19_N6
\u0|u12|Mux66~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux66~4_combout\ = (\u0|u0|q\(1) & ((\u0|u12|program[2][0][13]~q\) # ((\u0|u1|q\(0))))) # (!\u0|u0|q\(1) & (((\u0|u12|program[0][0][13]~q\ & !\u0|u1|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(1),
	datab => \u0|u12|program[2][0][13]~q\,
	datac => \u0|u12|program[0][0][13]~q\,
	datad => \u0|u1|q\(0),
	combout => \u0|u12|Mux66~4_combout\);

-- Location: LCCOMB_X40_Y22_N2
\u0|u12|Mux66~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux66~5_combout\ = (\u0|u1|q\(0) & ((\u0|u12|Mux66~4_combout\ & ((\u0|u12|program[2][1][13]~q\))) # (!\u0|u12|Mux66~4_combout\ & (\u0|u12|program[0][1][13]~q\)))) # (!\u0|u1|q\(0) & (((\u0|u12|Mux66~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[0][1][13]~q\,
	datab => \u0|u1|q\(0),
	datac => \u0|u12|program[2][1][13]~q\,
	datad => \u0|u12|Mux66~4_combout\,
	combout => \u0|u12|Mux66~5_combout\);

-- Location: LCCOMB_X40_Y24_N12
\u0|u12|Mux66~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux66~6_combout\ = (\u0|u0|q\(0) & (((\u0|u1|q\(1))))) # (!\u0|u0|q\(0) & ((\u0|u1|q\(1) & (\u0|u12|Mux66~3_combout\)) # (!\u0|u1|q\(1) & ((\u0|u12|Mux66~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(0),
	datab => \u0|u12|Mux66~3_combout\,
	datac => \u0|u1|q\(1),
	datad => \u0|u12|Mux66~5_combout\,
	combout => \u0|u12|Mux66~6_combout\);

-- Location: LCCOMB_X44_Y21_N6
\u0|u12|program[3][2][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[3][2][13]~feeder_combout\ = \u0|u11|Add0~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~13_combout\,
	combout => \u0|u12|program[3][2][13]~feeder_combout\);

-- Location: FF_X44_Y21_N7
\u0|u12|program[3][2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[3][2][13]~feeder_combout\,
	ena => \u0|u12|program[3][2][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][2][13]~q\);

-- Location: FF_X40_Y21_N3
\u0|u12|program[3][3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u11|Add0~13_combout\,
	ena => \u0|u12|program[3][3][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][3][13]~q\);

-- Location: LCCOMB_X40_Y23_N0
\u0|u12|program[1][2][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[1][2][13]~feeder_combout\ = \u0|u11|Add0~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~13_combout\,
	combout => \u0|u12|program[1][2][13]~feeder_combout\);

-- Location: FF_X40_Y23_N1
\u0|u12|program[1][2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[1][2][13]~feeder_combout\,
	ena => \u0|u12|program[1][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][2][13]~q\);

-- Location: LCCOMB_X44_Y21_N12
\u0|u12|program[1][3][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[1][3][13]~feeder_combout\ = \u0|u11|Add0~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~13_combout\,
	combout => \u0|u12|program[1][3][13]~feeder_combout\);

-- Location: FF_X44_Y21_N13
\u0|u12|program[1][3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[1][3][13]~feeder_combout\,
	ena => \u0|u12|program[1][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][3][13]~q\);

-- Location: LCCOMB_X40_Y24_N2
\u0|u12|Mux66~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux66~7_combout\ = (\u0|u0|q\(1) & (((\u0|u1|q\(0))))) # (!\u0|u0|q\(1) & ((\u0|u1|q\(0) & ((\u0|u12|program[1][3][13]~q\))) # (!\u0|u1|q\(0) & (\u0|u12|program[1][2][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[1][2][13]~q\,
	datab => \u0|u0|q\(1),
	datac => \u0|u1|q\(0),
	datad => \u0|u12|program[1][3][13]~q\,
	combout => \u0|u12|Mux66~7_combout\);

-- Location: LCCOMB_X40_Y24_N8
\u0|u12|Mux66~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux66~8_combout\ = (\u0|u0|q\(1) & ((\u0|u12|Mux66~7_combout\ & ((\u0|u12|program[3][3][13]~q\))) # (!\u0|u12|Mux66~7_combout\ & (\u0|u12|program[3][2][13]~q\)))) # (!\u0|u0|q\(1) & (((\u0|u12|Mux66~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[3][2][13]~q\,
	datab => \u0|u0|q\(1),
	datac => \u0|u12|program[3][3][13]~q\,
	datad => \u0|u12|Mux66~7_combout\,
	combout => \u0|u12|Mux66~8_combout\);

-- Location: LCCOMB_X43_Y21_N14
\u0|u12|program[3][1][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[3][1][13]~feeder_combout\ = \u0|u11|Add0~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~13_combout\,
	combout => \u0|u12|program[3][1][13]~feeder_combout\);

-- Location: FF_X43_Y21_N15
\u0|u12|program[3][1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[3][1][13]~feeder_combout\,
	ena => \u0|u12|program[3][1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][1][13]~q\);

-- Location: FF_X41_Y21_N3
\u0|u12|program[3][0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~13_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][0][13]~q\);

-- Location: LCCOMB_X40_Y21_N24
\u0|u12|program[1][1][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[1][1][13]~feeder_combout\ = \u0|u11|Add0~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~13_combout\,
	combout => \u0|u12|program[1][1][13]~feeder_combout\);

-- Location: FF_X40_Y21_N25
\u0|u12|program[1][1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[1][1][13]~feeder_combout\,
	ena => \u0|u12|program[1][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][1][13]~q\);

-- Location: FF_X43_Y21_N17
\u0|u12|program[1][0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~13_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][0][13]~q\);

-- Location: LCCOMB_X43_Y21_N16
\u0|u12|Mux66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux66~0_combout\ = (\u0|u0|q\(1) & (((\u0|u1|q\(0))))) # (!\u0|u0|q\(1) & ((\u0|u1|q\(0) & (\u0|u12|program[1][1][13]~q\)) # (!\u0|u1|q\(0) & ((\u0|u12|program[1][0][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(1),
	datab => \u0|u12|program[1][1][13]~q\,
	datac => \u0|u12|program[1][0][13]~q\,
	datad => \u0|u1|q\(0),
	combout => \u0|u12|Mux66~0_combout\);

-- Location: LCCOMB_X41_Y21_N2
\u0|u12|Mux66~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux66~1_combout\ = (\u0|u0|q\(1) & ((\u0|u12|Mux66~0_combout\ & (\u0|u12|program[3][1][13]~q\)) # (!\u0|u12|Mux66~0_combout\ & ((\u0|u12|program[3][0][13]~q\))))) # (!\u0|u0|q\(1) & (((\u0|u12|Mux66~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(1),
	datab => \u0|u12|program[3][1][13]~q\,
	datac => \u0|u12|program[3][0][13]~q\,
	datad => \u0|u12|Mux66~0_combout\,
	combout => \u0|u12|Mux66~1_combout\);

-- Location: LCCOMB_X40_Y24_N22
\u0|u12|Mux66~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux66~9_combout\ = (\u0|u12|Mux66~6_combout\ & ((\u0|u12|Mux66~8_combout\) # ((!\u0|u0|q\(0))))) # (!\u0|u12|Mux66~6_combout\ & (((\u0|u0|q\(0) & \u0|u12|Mux66~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|Mux66~6_combout\,
	datab => \u0|u12|Mux66~8_combout\,
	datac => \u0|u0|q\(0),
	datad => \u0|u12|Mux66~1_combout\,
	combout => \u0|u12|Mux66~9_combout\);

-- Location: LCCOMB_X39_Y21_N28
\u0|u11|c[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|c[14]~28_combout\ = (\u0|u12|Mux65~9_combout\ & (\u0|u11|c[13]~27\ $ (GND))) # (!\u0|u12|Mux65~9_combout\ & (!\u0|u11|c[13]~27\ & VCC))
-- \u0|u11|c[14]~29\ = CARRY((\u0|u12|Mux65~9_combout\ & !\u0|u11|c[13]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|u12|Mux65~9_combout\,
	datad => VCC,
	cin => \u0|u11|c[13]~27\,
	combout => \u0|u11|c[14]~28_combout\,
	cout => \u0|u11|c[14]~29\);

-- Location: LCCOMB_X40_Y21_N16
\u0|u11|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|Add0~14_combout\ = (!\u1|current_state.s6~q\ & \u0|u11|c[14]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|current_state.s6~q\,
	datad => \u0|u11|c[14]~28_combout\,
	combout => \u0|u11|Add0~14_combout\);

-- Location: LCCOMB_X39_Y23_N20
\u0|u12|program[0][2][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][2][14]~feeder_combout\ = \u0|u11|Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~14_combout\,
	combout => \u0|u12|program[0][2][14]~feeder_combout\);

-- Location: FF_X39_Y23_N21
\u0|u12|program[0][2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][2][14]~feeder_combout\,
	ena => \u0|u12|program[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][2][14]~q\);

-- Location: FF_X40_Y23_N11
\u0|u12|program[1][2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~14_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][2][14]~q\);

-- Location: LCCOMB_X41_Y23_N16
\u0|u12|program[1][0][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[1][0][14]~feeder_combout\ = \u0|u11|Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~14_combout\,
	combout => \u0|u12|program[1][0][14]~feeder_combout\);

-- Location: FF_X41_Y23_N17
\u0|u12|program[1][0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[1][0][14]~feeder_combout\,
	ena => \u0|u12|program[1][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][0][14]~q\);

-- Location: FF_X41_Y23_N23
\u0|u12|program[0][0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~14_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][0][14]~q\);

-- Location: LCCOMB_X41_Y23_N22
\u0|u12|Mux65~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux65~4_combout\ = (\u0|u1|q\(1) & (((\u0|u0|q\(0))))) # (!\u0|u1|q\(1) & ((\u0|u0|q\(0) & (\u0|u12|program[1][0][14]~q\)) # (!\u0|u0|q\(0) & ((\u0|u12|program[0][0][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(1),
	datab => \u0|u12|program[1][0][14]~q\,
	datac => \u0|u12|program[0][0][14]~q\,
	datad => \u0|u0|q\(0),
	combout => \u0|u12|Mux65~4_combout\);

-- Location: LCCOMB_X40_Y23_N10
\u0|u12|Mux65~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux65~5_combout\ = (\u0|u1|q\(1) & ((\u0|u12|Mux65~4_combout\ & ((\u0|u12|program[1][2][14]~q\))) # (!\u0|u12|Mux65~4_combout\ & (\u0|u12|program[0][2][14]~q\)))) # (!\u0|u1|q\(1) & (((\u0|u12|Mux65~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[0][2][14]~q\,
	datab => \u0|u1|q\(1),
	datac => \u0|u12|program[1][2][14]~q\,
	datad => \u0|u12|Mux65~4_combout\,
	combout => \u0|u12|Mux65~5_combout\);

-- Location: LCCOMB_X41_Y21_N20
\u0|u12|program[3][0][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[3][0][14]~feeder_combout\ = \u0|u11|Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~14_combout\,
	combout => \u0|u12|program[3][0][14]~feeder_combout\);

-- Location: FF_X41_Y21_N21
\u0|u12|program[3][0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[3][0][14]~feeder_combout\,
	ena => \u0|u12|program[3][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][0][14]~q\);

-- Location: FF_X41_Y21_N11
\u0|u12|program[2][0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~14_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][0][14]~q\);

-- Location: LCCOMB_X41_Y21_N10
\u0|u12|Mux65~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux65~2_combout\ = (\u0|u1|q\(1) & (((\u0|u0|q\(0))))) # (!\u0|u1|q\(1) & ((\u0|u0|q\(0) & (\u0|u12|program[3][0][14]~q\)) # (!\u0|u0|q\(0) & ((\u0|u12|program[2][0][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[3][0][14]~q\,
	datab => \u0|u1|q\(1),
	datac => \u0|u12|program[2][0][14]~q\,
	datad => \u0|u0|q\(0),
	combout => \u0|u12|Mux65~2_combout\);

-- Location: LCCOMB_X36_Y21_N22
\u0|u12|program[2][2][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][2][14]~feeder_combout\ = \u0|u11|Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~14_combout\,
	combout => \u0|u12|program[2][2][14]~feeder_combout\);

-- Location: FF_X36_Y21_N23
\u0|u12|program[2][2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[2][2][14]~feeder_combout\,
	ena => \u0|u12|program[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][2][14]~q\);

-- Location: FF_X38_Y21_N15
\u0|u12|program[3][2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~14_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][2][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][2][14]~q\);

-- Location: LCCOMB_X38_Y21_N14
\u0|u12|Mux65~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux65~3_combout\ = (\u0|u12|Mux65~2_combout\ & (((\u0|u12|program[3][2][14]~q\) # (!\u0|u1|q\(1))))) # (!\u0|u12|Mux65~2_combout\ & (\u0|u12|program[2][2][14]~q\ & ((\u0|u1|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|Mux65~2_combout\,
	datab => \u0|u12|program[2][2][14]~q\,
	datac => \u0|u12|program[3][2][14]~q\,
	datad => \u0|u1|q\(1),
	combout => \u0|u12|Mux65~3_combout\);

-- Location: LCCOMB_X39_Y22_N10
\u0|u12|Mux65~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux65~6_combout\ = (\u0|u1|q\(0) & (\u0|u0|q\(1))) # (!\u0|u1|q\(0) & ((\u0|u0|q\(1) & ((\u0|u12|Mux65~3_combout\))) # (!\u0|u0|q\(1) & (\u0|u12|Mux65~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u0|q\(1),
	datac => \u0|u12|Mux65~5_combout\,
	datad => \u0|u12|Mux65~3_combout\,
	combout => \u0|u12|Mux65~6_combout\);

-- Location: FF_X40_Y21_N11
\u0|u12|program[3][3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~14_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][3][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][3][14]~q\);

-- Location: FF_X39_Y22_N5
\u0|u12|program[3][1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~14_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][1][14]~q\);

-- Location: LCCOMB_X40_Y22_N20
\u0|u12|program[2][3][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][3][14]~feeder_combout\ = \u0|u11|Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~14_combout\,
	combout => \u0|u12|program[2][3][14]~feeder_combout\);

-- Location: FF_X40_Y22_N21
\u0|u12|program[2][3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[2][3][14]~feeder_combout\,
	ena => \u0|u12|program[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][3][14]~q\);

-- Location: FF_X40_Y22_N7
\u0|u12|program[2][1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~14_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][1][14]~q\);

-- Location: LCCOMB_X40_Y22_N6
\u0|u12|Mux65~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux65~7_combout\ = (\u0|u0|q\(0) & (((\u0|u1|q\(1))))) # (!\u0|u0|q\(0) & ((\u0|u1|q\(1) & (\u0|u12|program[2][3][14]~q\)) # (!\u0|u1|q\(1) & ((\u0|u12|program[2][1][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[2][3][14]~q\,
	datab => \u0|u0|q\(0),
	datac => \u0|u12|program[2][1][14]~q\,
	datad => \u0|u1|q\(1),
	combout => \u0|u12|Mux65~7_combout\);

-- Location: LCCOMB_X39_Y22_N4
\u0|u12|Mux65~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux65~8_combout\ = (\u0|u0|q\(0) & ((\u0|u12|Mux65~7_combout\ & (\u0|u12|program[3][3][14]~q\)) # (!\u0|u12|Mux65~7_combout\ & ((\u0|u12|program[3][1][14]~q\))))) # (!\u0|u0|q\(0) & (((\u0|u12|Mux65~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[3][3][14]~q\,
	datab => \u0|u0|q\(0),
	datac => \u0|u12|program[3][1][14]~q\,
	datad => \u0|u12|Mux65~7_combout\,
	combout => \u0|u12|Mux65~8_combout\);

-- Location: LCCOMB_X41_Y22_N8
\u0|u12|program[0][3][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][3][14]~feeder_combout\ = \u0|u11|Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|u11|Add0~14_combout\,
	combout => \u0|u12|program[0][3][14]~feeder_combout\);

-- Location: FF_X41_Y22_N9
\u0|u12|program[0][3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][3][14]~feeder_combout\,
	ena => \u0|u12|program[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][3][14]~q\);

-- Location: FF_X41_Y22_N7
\u0|u12|program[0][1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~14_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][1][14]~q\);

-- Location: LCCOMB_X41_Y22_N6
\u0|u12|Mux65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux65~0_combout\ = (\u0|u1|q\(1) & ((\u0|u12|program[0][3][14]~q\) # ((\u0|u0|q\(0))))) # (!\u0|u1|q\(1) & (((\u0|u12|program[0][1][14]~q\ & !\u0|u0|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[0][3][14]~q\,
	datab => \u0|u1|q\(1),
	datac => \u0|u12|program[0][1][14]~q\,
	datad => \u0|u0|q\(0),
	combout => \u0|u12|Mux65~0_combout\);

-- Location: FF_X40_Y21_N17
\u0|u12|program[1][1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u11|Add0~14_combout\,
	ena => \u0|u12|program[1][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][1][14]~q\);

-- Location: FF_X39_Y22_N25
\u0|u12|program[1][3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~14_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][3][14]~q\);

-- Location: LCCOMB_X39_Y22_N24
\u0|u12|Mux65~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux65~1_combout\ = (\u0|u12|Mux65~0_combout\ & (((\u0|u12|program[1][3][14]~q\) # (!\u0|u0|q\(0))))) # (!\u0|u12|Mux65~0_combout\ & (\u0|u12|program[1][1][14]~q\ & ((\u0|u0|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|Mux65~0_combout\,
	datab => \u0|u12|program[1][1][14]~q\,
	datac => \u0|u12|program[1][3][14]~q\,
	datad => \u0|u0|q\(0),
	combout => \u0|u12|Mux65~1_combout\);

-- Location: LCCOMB_X39_Y22_N26
\u0|u12|Mux65~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux65~9_combout\ = (\u0|u12|Mux65~6_combout\ & ((\u0|u12|Mux65~8_combout\) # ((!\u0|u1|q\(0))))) # (!\u0|u12|Mux65~6_combout\ & (((\u0|u1|q\(0) & \u0|u12|Mux65~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|Mux65~6_combout\,
	datab => \u0|u12|Mux65~8_combout\,
	datac => \u0|u1|q\(0),
	datad => \u0|u12|Mux65~1_combout\,
	combout => \u0|u12|Mux65~9_combout\);

-- Location: LCCOMB_X39_Y21_N30
\u0|u11|c[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|c[15]~30_combout\ = \u0|u11|c[14]~29\ $ (\u0|u12|Mux64~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u0|u12|Mux64~9_combout\,
	cin => \u0|u11|c[14]~29\,
	combout => \u0|u11|c[15]~30_combout\);

-- Location: LCCOMB_X38_Y21_N30
\u0|u11|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u11|Add0~15_combout\ = (!\u1|current_state.s6~q\ & \u0|u11|c[15]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|current_state.s6~q\,
	datac => \u0|u11|c[15]~30_combout\,
	combout => \u0|u11|Add0~15_combout\);

-- Location: LCCOMB_X37_Y22_N24
\u0|u12|program[2][3][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][3][15]~feeder_combout\ = \u0|u11|Add0~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~15_combout\,
	combout => \u0|u12|program[2][3][15]~feeder_combout\);

-- Location: FF_X37_Y22_N25
\u0|u12|program[2][3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[2][3][15]~feeder_combout\,
	ena => \u0|u12|program[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][3][15]~q\);

-- Location: FF_X36_Y21_N13
\u0|u12|program[2][2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~15_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][2][15]~q\);

-- Location: LCCOMB_X39_Y23_N14
\u0|u12|program[0][3][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][3][15]~feeder_combout\ = \u0|u11|Add0~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~15_combout\,
	combout => \u0|u12|program[0][3][15]~feeder_combout\);

-- Location: FF_X39_Y23_N15
\u0|u12|program[0][3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][3][15]~feeder_combout\,
	ena => \u0|u12|program[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][3][15]~q\);

-- Location: FF_X39_Y23_N25
\u0|u12|program[0][2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~15_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][2][15]~q\);

-- Location: LCCOMB_X39_Y23_N24
\u0|u12|Mux64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux64~0_combout\ = (\u0|u1|q\(0) & ((\u0|u12|program[0][3][15]~q\) # ((\u0|u0|q\(1))))) # (!\u0|u1|q\(0) & (((\u0|u12|program[0][2][15]~q\ & !\u0|u0|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u12|program[0][3][15]~q\,
	datac => \u0|u12|program[0][2][15]~q\,
	datad => \u0|u0|q\(1),
	combout => \u0|u12|Mux64~0_combout\);

-- Location: LCCOMB_X36_Y21_N12
\u0|u12|Mux64~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux64~1_combout\ = (\u0|u0|q\(1) & ((\u0|u12|Mux64~0_combout\ & (\u0|u12|program[2][3][15]~q\)) # (!\u0|u12|Mux64~0_combout\ & ((\u0|u12|program[2][2][15]~q\))))) # (!\u0|u0|q\(1) & (((\u0|u12|Mux64~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(1),
	datab => \u0|u12|program[2][3][15]~q\,
	datac => \u0|u12|program[2][2][15]~q\,
	datad => \u0|u12|Mux64~0_combout\,
	combout => \u0|u12|Mux64~1_combout\);

-- Location: LCCOMB_X38_Y22_N12
\u0|u12|program[3][0][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[3][0][15]~feeder_combout\ = \u0|u11|Add0~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~15_combout\,
	combout => \u0|u12|program[3][0][15]~feeder_combout\);

-- Location: FF_X38_Y22_N13
\u0|u12|program[3][0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[3][0][15]~feeder_combout\,
	ena => \u0|u12|program[3][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][0][15]~q\);

-- Location: FF_X38_Y22_N19
\u0|u12|program[1][0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~15_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][0][15]~q\);

-- Location: LCCOMB_X38_Y22_N18
\u0|u12|Mux64~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux64~2_combout\ = (\u0|u0|q\(1) & ((\u0|u12|program[3][0][15]~q\) # ((\u0|u1|q\(0))))) # (!\u0|u0|q\(1) & (((\u0|u12|program[1][0][15]~q\ & !\u0|u1|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[3][0][15]~q\,
	datab => \u0|u0|q\(1),
	datac => \u0|u12|program[1][0][15]~q\,
	datad => \u0|u1|q\(0),
	combout => \u0|u12|Mux64~2_combout\);

-- Location: FF_X38_Y20_N27
\u0|u12|program[3][1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~15_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][1][15]~q\);

-- Location: FF_X39_Y21_N1
\u0|u12|program[1][1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~15_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][1][15]~q\);

-- Location: LCCOMB_X38_Y20_N26
\u0|u12|Mux64~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux64~3_combout\ = (\u0|u1|q\(0) & ((\u0|u12|Mux64~2_combout\ & (\u0|u12|program[3][1][15]~q\)) # (!\u0|u12|Mux64~2_combout\ & ((\u0|u12|program[1][1][15]~q\))))) # (!\u0|u1|q\(0) & (\u0|u12|Mux64~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u12|Mux64~2_combout\,
	datac => \u0|u12|program[3][1][15]~q\,
	datad => \u0|u12|program[1][1][15]~q\,
	combout => \u0|u12|Mux64~3_combout\);

-- Location: LCCOMB_X37_Y20_N12
\u0|u12|program[2][0][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[2][0][15]~feeder_combout\ = \u0|u11|Add0~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~15_combout\,
	combout => \u0|u12|program[2][0][15]~feeder_combout\);

-- Location: FF_X37_Y20_N13
\u0|u12|program[2][0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[2][0][15]~feeder_combout\,
	ena => \u0|u12|program[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][0][15]~q\);

-- Location: FF_X38_Y20_N21
\u0|u12|program[2][1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~15_combout\,
	sload => VCC,
	ena => \u0|u12|program[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[2][1][15]~q\);

-- Location: LCCOMB_X37_Y20_N22
\u0|u12|program[0][1][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|program[0][1][15]~feeder_combout\ = \u0|u11|Add0~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|u11|Add0~15_combout\,
	combout => \u0|u12|program[0][1][15]~feeder_combout\);

-- Location: FF_X37_Y20_N23
\u0|u12|program[0][1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u12|program[0][1][15]~feeder_combout\,
	ena => \u0|u12|program[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][1][15]~q\);

-- Location: FF_X37_Y21_N15
\u0|u12|program[0][0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~15_combout\,
	sload => VCC,
	ena => \u0|u12|program[0][0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[0][0][15]~q\);

-- Location: LCCOMB_X37_Y21_N14
\u0|u12|Mux64~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux64~4_combout\ = (\u0|u0|q\(1) & (((\u0|u1|q\(0))))) # (!\u0|u0|q\(1) & ((\u0|u1|q\(0) & (\u0|u12|program[0][1][15]~q\)) # (!\u0|u1|q\(0) & ((\u0|u12|program[0][0][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(1),
	datab => \u0|u12|program[0][1][15]~q\,
	datac => \u0|u12|program[0][0][15]~q\,
	datad => \u0|u1|q\(0),
	combout => \u0|u12|Mux64~4_combout\);

-- Location: LCCOMB_X38_Y20_N20
\u0|u12|Mux64~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux64~5_combout\ = (\u0|u0|q\(1) & ((\u0|u12|Mux64~4_combout\ & ((\u0|u12|program[2][1][15]~q\))) # (!\u0|u12|Mux64~4_combout\ & (\u0|u12|program[2][0][15]~q\)))) # (!\u0|u0|q\(1) & (((\u0|u12|Mux64~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|program[2][0][15]~q\,
	datab => \u0|u0|q\(1),
	datac => \u0|u12|program[2][1][15]~q\,
	datad => \u0|u12|Mux64~4_combout\,
	combout => \u0|u12|Mux64~5_combout\);

-- Location: LCCOMB_X38_Y20_N14
\u0|u12|Mux64~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux64~6_combout\ = (\u0|u0|q\(0) & ((\u0|u1|q\(1)) # ((\u0|u12|Mux64~3_combout\)))) # (!\u0|u0|q\(0) & (!\u0|u1|q\(1) & ((\u0|u12|Mux64~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(0),
	datab => \u0|u1|q\(1),
	datac => \u0|u12|Mux64~3_combout\,
	datad => \u0|u12|Mux64~5_combout\,
	combout => \u0|u12|Mux64~6_combout\);

-- Location: FF_X38_Y21_N31
\u0|u12|program[3][3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u0|u11|Add0~15_combout\,
	ena => \u0|u12|program[3][3][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][3][15]~q\);

-- Location: FF_X37_Y23_N19
\u0|u12|program[1][3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~15_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][3][15]~q\);

-- Location: FF_X38_Y21_N9
\u0|u12|program[3][2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~15_combout\,
	sload => VCC,
	ena => \u0|u12|program[3][2][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[3][2][15]~q\);

-- Location: FF_X37_Y23_N1
\u0|u12|program[1][2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u0|u11|Add0~15_combout\,
	sload => VCC,
	ena => \u0|u12|program[1][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|u12|program[1][2][15]~q\);

-- Location: LCCOMB_X37_Y23_N0
\u0|u12|Mux64~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux64~7_combout\ = (\u0|u0|q\(1) & ((\u0|u12|program[3][2][15]~q\) # ((\u0|u1|q\(0))))) # (!\u0|u0|q\(1) & (((\u0|u12|program[1][2][15]~q\ & !\u0|u1|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u0|q\(1),
	datab => \u0|u12|program[3][2][15]~q\,
	datac => \u0|u12|program[1][2][15]~q\,
	datad => \u0|u1|q\(0),
	combout => \u0|u12|Mux64~7_combout\);

-- Location: LCCOMB_X37_Y23_N18
\u0|u12|Mux64~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux64~8_combout\ = (\u0|u1|q\(0) & ((\u0|u12|Mux64~7_combout\ & (\u0|u12|program[3][3][15]~q\)) # (!\u0|u12|Mux64~7_combout\ & ((\u0|u12|program[1][3][15]~q\))))) # (!\u0|u1|q\(0) & (((\u0|u12|Mux64~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u1|q\(0),
	datab => \u0|u12|program[3][3][15]~q\,
	datac => \u0|u12|program[1][3][15]~q\,
	datad => \u0|u12|Mux64~7_combout\,
	combout => \u0|u12|Mux64~8_combout\);

-- Location: LCCOMB_X38_Y20_N8
\u0|u12|Mux64~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|u12|Mux64~9_combout\ = (\u0|u1|q\(1) & ((\u0|u12|Mux64~6_combout\ & ((\u0|u12|Mux64~8_combout\))) # (!\u0|u12|Mux64~6_combout\ & (\u0|u12|Mux64~1_combout\)))) # (!\u0|u1|q\(1) & (((\u0|u12|Mux64~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u12|Mux64~1_combout\,
	datab => \u0|u1|q\(1),
	datac => \u0|u12|Mux64~6_combout\,
	datad => \u0|u12|Mux64~8_combout\,
	combout => \u0|u12|Mux64~9_combout\);

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;

ww_result(8) <= \result[8]~output_o\;

ww_result(9) <= \result[9]~output_o\;

ww_result(10) <= \result[10]~output_o\;

ww_result(11) <= \result[11]~output_o\;

ww_result(12) <= \result[12]~output_o\;

ww_result(13) <= \result[13]~output_o\;

ww_result(14) <= \result[14]~output_o\;

ww_result(15) <= \result[15]~output_o\;

ww_i(0) <= \i[0]~output_o\;

ww_i(1) <= \i[1]~output_o\;

ww_i(2) <= \i[2]~output_o\;

ww_i(3) <= \i[3]~output_o\;

ww_i(4) <= \i[4]~output_o\;

ww_i(5) <= \i[5]~output_o\;

ww_i(6) <= \i[6]~output_o\;

ww_i(7) <= \i[7]~output_o\;

ww_j(0) <= \j[0]~output_o\;

ww_j(1) <= \j[1]~output_o\;

ww_j(2) <= \j[2]~output_o\;

ww_j(3) <= \j[3]~output_o\;

ww_j(4) <= \j[4]~output_o\;

ww_j(5) <= \j[5]~output_o\;

ww_j(6) <= \j[6]~output_o\;

ww_j(7) <= \j[7]~output_o\;
END structure;


