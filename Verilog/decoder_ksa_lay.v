/* Verilog for cell 'Project:decoder_ksa{lay}' from library 'Project' */
/* Created on Sun Nov 27, 2016 00:39:27 */
/* Last revised on Sun Nov 27, 2016 21:11:50 */
/* Written on Sun Nov 27, 2016 21:13:51 by Electric VLSI Design System, version 8.06 */

module Project__and3_1x(a, b, c, y, vdd, gnd);
  input a;
  input b;
  input c;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_193, net_197, net_198, plno_2_well, plnode_0_well;

  tranif1 nmos_4(gnd, y, net_193);
  tranif1 nmos_5(net_197, gnd, a);
  tranif1 nmos_6(net_198, net_197, b);
  tranif1 nmos_7(net_193, net_198, c);
  tranif0 pmos_4(vdd, y, net_193);
  tranif0 pmos_5(net_193, vdd, a);
  tranif0 pmos_6(vdd, net_193, b);
  tranif0 pmos_7(net_193, vdd, c);
endmodule   /* Project__and3_1x */

module Project__inv_1x(a, y, vdd, gnd);
  input a;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire plnode_0_well, plnode_1_well;

  tranif1 nmos_0(gnd, y, a);
  tranif0 pmos_0(vdd, y, a);
endmodule   /* Project__inv_1x */

module Project__mux2_c_1x(d0, d1, s, y, vdd, gnd);
  input d0;
  input d1;
  input s;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_114, net_186, net_187, net_188, net_189, net_80, plno_2_well;
  wire plnode_0_well;

  tranif1 nmos_1(gnd, net_189, d1);
  tranif1 nmos_2(net_189, net_80, s);
  tranif1 nmos_3(net_80, net_188, net_114);
  tranif1 nmos_4(net_188, gnd, d0);
  tranif1 nmos_5(net_114, gnd, s);
  tranif1 nmos_6(gnd, y, net_80);
  tranif0 pmos_0(vdd, net_187, d1);
  tranif0 pmos_1(net_187, net_80, net_114);
  tranif0 pmos_2(net_80, net_186, s);
  tranif0 pmos_3(net_186, vdd, d0);
  tranif0 pmos_4(net_114, vdd, s);
  tranif0 pmos_5(vdd, y, net_80);
endmodule   /* Project__mux2_c_1x */

module Project__mux6(d0, d0_1, d0_2, d0_3, d0_4, d0_5, d1, d1_1, d1_2, d1_3, 
      d1_4, d1_5, s, y, y_1, y_2, y_3, y_4, y_5, vdd, vdd_1, vdd_1_1, vdd_2, 
      vdd_3, vdd_4, gnd, gnd_1, gnd_1_1, gnd_2, gnd_3, gnd_4);
  input [0:0] d0;
  input [1:1] d0_1;
  input [2:2] d0_2;
  input [3:3] d0_3;
  input [4:4] d0_4;
  input [5:5] d0_5;
  input [0:0] d1;
  input [1:1] d1_1;
  input [2:2] d1_2;
  input [3:3] d1_3;
  input [4:4] d1_4;
  input [5:5] d1_5;
  input s;
  output [0:0] y;
  output [1:1] y_1;
  output [2:2] y_2;
  output [3:3] y_3;
  output [4:4] y_4;
  output [5:5] y_5;
  input vdd;
  input vdd_1;
  input vdd_1_1;
  input vdd_2;
  input vdd_3;
  input vdd_4;
  input gnd;
  input gnd_1;
  input gnd_1_1;
  input gnd_2;
  input gnd_3;
  input gnd_4;

  supply1 vdd;
  supply0 gnd;
  Project__mux2_c_1x mux2_c_1_0(.d0(d0[0]), .d1(d1[0]), .s(s), .y(y[0]), 
      .vdd(vdd), .gnd(gnd_1));
  Project__mux2_c_1x mux2_c_1_1(.d0(d0_1[1]), .d1(d1_1[1]), .s(s), .y(y_1[1]), 
      .vdd(vdd_1_1), .gnd(gnd_1_1));
  Project__mux2_c_1x mux2_c_1_2(.d0(d0_2[2]), .d1(d1_2[2]), .s(s), .y(y_2[2]), 
      .vdd(vdd_2), .gnd(gnd_2));
  Project__mux2_c_1x mux2_c_1_3(.d0(d0_3[3]), .d1(d1_3[3]), .s(s), .y(y_3[3]), 
      .vdd(vdd_3), .gnd(gnd_3));
  Project__mux2_c_1x mux2_c_1_4(.d0(d0_4[4]), .d1(d1_4[4]), .s(s), .y(y_4[4]), 
      .vdd(vdd_4), .gnd(gnd_4));
  Project__mux2_c_1x mux2_c_1_5(.d0(d0_5[5]), .d1(d1_5[5]), .s(s), .y(y_5[5]), 
      .vdd(vdd_1), .gnd(gnd));
endmodule   /* Project__mux6 */

module Project__and2_1x(a, b, y, vdd, gnd);
  input a;
  input b;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_72, net_73, plno_2_well, plnode_0_well;

  tranif1 nmos_0(gnd, net_72, a);
  tranif1 nmos_1(net_72, net_73, b);
  tranif1 nmos_2(y, gnd, net_73);
  tranif0 pmos_0(vdd, net_73, a);
  tranif0 pmos_1(net_73, vdd, b);
  tranif0 pmos_2(y, vdd, net_73);
endmodule   /* Project__and2_1x */

module Project__xor2_1x(a, b, y, vdd, gnd);
  input a;
  input b;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_158, net_68, net_70, net_76, net_79, net_87, plno_2_well;
  wire plnode_0_well;

  tranif1 nmos_0(gnd, net_79, a);
  tranif1 nmos_1(y, net_76, net_158);
  tranif1 nmos_2(net_76, gnd, net_87);
  tranif1 nmos_3(net_79, y, b);
  tranif1 nmos_4(gnd, net_158, b);
  tranif1 nmos_5(net_87, gnd, a);
  tranif0 pmos_0(vdd, net_68, net_87);
  tranif0 pmos_1(net_68, y, b);
  tranif0 pmos_2(y, net_70, net_158);
  tranif0 pmos_4(net_70, vdd, a);
  tranif0 pmos_5(net_87, vdd, a);
  tranif0 pmos_6(vdd, net_158, b);
endmodule   /* Project__xor2_1x */

module Project__bit_prop_gen(A, B, G, P, vdd, gnd);
  input A;
  input B;
  output G;
  output P;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  Project__and2_1x and2_1x_0(.a(A), .b(B), .y(G), .vdd(vdd), .gnd(gnd));
  Project__xor2_1x xor2_1x_0(.a(A), .b(B), .y(P), .vdd(vdd), .gnd(gnd));
endmodule   /* Project__bit_prop_gen */

module Project__a2o1_1x(a, b, c, y, vdd, gnd);
  input a;
  input b;
  input c;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_254, net_259, net_288, plnode_0_well, plnode_1_well;

  tranif1 nmos_3(gnd, net_288, a);
  tranif1 nmos_4(net_288, net_259, b);
  tranif1 nmos_5(net_259, gnd, c);
  tranif1 nmos_6(gnd, y, net_259);
  tranif0 pmos_4(net_254, vdd, a);
  tranif0 pmos_5(vdd, net_254, b);
  tranif0 pmos_6(net_254, net_259, c);
  tranif0 pmos_8(y, vdd, net_259);
endmodule   /* Project__a2o1_1x */

