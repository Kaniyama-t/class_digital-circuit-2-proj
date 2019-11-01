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

-- DATE "11/01/2019 10:15:59"

-- 
-- Device: Altera 5M570ZT100C4 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	scounter IS
    PORT (
	CLK : IN std_logic;
	nRST : IN std_logic;
	CO : OUT std_logic;
	COUNT : OUT std_logic_vector(24 DOWNTO 0)
	);
END scounter;

-- Design Ports Information
-- CO	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- COUNT[0]	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- COUNT[1]	=>  Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- COUNT[2]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- COUNT[3]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- COUNT[4]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- COUNT[5]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- COUNT[6]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- COUNT[7]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- COUNT[8]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- COUNT[9]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- COUNT[10]	=>  Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- COUNT[11]	=>  Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- COUNT[12]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- COUNT[13]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- COUNT[14]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- COUNT[15]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- COUNT[16]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- COUNT[17]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- COUNT[18]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- COUNT[19]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- COUNT[20]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- COUNT[21]	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- COUNT[22]	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- COUNT[23]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- COUNT[24]	=>  Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLK	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nRST	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF scounter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_nRST : std_logic;
SIGNAL ww_CO : std_logic;
SIGNAL ww_COUNT : std_logic_vector(24 DOWNTO 0);
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \nRST~combout\ : std_logic;
SIGNAL \cnt_tmp[0]~49\ : std_logic;
SIGNAL \cnt_tmp[0]~49COUT1_71\ : std_logic;
SIGNAL \cnt_tmp[1]~47\ : std_logic;
SIGNAL \cnt_tmp[2]~45\ : std_logic;
SIGNAL \cnt_tmp[2]~45COUT1_73\ : std_logic;
SIGNAL \cnt_tmp[3]~43\ : std_logic;
SIGNAL \cnt_tmp[3]~43COUT1_75\ : std_logic;
SIGNAL \cnt_tmp[4]~41\ : std_logic;
SIGNAL \cnt_tmp[4]~41COUT1_77\ : std_logic;
SIGNAL \cnt_tmp[5]~39\ : std_logic;
SIGNAL \cnt_tmp[5]~39COUT1_79\ : std_logic;
SIGNAL \cnt_tmp[6]~15\ : std_logic;
SIGNAL \cnt_tmp[7]~17\ : std_logic;
SIGNAL \cnt_tmp[7]~17COUT1_81\ : std_logic;
SIGNAL \cnt_tmp[8]~19\ : std_logic;
SIGNAL \cnt_tmp[8]~19COUT1_83\ : std_logic;
SIGNAL \cnt_tmp[9]~21\ : std_logic;
SIGNAL \cnt_tmp[9]~21COUT1_85\ : std_logic;
SIGNAL \cnt_tmp[10]~23\ : std_logic;
SIGNAL \cnt_tmp[10]~23COUT1_87\ : std_logic;
SIGNAL \cnt_tmp[11]~7\ : std_logic;
SIGNAL \cnt_tmp[12]~9\ : std_logic;
SIGNAL \cnt_tmp[12]~9COUT1_89\ : std_logic;
SIGNAL \cnt_tmp[13]~11\ : std_logic;
SIGNAL \cnt_tmp[13]~11COUT1_91\ : std_logic;
SIGNAL \cnt_tmp[14]~13\ : std_logic;
SIGNAL \cnt_tmp[14]~13COUT1_93\ : std_logic;
SIGNAL \cnt_tmp[15]~1\ : std_logic;
SIGNAL \cnt_tmp[15]~1COUT1_95\ : std_logic;
SIGNAL \cnt_tmp[16]~25\ : std_logic;
SIGNAL \cnt_tmp[17]~3\ : std_logic;
SIGNAL \cnt_tmp[17]~3COUT1_97\ : std_logic;
SIGNAL \cnt_tmp[18]~27\ : std_logic;
SIGNAL \cnt_tmp[18]~27COUT1_99\ : std_logic;
SIGNAL \cnt_tmp[19]~29\ : std_logic;
SIGNAL \cnt_tmp[19]~29COUT1_101\ : std_logic;
SIGNAL \cnt_tmp[20]~31\ : std_logic;
SIGNAL \cnt_tmp[20]~31COUT1_103\ : std_logic;
SIGNAL \cnt_tmp[21]~33\ : std_logic;
SIGNAL \cnt_tmp[22]~35\ : std_logic;
SIGNAL \cnt_tmp[22]~35COUT1_105\ : std_logic;
SIGNAL \cnt_tmp[23]~5\ : std_logic;
SIGNAL \cnt_tmp[23]~5COUT1_107\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \CO~reg0_regout\ : std_logic;
SIGNAL cnt_tmp : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_nRST~combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_nRST <= nRST;
CO <= ww_CO;
COUNT <= ww_COUNT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_nRST~combout\ <= NOT \nRST~combout\;
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nRST~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nRST,
	combout => \nRST~combout\);

