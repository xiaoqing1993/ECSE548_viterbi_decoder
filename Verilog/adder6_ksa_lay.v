/* Verilog for cell 'adder6_ksa{lay}' from library 'Project' */
/* Created on Fri Nov 25, 2016 18:56:58 */
/* Last revised on Fri Nov 25, 2016 21:08:51 */
/* Written on Fri Nov 25, 2016 21:09:24 by Electric VLSI Design System, version 8.06 */

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
      .vdd(vdd_1), .gnd(gnd_1));
  Project__mux2_c_1x mux2_c_1_1(.d0(d0_1[1]), .d1(d1_1[1]), .s(s), .y(y_1[1]), 
      .vdd(vdd_1_1), .gnd(gnd_1_1));
  Project__mux2_c_1x mux2_c_1_2(.d0(d0_2[2]), .d1(d1_2[2]), .s(s), .y(y_2[2]), 
      .vdd(vdd_2), .gnd(gnd_2));
  Project__mux2_c_1x mux2_c_1_3(.d0(d0_3[3]), .d1(d1_3[3]), .s(s), .y(y_3[3]), 
      .vdd(vdd_3), .gnd(gnd_3));
  Project__mux2_c_1x mux2_c_1_4(.d0(d0_4[4]), .d1(d1_4[4]), .s(s), .y(y_4[4]), 
      .vdd(vdd_4), .gnd(gnd_4));
  Project__mux2_c_1x mux2_c_1_5(.d0(d0_5[5]), .d1(d1_5[5]), .s(s), .y(y_5[5]), 
      .vdd(vdd), .gnd(gnd));
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
      .P(P5), .vdd(vdd_1), .gnd(gnd_1));
  Project__bit_prop_gen bit_prop_1(.A(A_4[4]), .B(B_4[4]), .G(net_10), .P(P4), 
      .vdd(vdd_4), .gnd(gnd_4));
  Project__bit_prop_gen bit_prop_2(.A(A[0]), .B(B[0]), .G(net_71), .P(P0), 
      .vdd(vdd), .gnd(gnd));
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
  Project__group_gen group_ge_4(.G0(gnd), .G1(net_71), .P1(P0), .G2(net_100), 
      .vdd(vdd), .gnd(gnd));
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
  Project__xor2_1x xor2_1x_0(.a(gnd), .b(P0), .y(S[0]), .vdd(vdd), .gnd(gnd));
  Project__xor2_1x xor2_1x_1(.a(net_100), .b(P1), .y(S_1[1]), .vdd(vdd_1_1), 
      .gnd(gnd_1_1));
  Project__xor2_1x xor2_1x_2(.a(net_143), .b(P2), .y(S_2[2]), .vdd(vdd_2), 
      .gnd(gnd_2));
  Project__xor2_1x xor2_1x_3(.a(net_157), .b(P3), .y(S_3[3]), .vdd(vdd_3), 
      .gnd(gnd_3));
  Project__xor2_1x xor2_1x_4(.a(net_165), .b(P4), .y(S_4[4]), .vdd(vdd_4), 
      .gnd(gnd_4));
  Project__xor2_1x xor2_1x_5(.a(net_178), .b(P5), .y(S_5[5]), .vdd(vdd_1), 
      .gnd(gnd_1));
endmodule   /* Project__six_bit_kogge_stone_adder */