module Project__group_gen(G0, G1, P1, G2, vdd, gnd);
  input G0;
  input G1;
  input P1;
  output G2;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  Project__a2o1_1x a2o1_1x_1(.a(G0), .b(P1), .c(G1), .y(G2), .vdd(vdd), 
      .gnd(gnd));
endmodule   /* Project__group_gen */

module Project__group_prop_gen(G0, G1, P0, P1, G2, P2, vdd, gnd);
  input G0;
  input G1;
  input P0;
  input P1;
  output G2;
  output P2;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  Project__a2o1_1x a2o1_1x_0(.a(G0), .b(P1), .c(G1), .y(G2), .vdd(vdd), 
      .gnd(gnd));
  Project__and2_1x and2_1x_0(.a(P0), .b(P1), .y(P2), .vdd(vdd), .gnd(gnd));
endmodule   /* Project__group_prop_gen */

module Project__six_bit_kogge_stone_adder(A, A_1, A_2, A_3, A_4, A_5, B, B_1, 
      B_2, B_3, B_4, B_5, S, S_1, S_2, S_3, S_4, S_5, vdd, vdd_1, vdd_1_1, 
      vdd_2, vdd_3, vdd_4, gnd, gnd_1, gnd_1_1, gnd_2, gnd_3, gnd_4);
  input [0:0] A;
  input [1:1] A_1;
  input [2:2] A_2;
  input [3:3] A_3;
  input [4:4] A_4;
  input [5:5] A_5;
  input [0:0] B;
  input [1:1] B_1;
  input [2:2] B_2;
  input [3:3] B_3;
  input [4:4] B_4;
  input [5:5] B_5;
  output [0:0] S;
  output [1:1] S_1;
  output [2:2] S_2;
  output [3:3] S_3;
  output [4:4] S_4;
  output [5:5] S_5;
  input vdd;
  input vdd_1;
  input vdd_1_1;
  input vdd_2;
  input vdd_3;
  input vdd_4;
  input gnd;
  input gnd_1;
  input gnd_1_1;
  input gnd_2;
  input gnd_3;
  input gnd_4;

  supply1 vdd;
  supply0 gnd;
  wire P0, P1, P2, P3, P4, P5, bit_prop_0_G, net_10, net_100, net_13, net_143;
  wire net_157, net_16, net_165, net_178, net_19, net_22, net_26, net_27;
  wire net_30, net_35, net_38, net_44, net_47, net_49, net_55, net_58, net_60;
  wire net_71;

  Project__bit_prop_gen bit_prop_0(.A(A_5[5]), .B(B_5[5]), .G(bit_prop_0_G), 
      .P(P5), .vdd(vdd_1), .gnd(gnd));
  Project__bit_prop_gen bit_prop_1(.A(A_4[4]), .B(B_4[4]), .G(net_10), .P(P4), 
      .vdd(vdd_4), .gnd(gnd_4));
  Project__bit_prop_gen bit_prop_2(.A(A[0]), .B(B[0]), .G(net_71), .P(P0), 
      .vdd(vdd), .gnd(gnd_1));
  Project__bit_prop_gen bit_prop_6(.A(A_3[3]), .B(B_3[3]), .G(net_26), .P(P3), 
      .vdd(vdd_3), .gnd(gnd_3));
  Project__bit_prop_gen bit_prop_7(.A(A_2[2]), .B(B_2[2]), .G(net_44), .P(P2), 
      .vdd(vdd_2), .gnd(gnd_2));
  Project__bit_prop_gen bit_prop_8(.A(A_1[1]), .B(B_1[1]), .G(net_55), .P(P1), 
      .vdd(vdd_1_1), .gnd(gnd_1_1));
  Project__group_gen group_ge_0(.G0(net_100), .G1(net_22), .P1(net_19), 
      .G2(net_178), .vdd(vdd_4), .gnd(gnd_4));
  Project__group_gen group_ge_1(.G0(net_100), .G1(net_49), .P1(net_47), 
      .G2(net_157), .vdd(vdd_2), .gnd(gnd_2));
  Project__group_gen group_ge_2(.G0(gnd_3), .G1(net_30), .P1(net_27), 
      .G2(net_165), .vdd(vdd_3), .gnd(gnd_3));
  Project__group_gen group_ge_3(.G0(gnd_1_1), .G1(net_60), .P1(net_58), 
      .G2(net_143), .vdd(vdd_1_1), .gnd(gnd_1_1));
  Project__group_gen group_ge_4(.G0(gnd_1), .G1(net_71), .P1(P0), .G2(net_100), 
      .vdd(vdd), .gnd(gnd_1));
  Project__group_prop_gen group_pr_0(.G0(net_26), .G1(net_10), .P0(P3), 
      .P1(P4), .G2(net_16), .P2(net_13), .vdd(vdd_4), .gnd(gnd_4));
  Project__group_prop_gen group_pr_1(.G0(net_49), .G1(net_16), .P0(net_47), 
      .P1(net_13), .G2(net_22), .P2(net_19), .vdd(vdd_4), .gnd(gnd_4));
  Project__group_prop_gen group_pr_5(.G0(net_44), .G1(net_26), .P0(P2), 
      .P1(P3), .G2(net_38), .P2(net_35), .vdd(vdd_3), .gnd(gnd_3));
  Project__group_prop_gen group_pr_6(.G0(net_60), .G1(net_38), .P0(net_58), 
      .P1(net_35), .G2(net_30), .P2(net_27), .vdd(vdd_3), .gnd(gnd_3));
  Project__group_prop_gen group_pr_7(.G0(net_55), .G1(net_44), .P0(P1), 
      .P1(P2), .G2(net_49), .P2(net_47), .vdd(vdd_2), .gnd(gnd_2));
  Project__group_prop_gen group_pr_8(.G0(net_71), .G1(net_55), .P0(P0), 
      .P1(P1), .G2(net_60), .P2(net_58), .vdd(vdd_1_1), .gnd(gnd_1_1));
  Project__xor2_1x xor2_1x_0(.a(gnd_1), .b(P0), .y(S[0]), .vdd(vdd), 
      .gnd(gnd_1));
  Project__xor2_1x xor2_1x_1(.a(net_100), .b(P1), .y(S_1[1]), .vdd(vdd_1_1), 
      .gnd(gnd_1_1));
  Project__xor2_1x xor2_1x_2(.a(net_143), .b(P2), .y(S_2[2]), .vdd(vdd_2), 
      .gnd(gnd_2));
  Project__xor2_1x xor2_1x_3(.a(net_157), .b(P3), .y(S_3[3]), .vdd(vdd_3), 
      .gnd(gnd_3));
  Project__xor2_1x xor2_1x_4(.a(net_165), .b(P4), .y(S_4[4]), .vdd(vdd_4), 
      .gnd(gnd_4));
  Project__xor2_1x xor2_1x_5(.a(net_178), .b(P5), .y(S_5[5]), .vdd(vdd_1), 
      .gnd(gnd));
endmodule   /* Project__six_bit_kogge_stone_adder */

