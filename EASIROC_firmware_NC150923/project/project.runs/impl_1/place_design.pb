
N
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px
M
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px
S
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px
b
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px
m
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px
M
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px
�
Rule violation (%s) %s - %s
20*drc2
CKLD-22default:default22
Clock Net has direct IO Driver2default:default2�
wClock net ETH_RX_CLK_IBUF is directly driven by an IO rather than a Clock Buffer. Driver(s): ETH_RX_CLK_IBUF_inst/O20002default:defaultZ23-20h px
�
Rule violation (%s) %s - %s
20*drc2
CKLD-22default:default22
Clock Net has direct IO Driver2default:default2�
wClock net ETH_TX_CLK_IBUF is directly driven by an IO rather than a Clock Buffer. Driver(s): ETH_TX_CLK_IBUF_inst/O20002default:defaultZ23-20h px
_
DRC finished with %s
79*	vivadotcl2(
0 Errors, 2 Warnings2default:defaultZ4-198h px
b
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px
R

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px
z
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px
v

Phase %s%s
101*constraints2
1 2default:default2,
Placer Runtime Estimator2default:defaultZ18-101h px
I
7Phase 1 Placer Runtime Estimator | Checksum: 130ce31e7
*commonh px
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.889 . Memory (MB): peak = 1265.020 ; gain = 0.0002default:defaulth px
s

Phase %s%s
101*constraints2
2 2default:default2)
Placer Initialization2default:defaultZ18-101h px
z

Phase %s%s
101*constraints2
2.1 2default:default2.
Placer Initialization Core2default:defaultZ18-101h px
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.1722default:default2
1265.0202default:default2
0.0002default:defaultZ17-268h px
d
1Inserted %s IBUFs to IO ports without IO buffers.100*opt2
02default:defaultZ31-140h px
d
1Inserted %s OBUFs to IO ports without IO buffers.101*opt2
02default:defaultZ31-141h px
r
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2 
00:00:00.0942default:default2
1265.0202default:default2
0.0002default:defaultZ17-268h px
/
%s*constraints2
 2default:defaulth px
�

Phase %s%s
101*constraints2
2.1.1 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px
s

Phase %s%s
101*constraints2
2.1.1.1 2default:default2#
Pre-Place Cells2default:defaultZ18-101h px
F
4Phase 2.1.1.1 Pre-Place Cells | Checksum: 1704e1c0f
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 1265.020 ; gain = 0.0002default:defaulth px
/
%s*constraints2
 2default:defaulth px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[23].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__452default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[23].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[23].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__462default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[23].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[24].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__472default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[24].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2h