-- Location: LC_X4_Y6_N3
\cnt_tmp[0]\ : maxv_lcell
-- Equation(s):
-- cnt_tmp(0) = DFFEAS((!cnt_tmp(0)), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\LessThan0~6_combout\, )
-- \cnt_tmp[0]~49\ = CARRY((cnt_tmp(0)))
-- \cnt_tmp[0]~49COUT1_71\ = CARRY((cnt_tmp(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => cnt_tmp(0),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_tmp(0),
	cout0 => \cnt_tmp[0]~49\,
	cout1 => \cnt_tmp[0]~49COUT1_71\);

-- Location: LC_X4_Y6_N4
\cnt_tmp[1]\ : maxv_lcell
-- Equation(s):
-- cnt_tmp(1) = DFFEAS(cnt_tmp(1) $ ((((\cnt_tmp[0]~49\)))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\LessThan0~6_combout\, )
-- \cnt_tmp[1]~47\ = CARRY(((!\cnt_tmp[0]~49COUT1_71\)) # (!cnt_tmp(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => cnt_tmp(1),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	cin0 => \cnt_tmp[0]~49\,
	cin1 => \cnt_tmp[0]~49COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_tmp(1),
	cout => \cnt_tmp[1]~47\);

-- Location: LC_X4_Y6_N5
\cnt_tmp[2]\ : maxv_lcell
-- Equation(s):
-- cnt_tmp(2) = DFFEAS(cnt_tmp(2) $ ((((!\cnt_tmp[1]~47\)))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\LessThan0~6_combout\, )
-- \cnt_tmp[2]~45\ = CARRY((cnt_tmp(2) & ((!\cnt_tmp[1]~47\))))
-- \cnt_tmp[2]~45COUT1_73\ = CARRY((cnt_tmp(2) & ((!\cnt_tmp[1]~47\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => cnt_tmp(2),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	cin => \cnt_tmp[1]~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_tmp(2),
	cout0 => \cnt_tmp[2]~45\,
	cout1 => \cnt_tmp[2]~45COUT1_73\);

-- Location: LC_X4_Y6_N6
\cnt_tmp[3]\ : maxv_lcell
-- Equation(s):
-- cnt_tmp(3) = DFFEAS(cnt_tmp(3) $ (((((!\cnt_tmp[1]~47\ & \cnt_tmp[2]~45\) # (\cnt_tmp[1]~47\ & \cnt_tmp[2]~45COUT1_73\))))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\LessThan0~6_combout\, )
-- \cnt_tmp[3]~43\ = CARRY(((!\cnt_tmp[2]~45\)) # (!cnt_tmp(3)))
-- \cnt_tmp[3]~43COUT1_75\ = CARRY(((!\cnt_tmp[2]~45COUT1_73\)) # (!cnt_tmp(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => cnt_tmp(3),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	cin => \cnt_tmp[1]~47\,
	cin0 => \cnt_tmp[2]~45\,
	cin1 => \cnt_tmp[2]~45COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_tmp(3),
	cout0 => \cnt_tmp[3]~43\,
	cout1 => \cnt_tmp[3]~43COUT1_75\);

-- Location: LC_X4_Y6_N7
\cnt_tmp[4]\ : maxv_lcell
-- Equation(s):
-- cnt_tmp(4) = DFFEAS((cnt_tmp(4) $ ((!(!\cnt_tmp[1]~47\ & \cnt_tmp[3]~43\) # (\cnt_tmp[1]~47\ & \cnt_tmp[3]~43COUT1_75\)))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\LessThan0~6_combout\, )
-- \cnt_tmp[4]~41\ = CARRY(((cnt_tmp(4) & !\cnt_tmp[3]~43\)))
-- \cnt_tmp[4]~41COUT1_77\ = CARRY(((cnt_tmp(4) & !\cnt_tmp[3]~43COUT1_75\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => cnt_tmp(4),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	cin => \cnt_tmp[1]~47\,
	cin0 => \cnt_tmp[3]~43\,
	cin1 => \cnt_tmp[3]~43COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_tmp(4),
	cout0 => \cnt_tmp[4]~41\,
	cout1 => \cnt_tmp[4]~41COUT1_77\);

-- Location: LC_X4_Y6_N8
\cnt_tmp[5]\ : maxv_lcell
-- Equation(s):
-- cnt_tmp(5) = DFFEAS(cnt_tmp(5) $ (((((!\cnt_tmp[1]~47\ & \cnt_tmp[4]~41\) # (\cnt_tmp[1]~47\ & \cnt_tmp[4]~41COUT1_77\))))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\LessThan0~6_combout\, )
-- \cnt_tmp[5]~39\ = CARRY(((!\cnt_tmp[4]~41\)) # (!cnt_tmp(5)))
-- \cnt_tmp[5]~39COUT1_79\ = CARRY(((!\cnt_tmp[4]~41COUT1_77\)) # (!cnt_tmp(5)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => cnt_tmp(5),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	cin => \cnt_tmp[1]~47\,
	cin0 => \cnt_tmp[4]~41\,
	cin1 => \cnt_tmp[4]~41COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_tmp(5),
	cout0 => \cnt_tmp[5]~39\,
	cout1 => \cnt_tmp[5]~39COUT1_79\);

-- Location: LC_X4_Y6_N9
\cnt_tmp[6]\ : maxv_lcell
-- Equation(s):
-- cnt_tmp(6) = DFFEAS((cnt_tmp(6) $ ((!(!\cnt_tmp[1]~47\ & \cnt_tmp[5]~39\) # (\cnt_tmp[1]~47\ & \cnt_tmp[5]~39COUT1_79\)))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\LessThan0~6_combout\, )
-- \cnt_tmp[6]~15\ = CARRY(((cnt_tmp(6) & !\cnt_tmp[5]~39COUT1_79\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => cnt_tmp(6),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	cin => \cnt_tmp[1]~47\,
	cin0 => \cnt_tmp[5]~39\,
	cin1 => \cnt_tmp[5]~39COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_tmp(6),
	cout => \cnt_tmp[6]~15\);

-- Location: LC_X5_Y6_N0
\cnt_tmp[7]\ : maxv_lcell
-- Equation(s):
-- cnt_tmp(7) = DFFEAS((cnt_tmp(7) $ ((\cnt_tmp[6]~15\))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\LessThan0~6_combout\, )
-- \cnt_tmp[7]~17\ = CARRY(((!\cnt_tmp[6]~15\) # (!cnt_tmp(7))))
-- \cnt_tmp[7]~17COUT1_81\ = CARRY(((!\cnt_tmp[6]~15\) # (!cnt_tmp(7))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => cnt_tmp(7),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	cin => \cnt_tmp[6]~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_tmp(7),
	cout0 => \cnt_tmp[7]~17\,
	cout1 => \cnt_tmp[7]~17COUT1_81\);

-- Location: LC_X5_Y6_N1
\cnt_tmp[8]\ : maxv_lcell
-- Equation(s):
-- cnt_tmp(8) = DFFEAS((cnt_tmp(8) $ ((!(!\cnt_tmp[6]~15\ & \cnt_tmp[7]~17\) # (\cnt_tmp[6]~15\ & \cnt_tmp[7]~17COUT1_81\)))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\LessThan0~6_combout\, )
-- \cnt_tmp[8]~19\ = CARRY(((cnt_tmp(8) & !\cnt_tmp[7]~17\)))
-- \cnt_tmp[8]~19COUT1_83\ = CARRY(((cnt_tmp(8) & !\cnt_tmp[7]~17COUT1_81\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => cnt_tmp(8),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	cin => \cnt_tmp[6]~15\,
	cin0 => \cnt_tmp[7]~17\,
	cin1 => \cnt_tmp[7]~17COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_tmp(8),
	cout0 => \cnt_tmp[8]~19\,
	cout1 => \cnt_tmp[8]~19COUT1_83\);

-- Location: LC_X5_Y6_N2
\cnt_tmp[9]\ : maxv_lcell
-- Equation(s):
-- cnt_tmp(9) = DFFEAS((cnt_tmp(9) $ (((!\cnt_tmp[6]~15\ & \cnt_tmp[8]~19\) # (\cnt_tmp[6]~15\ & \cnt_tmp[8]~19COUT1_83\)))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\LessThan0~6_combout\, )
-- \cnt_tmp[9]~21\ = CARRY(((!\cnt_tmp[8]~19\) # (!cnt_tmp(9))))
-- \cnt_tmp[9]~21COUT1_85\ = CARRY(((!\cnt_tmp[8]~19COUT1_83\) # (!cnt_tmp(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => cnt_tmp(9),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	cin => \cnt_tmp[6]~15\,
	cin0 => \cnt_tmp[8]~19\,
	cin1 => \cnt_tmp[8]~19COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_tmp(9),
	cout0 => \cnt_tmp[9]~21\,
	cout1 => \cnt_tmp[9]~21COUT1_85\);

-- Location: LC_X5_Y6_N3
\cnt_tmp[10]\ : maxv_lcell
-- Equation(s):
-- cnt_tmp(10) = DFFEAS(cnt_tmp(10) $ ((((!(!\cnt_tmp[6]~15\ & \cnt_tmp[9]~21\) # (\cnt_tmp[6]~15\ & \cnt_tmp[9]~21COUT1_85\))))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\LessThan0~6_combout\, )
-- \cnt_tmp[10]~23\ = CARRY((cnt_tmp(10) & ((!\cnt_tmp[9]~21\))))
-- \cnt_tmp[10]~23COUT1_87\ = CARRY((cnt_tmp(10) & ((!\cnt_tmp[9]~21COUT1_85\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => cnt_tmp(10),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	cin => \cnt_tmp[6]~15\,
	cin0 => \cnt_tmp[9]~21\,
	cin1 => \cnt_tmp[9]~21COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_tmp(10),
	cout0 => \cnt_tmp[10]~23\,
	cout1 => \cnt_tmp[10]~23COUT1_87\);

-- Location: LC_X5_Y6_N4
\cnt_tmp[11]\ : maxv_lcell
-- Equation(s):
-- cnt_tmp(11) = DFFEAS(cnt_tmp(11) $ (((((!\cnt_tmp[6]~15\ & \cnt_tmp[10]~23\) # (\cnt_tmp[6]~15\ & \cnt_tmp[10]~23COUT1_87\))))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\LessThan0~6_combout\, )
-- \cnt_tmp[11]~7\ = CARRY(((!\cnt_tmp[10]~23COUT1_87\)) # (!cnt_tmp(11)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => cnt_tmp(11),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	cin => \cnt_tmp[6]~15\,
	cin0 => \cnt_tmp[10]~23\,
	cin1 => \cnt_tmp[10]~23COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_tmp(11),
	cout => \cnt_tmp[11]~7\);

-- Location: LC_X5_Y6_N5
\cnt_tmp[12]\ : maxv_lcell
-- Equation(s):
-- cnt_tmp(12) = DFFEAS(cnt_tmp(12) $ ((((!\cnt_tmp[11]~7\)))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\LessThan0~6_combout\, )
-- \cnt_tmp[12]~9\ = CARRY((cnt_tmp(12) & ((!\cnt_tmp[11]~7\))))
-- \cnt_tmp[12]~9COUT1_89\ = CARRY((cnt_tmp(12) & ((!\cnt_tmp[11]~7\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => cnt_tmp(12),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	cin => \cnt_tmp[11]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_tmp(12),
	cout0 => \cnt_tmp[12]~9\,
	cout1 => \cnt_tmp[12]~9COUT1_89\);

-- Location: LC_X5_Y6_N6
\cnt_tmp[13]\ : maxv_lcell
-- Equation(s):
-- cnt_tmp(13) = DFFEAS(cnt_tmp(13) $ (((((!\cnt_tmp[11]~7\ & \cnt_tmp[12]~9\) # (\cnt_tmp[11]~7\ & \cnt_tmp[12]~9COUT1_89\))))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\LessThan0~6_combout\, )
-- \cnt_tmp[13]~11\ = CARRY(((!\cnt_tmp[12]~9\)) # (!cnt_tmp(13)))
-- \cnt_tmp[13]~11COUT1_91\ = CARRY(((!\cnt_tmp[12]~9COUT1_89\)) # (!cnt_tmp(13)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => cnt_tmp(13),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	cin => \cnt_tmp[11]~7\,
	cin0 => \cnt_tmp[12]~9\,
	cin1 => \cnt_tmp[12]~9COUT1_89\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_tmp(13),
	cout0 => \cnt_tmp[13]~11\,
	cout1 => \cnt_tmp[13]~11COUT1_91\);

-- Location: LC_X5_Y6_N7
\cnt_tmp[14]\ : maxv_lcell
-- Equation(s):
-- cnt_tmp(14) = DFFEAS((cnt_tmp(14) $ ((!(!\cnt_tmp[11]~7\ & \cnt_tmp[13]~11\) # (\cnt_tmp[11]~7\ & \cnt_tmp[13]~11COUT1_91\)))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\LessThan0~6_combout\, )
-- \cnt_tmp[14]~13\ = CARRY(((cnt_tmp(14) & !\cnt_tmp[13]~11\)))
-- \cnt_tmp[14]~13COUT1_93\ = CARRY(((cnt_tmp(14) & !\cnt_tmp[13]~11COUT1_91\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => cnt_tmp(14),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	cin => \cnt_tmp[11]~7\,
	cin0 => \cnt_tmp[13]~11\,
	cin1 => \cnt_tmp[13]~11COUT1_91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_tmp(14),
	cout0 => \cnt_tmp[14]~13\,
	cout1 => \cnt_tmp[14]~13COUT1_93\);

-- Location: LC_X5_Y6_N8
\cnt_tmp[15]\ : maxv_lcell
-- Equation(s):
-- cnt_tmp(15) = DFFEAS(cnt_tmp(15) $ (((((!\cnt_tmp[11]~7\ & \cnt_tmp[14]~13\) # (\cnt_tmp[11]~7\ & \cnt_tmp[14]~13COUT1_93\))))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\LessThan0~6_combout\, )
-- \cnt_tmp[15]~1\ = CARRY(((!\cnt_tmp[14]~13\)) # (!cnt_tmp(15)))
-- \cnt_tmp[15]~1COUT1_95\ = CARRY(((!\cnt_tmp[14]~13COUT1_93\)) # (!cnt_tmp(15)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => cnt_tmp(15),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	cin => \cnt_tmp[11]~7\,
	cin0 => \cnt_tmp[14]~13\,
	cin1 => \cnt_tmp[14]~13COUT1_93\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_tmp(15),
	cout0 => \cnt_tmp[15]~1\,
	cout1 => \cnt_tmp[15]~1COUT1_95\);

-- Location: LC_X5_Y6_N9
\cnt_tmp[16]\ : maxv_lcell
-- Equation(s):
-- cnt_tmp(16) = DFFEAS((cnt_tmp(16) $ ((!(!\cnt_tmp[11]~7\ & \cnt_tmp[15]~1\) # (\cnt_tmp[11]~7\ & \cnt_tmp[15]~1COUT1_95\)))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\LessThan0~6_combout\, )
-- \cnt_tmp[16]~25\ = CARRY(((cnt_tmp(16) & !\cnt_tmp[15]~1COUT1_95\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => cnt_tmp(16),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	cin => \cnt_tmp[11]~7\,
	cin0 => \cnt_tmp[15]~1\,
	cin1 => \cnt_tmp[15]~1COUT1_95\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_tmp(16),
	cout => \cnt_tmp[16]~25\);

-- Location: LC_X6_Y6_N0
\cnt_tmp[17]\ : maxv_lcell
-- Equation(s):
-- cnt_tmp(17) = DFFEAS((cnt_tmp(17) $ ((\cnt_tmp[16]~25\))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\LessThan0~6_combout\, )
-- \cnt_tmp[17]~3\ = CARRY(((!\cnt_tmp[16]~25\) # (!cnt_tmp(17))))
-- \cnt_tmp[17]~3COUT1_97\ = CARRY(((!\cnt_tmp[16]~25\) # (!cnt_tmp(17))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => cnt_tmp(17),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	cin => \cnt_tmp[16]~25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_tmp(17),
	cout0 => \cnt_tmp[17]~3\,
	cout1 => \cnt_tmp[17]~3COUT1_97\);

-- Location: LC_X6_Y6_N1
\cnt_tmp[18]\ : maxv_lcell
-- Equation(s):
-- cnt_tmp(18) = DFFEAS((cnt_tmp(18) $ ((!(!\cnt_tmp[16]~25\ & \cnt_tmp[17]~3\) # (\cnt_tmp[16]~25\ & \cnt_tmp[17]~3COUT1_97\)))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\LessThan0~6_combout\, )
-- \cnt_tmp[18]~27\ = CARRY(((cnt_tmp(18) & !\cnt_tmp[17]~3\)))
-- \cnt_tmp[18]~27COUT1_99\ = CARRY(((cnt_tmp(18) & !\cnt_tmp[17]~3COUT1_97\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => cnt_tmp(18),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	cin => \cnt_tmp[16]~25\,
	cin0 => \cnt_tmp[17]~3\,
	cin1 => \cnt_tmp[17]~3COUT1_97\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_tmp(18),
	cout0 => \cnt_tmp[18]~27\,
	cout1 => \cnt_tmp[18]~27COUT1_99\);

-- Location: LC_X6_Y6_N2
\cnt_tmp[19]\ : maxv_lcell
-- Equation(s):
-- cnt_tmp(19) = DFFEAS((cnt_tmp(19) $ (((!\cnt_tmp[16]~25\ & \cnt_tmp[18]~27\) # (\cnt_tmp[16]~25\ & \cnt_tmp[18]~27COUT1_99\)))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\LessThan0~6_combout\, )
-- \cnt_tmp[19]~29\ = CARRY(((!\cnt_tmp[18]~27\) # (!cnt_tmp(19))))
-- \cnt_tmp[19]~29COUT1_101\ = CARRY(((!\cnt_tmp[18]~27COUT1_99\) # (!cnt_tmp(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => cnt_tmp(19),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	cin => \cnt_tmp[16]~25\,
	cin0 => \cnt_tmp[18]~27\,
	cin1 => \cnt_tmp[18]~27COUT1_99\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_tmp(19),
	cout0 => \cnt_tmp[19]~29\,
	cout1 => \cnt_tmp[19]~29COUT1_101\);

-- Location: LC_X6_Y6_N3
\cnt_tmp[20]\ : maxv_lcell
-- Equation(s):
-- cnt_tmp(20) = DFFEAS(cnt_tmp(20) $ ((((!(!\cnt_tmp[16]~25\ & \cnt_tmp[19]~29\) # (\cnt_tmp[16]~25\ & \cnt_tmp[19]~29COUT1_101\))))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\LessThan0~6_combout\, )
-- \cnt_tmp[20]~31\ = CARRY((cnt_tmp(20) & ((!\cnt_tmp[19]~29\))))
-- \cnt_tmp[20]~31COUT1_103\ = CARRY((cnt_tmp(20) & ((!\cnt_tmp[19]~29COUT1_101\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => cnt_tmp(20),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	cin => \cnt_tmp[16]~25\,
	cin0 => \cnt_tmp[19]~29\,
	cin1 => \cnt_tmp[19]~29COUT1_101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_tmp(20),
	cout0 => \cnt_tmp[20]~31\,
	cout1 => \cnt_tmp[20]~31COUT1_103\);

-- Location: LC_X6_Y6_N4
\cnt_tmp[21]\ : maxv_lcell
-- Equation(s):
-- cnt_tmp(21) = DFFEAS(cnt_tmp(21) $ (((((!\cnt_tmp[16]~25\ & \cnt_tmp[20]~31\) # (\cnt_tmp[16]~25\ & \cnt_tmp[20]~31COUT1_103\))))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\LessThan0~6_combout\, )
-- \cnt_tmp[21]~33\ = CARRY(((!\cnt_tmp[20]~31COUT1_103\)) # (!cnt_tmp(21)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => cnt_tmp(21),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	cin => \cnt_tmp[16]~25\,
	cin0 => \cnt_tmp[20]~31\,
	cin1 => \cnt_tmp[20]~31COUT1_103\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_tmp(21),
	cout => \cnt_tmp[21]~33\);

-- Location: LC_X6_Y6_N5
\cnt_tmp[22]\ : maxv_lcell
-- Equation(s):
-- cnt_tmp(22) = DFFEAS(cnt_tmp(22) $ ((((!\cnt_tmp[21]~33\)))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\LessThan0~6_combout\, )
-- \cnt_tmp[22]~35\ = CARRY((cnt_tmp(22) & ((!\cnt_tmp[21]~33\))))
-- \cnt_tmp[22]~35COUT1_105\ = CARRY((cnt_tmp(22) & ((!\cnt_tmp[21]~33\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => cnt_tmp(22),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	cin => \cnt_tmp[21]~33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_tmp(22),
	cout0 => \cnt_tmp[22]~35\,
	cout1 => \cnt_tmp[22]~35COUT1_105\);

-- Location: LC_X6_Y6_N6
\cnt_tmp[23]\ : maxv_lcell
-- Equation(s):
-- cnt_tmp(23) = DFFEAS(cnt_tmp(23) $ (((((!\cnt_tmp[21]~33\ & \cnt_tmp[22]~35\) # (\cnt_tmp[21]~33\ & \cnt_tmp[22]~35COUT1_105\))))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\LessThan0~6_combout\, )
-- \cnt_tmp[23]~5\ = CARRY(((!\cnt_tmp[22]~35\)) # (!cnt_tmp(23)))
-- \cnt_tmp[23]~5COUT1_107\ = CARRY(((!\cnt_tmp[22]~35COUT1_105\)) # (!cnt_tmp(23)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => cnt_tmp(23),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	cin => \cnt_tmp[21]~33\,
	cin0 => \cnt_tmp[22]~35\,
	cin1 => \cnt_tmp[22]~35COUT1_105\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_tmp(23),
	cout0 => \cnt_tmp[23]~5\,
	cout1 => \cnt_tmp[23]~5COUT1_107\);

-- Location: LC_X6_Y6_N7
\cnt_tmp[24]\ : maxv_lcell
-- Equation(s):
-- cnt_tmp(24) = DFFEAS((cnt_tmp(24) $ ((!(!\cnt_tmp[21]~33\ & \cnt_tmp[23]~5\) # (\cnt_tmp[21]~33\ & \cnt_tmp[23]~5COUT1_107\)))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , !\LessThan0~6_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c3c3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => cnt_tmp(24),
	aclr => \ALT_INV_nRST~combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	cin => \cnt_tmp[21]~33\,
	cin0 => \cnt_tmp[23]~5\,
	cin1 => \cnt_tmp[23]~5COUT1_107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_tmp(24));

-- Location: LC_X6_Y6_N8
\LessThan0~4\ : maxv_lcell
-- Equation(s):
-- \LessThan0~4_combout\ = (((!cnt_tmp(16) & !cnt_tmp(17))) # (!cnt_tmp(19))) # (!cnt_tmp(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "37ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt_tmp(16),
	datab => cnt_tmp(18),
	datac => cnt_tmp(17),
	datad => cnt_tmp(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~4_combout\);

-- Location: LC_X7_Y6_N4
\LessThan0~5\ : maxv_lcell
-- Equation(s):
-- \LessThan0~5_combout\ = (((\LessThan0~4_combout\) # (!cnt_tmp(21))) # (!cnt_tmp(20))) # (!cnt_tmp(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt_tmp(22),
	datab => cnt_tmp(20),
	datac => \LessThan0~4_combout\,
	datad => cnt_tmp(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~5_combout\);

-- Location: LC_X7_Y6_N0
\LessThan0~2\ : maxv_lcell
-- Equation(s):
-- \LessThan0~2_combout\ = (!cnt_tmp(6) & (!cnt_tmp(9) & (!cnt_tmp(7) & !cnt_tmp(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt_tmp(6),
	datab => cnt_tmp(9),
	datac => cnt_tmp(7),
	datad => cnt_tmp(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~2_combout\);

-- Location: LC_X6_Y6_N9
\LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \LessThan0~1_combout\ = (((!cnt_tmp(12)) # (!cnt_tmp(13))) # (!cnt_tmp(14))) # (!cnt_tmp(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt_tmp(11),
	datab => cnt_tmp(14),
	datac => cnt_tmp(13),
	datad => cnt_tmp(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~1_combout\);

-- Location: LC_X7_Y6_N5
\LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \LessThan0~0_combout\ = ((!cnt_tmp(23) & (!cnt_tmp(15) & !cnt_tmp(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => cnt_tmp(23),
	datac => cnt_tmp(15),
	datad => cnt_tmp(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0_combout\);

-- Location: LC_X7_Y6_N6
\LessThan0~3\ : maxv_lcell
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~0_combout\ & ((\LessThan0~1_combout\) # ((!cnt_tmp(10) & \LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt_tmp(10),
	datab => \LessThan0~2_combout\,
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~3_combout\);

-- Location: LC_X7_Y6_N7
\LessThan0~6\ : maxv_lcell
-- Equation(s):
-- \LessThan0~6_combout\ = ((\LessThan0~3_combout\) # ((!cnt_tmp(23) & \LessThan0~5_combout\))) # (!cnt_tmp(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff73",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt_tmp(23),
	datab => cnt_tmp(24),
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~6_combout\);

-- Location: LC_X7_Y6_N2
\CO~reg0\ : maxv_lcell
-- Equation(s):
-- \CO~reg0_regout\ = DFFEAS((((!\LessThan0~6_combout\))), GLOBAL(\CLK~combout\), GLOBAL(\nRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \LessThan0~6_combout\,
	aclr => \ALT_INV_nRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CO~reg0_regout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CO~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \CO~reg0_regout\,
	oe => VCC,
	padio => ww_CO);

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COUNT[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_COUNT(0));

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COUNT[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_COUNT(1));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COUNT[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_COUNT(2));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COUNT[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_COUNT(3));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COUNT[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_COUNT(4));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COUNT[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_COUNT(5));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COUNT[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_COUNT(6));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COUNT[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_COUNT(7));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COUNT[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_COUNT(8));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COUNT[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_COUNT(9));

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COUNT[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_COUNT(10));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COUNT[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_COUNT(11));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COUNT[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_COUNT(12));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COUNT[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_COUNT(13));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COUNT[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_COUNT(14));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COUNT[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_COUNT(15));

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COUNT[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_COUNT(16));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COUNT[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_COUNT(17));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COUNT[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_COUNT(18));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COUNT[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_COUNT(19));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COUNT[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_COUNT(20));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COUNT[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_COUNT(21));

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COUNT[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_COUNT(22));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COUNT[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_COUNT(23));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\COUNT[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_COUNT(24));
END structure;


