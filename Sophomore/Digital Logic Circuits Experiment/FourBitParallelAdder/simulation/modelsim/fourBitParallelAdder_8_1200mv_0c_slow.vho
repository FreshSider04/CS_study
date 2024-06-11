-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/22/2024 23:15:55"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fourBitParallelAdder IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	clock : IN std_logic;
	data_out : BUFFER std_logic_vector(6 DOWNTO 0);
	com : BUFFER std_logic_vector(3 DOWNTO 0);
	p : BUFFER std_logic
	);
END fourBitParallelAdder;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- com[0]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- com[1]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- com[2]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- com[3]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fourBitParallelAdder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_data_out : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_com : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_p : std_logic;
SIGNAL \DS|C1|U3|LessThan0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DS|C1|U0|LessThan0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DS|C1|U2|LessThan0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DS|C1|U1|LessThan0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \data_out[6]~output_o\ : std_logic;
SIGNAL \com[0]~output_o\ : std_logic;
SIGNAL \com[1]~output_o\ : std_logic;
SIGNAL \com[2]~output_o\ : std_logic;
SIGNAL \com[3]~output_o\ : std_logic;
SIGNAL \p~output_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \PA|FA2|u3~0_combout\ : std_logic;
SIGNAL \PA|FA3|u3~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \PA|FA4|ha2|u2~combout\ : std_logic;
SIGNAL \PA|FA3|ha2|u2~0_combout\ : std_logic;
SIGNAL \PA|FA2|ha2|u2~0_combout\ : std_logic;
SIGNAL \PA|FA4|u3~0_combout\ : std_logic;
SIGNAL \CV|one_seg[1]~2_combout\ : std_logic;
SIGNAL \CV|one_seg[3]~0_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \DS|C1|U0|count[0]~2_combout\ : std_logic;
SIGNAL \DS|C1|U0|count[1]~1_combout\ : std_logic;
SIGNAL \DS|C1|U0|count[2]~0_combout\ : std_logic;
SIGNAL \DS|C1|U0|count[2]~feeder_combout\ : std_logic;
SIGNAL \DS|C1|U0|LessThan0~combout\ : std_logic;
SIGNAL \DS|C1|U0|LessThan0~clkctrl_outclk\ : std_logic;
SIGNAL \DS|C1|U1|count[0]~2_combout\ : std_logic;
SIGNAL \DS|C1|U1|count[1]~1_combout\ : std_logic;
SIGNAL \DS|C1|U1|count[2]~0_combout\ : std_logic;
SIGNAL \DS|C1|U1|count[2]~feeder_combout\ : std_logic;
SIGNAL \DS|C1|U1|LessThan0~combout\ : std_logic;
SIGNAL \DS|C1|U1|LessThan0~clkctrl_outclk\ : std_logic;
SIGNAL \DS|C1|U2|count[0]~2_combout\ : std_logic;
SIGNAL \DS|C1|U2|count[1]~1_combout\ : std_logic;
SIGNAL \DS|C1|U2|count[2]~0_combout\ : std_logic;
SIGNAL \DS|C1|U2|count[2]~feeder_combout\ : std_logic;
SIGNAL \DS|C1|U2|LessThan0~combout\ : std_logic;
SIGNAL \DS|C1|U2|LessThan0~clkctrl_outclk\ : std_logic;
SIGNAL \DS|C1|U3|count[0]~2_combout\ : std_logic;
SIGNAL \DS|C1|U3|count[1]~1_combout\ : std_logic;
SIGNAL \DS|C1|U3|count[2]~0_combout\ : std_logic;
SIGNAL \DS|C1|U3|count[2]~feeder_combout\ : std_logic;
SIGNAL \DS|C1|U3|LessThan0~combout\ : std_logic;
SIGNAL \DS|C1|U3|LessThan0~clkctrl_outclk\ : std_logic;
SIGNAL \DS|C1|U4|count[0]~2_combout\ : std_logic;
SIGNAL \DS|C1|U4|count[1]~1_combout\ : std_logic;
SIGNAL \DS|C1|U4|count[2]~0_combout\ : std_logic;
SIGNAL \CV|one_seg[2]~1_combout\ : std_logic;
SIGNAL \DS|M1|z~4_combout\ : std_logic;
SIGNAL \CV|ten_seg[1]~0_combout\ : std_logic;
SIGNAL \CV|ten_seg[0]~1_combout\ : std_logic;
SIGNAL \DS|M1|z~3_combout\ : std_logic;
SIGNAL \PA|FA1|ha1|u2~combout\ : std_logic;
SIGNAL \DS|M1|z~2_combout\ : std_logic;
SIGNAL \DS|M1|z~0_combout\ : std_logic;
SIGNAL \DS|M1|z~1_combout\ : std_logic;
SIGNAL \DS|M1|z~5_combout\ : std_logic;
SIGNAL \DS|M2|z~0_combout\ : std_logic;
SIGNAL \DS|M2|z~1_combout\ : std_logic;
SIGNAL \DS|M3|z~1_combout\ : std_logic;
SIGNAL \DS|M3|z~2_combout\ : std_logic;
SIGNAL \DS|M4|z~2_combout\ : std_logic;
SIGNAL \DS|M3|z~0_combout\ : std_logic;
SIGNAL \DS|M3|z~3_combout\ : std_logic;
SIGNAL \DS|M4|z~3_combout\ : std_logic;
SIGNAL \DS|M4|z~6_combout\ : std_logic;
SIGNAL \DS|M4|z~4_combout\ : std_logic;
SIGNAL \DS|M4|z~5_combout\ : std_logic;
SIGNAL \DS|M5|z~0_combout\ : std_logic;
SIGNAL \DS|M5|z~1_combout\ : std_logic;
SIGNAL \DS|M6|z~1_combout\ : std_logic;
SIGNAL \DS|M6|z~0_combout\ : std_logic;
SIGNAL \DS|M7|z~0_combout\ : std_logic;
SIGNAL \DS|M6|z~2_combout\ : std_logic;
SIGNAL \DS|M7|z~1_combout\ : std_logic;
SIGNAL \DS|M7|z~2_combout\ : std_logic;
SIGNAL \DS|C1|U4|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DS|C1|U3|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DS|C1|U1|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DS|C1|U2|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DS|C1|U0|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DS|C1|U4|ALT_INV_count\ : std_logic_vector(2 DOWNTO 2);