TTriggerWidth_0/WidthAdjuster_GENERATE[0].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_12default:default2
12default:default2h
T	TriggerWidth_0/WidthAdjuster_GENERATE[0].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2k
WTriggerWidth_0/WidthAdjuster_GENERATE[0].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__02default:default2
12default:default2h
T	TriggerWidth_0/WidthAdjuster_GENERATE[0].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[10].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__192default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[10].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[10].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__202default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[10].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[11].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__212default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[11].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[11].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__222default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[11].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[12].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__232default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[12].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[12].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__242default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[12].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[13].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__252default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[13].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[13].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__262default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[13].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[14].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__272default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[14].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[14].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__282default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[14].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[15].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__292default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[15].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[15].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__302default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[15].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[16].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__312default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[16].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[16].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__322default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[16].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[17].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__332default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[17].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[17].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__342default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[17].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[18].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__352default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[18].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[18].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__362default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[18].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[19].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__372default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[19].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[19].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__382default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[19].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2k
WTriggerWidth_0/WidthAdjuster_GENERATE[1].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__12default:default2
12default:default2h
T	TriggerWidth_0/WidthAdjuster_GENERATE[1].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2k
WTriggerWidth_0/WidthAdjuster_GENERATE[1].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__22default:default2
12default:default2h
T	TriggerWidth_0/WidthAdjuster_GENERATE[1].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[20].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__392default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[20].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[20].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__402default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[20].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[21].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__412default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[21].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[21].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__422default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[21].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[22].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__432default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[22].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[22].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__442default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[22].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[24].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__482default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[24].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[25].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__492default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[25].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[25].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__502default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[25].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[26].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__512default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[26].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[26].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__522default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[26].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[27].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__532default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[27].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[27].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__542default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[27].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[28].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__552default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[28].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[28].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__562default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[28].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[29].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__572default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[29].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[29].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__582default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[29].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2k
WTriggerWidth_0/WidthAdjuster_GENERATE[2].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__32default:default2
12default:default2h
T	TriggerWidth_0/WidthAdjuster_GENERATE[2].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2k
WTriggerWidth_0/WidthAdjuster_GENERATE[2].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__42default:default2
12default:default2h
T	TriggerWidth_0/WidthAdjuster_GENERATE[2].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[30].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__592default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[30].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[30].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__602default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[30].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[31].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__612default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[31].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2m
YTriggerWidth_0/WidthAdjuster_GENERATE[31].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__622default:default2
12default:default2i
U	TriggerWidth_0/WidthAdjuster_GENERATE[31].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2k
WTriggerWidth_0/WidthAdjuster_GENERATE[3].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__52default:default2
12default:default2h
T	TriggerWidth_0/WidthAdjuster_GENERATE[3].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2k
WTriggerWidth_0/WidthAdjuster_GENERATE[3].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__62default:default2
12default:default2h
T	TriggerWidth_0/WidthAdjuster_GENERATE[3].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2k
WTriggerWidth_0/WidthAdjuster_GENERATE[4].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__72default:default2
12default:default2h
T	TriggerWidth_0/WidthAdjuster_GENERATE[4].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2k
WTriggerWidth_0/WidthAdjuster_GENERATE[4].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__82default:default2
12default:default2h
T	TriggerWidth_0/WidthAdjuster_GENERATE[4].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2k
WTriggerWidth_0/WidthAdjuster_GENERATE[5].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__92default:default2
12default:default2h
T	TriggerWidth_0/WidthAdjuster_GENERATE[5].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2l
XTriggerWidth_0/WidthAdjuster_GENERATE[5].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__102default:default2
12default:default2h
T	TriggerWidth_0/WidthAdjuster_GENERATE[5].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2l
XTriggerWidth_0/WidthAdjuster_GENERATE[6].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__112default:default2
12default:default2h
T	TriggerWidth_0/WidthAdjuster_GENERATE[6].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2l
XTriggerWidth_0/WidthAdjuster_GENERATE[6].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__122default:default2
12default:default2h
T	TriggerWidth_0/WidthAdjuster_GENERATE[6].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2l
XTriggerWidth_0/WidthAdjuster_GENERATE[7].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__132default:default2
12default:default2h
T	TriggerWidth_0/WidthAdjuster_GENERATE[7].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2l
XTriggerWidth_0/WidthAdjuster_GENERATE[7].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__142default:default2
12default:default2h
T	TriggerWidth_0/WidthAdjuster_GENERATE[7].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2l
XTriggerWidth_0/WidthAdjuster_GENERATE[8].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__152default:default2
12default:default2h
T	TriggerWidth_0/WidthAdjuster_GENERATE[8].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2l
XTriggerWidth_0/WidthAdjuster_GENERATE[8].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__162default:default2
12default:default2h
T	TriggerWidth_0/WidthAdjuster_GENERATE[8].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2l
XTriggerWidth_0/WidthAdjuster_GENERATE[9].Width_Adjuster_0/Delayer_0/delay_reg[0]_i_1__172default:default2
12default:default2h
T	TriggerWidth_0/WidthAdjuster_GENERATE[9].Width_Adjuster_0/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2l
XTriggerWidth_0/WidthAdjuster_GENERATE[9].Width_Adjuster_1/Delayer_0/delay_reg[0]_i_1__182default:default2
12default:default2h
T	TriggerWidth_0/WidthAdjuster_GENERATE[9].Width_Adjuster_1/trigger_s_reg_LDC {LDCE}
2default:defaultZ30-568h px
�
�%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2 
create_clock2default:default2
vclk_6M2default:default2l
VC:/Users/nchikuma/Documents/NaruhiroChikuma/easiroc/New_Firmware/constraint/timing.xdc2default:default2
92default:default8@Z18-483h px
�
�%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2 
create_clock2default:default2
vclk_66M2default:default2l
VC:/Users/nchikuma/Documents/NaruhiroChikuma/easiroc/New_Firmware/constraint/timing.xdc2default:default2
102default:default8@Z18-483h px
B
%Done setting XDC timing constraints.
35*timingZ38-35h px
u