module Project__adder6_ksa(a, a_1, a_2, a_3, a_4, a_5, b, b_1, b_2, b_3, b_4, 
      b_5, y, y_1, y_2, y_3, y_4, y_5, vdd, vdd_1, vdd_1_1, vdd_2, vdd_3, 
      vdd_4, vdd_5, gnd, gnd_1, gnd_1_1, gnd_2, gnd_3, gnd_4, gnd_5);
  input [0:0] a;
  input [1:1] a_1;
  input [2:2] a_2;
  input [3:3] a_3;
  input [4:4] a_4;
  input [5:5] a_5;
  input [0:0] b;
  input [1:1] b_1;
  input [2:2] b_2;
  input [3:3] b_3;
  input [4:4] b_4;
  input [5:5] b_5;
  output [0:0] y;
  output [1:1] y_1;
  output [2:2] y_2;
  output [3:3] y_3;
  output [4:4] y_4;
  output [5:5] y_5;
  input vdd;
  input vdd_1;
  input vdd_1_1;
  input vdd_2;
  input vdd_3;
  input vdd_4;
  input vdd_5;
  input gnd;
  input gnd_1;
  input gnd_1_1;
  input gnd_2;
  input gnd_3;
  input gnd_4;
  input gnd_5;

  supply1 vdd;
  supply0 gnd;
  wire net_0, net_101, net_104, net_114, net_14, net_17, net_3, net_32, net_41;
  wire net_44, net_47, net_50, net_53, net_6, net_84, net_9, net_99;

  Project__and3_1x and3_1x_0(.a(b_5[5]), .b(net_84), .c(a_5[5]), .y(net_114), 
      .vdd(vdd), .gnd(gnd_1));
  Project__and3_1x and3_1x_1(.a(net_99), .b(net_17), .c(net_101), .y(net_104), 
      .vdd(vdd), .gnd(gnd_1));
  Project__inv_1x inv_1x_0(.a(net_17), .y(net_84), .vdd(vdd), .gnd(gnd_1));
  Project__inv_1x inv_1x_1(.a(a_5[5]), .y(net_101), .vdd(vdd), .gnd(gnd_1));
  Project__inv_1x inv_1x_2(.a(b_5[5]), .y(net_99), .vdd(vdd), .gnd(gnd_1));
  Project__mux6 mux6_0(.d0({net_14}), .d0_1({net_0}), .d0_2({net_3}), 
      .d0_3({net_6}), .d0_4({net_9}), .d0_5({net_17}), .d1({gnd}), 
      .d1_1({gnd_1_1}), .d1_2({gnd_2}), .d1_3({gnd_3}), .d1_4({gnd_4}), 
      .d1_5({vdd_5}), .s(net_114), .y({net_32}), .y_1({net_41}), 
      .y_2({net_44}), .y_3({net_47}), .y_4({net_50}), .y_5({net_53}), 
      .vdd(vdd_1), .vdd_1(vdd_5), .vdd_1_1(vdd_1_1), .vdd_2(vdd_2), 
      .vdd_3(vdd_3), .vdd_4(vdd_4), .gnd(gnd_5), .gnd_1(gnd), 
      .gnd_1_1(gnd_1_1), .gnd_2(gnd_2), .gnd_3(gnd_3), .gnd_4(gnd_4));
  Project__mux6 mux6_1(.d0({net_32}), .d0_1({net_41}), .d0_2({net_44}), 
      .d0_3({net_47}), .d0_4({net_50}), .d0_5({net_53}), .d1({vdd_1}), 
      .d1_1({vdd_1_1}), .d1_2({vdd_2}), .d1_3({vdd_3}), .d1_4({vdd_4}), 
      .d1_5({gnd_5}), .s(net_104), .y(y[0:0]), .y_1(y_1[1:1]), .y_2(y_2[2:2]), 
      .y_3(y_3[3:3]), .y_4(y_4[4:4]), .y_5(y_5[5:5]), .vdd(vdd_1), 
      .vdd_1(vdd_5), .vdd_1_1(vdd_1_1), .vdd_2(vdd_2), .vdd_3(vdd_3), 
      .vdd_4(vdd_4), .gnd(gnd_5), .gnd_1(gnd), .gnd_1_1(gnd_1_1), 
      .gnd_2(gnd_2), .gnd_3(gnd_3), .gnd_4(gnd_4));
  Project__six_bit_kogge_stone_adder six_bit__0(.A(a[0:0]), .A_1(a_1[1:1]), 
      .A_2(a_2[2:2]), .A_3(a_3[3:3]), .A_4(a_4[4:4]), .A_5(a_5[5:5]), 
      .B(b[0:0]), .B_1(b_1[1:1]), .B_2(b_2[2:2]), .B_3(b_3[3:3]), 
      .B_4(b_4[4:4]), .B_5(b_5[5:5]), .S({net_14}), .S_1({net_0}), 
      .S_2({net_3}), .S_3({net_6}), .S_4({net_9}), .S_5({net_17}), .vdd(vdd_1), 
      .vdd_1(vdd_5), .vdd_1_1(vdd_1_1), .vdd_2(vdd_2), .vdd_3(vdd_3), 
      .vdd_4(vdd_4), .gnd(gnd_5), .gnd_1(gnd), .gnd_1_1(gnd_1_1), 
      .gnd_2(gnd_2), .gnd_3(gnd_3), .gnd_4(gnd_4));
endmodule   /* Project__adder6_ksa */

module Project__fulladder(a, b, c, cout, s, vdd, gnd);
  input a;
  input b;
  input c;
  output cout;
  output s;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire coutb, net_10, net_11, net_122, net_123, net_124, net_13, net_134;
  wire net_135, net_27, net_30, plnode_0_well, plnode_1_well, plnode_2_well;
  wire plnode_3_well, sumb;

  tranif1 nmos_0(gnd, cout, coutb);
  tranif1 nmos_1(gnd, s, sumb);
  tranif1 nmos_2(net_124, gnd, a);
  tranif1 nmos_3(net_122, net_124, b);
  tranif1 nmos_4(sumb, net_122, c);
  tranif1 nmos_5(net_123, sumb, coutb);
  tranif1 nmos_6(gnd, net_123, c);
  tranif1 nmos_7(net_123, gnd, b);
  tranif1 nmos_8(gnd, net_123, a);
  tranif1 nmos_9(net_134, gnd, a);
  tranif1 nmos_10(coutb, net_134, b);
  tranif1 nmos_11(net_135, coutb, c);
  tranif1 nmos_12(gnd, net_135, b);
  tranif1 nmos_13(net_135, gnd, a);
  tranif0 pmos_0(vdd, cout, coutb);
  tranif0 pmos_1(vdd, s, sumb);
  tranif0 pmos_2(net_10, vdd, a);
  tranif0 pmos_3(net_11, net_10, b);
  tranif0 pmos_4(sumb, net_11, c);
  tranif0 pmos_5(net_27, sumb, coutb);
  tranif0 pmos_6(vdd, net_27, c);
  tranif0 pmos_7(net_27, vdd, b);
  tranif0 pmos_8(vdd, net_27, a);
  tranif0 pmos_9(net_13, vdd, a);
  tranif0 pmos_10(coutb, net_13, b);
  tranif0 pmos_11(net_30, coutb, c);
  tranif0 pmos_12(vdd, net_30, b);
  tranif0 pmos_13(net_30, vdd, a);
endmodule   /* Project__fulladder */