BEGIN

ww_A <= A;
ww_B <= B;
ww_clock <= clock;
data_out <= ww_data_out;
com <= ww_com;
p <= ww_p;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\DS|C1|U3|LessThan0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DS|C1|U3|LessThan0~combout\);

\DS|C1|U0|LessThan0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DS|C1|U0|LessThan0~combout\);

\DS|C1|U2|LessThan0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DS|C1|U2|LessThan0~combout\);

\DS|C1|U1|LessThan0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DS|C1|U1|LessThan0~combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\DS|C1|U4|ALT_INV_count\(2) <= NOT \DS|C1|U4|count\(2);

-- Location: IOOBUF_X16_Y0_N23
\data_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DS|M1|z~5_combout\,
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\data_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DS|M2|z~1_combout\,
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\data_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DS|M3|z~3_combout\,
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\data_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DS|M4|z~5_combout\,
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\data_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DS|M5|z~1_combout\,
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\data_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DS|M6|z~2_combout\,
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\data_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DS|M7|z~2_combout\,
	devoe => ww_devoe,
	o => \data_out[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\com[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \com[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\com[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \com[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\com[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DS|C1|U4|count\(2),
	devoe => ww_devoe,
	o => \com[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\com[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DS|C1|U4|ALT_INV_count\(2),
	devoe => ww_devoe,
	o => \com[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\p~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \p~output_o\);

-- Location: IOIBUF_X23_Y24_N1
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X16_Y24_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X23_Y24_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X16_Y24_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X24_Y22_N16
\PA|FA2|u3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PA|FA2|u3~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\A[1]~input_o\ & (\B[0]~input_o\ & (\B[1]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \PA|FA2|u3~0_combout\);

-- Location: LCCOMB_X24_Y22_N30
\PA|FA3|u3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PA|FA3|u3~0_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\) # (\PA|FA2|u3~0_combout\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & \PA|FA2|u3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \PA|FA2|u3~0_combout\,
	combout => \PA|FA3|u3~0_combout\);

-- Location: IOIBUF_X18_Y24_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X24_Y22_N10
\PA|FA4|ha2|u2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PA|FA4|ha2|u2~combout\ = \PA|FA3|u3~0_combout\ $ (\B[3]~input_o\ $ (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PA|FA3|u3~0_combout\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \PA|FA4|ha2|u2~combout\);

-- Location: LCCOMB_X24_Y22_N8
\PA|FA3|ha2|u2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PA|FA3|ha2|u2~0_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\ $ (\PA|FA2|u3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \PA|FA2|u3~0_combout\,
	combout => \PA|FA3|ha2|u2~0_combout\);

-- Location: LCCOMB_X24_Y22_N14
\PA|FA2|ha2|u2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PA|FA2|ha2|u2~0_combout\ = \A[1]~input_o\ $ (\B[1]~input_o\ $ (((\B[0]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \PA|FA2|ha2|u2~0_combout\);

-- Location: LCCOMB_X24_Y22_N0
\PA|FA4|u3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PA|FA4|u3~0_combout\ = (\PA|FA3|u3~0_combout\ & ((\B[3]~input_o\) # (\A[3]~input_o\))) # (!\PA|FA3|u3~0_combout\ & (\B[3]~input_o\ & \A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PA|FA3|u3~0_combout\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \PA|FA4|u3~0_combout\);

-- Location: LCCOMB_X24_Y22_N2
\CV|one_seg[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CV|one_seg[1]~2_combout\ = (\PA|FA4|ha2|u2~combout\ & ((\PA|FA3|ha2|u2~0_combout\ & (!\PA|FA2|ha2|u2~0_combout\ & !\PA|FA4|u3~0_combout\)) # (!\PA|FA3|ha2|u2~0_combout\ & (\PA|FA2|ha2|u2~0_combout\ & \PA|FA4|u3~0_combout\)))) # (!\PA|FA4|ha2|u2~combout\ 
-- & (\PA|FA2|ha2|u2~0_combout\ $ (((!\PA|FA3|ha2|u2~0_combout\ & \PA|FA4|u3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PA|FA4|ha2|u2~combout\,
	datab => \PA|FA3|ha2|u2~0_combout\,
	datac => \PA|FA2|ha2|u2~0_combout\,
	datad => \PA|FA4|u3~0_combout\,
	combout => \CV|one_seg[1]~2_combout\);

-- Location: LCCOMB_X24_Y22_N24
\CV|one_seg[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CV|one_seg[3]~0_combout\ = (\PA|FA4|ha2|u2~combout\ & (!\PA|FA2|ha2|u2~0_combout\ & ((\PA|FA3|ha2|u2~0_combout\) # (!\PA|FA4|u3~0_combout\)))) # (!\PA|FA4|ha2|u2~combout\ & (!\PA|FA3|ha2|u2~0_combout\ & (\PA|FA2|ha2|u2~0_combout\ & 
-- \PA|FA4|u3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PA|FA4|ha2|u2~combout\,
	datab => \PA|FA3|ha2|u2~0_combout\,
	datac => \PA|FA2|ha2|u2~0_combout\,
	datad => \PA|FA4|u3~0_combout\,
	combout => \CV|one_seg[3]~0_combout\);

-- Location: IOIBUF_X0_Y11_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X33_Y12_N30
\DS|C1|U0|count[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|C1|U0|count[0]~2_combout\ = !\DS|C1|U0|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DS|C1|U0|count\(0),
	combout => \DS|C1|U0|count[0]~2_combout\);

-- Location: FF_X33_Y12_N31
\DS|C1|U0|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \DS|C1|U0|count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DS|C1|U0|count\(0));

-- Location: LCCOMB_X33_Y12_N24
\DS|C1|U0|count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|C1|U0|count[1]~1_combout\ = \DS|C1|U0|count\(1) $ (\DS|C1|U0|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DS|C1|U0|count\(1),
	datad => \DS|C1|U0|count\(0),
	combout => \DS|C1|U0|count[1]~1_combout\);

-- Location: FF_X33_Y12_N25
\DS|C1|U0|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \DS|C1|U0|count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DS|C1|U0|count\(1));

-- Location: LCCOMB_X33_Y12_N12
\DS|C1|U0|count[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|C1|U0|count[2]~0_combout\ = \DS|C1|U0|count\(2) $ (((\DS|C1|U0|count\(0) & \DS|C1|U0|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DS|C1|U0|count\(2),
	datac => \DS|C1|U0|count\(0),
	datad => \DS|C1|U0|count\(1),
	combout => \DS|C1|U0|count[2]~0_combout\);

-- Location: LCCOMB_X33_Y12_N10
\DS|C1|U0|count[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|C1|U0|count[2]~feeder_combout\ = \DS|C1|U0|count[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DS|C1|U0|count[2]~0_combout\,
	combout => \DS|C1|U0|count[2]~feeder_combout\);

-- Location: FF_X33_Y12_N11
\DS|C1|U0|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \DS|C1|U0|count[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DS|C1|U0|count\(2));

-- Location: LCCOMB_X33_Y12_N16
\DS|C1|U0|LessThan0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|C1|U0|LessThan0~combout\ = LCELL(\DS|C1|U0|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DS|C1|U0|count\(2),
	combout => \DS|C1|U0|LessThan0~combout\);

-- Location: CLKCTRL_G9
\DS|C1|U0|LessThan0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DS|C1|U0|LessThan0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DS|C1|U0|LessThan0~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y11_N26
\DS|C1|U1|count[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|C1|U1|count[0]~2_combout\ = !\DS|C1|U1|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DS|C1|U1|count\(0),
	combout => \DS|C1|U1|count[0]~2_combout\);

-- Location: FF_X1_Y11_N27
\DS|C1|U1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DS|C1|U0|LessThan0~clkctrl_outclk\,
	d => \DS|C1|U1|count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DS|C1|U1|count\(0));

-- Location: LCCOMB_X1_Y11_N10
\DS|C1|U1|count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|C1|U1|count[1]~1_combout\ = \DS|C1|U1|count\(1) $ (\DS|C1|U1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DS|C1|U1|count\(1),
	datad => \DS|C1|U1|count\(0),
	combout => \DS|C1|U1|count[1]~1_combout\);

-- Location: FF_X1_Y11_N11
\DS|C1|U1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DS|C1|U0|LessThan0~clkctrl_outclk\,
	d => \DS|C1|U1|count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DS|C1|U1|count\(1));

-- Location: LCCOMB_X1_Y11_N16
\DS|C1|U1|count[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|C1|U1|count[2]~0_combout\ = \DS|C1|U1|count\(2) $ (((\DS|C1|U1|count\(0) & \DS|C1|U1|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DS|C1|U1|count\(2),
	datac => \DS|C1|U1|count\(0),
	datad => \DS|C1|U1|count\(1),
	combout => \DS|C1|U1|count[2]~0_combout\);

-- Location: LCCOMB_X1_Y11_N30
\DS|C1|U1|count[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|C1|U1|count[2]~feeder_combout\ = \DS|C1|U1|count[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DS|C1|U1|count[2]~0_combout\,
	combout => \DS|C1|U1|count[2]~feeder_combout\);

-- Location: FF_X1_Y11_N31
\DS|C1|U1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DS|C1|U0|LessThan0~clkctrl_outclk\,
	d => \DS|C1|U1|count[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DS|C1|U1|count\(2));

-- Location: LCCOMB_X1_Y11_N28
\DS|C1|U1|LessThan0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|C1|U1|LessThan0~combout\ = LCELL(\DS|C1|U1|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DS|C1|U1|count\(2),
	combout => \DS|C1|U1|LessThan0~combout\);

-- Location: CLKCTRL_G1
\DS|C1|U1|LessThan0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DS|C1|U1|LessThan0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DS|C1|U1|LessThan0~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y11_N30
\DS|C1|U2|count[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|C1|U2|count[0]~2_combout\ = !\DS|C1|U2|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DS|C1|U2|count\(0),
	combout => \DS|C1|U2|count[0]~2_combout\);

-- Location: FF_X33_Y11_N31
\DS|C1|U2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DS|C1|U1|LessThan0~clkctrl_outclk\,
	d => \DS|C1|U2|count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DS|C1|U2|count\(0));

-- Location: LCCOMB_X33_Y11_N28
\DS|C1|U2|count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|C1|U2|count[1]~1_combout\ = \DS|C1|U2|count\(1) $ (\DS|C1|U2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DS|C1|U2|count\(1),
	datad => \DS|C1|U2|count\(0),
	combout => \DS|C1|U2|count[1]~1_combout\);

-- Location: FF_X33_Y11_N29
\DS|C1|U2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DS|C1|U1|LessThan0~clkctrl_outclk\,
	d => \DS|C1|U2|count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DS|C1|U2|count\(1));

-- Location: LCCOMB_X33_Y11_N24
\DS|C1|U2|count[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|C1|U2|count[2]~0_combout\ = \DS|C1|U2|count\(2) $ (((\DS|C1|U2|count\(0) & \DS|C1|U2|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DS|C1|U2|count\(2),
	datac => \DS|C1|U2|count\(0),
	datad => \DS|C1|U2|count\(1),
	combout => \DS|C1|U2|count[2]~0_combout\);

-- Location: LCCOMB_X33_Y11_N18
\DS|C1|U2|count[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|C1|U2|count[2]~feeder_combout\ = \DS|C1|U2|count[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DS|C1|U2|count[2]~0_combout\,
	combout => \DS|C1|U2|count[2]~feeder_combout\);

-- Location: FF_X33_Y11_N19
\DS|C1|U2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DS|C1|U1|LessThan0~clkctrl_outclk\,
	d => \DS|C1|U2|count[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DS|C1|U2|count\(2));

-- Location: LCCOMB_X33_Y11_N12
\DS|C1|U2|LessThan0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|C1|U2|LessThan0~combout\ = LCELL(\DS|C1|U2|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DS|C1|U2|count\(2),
	combout => \DS|C1|U2|LessThan0~combout\);

-- Location: CLKCTRL_G7
\DS|C1|U2|LessThan0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DS|C1|U2|LessThan0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DS|C1|U2|LessThan0~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y10_N22
\DS|C1|U3|count[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|C1|U3|count[0]~2_combout\ = !\DS|C1|U3|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DS|C1|U3|count\(0),
	combout => \DS|C1|U3|count[0]~2_combout\);

-- Location: FF_X1_Y10_N23
\DS|C1|U3|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DS|C1|U2|LessThan0~clkctrl_outclk\,
	d => \DS|C1|U3|count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DS|C1|U3|count\(0));

-- Location: LCCOMB_X1_Y10_N16
\DS|C1|U3|count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|C1|U3|count[1]~1_combout\ = \DS|C1|U3|count\(1) $ (\DS|C1|U3|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DS|C1|U3|count\(1),
	datad => \DS|C1|U3|count\(0),
	combout => \DS|C1|U3|count[1]~1_combout\);

-- Location: FF_X1_Y10_N17
\DS|C1|U3|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DS|C1|U2|LessThan0~clkctrl_outclk\,
	d => \DS|C1|U3|count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DS|C1|U3|count\(1));

-- Location: LCCOMB_X1_Y10_N12
\DS|C1|U3|count[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|C1|U3|count[2]~0_combout\ = \DS|C1|U3|count\(2) $ (((\DS|C1|U3|count\(0) & \DS|C1|U3|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS|C1|U3|count\(2),
	datac => \DS|C1|U3|count\(0),
	datad => \DS|C1|U3|count\(1),
	combout => \DS|C1|U3|count[2]~0_combout\);

-- Location: LCCOMB_X1_Y10_N30
\DS|C1|U3|count[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|C1|U3|count[2]~feeder_combout\ = \DS|C1|U3|count[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DS|C1|U3|count[2]~0_combout\,
	combout => \DS|C1|U3|count[2]~feeder_combout\);

-- Location: FF_X1_Y10_N31
\DS|C1|U3|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DS|C1|U2|LessThan0~clkctrl_outclk\,
	d => \DS|C1|U3|count[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DS|C1|U3|count\(2));

-- Location: LCCOMB_X1_Y10_N28
\DS|C1|U3|LessThan0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|C1|U3|LessThan0~combout\ = LCELL(\DS|C1|U3|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DS|C1|U3|count\(2),
	combout => \DS|C1|U3|LessThan0~combout\);

-- Location: CLKCTRL_G4
\DS|C1|U3|LessThan0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DS|C1|U3|LessThan0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DS|C1|U3|LessThan0~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y19_N2
\DS|C1|U4|count[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|C1|U4|count[0]~2_combout\ = !\DS|C1|U4|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DS|C1|U4|count\(0),
	combout => \DS|C1|U4|count[0]~2_combout\);

-- Location: FF_X21_Y19_N3
\DS|C1|U4|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DS|C1|U3|LessThan0~clkctrl_outclk\,
	d => \DS|C1|U4|count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DS|C1|U4|count\(0));

-- Location: LCCOMB_X21_Y19_N0
\DS|C1|U4|count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|C1|U4|count[1]~1_combout\ = \DS|C1|U4|count\(1) $ (\DS|C1|U4|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DS|C1|U4|count\(1),
	datad => \DS|C1|U4|count\(0),
	combout => \DS|C1|U4|count[1]~1_combout\);

-- Location: FF_X21_Y19_N1
\DS|C1|U4|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DS|C1|U3|LessThan0~clkctrl_outclk\,
	d => \DS|C1|U4|count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DS|C1|U4|count\(1));

-- Location: LCCOMB_X21_Y19_N20
\DS|C1|U4|count[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|C1|U4|count[2]~0_combout\ = \DS|C1|U4|count\(2) $ (((\DS|C1|U4|count\(1) & \DS|C1|U4|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DS|C1|U4|count\(1),
	datac => \DS|C1|U4|count\(2),
	datad => \DS|C1|U4|count\(0),
	combout => \DS|C1|U4|count[2]~0_combout\);

-- Location: FF_X21_Y19_N21
\DS|C1|U4|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DS|C1|U3|LessThan0~clkctrl_outclk\,
	d => \DS|C1|U4|count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DS|C1|U4|count\(2));

-- Location: LCCOMB_X24_Y22_N26
\CV|one_seg[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CV|one_seg[2]~1_combout\ = (\PA|FA3|ha2|u2~0_combout\ & ((\PA|FA4|u3~0_combout\) # ((\PA|FA4|ha2|u2~combout\ & !\PA|FA2|ha2|u2~0_combout\)))) # (!\PA|FA3|ha2|u2~0_combout\ & (((!\PA|FA4|ha2|u2~combout\ & \PA|FA2|ha2|u2~0_combout\)) # 
-- (!\PA|FA4|u3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PA|FA4|ha2|u2~combout\,
	datab => \PA|FA3|ha2|u2~0_combout\,
	datac => \PA|FA2|ha2|u2~0_combout\,
	datad => \PA|FA4|u3~0_combout\,
	combout => \CV|one_seg[2]~1_combout\);

-- Location: LCCOMB_X24_Y18_N8
\DS|M1|z~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|M1|z~4_combout\ = (\CV|one_seg[1]~2_combout\ & (\DS|C1|U4|count\(2) & ((!\CV|one_seg[2]~1_combout\) # (!\CV|one_seg[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CV|one_seg[1]~2_combout\,
	datab => \CV|one_seg[3]~0_combout\,
	datac => \DS|C1|U4|count\(2),
	datad => \CV|one_seg[2]~1_combout\,
	combout => \DS|M1|z~4_combout\);

-- Location: LCCOMB_X24_Y22_N4
\CV|ten_seg[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CV|ten_seg[1]~0_combout\ = (\PA|FA3|u3~0_combout\ & ((\PA|FA3|ha2|u2~0_combout\ & ((\B[3]~input_o\) # (\A[3]~input_o\))) # (!\PA|FA3|ha2|u2~0_combout\ & (\B[3]~input_o\ & \A[3]~input_o\)))) # (!\PA|FA3|u3~0_combout\ & (\PA|FA3|ha2|u2~0_combout\ & 
-- (\B[3]~input_o\ & \A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PA|FA3|u3~0_combout\,
	datab => \PA|FA3|ha2|u2~0_combout\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \CV|ten_seg[1]~0_combout\);

-- Location: LCCOMB_X24_Y22_N6
\CV|ten_seg[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CV|ten_seg[0]~1_combout\ = (\PA|FA4|ha2|u2~combout\ & ((\PA|FA3|ha2|u2~0_combout\ & (!\PA|FA2|ha2|u2~0_combout\ & \PA|FA4|u3~0_combout\)) # (!\PA|FA3|ha2|u2~0_combout\ & ((\PA|FA4|u3~0_combout\) # (!\PA|FA2|ha2|u2~0_combout\))))) # 
-- (!\PA|FA4|ha2|u2~combout\ & ((\PA|FA3|ha2|u2~0_combout\) # ((!\PA|FA4|u3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PA|FA4|ha2|u2~combout\,
	datab => \PA|FA3|ha2|u2~0_combout\,
	datac => \PA|FA2|ha2|u2~0_combout\,
	datad => \PA|FA4|u3~0_combout\,
	combout => \CV|ten_seg[0]~1_combout\);

-- Location: LCCOMB_X24_Y18_N22
\DS|M1|z~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|M1|z~3_combout\ = (!\DS|C1|U4|count\(2) & ((\CV|ten_seg[1]~0_combout\) # (\CV|ten_seg[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CV|ten_seg[1]~0_combout\,
	datac => \DS|C1|U4|count\(2),
	datad => \CV|ten_seg[0]~1_combout\,
	combout => \DS|M1|z~3_combout\);

-- Location: LCCOMB_X24_Y22_N28
\PA|FA1|ha1|u2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PA|FA1|ha1|u2~combout\ = \B[0]~input_o\ $ (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \PA|FA1|ha1|u2~combout\);

-- Location: LCCOMB_X24_Y18_N16
\DS|M1|z~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|M1|z~2_combout\ = (\DS|C1|U4|count\(2) & ((\PA|FA1|ha1|u2~combout\ & (!\CV|one_seg[3]~0_combout\ & !\CV|one_seg[2]~1_combout\)) # (!\PA|FA1|ha1|u2~combout\ & ((\CV|one_seg[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PA|FA1|ha1|u2~combout\,
	datab => \CV|one_seg[3]~0_combout\,
	datac => \DS|C1|U4|count\(2),
	datad => \CV|one_seg[2]~1_combout\,
	combout => \DS|M1|z~2_combout\);

-- Location: LCCOMB_X24_Y18_N0
\DS|M1|z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|M1|z~0_combout\ = (\DS|C1|U4|count\(2) & \CV|one_seg[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DS|C1|U4|count\(2),
	datad => \CV|one_seg[3]~0_combout\,
	combout => \DS|M1|z~0_combout\);

-- Location: LCCOMB_X24_Y18_N14
\DS|M1|z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|M1|z~1_combout\ = (\DS|M1|z~0_combout\ & ((\CV|one_seg[2]~1_combout\ & ((!\CV|one_seg[1]~2_combout\))) # (!\CV|one_seg[2]~1_combout\ & (!\PA|FA1|ha1|u2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PA|FA1|ha1|u2~combout\,
	datab => \DS|M1|z~0_combout\,
	datac => \CV|one_seg[1]~2_combout\,
	datad => \CV|one_seg[2]~1_combout\,
	combout => \DS|M1|z~1_combout\);

-- Location: LCCOMB_X25_Y18_N12
\DS|M1|z~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|M1|z~5_combout\ = (\DS|M1|z~4_combout\) # ((\DS|M1|z~3_combout\) # ((\DS|M1|z~2_combout\) # (\DS|M1|z~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS|M1|z~4_combout\,
	datab => \DS|M1|z~3_combout\,
	datac => \DS|M1|z~2_combout\,
	datad => \DS|M1|z~1_combout\,
	combout => \DS|M1|z~5_combout\);

-- Location: LCCOMB_X24_Y18_N30
\DS|M2|z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|M2|z~0_combout\ = (\CV|one_seg[3]~0_combout\ & ((\PA|FA1|ha1|u2~combout\ & (!\CV|one_seg[1]~2_combout\)) # (!\PA|FA1|ha1|u2~combout\ & ((\CV|one_seg[2]~1_combout\))))) # (!\CV|one_seg[3]~0_combout\ & ((\CV|one_seg[2]~1_combout\) # 
-- (\PA|FA1|ha1|u2~combout\ $ (!\CV|one_seg[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PA|FA1|ha1|u2~combout\,
	datab => \CV|one_seg[3]~0_combout\,
	datac => \CV|one_seg[1]~2_combout\,
	datad => \CV|one_seg[2]~1_combout\,
	combout => \DS|M2|z~0_combout\);

-- Location: LCCOMB_X25_Y18_N2
\DS|M2|z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|M2|z~1_combout\ = (\DS|M2|z~0_combout\) # (!\DS|C1|U4|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DS|C1|U4|count\(2),
	datad => \DS|M2|z~0_combout\,
	combout => \DS|M2|z~1_combout\);

-- Location: LCCOMB_X24_Y22_N22
\DS|M3|z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|M3|z~1_combout\ = (!\DS|C1|U4|count\(2) & ((!\CV|ten_seg[0]~1_combout\) # (!\CV|ten_seg[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CV|ten_seg[1]~0_combout\,
	datac => \DS|C1|U4|count\(2),
	datad => \CV|ten_seg[0]~1_combout\,
	combout => \DS|M3|z~1_combout\);

-- Location: LCCOMB_X24_Y22_N12
\DS|M3|z~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|M3|z~2_combout\ = (\DS|M3|z~1_combout\) # ((\PA|FA1|ha1|u2~combout\ & (\DS|C1|U4|count\(2) & !\CV|one_seg[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS|M3|z~1_combout\,
	datab => \PA|FA1|ha1|u2~combout\,
	datac => \DS|C1|U4|count\(2),
	datad => \CV|one_seg[1]~2_combout\,
	combout => \DS|M3|z~2_combout\);

-- Location: LCCOMB_X25_Y18_N0
\DS|M4|z~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|M4|z~2_combout\ = (\DS|C1|U4|count\(2) & !\CV|one_seg[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DS|C1|U4|count\(2),
	datad => \CV|one_seg[3]~0_combout\,
	combout => \DS|M4|z~2_combout\);

-- Location: LCCOMB_X24_Y22_N20
\DS|M3|z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|M3|z~0_combout\ = (\DS|M4|z~2_combout\ & (((\PA|FA1|ha1|u2~combout\) # (!\CV|one_seg[2]~1_combout\)) # (!\CV|one_seg[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS|M4|z~2_combout\,
	datab => \CV|one_seg[1]~2_combout\,
	datac => \CV|one_seg[2]~1_combout\,
	datad => \PA|FA1|ha1|u2~combout\,
	combout => \DS|M3|z~0_combout\);

-- Location: LCCOMB_X24_Y22_N18
\DS|M3|z~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|M3|z~3_combout\ = (\DS|M3|z~2_combout\) # ((\DS|M3|z~0_combout\) # ((\DS|M1|z~0_combout\ & \CV|one_seg[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS|M3|z~2_combout\,
	datab => \DS|M3|z~0_combout\,
	datac => \DS|M1|z~0_combout\,
	datad => \CV|one_seg[2]~1_combout\,
	combout => \DS|M3|z~3_combout\);

-- Location: LCCOMB_X24_Y18_N12
\DS|M4|z~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|M4|z~3_combout\ = (\PA|FA1|ha1|u2~combout\ & ((\CV|one_seg[2]~1_combout\ & (\DS|M1|z~0_combout\)) # (!\CV|one_seg[2]~1_combout\ & ((!\CV|one_seg[1]~2_combout\))))) # (!\PA|FA1|ha1|u2~combout\ & ((\CV|one_seg[1]~2_combout\ & 
-- ((!\CV|one_seg[2]~1_combout\))) # (!\CV|one_seg[1]~2_combout\ & ((\DS|M1|z~0_combout\) # (\CV|one_seg[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PA|FA1|ha1|u2~combout\,
	datab => \DS|M1|z~0_combout\,
	datac => \CV|one_seg[1]~2_combout\,
	datad => \CV|one_seg[2]~1_combout\,
	combout => \DS|M4|z~3_combout\);

-- Location: LCCOMB_X24_Y18_N18
\DS|M4|z~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|M4|z~6_combout\ = (\CV|one_seg[1]~2_combout\ & (((\CV|one_seg[2]~1_combout\)))) # (!\CV|one_seg[1]~2_combout\ & (\CV|one_seg[3]~0_combout\ & (\DS|C1|U4|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CV|one_seg[1]~2_combout\,
	datab => \CV|one_seg[3]~0_combout\,
	datac => \DS|C1|U4|count\(2),
	datad => \CV|one_seg[2]~1_combout\,
	combout => \DS|M4|z~6_combout\);

-- Location: LCCOMB_X25_Y18_N26
\DS|M4|z~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|M4|z~4_combout\ = (\DS|M4|z~6_combout\) # ((\DS|C1|U4|count\(2) & \DS|M4|z~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DS|M4|z~6_combout\,
	datac => \DS|C1|U4|count\(2),
	datad => \DS|M4|z~3_combout\,
	combout => \DS|M4|z~4_combout\);

-- Location: LCCOMB_X25_Y18_N4
\DS|M4|z~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|M4|z~5_combout\ = (\DS|M1|z~3_combout\) # ((\DS|M4|z~4_combout\ & ((\DS|M4|z~3_combout\) # (\DS|M4|z~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS|M4|z~3_combout\,
	datab => \DS|M1|z~3_combout\,
	datac => \DS|M4|z~4_combout\,
	datad => \DS|M4|z~2_combout\,
	combout => \DS|M4|z~5_combout\);

-- Location: LCCOMB_X24_Y18_N26
\DS|M5|z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|M5|z~0_combout\ = (\CV|one_seg[1]~2_combout\ & (((\CV|one_seg[3]~0_combout\)) # (!\PA|FA1|ha1|u2~combout\))) # (!\CV|one_seg[1]~2_combout\ & ((\CV|one_seg[2]~1_combout\ & (!\PA|FA1|ha1|u2~combout\)) # (!\CV|one_seg[2]~1_combout\ & 
-- ((\CV|one_seg[3]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PA|FA1|ha1|u2~combout\,
	datab => \CV|one_seg[3]~0_combout\,
	datac => \CV|one_seg[1]~2_combout\,
	datad => \CV|one_seg[2]~1_combout\,
	combout => \DS|M5|z~0_combout\);

-- Location: LCCOMB_X24_Y18_N4
\DS|M5|z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|M5|z~1_combout\ = (\DS|C1|U4|count\(2) & (\DS|M5|z~0_combout\)) # (!\DS|C1|U4|count\(2) & ((\CV|ten_seg[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS|M5|z~0_combout\,
	datac => \DS|C1|U4|count\(2),
	datad => \CV|ten_seg[0]~1_combout\,
	combout => \DS|M5|z~1_combout\);

-- Location: LCCOMB_X24_Y18_N6
\DS|M6|z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|M6|z~1_combout\ = (\PA|FA1|ha1|u2~combout\ & (!\CV|one_seg[3]~0_combout\ & ((!\CV|one_seg[2]~1_combout\)))) # (!\PA|FA1|ha1|u2~combout\ & (((!\CV|one_seg[3]~0_combout\ & !\CV|one_seg[2]~1_combout\)) # (!\CV|one_seg[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PA|FA1|ha1|u2~combout\,
	datab => \CV|one_seg[3]~0_combout\,
	datac => \CV|one_seg[1]~2_combout\,
	datad => \CV|one_seg[2]~1_combout\,
	combout => \DS|M6|z~1_combout\);

-- Location: LCCOMB_X24_Y18_N24
\DS|M6|z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|M6|z~0_combout\ = (!\CV|ten_seg[1]~0_combout\ & (!\DS|C1|U4|count\(2) & \CV|ten_seg[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CV|ten_seg[1]~0_combout\,
	datac => \DS|C1|U4|count\(2),
	datad => \CV|ten_seg[0]~1_combout\,
	combout => \DS|M6|z~0_combout\);

-- Location: LCCOMB_X24_Y18_N2
\DS|M7|z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|M7|z~0_combout\ = (\CV|one_seg[3]~0_combout\ & (\DS|C1|U4|count\(2) & ((\CV|one_seg[1]~2_combout\) # (\CV|one_seg[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CV|one_seg[1]~2_combout\,
	datab => \CV|one_seg[3]~0_combout\,
	datac => \DS|C1|U4|count\(2),
	datad => \CV|one_seg[2]~1_combout\,
	combout => \DS|M7|z~0_combout\);

-- Location: LCCOMB_X24_Y18_N28
\DS|M6|z~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|M6|z~2_combout\ = (\DS|M6|z~0_combout\) # ((\DS|M7|z~0_combout\) # ((\DS|M6|z~1_combout\ & \DS|C1|U4|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS|M6|z~1_combout\,
	datab => \DS|M6|z~0_combout\,
	datac => \DS|C1|U4|count\(2),
	datad => \DS|M7|z~0_combout\,
	combout => \DS|M6|z~2_combout\);

-- Location: LCCOMB_X24_Y18_N10
\DS|M7|z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|M7|z~1_combout\ = (\CV|one_seg[2]~1_combout\ & (((!\CV|one_seg[1]~2_combout\)))) # (!\CV|one_seg[2]~1_combout\ & ((\PA|FA1|ha1|u2~combout\ & ((\CV|one_seg[1]~2_combout\))) # (!\PA|FA1|ha1|u2~combout\ & (\CV|one_seg[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PA|FA1|ha1|u2~combout\,
	datab => \CV|one_seg[3]~0_combout\,
	datac => \CV|one_seg[1]~2_combout\,
	datad => \CV|one_seg[2]~1_combout\,
	combout => \DS|M7|z~1_combout\);

-- Location: LCCOMB_X24_Y18_N20
\DS|M7|z~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DS|M7|z~2_combout\ = (\DS|M7|z~0_combout\) # ((\DS|C1|U4|count\(2) & (!\DS|M7|z~1_combout\)) # (!\DS|C1|U4|count\(2) & ((\CV|ten_seg[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DS|M7|z~1_combout\,
	datab => \DS|M7|z~0_combout\,
	datac => \DS|C1|U4|count\(2),
	datad => \CV|ten_seg[1]~0_combout\,
	combout => \DS|M7|z~2_combout\);

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;

ww_data_out(6) <= \data_out[6]~output_o\;

ww_com(0) <= \com[0]~output_o\;

ww_com(1) <= \com[1]~output_o\;

ww_com(2) <= \com[2]~output_o\;

ww_com(3) <= \com[3]~output_o\;

ww_p <= \p~output_o\;
END structure;