Phase %s%s
101*constraints2
2.1.1.2 2default:default2%
IO & Clk Clean Up2default:defaultZ18-101h px
H
6Phase 2.1.1.2 IO & Clk Clean Up | Checksum: 1704e1c0f
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:00:30 ; elapsed = 00:00:28 . Memory (MB): peak = 1265.020 ; gain = 0.0002default:defaulth px
�

Phase %s%s
101*constraints2
2.1.1.3 2default:default2>
*Implementation Feasibility check On IDelay2default:defaultZ18-101h px
a
OPhase 2.1.1.3 Implementation Feasibility check On IDelay | Checksum: 1704e1c0f
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:00:30 ; elapsed = 00:00:28 . Memory (MB): peak = 1265.020 ; gain = 0.0002default:defaulth px
w

Phase %s%s
101*constraints2
2.1.1.4 2default:default2'
Commit IO Placement2default:defaultZ18-101h px
J
8Phase 2.1.1.4 Commit IO Placement | Checksum: 1c5423834
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:00:30 ; elapsed = 00:00:28 . Memory (MB): peak = 1265.020 ; gain = 0.0002default:defaulth px
g
UPhase 2.1.1 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 265c1d5c2
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:00:30 ; elapsed = 00:00:29 . Memory (MB): peak = 1265.020 ; gain = 0.0002default:defaulth px
|

Phase %s%s
101*constraints2
2.1.2 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px
u

Phase %s%s
101*constraints2
2.1.2.1 2default:default2%
Place Init Design2default:defaultZ18-101h px
}

Phase %s%s
101*constraints2

2.1.2.1.1 2default:default2+
Init Lut Pin Assignment2default:defaultZ18-101h px
P
>Phase 2.1.2.1.1 Init Lut Pin Assignment | Checksum: 2a4b8a15e
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:00:33 ; elapsed = 00:00:32 . Memory (MB): peak = 1265.020 ; gain = 0.0002default:defaulth px
H
6Phase 2.1.2.1 Place Init Design | Checksum: 299aad970
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:01:08 ; elapsed = 00:00:52 . Memory (MB): peak = 1265.020 ; gain = 0.0002default:defaulth px
O
=Phase 2.1.2 Build Placer Netlist Model | Checksum: 299aad970
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:01:08 ; elapsed = 00:00:52 . Memory (MB): peak = 1265.020 ; gain = 0.0002default:defaulth px
y

Phase %s%s
101*constraints2
2.1.3 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px
�

Phase %s%s
101*constraints2
2.1.3.1 2default:default24
 Constrain Global/Regional Clocks2default:defaultZ18-101h px
W
EPhase 2.1.3.1 Constrain Global/Regional Clocks | Checksum: 299aad970
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:01:09 ; elapsed = 00:00:52 . Memory (MB): peak = 1265.020 ; gain = 0.0002default:defaulth px
L
:Phase 2.1.3 Constrain Clocks/Macros | Checksum: 1dd544bf2
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:01:09 ; elapsed = 00:00:52 . Memory (MB): peak = 1265.020 ; gain = 0.0002default:defaulth px
M
;Phase 2.1 Placer Initialization Core | Checksum: 1dd544bf2
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:01:09 ; elapsed = 00:00:52 . Memory (MB): peak = 1265.020 ; gain = 0.0002default:defaulth px
F
4Phase 2 Placer Initialization | Checksum: 1dd544bf2
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:01:09 ; elapsed = 00:00:52 . Memory (MB): peak = 1265.020 ; gain = 0.0002default:defaulth px
n

Phase %s%s
101*constraints2
3 2default:default2$
Global Placement2default:defaultZ18-101h px
A
/Phase 3 Global Placement | Checksum: 1b69c612a
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:02:51 ; elapsed = 00:01:56 . Memory (MB): peak = 1265.020 ; gain = 0.0002default:defaulth px
n

Phase %s%s
101*constraints2
4 2default:default2$
Detail Placement2default:defaultZ18-101h px
z

Phase %s%s
101*constraints2
4.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px
M
;Phase 4.1 Commit Multi Column Macros | Checksum: 1b69c612a
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:02:52 ; elapsed = 00:01:57 . Memory (MB): peak = 1265.020 ; gain = 0.0002default:defaulth px
|

Phase %s%s
101*constraints2
4.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px
O
=Phase 4.2 Commit Most Macros & LUTRAMs | Checksum: 17d27a13c
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:03:21 ; elapsed = 00:02:18 . Memory (MB): peak = 1265.020 ; gain = 0.0002default:defaulth px
v