module Project__fulladder6(a, a_1, a_2, a_3, a_4, a_5, b, b_1, b_2, b_3, b_4, 
      b_5, cin, Ovf, cout, s, s_1, s_2, s_3, s_4, s_5, vdd, vdd_1, vdd_1_1, 
      vdd_2, vdd_3, vdd_4, vdd_5, gnd, gnd_1, gnd_1_1, gnd_2, gnd_3, gnd_4, 
      gnd_5);
  input [0:0] a;
  input [1:1] a_1;
  input [2:2] a_2;
  input [3:3] a_3;
  input [4:4] a_4;
  input [5:5] a_5;
  input [0:0] b;
  input [1:1] b_1;
  input [2:2] b_2;
  input [3:3] b_3;
  input [4:4] b_4;
  input [5:5] b_5;
  input cin;
  output Ovf;
  output cout;
  output [0:0] s;
  output [1:1] s_1;
  output [2:2] s_2;
  output [3:3] s_3;
  output [4:4] s_4;
  output [5:5] s_5;
  input vdd;
  input vdd_1;
  input vdd_1_1;
  input vdd_2;
  input vdd_3;
  input vdd_4;
  input vdd_5;
  input gnd;
  input gnd_1;
  input gnd_1_1;
  input gnd_2;
  input gnd_3;
  input gnd_4;
  input gnd_5;

  supply1 vdd;
  supply0 gnd;
  wire net_0, net_1, net_2, net_3, net_4;

  Project__fulladder fulladde_0(.a(a[0]), .b(b[0]), .c(cin), .cout(net_4), 
      .s(s[0]), .vdd(vdd_1), .gnd(gnd));
  Project__fulladder fulladde_1(.a(a_1[1]), .b(b_1[1]), .c(net_4), 
      .cout(net_3), .s(s_1[1]), .vdd(vdd_1_1), .gnd(gnd_1_1));
  Project__fulladder fulladde_2(.a(a_2[2]), .b(b_2[2]), .c(net_3), 
      .cout(net_0), .s(s_2[2]), .vdd(vdd_2), .gnd(gnd_2));
  Project__fulladder fulladde_3(.a(a_3[3]), .b(b_3[3]), .c(net_0), 
      .cout(net_1), .s(s_3[3]), .vdd(vdd_3), .gnd(gnd_3));
  Project__fulladder fulladde_4(.a(a_4[4]), .b(b_4[4]), .c(net_1), 
      .cout(net_2), .s(s_4[4]), .vdd(vdd_4), .gnd(gnd_4));
  Project__fulladder fulladde_5(.a(a_5[5]), .b(b_5[5]), .c(net_2), .cout(cout), 
      .s(s_5[5]), .vdd(vdd_5), .gnd(gnd_5));
  Project__xor2_1x xor2_1x_0(.a(net_2), .b(cout), .y(Ovf), .vdd(vdd), 
      .gnd(gnd_1));
endmodule   /* Project__fulladder6 */

module Project__inv6_1x(a, a_1, a_2, a_3, a_4, a_5, y, y_1, y_2, y_3, y_4, y_5, 
      vdd, vdd_1, vdd_1_1, vdd_2, vdd_3, vdd_4, gnd, gnd_1, gnd_1_1, gnd_2, 
      gnd_3, gnd_4);
  input [0:0] a;
  input [1:1] a_1;
  input [2:2] a_2;
  input [3:3] a_3;
  input [4:4] a_4;
  input [5:5] a_5;
  output [0:0] y;
  output [1:1] y_1;
  output [2:2] y_2;
  output [3:3] y_3;
  output [4:4] y_4;
  output [5:5] y_5;
  input vdd;
  input vdd_1;
  input vdd_1_1;
  input vdd_2;
  input vdd_3;
  input vdd_4;
  input gnd;
  input gnd_1;
  input gnd_1_1;
  input gnd_2;
  input gnd_3;
  input gnd_4;

  supply1 vdd;
  supply0 gnd;
  Project__inv_1x inv_1x_0(.a(a[0]), .y(y[0]), .vdd(vdd_1), .gnd(gnd));
  Project__inv_1x inv_1x_1(.a(a_1[1]), .y(y_1[1]), .vdd(vdd_1_1), 
      .gnd(gnd_1_1));
  Project__inv_1x inv_1x_2(.a(a_2[2]), .y(y_2[2]), .vdd(vdd_2), .gnd(gnd_2));
  Project__inv_1x inv_1x_3(.a(a_3[3]), .y(y_3[3]), .vdd(vdd_3), .gnd(gnd_3));
  Project__inv_1x inv_1x_4(.a(a_4[4]), .y(y_4[4]), .vdd(vdd_4), .gnd(gnd_4));
  Project__inv_1x inv_1x_5(.a(a_5[5]), .y(y_5[5]), .vdd(vdd), .gnd(gnd_1));
endmodule   /* Project__inv6_1x */

module Project__comp6(a, a_1, a_2, a_3, a_4, a_5, b, b_1, b_2, b_3, b_4, b_5, 
      alb, vdd, vdd_1, vdd_1_1, vdd_2, vdd_3, vdd_4, vdd_5, gnd, gnd_1, 
      gnd_1_1, gnd_2, gnd_3, gnd_4, gnd_5);
  input [0:0] a;
  input [1:1] a_1;
  input [2:2] a_2;
  input [3:3] a_3;
  input [4:4] a_4;
  input [5:5] a_5;
  input [0:0] b;
  input [1:1] b_1;
  input [2:2] b_2;
  input [3:3] b_3;
  input [4:4] b_4;
  input [5:5] b_5;
  output alb;
  input vdd;
  input vdd_1;
  input vdd_1_1;
  input vdd_2;
  input vdd_3;
  input vdd_4;
  input vdd_5;
  input gnd;
  input gnd_1;
  input gnd_1_1;
  input gnd_2;
  input gnd_3;
  input gnd_4;
  input gnd_5;

  supply1 vdd;
  supply0 gnd;
  wire fulladde_0_cout, net_0, net_27, net_30, net_4, net_5, net_6, net_7;
  wire net_8;
  wire [4:0] fulladde_0_s;

  Project__fulladder6 fulladde_0(.a(a[0:0]), .a_1(a_1[1:1]), .a_2(a_2[2:2]), 
      .a_3(a_3[3:3]), .a_4(a_4[4:4]), .a_5(a_5[5:5]), .b({net_0}), 
      .b_1({net_8}), .b_2({net_7}), .b_3({net_6}), .b_4({net_4}), 
      .b_5({net_5}), .cin(vdd_1), .Ovf(net_27), .cout(fulladde_0_cout), 
      .s(fulladde_0_s[0:0]), .s_1(fulladde_0_s[1:1]), .s_2(fulladde_0_s[2:2]), 
      .s_3(fulladde_0_s[3:3]), .s_4(fulladde_0_s[4:4]), .s_5({net_30}), 
      .vdd(vdd), .vdd_1(vdd_1), .vdd_1_1(vdd_1_1), .vdd_2(vdd_2), 
      .vdd_3(vdd_3), .vdd_4(vdd_4), .vdd_5(vdd_5), .gnd(gnd), .gnd_1(gnd_1), 
      .gnd_1_1(gnd_1_1), .gnd_2(gnd_2), .gnd_3(gnd_3), .gnd_4(gnd_4), 
      .gnd_5(gnd_5));
  Project__inv6_1x inv6_1x_0(.a(b[0:0]), .a_1(b_1[1:1]), .a_2(b_2[2:2]), 
      .a_3(b_3[3:3]), .a_4(b_4[4:4]), .a_5(b_5[5:5]), .y({net_0}), 
      .y_1({net_8}), .y_2({net_7}), .y_3({net_6}), .y_4({net_4}), 
      .y_5({net_5}), .vdd(vdd_5), .vdd_1(vdd_1), .vdd_1_1(vdd_1_1), 
      .vdd_2(vdd_2), .vdd_3(vdd_3), .vdd_4(vdd_4), .gnd(gnd), .gnd_1(gnd_5), 
      .gnd_1_1(gnd_1_1), .gnd_2(gnd_2), .gnd_3(gnd_3), .gnd_4(gnd_4));
  Project__xor2_1x xor2_1x_0(.a(net_27), .b(net_30), .y(alb), .vdd(vdd), 
      .gnd(gnd_1));
endmodule   /* Project__comp6 */

