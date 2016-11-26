onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group tb /testbench/r
add wave -noupdate -group tb /testbench/m
add wave -noupdate -group tb /testbench/m_exp
add wave -noupdate -group tb /testbench/m_act
add wave -noupdate -group tb /testbench/fail
add wave -noupdate -group tb /testbench/fail_count
add wave -noupdate -group tb /testbench/fp
add wave -noupdate -group dec -radix decimal /testbench/dec/r0
add wave -noupdate -group dec -radix decimal /testbench/dec/r1
add wave -noupdate -group dec -radix decimal /testbench/dec/r2
add wave -noupdate -group dec -radix decimal /testbench/dec/r3
add wave -noupdate -group dec -radix decimal /testbench/dec/r4
add wave -noupdate -group dec -radix decimal /testbench/dec/r5
add wave -noupdate -group dec -radix decimal /testbench/dec/r6
add wave -noupdate -group dec -radix decimal /testbench/dec/r7
add wave -noupdate -group dec /testbench/dec/m
add wave -noupdate -expand -group adders -expand -group y01 -radix decimal /testbench/dec/adder6_0/a
add wave -noupdate -expand -group adders -expand -group y01 -radix decimal /testbench/dec/adder6_0/b
add wave -noupdate -expand -group adders -expand -group y01 -radix decimal /testbench/dec/adder6_0/y
add wave -noupdate -expand -group adders -expand -group y24 -radix decimal /testbench/dec/adder6_1/a
add wave -noupdate -expand -group adders -expand -group y24 -radix decimal /testbench/dec/adder6_1/b
add wave -noupdate -expand -group adders -expand -group y24 -radix decimal /testbench/dec/adder6_1/y
add wave -noupdate -expand -group adders -expand -group y12 -radix decimal /testbench/dec/adder6_2/a
add wave -noupdate -expand -group adders -expand -group y12 -radix decimal /testbench/dec/adder6_2/b
add wave -noupdate -expand -group adders -expand -group y12 -radix decimal /testbench/dec/adder6_2/y
add wave -noupdate -expand -group adders -expand -group y04 -radix decimal /testbench/dec/adder6_3/a
add wave -noupdate -expand -group adders -expand -group y04 -radix decimal /testbench/dec/adder6_3/b
add wave -noupdate -expand -group adders -expand -group y04 -radix decimal /testbench/dec/adder6_3/y
add wave -noupdate -expand -group adders -expand -group y14 -radix decimal /testbench/dec/adder6_4/a
add wave -noupdate -expand -group adders -expand -group y14 -radix decimal /testbench/dec/adder6_4/b
add wave -noupdate -expand -group adders -expand -group y14 -radix decimal /testbench/dec/adder6_4/y
add wave -noupdate -expand -group adders -expand -group y02 -radix decimal /testbench/dec/adder6_5/a
add wave -noupdate -expand -group adders -expand -group y02 -radix decimal /testbench/dec/adder6_5/b
add wave -noupdate -expand -group adders -expand -group y02 -radix decimal /testbench/dec/adder6_5/y
add wave -noupdate -expand -group adders -expand -group y0124 -radix decimal /testbench/dec/adder6_6/a
add wave -noupdate -expand -group adders -expand -group y0124 -radix decimal /testbench/dec/adder6_6/b
add wave -noupdate -expand -group adders -expand -group y0124 -radix decimal /testbench/dec/adder6_6/y
add wave -noupdate -expand -group adders -expand -group y67 -radix decimal /testbench/dec/adder6_9/a
add wave -noupdate -expand -group adders -expand -group y67 -radix decimal /testbench/dec/adder6_9/b
add wave -noupdate -expand -group adders -expand -group y67 -radix decimal /testbench/dec/adder6_9/y
add wave -noupdate -expand -group adders -expand -group y35 -radix decimal /testbench/dec/adder6_10/a
add wave -noupdate -expand -group adders -expand -group y35 -radix decimal /testbench/dec/adder6_10/b
add wave -noupdate -expand -group adders -expand -group y35 -radix decimal /testbench/dec/adder6_10/y
add wave -noupdate -expand -group adders -expand -group y37 -radix decimal /testbench/dec/adder6_11/a
add wave -noupdate -expand -group adders -expand -group y37 -radix decimal /testbench/dec/adder6_11/b
add wave -noupdate -expand -group adders -expand -group y37 -radix decimal /testbench/dec/adder6_11/y
add wave -noupdate -expand -group adders -expand -group y56 -radix decimal /testbench/dec/adder6_12/a
add wave -noupdate -expand -group adders -expand -group y56 -radix decimal /testbench/dec/adder6_12/b
add wave -noupdate -expand -group adders -expand -group y56 -radix decimal /testbench/dec/adder6_12/y
add wave -noupdate -expand -group adders -expand -group y57 -radix decimal /testbench/dec/adder6_13/a
add wave -noupdate -expand -group adders -expand -group y57 -radix decimal /testbench/dec/adder6_13/b
add wave -noupdate -expand -group adders -expand -group y57 -radix decimal /testbench/dec/adder6_13/y
add wave -noupdate -expand -group adders -expand -group y36 -radix decimal /testbench/dec/adder6_14/a
add wave -noupdate -expand -group adders -expand -group y36 -radix decimal /testbench/dec/adder6_14/b
add wave -noupdate -expand -group adders -expand -group y36 -radix decimal /testbench/dec/adder6_14/y
add wave -noupdate -expand -group adders -expand -group y3567 -radix decimal /testbench/dec/adder6_8/a
add wave -noupdate -expand -group adders -expand -group y3567 -radix decimal /testbench/dec/adder6_8/b
add wave -noupdate -expand -group adders -expand -group y3567 -radix decimal /testbench/dec/adder6_8/y
add wave -noupdate -expand -group adders -expand -group stage_LR0 -radix decimal /testbench/dec/adder6_16/a
add wave -noupdate -expand -group adders -expand -group stage_LR0 -radix decimal /testbench/dec/adder6_16/b
add wave -noupdate -expand -group adders -expand -group stage_LR0 -radix decimal /testbench/dec/adder6_16/y
add wave -noupdate -expand -group adders -expand -group stage_LR1 -radix decimal /testbench/dec/adder6_17/a
add wave -noupdate -expand -group adders -expand -group stage_LR1 -radix decimal /testbench/dec/adder6_17/b
add wave -noupdate -expand -group adders -expand -group stage_LR1 -radix decimal /testbench/dec/adder6_17/y
add wave -noupdate -expand -group adders -expand -group stage_LR2 -radix decimal /testbench/dec/adder6_18/a
add wave -noupdate -expand -group adders -expand -group stage_LR2 -radix decimal /testbench/dec/adder6_18/b
add wave -noupdate -expand -group adders -expand -group stage_LR2 -radix decimal /testbench/dec/adder6_18/y
add wave -noupdate -expand -group adders -expand -group stage_LR3 -radix decimal /testbench/dec/adder6_19/a
add wave -noupdate -expand -group adders -expand -group stage_LR3 -radix decimal /testbench/dec/adder6_19/b
add wave -noupdate -expand -group adders -expand -group stage_LR3 -radix decimal /testbench/dec/adder6_19/y
add wave -noupdate -expand -group comps -expand -group y01_L_y24 -radix decimal /testbench/dec/comp6_1/a
add wave -noupdate -expand -group comps -expand -group y01_L_y24 -radix decimal /testbench/dec/comp6_1/b
add wave -noupdate -expand -group comps -expand -group y01_L_y24 -radix decimal /testbench/dec/comp6_1/alb
add wave -noupdate -expand -group comps -expand -group y12_L_y04 -radix decimal /testbench/dec/comp6_2/a
add wave -noupdate -expand -group comps -expand -group y12_L_y04 -radix decimal /testbench/dec/comp6_2/b
add wave -noupdate -expand -group comps -expand -group y12_L_y04 -radix decimal /testbench/dec/comp6_2/alb
add wave -noupdate -expand -group comps -expand -group y14_L_y02 -radix decimal /testbench/dec/comp6_3/a
add wave -noupdate -expand -group comps -expand -group y14_L_y02 -radix decimal /testbench/dec/comp6_3/b
add wave -noupdate -expand -group comps -expand -group y14_L_y02 -radix decimal /testbench/dec/comp6_3/alb
add wave -noupdate -expand -group comps -expand -group y0124_L_0 -radix decimal /testbench/dec/comp6_0/a
add wave -noupdate -expand -group comps -expand -group y0124_L_0 -radix decimal /testbench/dec/comp6_0/b
add wave -noupdate -expand -group comps -expand -group y0124_L_0 -radix decimal /testbench/dec/comp6_0/alb
add wave -noupdate -expand -group comps -expand -group y67_L_y35 -radix decimal /testbench/dec/comp6_4/a
add wave -noupdate -expand -group comps -expand -group y67_L_y35 -radix decimal /testbench/dec/comp6_4/b
add wave -noupdate -expand -group comps -expand -group y67_L_y35 -radix decimal /testbench/dec/comp6_4/alb
add wave -noupdate -expand -group comps -expand -group y37_L_y56 -radix decimal /testbench/dec/comp6_5/a
add wave -noupdate -expand -group comps -expand -group y37_L_y56 -radix decimal /testbench/dec/comp6_5/b
add wave -noupdate -expand -group comps -expand -group y37_L_y56 -radix decimal /testbench/dec/comp6_5/alb
add wave -noupdate -expand -group comps -expand -group y57_L_y36 -radix decimal /testbench/dec/comp6_6/a
add wave -noupdate -expand -group comps -expand -group y57_L_y36 -radix decimal /testbench/dec/comp6_6/b
add wave -noupdate -expand -group comps -expand -group y57_L_y36 -radix decimal /testbench/dec/comp6_6/alb
add wave -noupdate -expand -group comps -expand -group y3567_L_0 -radix decimal /testbench/dec/comp6_7/a
add wave -noupdate -expand -group comps -expand -group y3567_L_0 -radix decimal /testbench/dec/comp6_7/b
add wave -noupdate -expand -group comps -expand -group y3567_L_0 -radix decimal /testbench/dec/comp6_7/alb
add wave -noupdate -expand -group comps -expand -group stage_LR0_L_stage_LR1 -radix decimal /testbench/dec/comp6_8/a
add wave -noupdate -expand -group comps -expand -group stage_LR0_L_stage_LR1 -radix decimal /testbench/dec/comp6_8/b
add wave -noupdate -expand -group comps -expand -group stage_LR0_L_stage_LR1 -radix decimal /testbench/dec/comp6_8/alb
add wave -noupdate -expand -group comps -expand -group stage_LR2_L_stage_LR3 -radix decimal /testbench/dec/comp6_10/a
add wave -noupdate -expand -group comps -expand -group stage_LR2_L_stage_LR3 -radix decimal /testbench/dec/comp6_10/b
add wave -noupdate -expand -group comps -expand -group stage_LR2_L_stage_LR3 -radix decimal /testbench/dec/comp6_10/alb
add wave -noupdate -expand -group comps -expand -group stageLR01_L_stageLR23 -radix decimal /testbench/dec/comp6_11/a
add wave -noupdate -expand -group comps -expand -group stageLR01_L_stageLR23 -radix decimal /testbench/dec/comp6_11/b
add wave -noupdate -expand -group comps -expand -group stageLR01_L_stageLR23 -radix decimal /testbench/dec/comp6_11/alb
add wave -noupdate -expand -group muxes -expand -group stage_L0 -radix decimal /testbench/dec/mux6_0/d0
add wave -noupdate -expand -group muxes -expand -group stage_L0 -radix decimal /testbench/dec/mux6_0/d1
add wave -noupdate -expand -group muxes -expand -group stage_L0 -radix decimal /testbench/dec/mux6_0/s
add wave -noupdate -expand -group muxes -expand -group stage_L0 -radix decimal /testbench/dec/mux6_0/y
add wave -noupdate -expand -group muxes -expand -group stage_L1 -radix decimal /testbench/dec/mux6_1/d0
add wave -noupdate -expand -group muxes -expand -group stage_L1 -radix decimal /testbench/dec/mux6_1/d1
add wave -noupdate -expand -group muxes -expand -group stage_L1 -radix decimal /testbench/dec/mux6_1/s
add wave -noupdate -expand -group muxes -expand -group stage_L1 -radix decimal /testbench/dec/mux6_1/y
add wave -noupdate -expand -group muxes -expand -group stage_L2 -radix decimal /testbench/dec/mux6_2/d0
add wave -noupdate -expand -group muxes -expand -group stage_L2 -radix decimal /testbench/dec/mux6_2/d1
add wave -noupdate -expand -group muxes -expand -group stage_L2 -radix decimal /testbench/dec/mux6_2/s
add wave -noupdate -expand -group muxes -expand -group stage_L2 -radix decimal /testbench/dec/mux6_2/y
add wave -noupdate -expand -group muxes -expand -group stage_L3 -radix decimal /testbench/dec/mux6_3/d0
add wave -noupdate -expand -group muxes -expand -group stage_L3 -radix decimal /testbench/dec/mux6_3/d1
add wave -noupdate -expand -group muxes -expand -group stage_L3 -radix decimal /testbench/dec/mux6_3/s
add wave -noupdate -expand -group muxes -expand -group stage_L3 -radix decimal /testbench/dec/mux6_3/y
add wave -noupdate -expand -group muxes -expand -group stage_R0 -radix decimal /testbench/dec/mux6_4/d0
add wave -noupdate -expand -group muxes -expand -group stage_R0 -radix decimal /testbench/dec/mux6_4/d1
add wave -noupdate -expand -group muxes -expand -group stage_R0 -radix decimal /testbench/dec/mux6_4/s
add wave -noupdate -expand -group muxes -expand -group stage_R0 -radix decimal /testbench/dec/mux6_4/y
add wave -noupdate -expand -group muxes -expand -group stage_R1 -radix decimal /testbench/dec/mux6_5/d0
add wave -noupdate -expand -group muxes -expand -group stage_R1 -radix decimal /testbench/dec/mux6_5/d1
add wave -noupdate -expand -group muxes -expand -group stage_R1 -radix decimal /testbench/dec/mux6_5/s
add wave -noupdate -expand -group muxes -expand -group stage_R1 -radix decimal /testbench/dec/mux6_5/y
add wave -noupdate -expand -group muxes -expand -group stage_R2 -radix decimal /testbench/dec/mux6_6/d0
add wave -noupdate -expand -group muxes -expand -group stage_R2 -radix decimal /testbench/dec/mux6_6/d1
add wave -noupdate -expand -group muxes -expand -group stage_R2 -radix decimal /testbench/dec/mux6_6/s
add wave -noupdate -expand -group muxes -expand -group stage_R2 -radix decimal /testbench/dec/mux6_6/y
add wave -noupdate -expand -group muxes -expand -group stage_R3 -radix decimal /testbench/dec/mux6_7/d0
add wave -noupdate -expand -group muxes -expand -group stage_R3 -radix decimal /testbench/dec/mux6_7/d1
add wave -noupdate -expand -group muxes -expand -group stage_R3 -radix decimal /testbench/dec/mux6_7/s
add wave -noupdate -expand -group muxes -expand -group stage_R3 -radix decimal /testbench/dec/mux6_7/y
add wave -noupdate -expand -group muxes -expand -group stage_LR01 -radix decimal /testbench/dec/mux6_8/d0
add wave -noupdate -expand -group muxes -expand -group stage_LR01 -radix decimal /testbench/dec/mux6_8/d1
add wave -noupdate -expand -group muxes -expand -group stage_LR01 -radix decimal /testbench/dec/mux6_8/s
add wave -noupdate -expand -group muxes -expand -group stage_LR01 -radix decimal /testbench/dec/mux6_8/y
add wave -noupdate -expand -group muxes -expand -group stage_LR23 -radix decimal /testbench/dec/mux6_9/d0
add wave -noupdate -expand -group muxes -expand -group stage_LR23 -radix decimal /testbench/dec/mux6_9/d1
add wave -noupdate -expand -group muxes -expand -group stage_LR23 -radix decimal /testbench/dec/mux6_9/s
add wave -noupdate -expand -group muxes -expand -group stage_LR23 -radix decimal /testbench/dec/mux6_9/y
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 271
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {6 ps}