Phase %s%s
101*constraints2
4.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px
I
7Phase 4.3 Area Swap Optimization | Checksum: 15d29a1b5
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:03:22 ; elapsed = 00:02:18 . Memory (MB): peak = 1265.020 ; gain = 0.0002default:defaulth px
u

Phase %s%s
101*constraints2
4.4 2default:default2)
Timing Path Optimizer2default:defaultZ18-101h px
H
6Phase 4.4 Timing Path Optimizer | Checksum: 1e5977613
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:03:31 ; elapsed = 00:02:24 . Memory (MB): peak = 1265.020 ; gain = 0.0002default:defaulth px
�

Phase %s%s
101*constraints2
4.5 2default:default24
 Commit Small Macros & Core Logic2default:defaultZ18-101h px
l

Phase %s%s
101*constraints2
4.5.1 2default:default2

setBudgets2default:defaultZ18-101h px
?
-Phase 4.5.1 setBudgets | Checksum: 243d3c100
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:03:32 ; elapsed = 00:02:24 . Memory (MB): peak = 1265.020 ; gain = 0.0002default:defaulth px
w

Phase %s%s
101*constraints2
4.5.2 2default:default2)
Commit Slice Clusters2default:defaultZ18-101h px
J
8Phase 4.5.2 Commit Slice Clusters | Checksum: 1f5f1d6e8
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:03:46 ; elapsed = 00:02:36 . Memory (MB): peak = 1265.020 ; gain = 0.0002default:defaulth px
S
APhase 4.5 Commit Small Macros & Core Logic | Checksum: 1f5f1d6e8
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:03:46 ; elapsed = 00:02:36 . Memory (MB): peak = 1265.020 ; gain = 0.0002default:defaulth px
�

Phase %s%s
101*constraints2
4.6 2default:default2C
/Clock Restriction Legalization for Leaf Columns2default:defaultZ18-101h px
b
PPhase 4.6 Clock Restriction Legalization for Leaf Columns | Checksum: 1f5f1d6e8
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:03:47 ; elapsed = 00:02:36 . Memory (MB): peak = 1265.020 ; gain = 0.0002default:defaulth px
�

Phase %s%s
101*constraints2
4.7 2default:default2E
1Clock Restriction Legalization for Non-Clock Pins2default:defaultZ18-101h px
�
!Placement may not be routable. %s590*constraints2�
�The following cell(s) are grouped together and are placed in one single tile. The total number of clocks on non-clock pins of these cells is greater than 2, therefore, placer is not able to legalize the design to satisfy the suggested number of clocks that can drive non-clock pins in a single tile. Please modify the design such that each cell has at most 2 clocks driving its non-clock pins. Also, if one or more cells should be grouped together and placed in one tile, make sure the total number of such clocks does not exceed the maximum suggested.
ClockManager_0/MMCM_0/OUT_FPGA_OBUF[3]_inst_i_5
2default:defaultZ18-647h px
�
�Placement may not be routable as design contains luts and/or flops whose data pins are driven by global clock signals and final placement is such that the number of such signals exceed the suggested number of such clocks in a single tile, which is %s. The following clock nets need to be routed to non-clock pins in tile %s:
%s588*constraints2
22default:default2"
CLBLM_R_X53Y822default:default2�
 "/
ClockManager_0/AD9220_CLK2default:default"6
 ClockManager_0/MMCM_0/SCALER_CLK2default:default"4
ClockManager_0/MMCM_0/FAST_CLK2default:default2default:default8Z18-643h px
d
RPhase 4.7 Clock Restriction Legalization for Non-Clock Pins | Checksum: 2252d51ed
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:03:47 ; elapsed = 00:02:37 . Memory (MB): peak = 1265.020 ; gain = 0.0002default:defaulth px
o

Phase %s%s
101*constraints2
4.8 2default:default2#
Place Remaining2default:defaultZ18-101h px
B
0Phase 4.8 Place Remaining | Checksum: 11bd94941
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:03:47 ; elapsed = 00:02:37 . Memory (MB): peak = 1265.020 ; gain = 0.0002default:defaulth px
r