module adder(a, a_1, a_2, a_3, a_4, a_5, b, b_1, b_2, b_3, b_4, b_5, y, 
      y_1, y_2, y_3, y_4, y_5);
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
  /*
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
*/
  supply1 vdd, vdd_1, vdd_1_1, vdd_2, vdd_3, vdd_4, vdd_5; 
  supply0 gnd, gnd_1, gnd_1_1, gnd_2, gnd_3, gnd_4, gnd_5; 
  wire net_0, net_101, net_104, net_114, net_14, net_17, net_3, net_32, net_41;
  wire net_44, net_47, net_50, net_53, net_6, net_84, net_9, net_99;

  Project__and3_1x and3_1x_0(.a(b_5[5]), .b(net_84), .c(a_5[5]), .y(net_114), 
      .vdd(vdd), .gnd(gnd));
  Project__and3_1x and3_1x_1(.a(net_99), .b(net_17), .c(net_101), .y(net_104), 
      .vdd(vdd), .gnd(gnd));
  Project__inv_1x inv_1x_0(.a(net_17), .y(net_84), .vdd(vdd), .gnd(gnd));
  Project__inv_1x inv_1x_1(.a(a_5[5]), .y(net_101), .vdd(vdd), .gnd(gnd));
  Project__inv_1x inv_1x_2(.a(b_5[5]), .y(net_99), .vdd(vdd), .gnd(gnd));
  Project__mux6 mux6_0(.d0({net_14}), .d0_1({net_0}), .d0_2({net_3}), 
      .d0_3({net_6}), .d0_4({net_9}), .d0_5({net_17}), .d1({gnd_1}), 
      .d1_1({gnd_1_1}), .d1_2({gnd_2}), .d1_3({gnd_3}), .d1_4({gnd_4}), 
      .d1_5({vdd_5}), .s(net_114), .y({net_32}), .y_1({net_41}), 
      .y_2({net_44}), .y_3({net_47}), .y_4({net_50}), .y_5({net_53}), 
      .vdd(vdd_5), .vdd_1(vdd_1), .vdd_1_1(vdd_1_1), .vdd_2(vdd_2), 
      .vdd_3(vdd_3), .vdd_4(vdd_4), .gnd(gnd_5), .gnd_1(gnd_1), 
      .gnd_1_1(gnd_1_1), .gnd_2(gnd_2), .gnd_3(gnd_3), .gnd_4(gnd_4));
  Project__mux6 mux6_1(.d0({net_32}), .d0_1({net_41}), .d0_2({net_44}), 
      .d0_3({net_47}), .d0_4({net_50}), .d0_5({net_53}), .d1({vdd_1}), 
      .d1_1({vdd_1_1}), .d1_2({vdd_2}), .d1_3({vdd_3}), .d1_4({vdd_4}), 
      .d1_5({gnd_5}), .s(net_104), .y(y[0:0]), .y_1(y_1[1:1]), .y_2(y_2[2:2]), 
      .y_3(y_3[3:3]), .y_4(y_4[4:4]), .y_5(y_5[5:5]), .vdd(vdd_5), 
      .vdd_1(vdd_1), .vdd_1_1(vdd_1_1), .vdd_2(vdd_2), .vdd_3(vdd_3), 
      .vdd_4(vdd_4), .gnd(gnd_5), .gnd_1(gnd_1), .gnd_1_1(gnd_1_1), 
      .gnd_2(gnd_2), .gnd_3(gnd_3), .gnd_4(gnd_4));
  Project__six_bit_kogge_stone_adder six_bit__0(.A(a[0:0]), .A_1(a_1[1:1]), 
      .A_2(a_2[2:2]), .A_3(a_3[3:3]), .A_4(a_4[4:4]), .A_5(a_5[5:5]), 
      .B(b[0:0]), .B_1(b_1[1:1]), .B_2(b_2[2:2]), .B_3(b_3[3:3]), 
      .B_4(b_4[4:4]), .B_5(b_5[5:5]), .S({net_14}), .S_1({net_0}), 
      .S_2({net_3}), .S_3({net_6}), .S_4({net_9}), .S_5({net_17}), .vdd(vdd_1), 
      .vdd_1(vdd_5), .vdd_1_1(vdd_1_1), .vdd_2(vdd_2), .vdd_3(vdd_3), 
      .vdd_4(vdd_4), .gnd(gnd_1), .gnd_1(gnd_5), .gnd_1_1(gnd_1_1), 
      .gnd_2(gnd_2), .gnd_3(gnd_3), .gnd_4(gnd_4));
endmodule   /* adder6_ksa */