module decoder(r0, r0_1, r0_2, r0_3, r0_4, r0_5, r1, r1_1, r1_2, r1_3, 
      r1_4, r1_5, r2, r2_1, r2_2, r2_3, r2_4, r2_5, r3, r3_1, r3_2, r3_3, r3_4, 
      r3_5, r4, r4_1, r4_2, r4_3, r4_4, r4_5, r5, r5_1, r5_2, r5_3, r5_4, r5_5, 
      r6, r6_1, r6_2, r6_3, r6_4, r6_5, r7, r7_1, r7_2, r7_3, r7_4, r7_5, m, 
      m_1, m_2, m_3);
  input [0:0] r0;
  input [1:1] r0_1;
  input [2:2] r0_2;
  input [3:3] r0_3;
  input [4:4] r0_4;
  input [5:5] r0_5;
  input [0:0] r1;
  input [1:1] r1_1;
  input [2:2] r1_2;
  input [3:3] r1_3;
  input [4:4] r1_4;
  input [5:5] r1_5;
  input [0:0] r2;
  input [1:1] r2_1;
  input [2:2] r2_2;
  input [3:3] r2_3;
  input [4:4] r2_4;
  input [5:5] r2_5;
  input [0:0] r3;
  input [1:1] r3_1;
  input [2:2] r3_2;
  input [3:3] r3_3;
  input [4:4] r3_4;
  input [5:5] r3_5;
  input [0:0] r4;
  input [1:1] r4_1;
  input [2:2] r4_2;
  input [3:3] r4_3;
  input [4:4] r4_4;
  input [5:5] r4_5;
  input [0:0] r5;
  input [1:1] r5_1;
  input [2:2] r5_2;
  input [3:3] r5_3;
  input [4:4] r5_4;
  input [5:5] r5_5;
  input [0:0] r6;
  input [1:1] r6_1;
  input [2:2] r6_2;
  input [3:3] r6_3;
  input [4:4] r6_4;
  input [5:5] r6_5;
  input [0:0] r7;
  input [1:1] r7_1;
  input [2:2] r7_2;
  input [3:3] r7_3;
  input [4:4] r7_4;
  input [5:5] r7_5;
  output [0:0] m;
  output [1:1] m_1;
  output [2:2] m_2;
  output [3:3] m_3;