Phase %s%s
101*constraints2
4.9 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px
E
3Phase 4.9 Re-assign LUT pins | Checksum: 11bd94941
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:03:49 ; elapsed = 00:02:39 . Memory (MB): peak = 1265.020 ; gain = 0.0002default:defaulth px
A
/Phase 4 Detail Placement | Checksum: 11bd94941
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:03:50 ; elapsed = 00:02:39 . Memory (MB): peak = 1265.020 ; gain = 0.0002default:defaulth px
�

Phase %s%s
101*constraints2
5 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px
s

Phase %s%s
101*constraints2
5.1 2default:default2'
PCOPT Shape updates2default:defaultZ18-101h px
F
4Phase 5.1 PCOPT Shape updates | Checksum: 1812fc4d5
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:03:50 ; elapsed = 00:02:40 . Memory (MB): peak = 1265.020 ; gain = 0.0002default:defaulth px
{

Phase %s%s
101*constraints2
5.2 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px
�

Phase %s%s
101*constraints2
5.2.1 2default:default26
"Post Placement Timing Optimization2default:defaultZ18-101h px
z

Phase %s%s
101*constraints2
5.2.1.1 2default:default2*
Restore Best Placement2default:defaultZ18-101h px
M
;Phase 5.2.1.1 Restore Best Placement | Checksum: 207150a5d
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:04:17 ; elapsed = 00:02:58 . Memory (MB): peak = 1265.523 ; gain = 0.5042default:defaulth px
�
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
0.1102default:defaultZ30-746h px
W
EPhase 5.2.1 Post Placement Timing Optimization | Checksum: 207150a5d
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:04:18 ; elapsed = 00:02:58 . Memory (MB): peak = 1265.523 ; gain = 0.5042default:defaulth px
N
<Phase 5.2 Post Placement Optimization | Checksum: 207150a5d
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:04:18 ; elapsed = 00:02:59 . Memory (MB): peak = 1265.523 ; gain = 0.5042default:defaulth px
v

Phase %s%s
101*constraints2
5.3 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px
I
7Phase 5.3 Post Placement Cleanup | Checksum: 207150a5d
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:04:18 ; elapsed = 00:02:59 . Memory (MB): peak = 1265.523 ; gain = 0.5042default:defaulth px
p

Phase %s%s
101*constraints2
5.4 2default:default2$
Placer Reporting2default:defaultZ18-101h px
m

Phase %s%s
101*constraints2
5.4.1 2default:default2
Restore STA2default:defaultZ18-101h px
@
.Phase 5.4.1 Restore STA | Checksum: 207150a5d
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:04:18 ; elapsed = 00:02:59 . Memory (MB): peak = 1265.523 ; gain = 0.5042default:defaulth px
C
1Phase 5.4 Placer Reporting | Checksum: 207150a5d
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:04:18 ; elapsed = 00:02:59 . Memory (MB): peak = 1265.523 ; gain = 0.5042default:defaulth px
w

Phase %s%s
101*constraints2
5.5 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px
J
8Phase 5.5 Final Placement Cleanup | Checksum: 16eff44d7
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:04:19 ; elapsed = 00:03:00 . Memory (MB): peak = 1265.523 ; gain = 0.5042default:defaulth px
Y
GPhase 5 Post Placement Optimization and Clean-Up | Checksum: 16eff44d7
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:04:19 ; elapsed = 00:03:00 . Memory (MB): peak = 1265.523 ; gain = 0.5042default:defaulth px
:
(Ending Placer Task | Checksum: a08eec61
*commonh px
�

%s
*constraints2o
[Time (s): cpu = 00:00:00 ; elapsed = 00:03:00 . Memory (MB): peak = 1265.523 ; gain = 0.5042default:defaulth px
W
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
512default:default2
752default:default2
02default:default2
02default:defaultZ4-41h px
[
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
place_design: 2default:default2
00:04:302default:default2
00:03:062default:default2
1265.5232default:default2
0.5042default:defaultZ17-268h px
A
Writing placer database...
1603*designutilsZ20-1893h px
:
Writing XDEF routing.
211*designutilsZ20-211h px
G
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px
G
#Writing XDEF routing special nets.
210*designutilsZ20-210h px
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:132default:default2
00:00:082default:default2
1265.5232default:default2
0.0002default:defaultZ17-268h px
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:142default:default2
00:00:092default:default2
1265.5232default:default2
0.0002default:defaultZ17-268h px
�
preport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:01 . Memory (MB): peak = 1265.523 ; gain = 0.000
*commonh px


End Record