/*
  input vdd;
  input gnd;
*/
  supply1 vdd;
  supply0 gnd;
  wire net_1018, net_1022, net_1025, net_1028, net_1031, net_1035, net_1076;
  wire net_1108, net_1109, net_1110, net_1111, net_1112, net_1113, net_1153;
  wire net_1178, net_119, net_1198, net_12, net_120, net_121, net_122, net_123;
  wire net_1233, net_124, net_125, net_1263, net_127, net_1270, net_129;
  wire net_1294, net_1300, net_1302, net_131, net_1310, net_1312, net_1322;
  wire net_1326, net_133, net_1345, net_1346, net_1347, net_1348, net_1349;
  wire net_1350, net_136, net_15, net_156, net_158, net_161, net_163, net_167;
  wire net_169, net_173, net_175, net_178, net_18, net_1800, net_181, net_185;
  wire net_186, net_198, net_2, net_22, net_259, net_26, net_3, net_30, net_330;
  wire net_34, net_369, net_376, net_378, net_379, net_38, net_380, net_381;
  wire net_382, net_386, net_387, net_389, net_390, net_396, net_402, net_408;
  wire net_411, net_412, net_414, net_419, net_421, net_43, net_459, net_460;
  wire net_464, net_468, net_47, net_473, net_474, net_477, net_479, net_480;
  wire net_485, net_486, net_489, net_492, net_493, net_498, net_499, net_510;
  wire net_525, net_533, net_536, net_546, net_557, net_56, net_562, net_564;
  wire net_575, net_584, net_587, net_59, net_594, net_6, net_64, net_69;
  wire net_741, net_743, net_757, net_775, net_777, net_779, net_781, net_782;
  wire net_783, net_784, net_785, net_786, net_787, net_789, net_791, net_793;
  wire net_795, net_798, net_799, net_800, net_801, net_802, net_803, net_804;
  wire net_805, net_806, net_807, net_811, net_812, net_814, net_816, net_818;
  wire net_824, net_827, net_830, net_833, net_892, net_897, net_899, net_9;
  wire net_901, net_903, net_905, net_907, net_909, net_911, net_913, net_915;
  wire net_917, net_919, net_921, net_922, net_923, net_924, net_925, net_926;
  wire net_927, net_929, net_931, net_933, net_935, net_937, net_969, net_976;
  wire net_977, net_978, net_979, net_980, net_981, plnode_10_well;
  wire plnode_11_well, plnode_12_well, plnode_13_well, plnode_14_well;
  wire plnode_15_well, plnode_16_well, plnode_2_well, plnode_4_well;
  wire plnode_5_well, plnode_6_well, plnode_7_well, plnode_8_well;
  wire plnode_9_well;

  Project__adder6_ksa adder6_k_0(.a(r0[0:0]), .a_1(r0_1[1:1]), .a_2(r0_2[2:2]), 
      .a_3(r0_3[3:3]), .a_4(r0_4[4:4]), .a_5(r0_5[5:5]), .b(r2[0:0]), 
      .b_1(r2_1[1:1]), .b_2(r2_2[2:2]), .b_3(r2_3[3:3]), .b_4(r2_4[4:4]), 
      .b_5(r2_5[5:5]), .y({net_173}), .y_1({net_175}), .y_2({net_178}), 
      .y_3({net_181}), .y_4({net_185}), .y_5({net_186}), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6_ksa adder6_k_1(.a(r1[0:0]), .a_1(r1_1[1:1]), .a_2(r1_2[2:2]), 
      .a_3(r1_3[3:3]), .a_4(r1_4[4:4]), .a_5(r1_5[5:5]), .b(r4[0:0]), 
      .b_1(r4_1[1:1]), .b_2(r4_2[2:2]), .b_3(r4_3[3:3]), .b_4(r4_4[4:4]), 
      .b_5(r4_5[5:5]), .y({net_169}), .y_1({net_167}), .y_2({net_163}), 
      .y_3({net_161}), .y_4({net_158}), .y_5({net_156}), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6_ksa adder6_k_2(.a(r0[0:0]), .a_1(r0_1[1:1]), .a_2(r0_2[2:2]), 
      .a_3(r0_3[3:3]), .a_4(r0_4[4:4]), .a_5(r0_5[5:5]), .b(r4[0:0]), 
      .b_1(r4_1[1:1]), .b_2(r4_2[2:2]), .b_3(r4_3[3:3]), .b_4(r4_4[4:4]), 
      .b_5(r4_5[5:5]), .y({net_124}), .y_1({net_123}), .y_2({net_122}), 
      .y_3({net_121}), .y_4({net_120}), .y_5({net_119}), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6_ksa adder6_k_3(.a(r1[0:0]), .a_1(r1_1[1:1]), .a_2(r1_2[2:2]), 
      .a_3(r1_3[3:3]), .a_4(r1_4[4:4]), .a_5(r1_5[5:5]), .b(r2[0:0]), 
      .b_1(r2_1[1:1]), .b_2(r2_2[2:2]), .b_3(r2_3[3:3]), .b_4(r2_4[4:4]), 
      .b_5(r2_5[5:5]), .y({net_136}), .y_1({net_133}), .y_2({net_131}), 
      .y_3({net_129}), .y_4({net_127}), .y_5({net_125}), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6_ksa adder6_k_4(.a(r2[0:0]), .a_1(r2_1[1:1]), .a_2(r2_2[2:2]), 
      .a_3(r2_3[3:3]), .a_4(r2_4[4:4]), .a_5(r2_5[5:5]), .b(r4[0:0]), 
      .b_1(r4_1[1:1]), .b_2(r4_2[2:2]), .b_3(r4_3[3:3]), .b_4(r4_4[4:4]), 
      .b_5(r4_5[5:5]), .y({net_2}), .y_1({net_3}), .y_2({net_6}), 
      .y_3({net_9}), .y_4({net_12}), .y_5({net_15}), .vdd(vdd), .vdd_1(vdd), 
      .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), .vdd_5(vdd), 
      .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), 
      .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6_ksa adder6_k_5(.a(r0[0:0]), .a_1(r0_1[1:1]), .a_2(r0_2[2:2]), 
      .a_3(r0_3[3:3]), .a_4(r0_4[4:4]), .a_5(r0_5[5:5]), .b(r1[0:0]), 
      .b_1(r1_1[1:1]), .b_2(r1_2[2:2]), .b_3(r1_3[3:3]), .b_4(r1_4[4:4]), 
      .b_5(r1_5[5:5]), .y({net_18}), .y_1({net_22}), .y_2({net_26}), 
      .y_3({net_30}), .y_4({net_34}), .y_5({net_38}), .vdd(vdd), .vdd_1(vdd), 
      .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), .vdd_5(vdd), 
      .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), 
      .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6_ksa adder6_k_6(.a({net_18}), .a_1({net_22}), .a_2({net_26}), 
      .a_3({net_30}), .a_4({net_34}), .a_5({net_38}), .b({net_2}), 
      .b_1({net_3}), .b_2({net_6}), .b_3({net_9}), .b_4({net_12}), 
      .b_5({net_15}), .y({net_69}), .y_1({net_64}), .y_2({net_59}), 
      .y_3({net_56}), .y_4({net_47}), .y_5({net_43}), .vdd(vdd), .vdd_1(vdd), 
      .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), .vdd_5(vdd), 
      .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), 
      .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6_ksa adder6_k_7(.a(r6[0:0]), .a_1(r6_1[1:1]), .a_2(r6_2[2:2]), 
      .a_3(r6_3[3:3]), .a_4(r6_4[4:4]), .a_5(r6_5[5:5]), .b(r3[0:0]), 
      .b_1(r3_1[1:1]), .b_2(r3_2[2:2]), .b_3(r3_3[3:3]), .b_4(r3_4[4:4]), 
      .b_5(r3_5[5:5]), .y({net_421}), .y_1({net_414}), .y_2({net_408}), 
      .y_3({net_402}), .y_4({net_396}), .y_5({net_387}), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6_ksa adder6_k_8(.a(r7[0:0]), .a_1(r7_1[1:1]), .a_2(r7_2[2:2]), 
      .a_3(r7_3[3:3]), .a_4(r7_4[4:4]), .a_5(r7_5[5:5]), .b(r5[0:0]), 
      .b_1(r5_1[1:1]), .b_2(r5_2[2:2]), .b_3(r5_3[3:3]), .b_4(r5_4[4:4]), 
      .b_5(r5_5[5:5]), .y({net_419}), .y_1({net_412}), .y_2({net_379}), 
      .y_3({net_380}), .y_4({net_381}), .y_5({net_382}), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6_ksa adder6_k_9(.a(r6[0:0]), .a_1(r6_1[1:1]), .a_2(r6_2[2:2]), 
      .a_3(r6_3[3:3]), .a_4(r6_4[4:4]), .a_5(r6_5[5:5]), .b(r5[0:0]), 
      .b_1(r5_1[1:1]), .b_2(r5_2[2:2]), .b_3(r5_3[3:3]), .b_4(r5_4[4:4]), 
      .b_5(r5_5[5:5]), .y({net_499}), .y_1({net_492}), .y_2({net_486}), 
      .y_3({net_479}), .y_4({net_473}), .y_5({net_468}), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6_ksa adder6_k_10(.a(r7[0:0]), .a_1(r7_1[1:1]), 
      .a_2(r7_2[2:2]), .a_3(r7_3[3:3]), .a_4(r7_4[4:4]), .a_5(r7_5[5:5]), 
      .b(r3[0:0]), .b_1(r3_1[1:1]), .b_2(r3_2[2:2]), .b_3(r3_3[3:3]), 
      .b_4(r3_4[4:4]), .b_5(r3_5[5:5]), .y({net_498}), .y_1({net_493}), 
      .y_2({net_485}), .y_3({net_480}), .y_4({net_474}), .y_5({net_464}), 
      .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), 
      .vdd_4(vdd), .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), 
      .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6_ksa adder6_k_11(.a(r3[0:0]), .a_1(r3_1[1:1]), 
      .a_2(r3_2[2:2]), .a_3(r3_3[3:3]), .a_4(r3_4[4:4]), .a_5(r3_5[5:5]), 
      .b(r5[0:0]), .b_1(r5_1[1:1]), .b_2(r5_2[2:2]), .b_3(r5_3[3:3]), 
      .b_4(r5_4[4:4]), .b_5(r5_5[5:5]), .y({net_376}), .y_1({net_389}), 
      .y_2({net_525}), .y_3({net_411}), .y_4({net_533}), .y_5({net_489}), 
      .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), 
      .vdd_4(vdd), .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), 
      .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6_ksa adder6_k_12(.a(r6[0:0]), .a_1(r6_1[1:1]), 
      .a_2(r6_2[2:2]), .a_3(r6_3[3:3]), .a_4(r6_4[4:4]), .a_5(r6_5[5:5]), 
      .b(r7[0:0]), .b_1(r7_1[1:1]), .b_2(r7_2[2:2]), .b_3(r7_3[3:3]), 
      .b_4(r7_4[4:4]), .b_5(r7_5[5:5]), .y({net_390}), .y_1({net_378}), 
      .y_2({net_460}), .y_3({net_510}), .y_4({net_536}), .y_5({net_477}), 
      .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), 
      .vdd_4(vdd), .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), 
      .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6_ksa adder6_k_13(.a({net_390}), .a_1({net_378}), 
      .a_2({net_460}), .a_3({net_510}), .a_4({net_536}), .a_5({net_477}), 
      .b({net_376}), .b_1({net_389}), .b_2({net_525}), .b_3({net_411}), 
      .b_4({net_533}), .b_5({net_489}), .y({net_557}), .y_1({net_562}), 
      .y_2({net_564}), .y_3({net_575}), .y_4({net_584}), .y_5({net_587}), 
      .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), 
      .vdd_4(vdd), .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), 
      .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6_ksa adder6_k_14(.a({net_786}), .a_1({net_785}), 
      .a_2({net_784}), .a_3({net_783}), .a_4({net_782}), .a_5({net_781}), 
      .b({net_779}), .b_1({net_777}), .b_2({net_775}), .b_3({net_743}), 
      .b_4({net_741}), .b_5({net_757}), .y({net_807}), .y_1({net_812}), 
      .y_2({net_814}), .y_3({net_816}), .y_4({net_818}), .y_5({net_806}), 
      .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), 
      .vdd_4(vdd), .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), 
      .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6_ksa adder6_k_15(.a({net_804}), .a_1({net_803}), 
      .a_2({net_802}), .a_3({net_801}), .a_4({net_800}), .a_5({net_799}), 
      .b({net_798}), .b_1({net_795}), .b_2({net_793}), .b_3({net_791}), 
      .b_4({net_789}), .b_5({net_787}), .y({net_811}), .y_1({net_824}), 
      .y_2({net_827}), .y_3({net_830}), .y_4({net_833}), .y_5({net_805}), 
      .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), 
      .vdd_4(vdd), .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), 
      .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6_ksa adder6_k_16(.a({net_1113}), .a_1({net_1112}), 
      .a_2({net_1111}), .a_3({net_1110}), .a_4({net_1109}), .a_5({net_1108}), 
      .b({net_907}), .b_1({net_905}), .b_2({net_903}), .b_3({net_901}), 
      .b_4({net_899}), .b_5({net_897}), .y({net_927}), .y_1({net_929}), 
      .y_2({net_931}), .y_3({net_933}), .y_4({net_935}), .y_5({net_937}), 
      .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), 
      .vdd_4(vdd), .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), 
      .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6_ksa adder6_k_17(.a({net_926}), .a_1({net_925}), 
      .a_2({net_924}), .a_3({net_923}), .a_4({net_922}), .a_5({net_921}), 
      .b({net_909}), .b_1({net_911}), .b_2({net_913}), .b_3({net_915}), 
      .b_4({net_917}), .b_5({net_919}), .y({net_976}), .y_1({net_977}), 
      .y_2({net_978}), .y_3({net_979}), .y_4({net_980}), .y_5({net_981}), 
      .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), 
      .vdd_4(vdd), .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), 
      .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__comp6 comp6_0(.a({net_18}), .a_1({net_22}), .a_2({net_26}), 
      .a_3({net_30}), .a_4({net_34}), .a_5({net_38}), .b({net_2}), 
      .b_1({net_3}), .b_2({net_6}), .b_3({net_9}), .b_4({net_12}), 
      .b_5({net_15}), .alb(net_330), .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), 
      .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), .vdd_5(vdd), .gnd(gnd), 
      .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), 
      .gnd_5(gnd));
  Project__comp6 comp6_1(.a({net_69}), .a_1({net_64}), .a_2({net_59}), 
      .a_3({net_56}), .a_4({net_47}), .a_5({net_43}), .b({gnd}), .b_1({gnd}), 
      .b_2({gnd}), .b_3({gnd}), .b_4({gnd}), .b_5({gnd}), .alb(net_369), 
      .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), 
      .vdd_4(vdd), .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), 
      .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__comp6 comp6_2(.a({net_136}), .a_1({net_133}), .a_2({net_131}), 
      .a_3({net_129}), .a_4({net_127}), .a_5({net_125}), .b({net_124}), 
      .b_1({net_123}), .b_2({net_122}), .b_3({net_121}), .b_4({net_120}), 
      .b_5({net_119}), .alb(net_259), .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), 
      .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), .vdd_5(vdd), .gnd(gnd), 
      .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), 
      .gnd_5(gnd));
  Project__comp6 comp6_3(.a({net_169}), .a_1({net_167}), .a_2({net_163}), 
      .a_3({net_161}), .a_4({net_158}), .a_5({net_156}), .b({net_173}), 
      .b_1({net_175}), .b_2({net_178}), .b_3({net_181}), .b_4({net_185}), 
      .b_5({net_186}), .alb(net_198), .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), 
      .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), .vdd_5(vdd), .gnd(gnd), 
      .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), 
      .gnd_5(gnd));
  Project__comp6 comp6_4(.a({net_390}), .a_1({net_378}), .a_2({net_460}), 
      .a_3({net_510}), .a_4({net_536}), .a_5({net_477}), .b({net_376}), 
      .b_1({net_389}), .b_2({net_525}), .b_3({net_411}), .b_4({net_533}), 
      .b_5({net_489}), .alb(net_546), .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), 
      .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), .vdd_5(vdd), .gnd(gnd), 
      .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), 
      .gnd_5(gnd));
  Project__comp6 comp6_5(.a({net_557}), .a_1({net_562}), .a_2({net_564}), 
      .a_3({net_575}), .a_4({net_584}), .a_5({net_587}), .b({gnd}), 
      .b_1({gnd}), .b_2({gnd}), .b_3({gnd}), .b_4({gnd}), .b_5({gnd}), 
      .alb(net_594), .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), 
      .vdd_3(vdd), .vdd_4(vdd), .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), 
      .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__comp6 comp6_6(.a({net_498}), .a_1({net_493}), .a_2({net_485}), 
      .a_3({net_480}), .a_4({net_474}), .a_5({net_464}), .b({net_499}), 
      .b_1({net_492}), .b_2({net_486}), .b_3({net_479}), .b_4({net_473}), 
      .b_5({net_468}), .alb(net_459), .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), 
      .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), .vdd_5(vdd), .gnd(gnd), 
      .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), 
      .gnd_5(gnd));
  Project__comp6 comp6_7(.a({net_419}), .a_1({net_412}), .a_2({net_379}), 
      .a_3({net_380}), .a_4({net_381}), .a_5({net_382}), .b({net_421}), 
      .b_1({net_414}), .b_2({net_408}), .b_3({net_402}), .b_4({net_396}), 
      .b_5({net_387}), .alb(net_386), .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), 
      .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), .vdd_5(vdd), .gnd(gnd), 
      .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), 
      .gnd_5(gnd));
  Project__comp6 comp6_8(.a({net_807}), .a_1({net_812}), .a_2({net_814}), 
      .a_3({net_816}), .a_4({net_818}), .a_5({net_806}), .b({net_811}), 
      .b_1({net_824}), .b_2({net_827}), .b_3({net_830}), .b_4({net_833}), 
      .b_5({net_805}), .alb(net_892), .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), 
      .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), .vdd_5(vdd), .gnd(gnd), 
      .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), 
      .gnd_5(gnd));
  Project__comp6 comp6_9(.a({net_927}), .a_1({net_929}), .a_2({net_931}), 
      .a_3({net_933}), .a_4({net_935}), .a_5({net_937}), .b({net_976}), 
      .b_1({net_977}), .b_2({net_978}), .b_3({net_979}), .b_4({net_980}), 
      .b_5({net_981}), .alb(net_969), .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), 
      .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), .vdd_5(vdd), .gnd(gnd), 
      .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), 
      .gnd_5(gnd));
  Project__comp6 comp6_10(.a({net_1018}), .a_1({net_1022}), .a_2({net_1025}), 
      .a_3({net_1028}), .a_4({net_1031}), .a_5({net_1035}), .b({net_1350}), 
      .b_1({net_1349}), .b_2({net_1348}), .b_3({net_1347}), .b_4({net_1346}), 
      .b_5({net_1345}), .alb(net_1076), .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), 
      .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), .vdd_5(vdd), .gnd(gnd), 
      .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), 
      .gnd_5(gnd));
  Project__inv_1x inv_1x_0(.a(net_594), .y(net_1153), .vdd(vdd), .gnd(gnd));
  Project__inv_1x inv_1x_1(.a(net_369), .y(net_1178), .vdd(vdd), .gnd(gnd));
  Project__inv_1x inv_1x_2(.a(net_330), .y(net_1198), .vdd(vdd), .gnd(gnd));
  Project__inv_1x inv_1x_3(.a(net_259), .y(net_1270), .vdd(vdd), .gnd(gnd));
  Project__inv_1x inv_1x_4(.a(net_198), .y(net_1263), .vdd(vdd), .gnd(gnd));
  Project__inv_1x inv_1x_5(.a(net_459), .y(net_1233), .vdd(vdd), .gnd(gnd));
  Project__mux2_c_1x mux2_c_1_0(.d0(net_546), .d1(net_1153), .s(net_892), 
      .y(net_1294), .vdd(vdd), .gnd(gnd));
  Project__mux2_c_1x mux2_c_1_1(.d0(net_330), .d1(net_1178), .s(net_892), 
      .y(net_1300), .vdd(vdd), .gnd(gnd));
  Project__mux2_c_1x mux2_c_1_2(.d0(net_1198), .d1(net_1178), .s(net_892), 
      .y(net_1800), .vdd(vdd), .gnd(gnd));
  Project__mux2_c_1x mux2_c_1_3(.d0(net_1198), .d1(net_1178), .s(net_892), 
      .y(net_1310), .vdd(vdd), .gnd(gnd));
  Project__mux2_c_1x mux2_c_1_4(.d0(net_386), .d1(net_1233), .s(net_969), 
      .y(net_1302), .vdd(vdd), .gnd(gnd));
  Project__mux2_c_1x mux2_c_1_5(.d0(net_198), .d1(net_1270), .s(net_969), 
      .y(net_1312), .vdd(vdd), .gnd(gnd));
  Project__mux2_c_1x mux2_c_1_6(.d0(net_1263), .d1(net_1270), .s(net_969), 
      .y(net_1326), .vdd(vdd), .gnd(gnd));
  Project__mux2_c_1x mux2_c_1_7(.d0(net_198), .d1(net_259), .s(net_969), 
      .y(net_1322), .vdd(vdd), .gnd(gnd));
  Project__mux2_c_1x mux2_c_1_8(.d0(net_1302), .d1(net_1294), .s(net_1076), 
      .y(m_3[3]), .vdd(vdd), .gnd(gnd));
  Project__mux2_c_1x mux2_c_1_9(.d0(net_1312), .d1(net_1300), .s(net_1076), 
      .y(m_2[2]), .vdd(vdd), .gnd(gnd));
  Project__mux2_c_1x mux2_c_1_10(.d0(net_1326), .d1(net_1310), .s(net_1076), 
      .y(m_1[1]), .vdd(vdd), .gnd(gnd));
  Project__mux2_c_1x mux2_c_1_11(.d0(net_1322), .d1(net_1800), .s(net_1076), 
      .y(m[0]), .vdd(vdd), .gnd(gnd));
  Project__mux6 mux6_0(.d0({net_173}), .d0_1({net_175}), .d0_2({net_178}), 
      .d0_3({net_181}), .d0_4({net_185}), .d0_5({net_186}), .d1({net_169}), 
      .d1_1({net_167}), .d1_2({net_163}), .d1_3({net_161}), .d1_4({net_158}), 
      .d1_5({net_156}), .s(net_198), .y({net_909}), .y_1({net_911}), 
      .y_2({net_913}), .y_3({net_915}), .y_4({net_917}), .y_5({net_919}), 
      .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), 
      .vdd_4(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd));
  Project__mux6 mux6_1(.d0({net_124}), .d0_1({net_123}), .d0_2({net_122}), 
      .d0_3({net_121}), .d0_4({net_120}), .d0_5({net_119}), .d1({net_136}), 
      .d1_1({net_133}), .d1_2({net_131}), .d1_3({net_129}), .d1_4({net_127}), 
      .d1_5({net_125}), .s(net_259), .y({net_907}), .y_1({net_905}), 
      .y_2({net_903}), .y_3({net_901}), .y_4({net_899}), .y_5({net_897}), 
      .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), 
      .vdd_4(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd));
  Project__mux6 mux6_2(.d0({net_2}), .d0_1({net_3}), .d0_2({net_6}), 
      .d0_3({net_9}), .d0_4({net_12}), .d0_5({net_15}), .d1({net_18}), 
      .d1_1({net_22}), .d1_2({net_26}), .d1_3({net_30}), .d1_4({net_34}), 
      .d1_5({net_38}), .s(net_330), .y({net_798}), .y_1({net_795}), 
      .y_2({net_793}), .y_3({net_791}), .y_4({net_789}), .y_5({net_787}), 
      .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), 
      .vdd_4(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd));
  Project__mux6 mux6_3(.d0({gnd}), .d0_1({gnd}), .d0_2({gnd}), .d0_3({gnd}), 
      .d0_4({gnd}), .d0_5({gnd}), .d1({net_69}), .d1_1({net_64}), 
      .d1_2({net_59}), .d1_3({net_56}), .d1_4({net_47}), .d1_5({net_43}), 
      .s(net_369), .y({net_779}), .y_1({net_777}), .y_2({net_775}), 
      .y_3({net_743}), .y_4({net_741}), .y_5({net_757}), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), 
      .gnd_4(gnd));
  Project__mux6 mux6_4(.d0({net_421}), .d0_1({net_414}), .d0_2({net_408}), 
      .d0_3({net_402}), .d0_4({net_396}), .d0_5({net_387}), .d1({net_419}), 
      .d1_1({net_412}), .d1_2({net_379}), .d1_3({net_380}), .d1_4({net_381}), 
      .d1_5({net_382}), .s(net_386), .y({net_926}), .y_1({net_925}), 
      .y_2({net_924}), .y_3({net_923}), .y_4({net_922}), .y_5({net_921}), 
      .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), 
      .vdd_4(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd));
  Project__mux6 mux6_5(.d0({net_499}), .d0_1({net_492}), .d0_2({net_486}), 
      .d0_3({net_479}), .d0_4({net_473}), .d0_5({net_468}), .d1({net_498}), 
      .d1_1({net_493}), .d1_2({net_485}), .d1_3({net_480}), .d1_4({net_474}), 
      .d1_5({net_464}), .s(net_459), .y({net_1113}), .y_1({net_1112}), 
      .y_2({net_1111}), .y_3({net_1110}), .y_4({net_1109}), .y_5({net_1108}), 
      .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), 
      .vdd_4(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd));
  Project__mux6 mux6_6(.d0({net_376}), .d0_1({net_389}), .d0_2({net_525}), 
      .d0_3({net_411}), .d0_4({net_533}), .d0_5({net_489}), .d1({net_390}), 
      .d1_1({net_378}), .d1_2({net_460}), .d1_3({net_510}), .d1_4({net_536}), 
      .d1_5({net_477}), .s(net_546), .y({net_804}), .y_1({net_803}), 
      .y_2({net_802}), .y_3({net_801}), .y_4({net_800}), .y_5({net_799}), 
      .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), 
      .vdd_4(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd));
  Project__mux6 mux6_7(.d0({gnd}), .d0_1({gnd}), .d0_2({gnd}), .d0_3({gnd}), 
      .d0_4({gnd}), .d0_5({gnd}), .d1({net_557}), .d1_1({net_562}), 
      .d1_2({net_564}), .d1_3({net_575}), .d1_4({net_584}), .d1_5({net_587}), 
      .s(net_594), .y({net_786}), .y_1({net_785}), .y_2({net_784}), 
      .y_3({net_783}), .y_4({net_782}), .y_5({net_781}), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), 
      .gnd_4(gnd));
  Project__mux6 mux6_8(.d0({net_811}), .d0_1({net_824}), .d0_2({net_827}), 
      .d0_3({net_830}), .d0_4({net_833}), .d0_5({net_805}), .d1({net_807}), 
      .d1_1({net_812}), .d1_2({net_814}), .d1_3({net_816}), .d1_4({net_818}), 
      .d1_5({net_806}), .s(net_892), .y({net_1018}), .y_1({net_1022}), 
      .y_2({net_1025}), .y_3({net_1028}), .y_4({net_1031}), .y_5({net_1035}), 
      .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), 
      .vdd_4(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd));
  Project__mux6 mux6_9(.d0({net_976}), .d0_1({net_977}), .d0_2({net_978}), 
      .d0_3({net_979}), .d0_4({net_980}), .d0_5({net_981}), .d1({net_927}), 
      .d1_1({net_929}), .d1_2({net_931}), .d1_3({net_933}), .d1_4({net_935}), 
      .d1_5({net_937}), .s(net_969), .y({net_1350}), .y_1({net_1349}), 
      .y_2({net_1348}), .y_3({net_1347}), .y_4({net_1346}), .y_5({net_1345}), 
      .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), 
      .vdd_4(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd));
endmodule   /* decoder_ksa */
