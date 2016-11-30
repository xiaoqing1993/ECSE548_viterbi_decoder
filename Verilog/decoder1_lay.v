/* Verilog for cell 'decoder1{lay}' from library 'Project' */
/* Created on Sun Nov 27, 2016 00:39:27 */
/* Last revised on Wed Nov 30, 2016 00:02:41 */
/* Written on Wed Nov 30, 2016 00:04:51 by Electric VLSI Design System, version 8.06 */

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
      .s(s[0]), .vdd(vdd), .gnd(gnd_1));
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
  Project__xor2_1x xor2_1x_0(.a(net_2), .b(cout), .y(Ovf), .vdd(vdd_1), 
      .gnd(gnd));
endmodule   /* Project__fulladder6 */

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
      .vdd(vdd), .gnd(gnd));
  Project__mux2_c_1x mux2_c_1_1(.d0(d0_1[1]), .d1(d1_1[1]), .s(s), .y(y_1[1]), 
      .vdd(vdd_1_1), .gnd(gnd_1_1));
  Project__mux2_c_1x mux2_c_1_2(.d0(d0_2[2]), .d1(d1_2[2]), .s(s), .y(y_2[2]), 
      .vdd(vdd_2), .gnd(gnd_2));
  Project__mux2_c_1x mux2_c_1_3(.d0(d0_3[3]), .d1(d1_3[3]), .s(s), .y(y_3[3]), 
      .vdd(vdd_3), .gnd(gnd_3));
  Project__mux2_c_1x mux2_c_1_4(.d0(d0_4[4]), .d1(d1_4[4]), .s(s), .y(y_4[4]), 
      .vdd(vdd_4), .gnd(gnd_4));
  Project__mux2_c_1x mux2_c_1_5(.d0(d0_5[5]), .d1(d1_5[5]), .s(s), .y(y_5[5]), 
      .vdd(vdd_1), .gnd(gnd_1));
endmodule   /* Project__mux6 */

module Project__adder6(a, a_1, a_2, a_3, a_4, a_5, b, b_1, b_2, b_3, b_4, b_5, 
      y, y_1, y_2, y_3, y_4, y_5, vdd, vdd_1, vdd_1_1, vdd_2, vdd_3, vdd_4, 
      vdd_5, gnd, gnd_1, gnd_1_1, gnd_2, gnd_3, gnd_4, gnd_5);
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
  wire fulladde_0_cout, net_10, net_12, net_14, net_16, net_21, net_24, net_27;
  wire net_30, net_33, net_4, net_6, net_8, net_88;

  Project__fulladder6 fulladde_0(.a(a[0:0]), .a_1(a_1[1:1]), .a_2(a_2[2:2]), 
      .a_3(a_3[3:3]), .a_4(a_4[4:4]), .a_5(a_5[5:5]), .b(b[0:0]), 
      .b_1(b_1[1:1]), .b_2(b_2[2:2]), .b_3(b_3[3:3]), .b_4(b_4[4:4]), 
      .b_5(b_5[5:5]), .cin(gnd), .Ovf(net_88), .cout(fulladde_0_cout), 
      .s({net_33}), .s_1({net_30}), .s_2({net_27}), .s_3({net_24}), 
      .s_4({net_21}), .s_5({net_16}), .vdd(vdd_1), .vdd_1(vdd), 
      .vdd_1_1(vdd_1_1), .vdd_2(vdd_2), .vdd_3(vdd_3), .vdd_4(vdd_4), 
      .vdd_5(vdd_5), .gnd(gnd_1), .gnd_1(gnd), .gnd_1_1(gnd_1_1), 
      .gnd_2(gnd_2), .gnd_3(gnd_3), .gnd_4(gnd_4), .gnd_5(gnd_5));
  Project__mux6 mux6_0(.d0({gnd}), .d0_1({gnd_1_1}), .d0_2({gnd_2}), 
      .d0_3({gnd_3}), .d0_4({gnd_4}), .d0_5({vdd_5}), .d1({vdd_1}), 
      .d1_1({vdd_1_1}), .d1_2({vdd_2}), .d1_3({vdd_3}), .d1_4({vdd_4}), 
      .d1_5({gnd_5}), .s(net_16), .y({net_4}), .y_1({net_6}), .y_2({net_8}), 
      .y_3({net_10}), .y_4({net_12}), .y_5({net_14}), .vdd(vdd_1), 
      .vdd_1(vdd_5), .vdd_1_1(vdd_1_1), .vdd_2(vdd_2), .vdd_3(vdd_3), 
      .vdd_4(vdd_4), .gnd(gnd), .gnd_1(gnd_5), .gnd_1_1(gnd_1_1), 
      .gnd_2(gnd_2), .gnd_3(gnd_3), .gnd_4(gnd_4));
  Project__mux6 mux6_1(.d0({net_33}), .d0_1({net_30}), .d0_2({net_27}), 
      .d0_3({net_24}), .d0_4({net_21}), .d0_5({net_16}), .d1({net_4}), 
      .d1_1({net_6}), .d1_2({net_8}), .d1_3({net_10}), .d1_4({net_12}), 
      .d1_5({net_14}), .s(net_88), .y(y[0:0]), .y_1(y_1[1:1]), .y_2(y_2[2:2]), 
      .y_3(y_3[3:3]), .y_4(y_4[4:4]), .y_5(y_5[5:5]), .vdd(vdd_1), 
      .vdd_1(vdd_5), .vdd_1_1(vdd_1_1), .vdd_2(vdd_2), .vdd_3(vdd_3), 
      .vdd_4(vdd_4), .gnd(gnd), .gnd_1(gnd_5), .gnd_1_1(gnd_1_1), 
      .gnd_2(gnd_2), .gnd_3(gnd_3), .gnd_4(gnd_4));
endmodule   /* Project__adder6 */

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
  Project__inv_1x inv_1x_0(.a(a[0]), .y(y[0]), .vdd(vdd), .gnd(gnd));
  Project__inv_1x inv_1x_1(.a(a_1[1]), .y(y_1[1]), .vdd(vdd_1_1), 
      .gnd(gnd_1_1));
  Project__inv_1x inv_1x_2(.a(a_2[2]), .y(y_2[2]), .vdd(vdd_2), .gnd(gnd_2));
  Project__inv_1x inv_1x_3(.a(a_3[3]), .y(y_3[3]), .vdd(vdd_3), .gnd(gnd_3));
  Project__inv_1x inv_1x_4(.a(a_4[4]), .y(y_4[4]), .vdd(vdd_4), .gnd(gnd_4));
  Project__inv_1x inv_1x_5(.a(a_5[5]), .y(y_5[5]), .vdd(vdd_1), .gnd(gnd_1));
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
      .vdd(vdd_1), .vdd_1(vdd), .vdd_1_1(vdd_1_1), .vdd_2(vdd_2), 
      .vdd_3(vdd_3), .vdd_4(vdd_4), .vdd_5(vdd_5), .gnd(gnd_1), .gnd_1(gnd), 
      .gnd_1_1(gnd_1_1), .gnd_2(gnd_2), .gnd_3(gnd_3), .gnd_4(gnd_4), 
      .gnd_5(gnd_5));
  Project__inv6_1x inv6_1x_0(.a(b[0:0]), .a_1(b_1[1:1]), .a_2(b_2[2:2]), 
      .a_3(b_3[3:3]), .a_4(b_4[4:4]), .a_5(b_5[5:5]), .y({net_0}), 
      .y_1({net_8}), .y_2({net_7}), .y_3({net_6}), .y_4({net_4}), 
      .y_5({net_5}), .vdd(vdd_1), .vdd_1(vdd_5), .vdd_1_1(vdd_1_1), 
      .vdd_2(vdd_2), .vdd_3(vdd_3), .vdd_4(vdd_4), .gnd(gnd), .gnd_1(gnd_5), 
      .gnd_1_1(gnd_1_1), .gnd_2(gnd_2), .gnd_3(gnd_3), .gnd_4(gnd_4));
  Project__xor2_1x xor2_1x_0(.a(net_27), .b(net_30), .y(alb), .vdd(vdd), 
      .gnd(gnd_1));
endmodule   /* Project__comp6 */

module decoder(r0, r0_1, r0_2, r0_3, r0_4, r0_5, r1, r1_1, r1_2, r1_3, r1_4, 
      r1_5, r2, r2_1, r2_2, r2_3, r2_4, r2_5, r3, r3_1, r3_2, r3_3, r3_4, r3_5, 
      r4, r4_1, r4_2, r4_3, r4_4, r4_5, r5, r5_1, r5_2, r5_3, r5_4, r5_5, r6, 
      r6_1, r6_2, r6_3, r6_4, r6_5, r7, r7_1, r7_2, r7_3, r7_4, r7_5, m, m_1, 
      m_2, m_3);
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
  wire net_1002, net_1011, net_1018, net_1022, net_1025, net_1028, net_1031;
  wire net_1035, net_1079, net_1081, net_1082, net_1085, net_1087, net_1088;
  wire net_1099, net_1101, net_1103, net_1104, net_1106, net_1115, net_1117;
  wire net_1119, net_1120, net_1123, net_1124, net_1126, net_1127, net_1128;
  wire net_1129, net_1130, net_1131, net_1153, net_116, net_1165, net_1178;
  wire net_1198, net_1233, net_125, net_1263, net_127, net_1270, net_129;
  wire net_1294, net_1300, net_1302, net_131, net_1310, net_1312, net_1322;
  wire net_1326, net_133, net_1332, net_1345, net_1346, net_1347, net_1348;
  wire net_1349, net_1350, net_136, net_156, net_158, net_161, net_163, net_167;
  wire net_169, net_1800, net_198, net_199, net_20, net_205, net_210, net_216;
  wire net_220, net_227, net_23, net_259, net_266, net_27, net_270, net_275;
  wire net_281, net_285, net_291, net_31, net_312, net_313, net_330, net_35;
  wire net_378, net_383, net_386, net_387, net_39, net_390, net_394, net_396;
  wire net_400, net_401, net_402, net_406, net_408, net_412, net_414, net_4142;
  wire net_4145, net_4148, net_4151, net_4154, net_4160, net_4167, net_4168;
  wire net_4171, net_4174, net_4177, net_4180, net_419, net_421, net_4305;
  wire net_4307, net_4311, net_4315, net_4319, net_4322, net_4325, net_433;
  wire net_4338, net_4341, net_4344, net_4348, net_4351, net_4354, net_44;
  wire net_459, net_464, net_468, net_4684, net_47, net_4706, net_4714, net_472;
  wire net_473, net_474, net_477, net_479, net_480, net_485, net_486, net_489;
  wire net_492, net_493, net_498, net_499, net_523, net_525, net_527, net_534;
  wire net_536, net_546, net_557, net_56, net_562, net_564, net_575, net_584;
  wire net_587, net_59, net_594, net_64, net_69, net_806, net_807, net_812;
  wire net_814, net_816, net_818, net_843, net_862, net_865, net_871, net_875;
  wire net_880, net_892, net_927, net_929, net_931, net_933, net_935, net_937;
  wire net_969, net_984, net_987, net_992, net_997;

  Project__adder6 adder6_0(.a(r0[0:0]), .a_1(r0_1[1:1]), .a_2(r0_2[2:2]), 
      .a_3(r0_3[3:3]), .a_4(r0_4[4:4]), .a_5(r0_5[5:5]), .b(r1[0:0]), 
      .b_1(r1_1[1:1]), .b_2(r1_2[2:2]), .b_3(r1_3[3:3]), .b_4(r1_4[4:4]), 
      .b_5(r1_5[5:5]), .y({net_20}), .y_1({net_23}), .y_2({net_27}), 
      .y_3({net_31}), .y_4({net_35}), .y_5({net_39}), .vdd(vdd), .vdd_1(vdd), 
      .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), .vdd_5(vdd), 
      .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), 
      .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6 adder6_1(.a(r2[0:0]), .a_1(r2_1[1:1]), .a_2(r2_2[2:2]), 
      .a_3(r2_3[3:3]), .a_4(r2_4[4:4]), .a_5(r2_5[5:5]), .b(r4[0:0]), 
      .b_1(r4_1[1:1]), .b_2(r4_2[2:2]), .b_3(r4_3[3:3]), .b_4(r4_4[4:4]), 
      .b_5(r4_5[5:5]), .y({net_4714}), .y_1({net_4706}), .y_2({net_312}), 
      .y_3({net_313}), .y_4({net_4684}), .y_5({net_116}), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6 adder6_2(.a(r1[0:0]), .a_1(r1_1[1:1]), .a_2(r1_2[2:2]), 
      .a_3(r1_3[3:3]), .a_4(r1_4[4:4]), .a_5(r1_5[5:5]), .b(r2[0:0]), 
      .b_1(r2_1[1:1]), .b_2(r2_2[2:2]), .b_3(r2_3[3:3]), .b_4(r2_4[4:4]), 
      .b_5(r2_5[5:5]), .y({net_136}), .y_1({net_133}), .y_2({net_131}), 
      .y_3({net_129}), .y_4({net_127}), .y_5({net_125}), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6 adder6_3(.a(r0[0:0]), .a_1(r0_1[1:1]), .a_2(r0_2[2:2]), 
      .a_3(r0_3[3:3]), .a_4(r0_4[4:4]), .a_5(r0_5[5:5]), .b(r4[0:0]), 
      .b_1(r4_1[1:1]), .b_2(r4_2[2:2]), .b_3(r4_3[3:3]), .b_4(r4_4[4:4]), 
      .b_5(r4_5[5:5]), .y({net_291}), .y_1({net_285}), .y_2({net_281}), 
      .y_3({net_275}), .y_4({net_270}), .y_5({net_266}), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6 adder6_4(.a(r1[0:0]), .a_1(r1_1[1:1]), .a_2(r1_2[2:2]), 
      .a_3(r1_3[3:3]), .a_4(r1_4[4:4]), .a_5(r1_5[5:5]), .b(r4[0:0]), 
      .b_1(r4_1[1:1]), .b_2(r4_2[2:2]), .b_3(r4_3[3:3]), .b_4(r4_4[4:4]), 
      .b_5(r4_5[5:5]), .y({net_169}), .y_1({net_167}), .y_2({net_163}), 
      .y_3({net_161}), .y_4({net_158}), .y_5({net_156}), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6 adder6_5(.a(r0[0:0]), .a_1(r0_1[1:1]), .a_2(r0_2[2:2]), 
      .a_3(r0_3[3:3]), .a_4(r0_4[4:4]), .a_5(r0_5[5:5]), .b(r2[0:0]), 
      .b_1(r2_1[1:1]), .b_2(r2_2[2:2]), .b_3(r2_3[3:3]), .b_4(r2_4[4:4]), 
      .b_5(r2_5[5:5]), .y({net_227}), .y_1({net_220}), .y_2({net_216}), 
      .y_3({net_210}), .y_4({net_205}), .y_5({net_199}), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6 adder6_6(.a(r6[0:0]), .a_1(r6_1[1:1]), .a_2(r6_2[2:2]), 
      .a_3(r6_3[3:3]), .a_4(r6_4[4:4]), .a_5(r6_5[5:5]), .b(r7[0:0]), 
      .b_1(r7_1[1:1]), .b_2(r7_2[2:2]), .b_3(r7_3[3:3]), .b_4(r7_4[4:4]), 
      .b_5(r7_5[5:5]), .y({net_390}), .y_1({net_378}), .y_2({net_472}), 
      .y_3({net_523}), .y_4({net_536}), .y_5({net_477}), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6 adder6_7(.a(r3[0:0]), .a_1(r3_1[1:1]), .a_2(r3_2[2:2]), 
      .a_3(r3_3[3:3]), .a_4(r3_4[4:4]), .a_5(r3_5[5:5]), .b(r5[0:0]), 
      .b_1(r5_1[1:1]), .b_2(r5_2[2:2]), .b_3(r5_3[3:3]), .b_4(r5_4[4:4]), 
      .b_5(r5_5[5:5]), .y({net_433}), .y_1({net_400}), .y_2({net_525}), 
      .y_3({net_527}), .y_4({net_534}), .y_5({net_489}), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6 adder6_8(.a(r7[0:0]), .a_1(r7_1[1:1]), .a_2(r7_2[2:2]), 
      .a_3(r7_3[3:3]), .a_4(r7_4[4:4]), .a_5(r7_5[5:5]), .b(r3[0:0]), 
      .b_1(r3_1[1:1]), .b_2(r3_2[2:2]), .b_3(r3_3[3:3]), .b_4(r3_4[4:4]), 
      .b_5(r3_5[5:5]), .y({net_498}), .y_1({net_493}), .y_2({net_485}), 
      .y_3({net_480}), .y_4({net_474}), .y_5({net_464}), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6 adder6_9(.a(r6[0:0]), .a_1(r6_1[1:1]), .a_2(r6_2[2:2]), 
      .a_3(r6_3[3:3]), .a_4(r6_4[4:4]), .a_5(r6_5[5:5]), .b(r5[0:0]), 
      .b_1(r5_1[1:1]), .b_2(r5_2[2:2]), .b_3(r5_3[3:3]), .b_4(r5_4[4:4]), 
      .b_5(r5_5[5:5]), .y({net_499}), .y_1({net_492}), .y_2({net_486}), 
      .y_3({net_479}), .y_4({net_473}), .y_5({net_468}), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6 adder6_10(.a(r7[0:0]), .a_1(r7_1[1:1]), .a_2(r7_2[2:2]), 
      .a_3(r7_3[3:3]), .a_4(r7_4[4:4]), .a_5(r7_5[5:5]), .b(r5[0:0]), 
      .b_1(r5_1[1:1]), .b_2(r5_2[2:2]), .b_3(r5_3[3:3]), .b_4(r5_4[4:4]), 
      .b_5(r5_5[5:5]), .y({net_419}), .y_1({net_412}), .y_2({net_406}), 
      .y_3({net_401}), .y_4({net_394}), .y_5({net_383}), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6 adder6_11(.a(r6[0:0]), .a_1(r6_1[1:1]), .a_2(r6_2[2:2]), 
      .a_3(r6_3[3:3]), .a_4(r6_4[4:4]), .a_5(r6_5[5:5]), .b(r3[0:0]), 
      .b_1(r3_1[1:1]), .b_2(r3_2[2:2]), .b_3(r3_3[3:3]), .b_4(r3_4[4:4]), 
      .b_5(r3_5[5:5]), .y({net_421}), .y_1({net_414}), .y_2({net_408}), 
      .y_3({net_402}), .y_4({net_396}), .y_5({net_387}), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6 adder6_12(.a({net_20}), .a_1({net_23}), .a_2({net_27}), 
      .a_3({net_31}), .a_4({net_35}), .a_5({net_39}), .b({net_4714}), 
      .b_1({net_4706}), .b_2({net_312}), .b_3({net_313}), .b_4({net_4684}), 
      .b_5({net_116}), .y({net_69}), .y_1({net_64}), .y_2({net_59}), 
      .y_3({net_56}), .y_4({net_47}), .y_5({net_44}), .vdd(vdd), .vdd_1(vdd), 
      .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), .vdd_5(vdd), 
      .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), 
      .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6 adder6_13(.a({net_1124}), .a_1({net_1123}), .a_2({net_1120}), 
      .a_3({net_1119}), .a_4({net_1117}), .a_5({net_1115}), .b({net_4160}), 
      .b_1({net_4154}), .b_2({net_4151}), .b_3({net_4148}), .b_4({net_4145}), 
      .b_5({net_4142}), .y({net_927}), .y_1({net_929}), .y_2({net_931}), 
      .y_3({net_933}), .y_4({net_935}), .y_5({net_937}), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6 adder6_14(.a({net_1131}), .a_1({net_1130}), .a_2({net_1129}), 
      .a_3({net_1128}), .a_4({net_1127}), .a_5({net_1126}), .b({net_4180}), 
      .b_1({net_4177}), .b_2({net_4174}), .b_3({net_4171}), .b_4({net_4168}), 
      .b_5({net_4167}), .y({net_1011}), .y_1({net_1002}), .y_2({net_997}), 
      .y_3({net_992}), .y_4({net_987}), .y_5({net_984}), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6 adder6_15(.a({net_1106}), .a_1({net_1104}), .a_2({net_1103}), 
      .a_3({net_1101}), .a_4({net_1099}), .a_5({net_4305}), .b({net_4325}), 
      .b_1({net_4322}), .b_2({net_4319}), .b_3({net_4315}), .b_4({net_4311}), 
      .b_5({net_4307}), .y({net_807}), .y_1({net_812}), .y_2({net_814}), 
      .y_3({net_816}), .y_4({net_818}), .y_5({net_806}), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6 adder6_16(.a({net_1088}), .a_1({net_1087}), .a_2({net_1085}), 
      .a_3({net_1082}), .a_4({net_1081}), .a_5({net_1079}), .b({net_4338}), 
      .b_1({net_4341}), .b_2({net_4344}), .b_3({net_4348}), .b_4({net_4351}), 
      .b_5({net_4354}), .y({net_843}), .y_1({net_862}), .y_2({net_865}), 
      .y_3({net_871}), .y_4({net_875}), .y_5({net_880}), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__adder6 adder6_17(.a({net_390}), .a_1({net_378}), .a_2({net_472}), 
      .a_3({net_523}), .a_4({net_536}), .a_5({net_477}), .b({net_433}), 
      .b_1({net_400}), .b_2({net_525}), .b_3({net_527}), .b_4({net_534}), 
      .b_5({net_489}), .y({net_557}), .y_1({net_562}), .y_2({net_564}), 
      .y_3({net_575}), .y_4({net_584}), .y_5({net_587}), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__comp6 comp6_0(.a({net_20}), .a_1({net_23}), .a_2({net_27}), 
      .a_3({net_31}), .a_4({net_35}), .a_5({net_39}), .b({net_4714}), 
      .b_1({net_4706}), .b_2({net_312}), .b_3({net_313}), .b_4({net_4684}), 
      .b_5({net_116}), .alb(net_330), .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), 
      .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), .vdd_5(vdd), .gnd(gnd), 
      .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), 
      .gnd_5(gnd));
  Project__comp6 comp6_1(.a({net_69}), .a_1({net_64}), .a_2({net_59}), 
      .a_3({net_56}), .a_4({net_47}), .a_5({net_44}), .b({gnd}), .b_1({gnd}), 
      .b_2({gnd}), .b_3({gnd}), .b_4({gnd}), .b_5({gnd}), .alb(net_1165), 
      .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), 
      .vdd_4(vdd), .vdd_5(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), 
      .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd));
  Project__comp6 comp6_2(.a({net_136}), .a_1({net_133}), .a_2({net_131}), 
      .a_3({net_129}), .a_4({net_127}), .a_5({net_125}), .b({net_291}), 
      .b_1({net_285}), .b_2({net_281}), .b_3({net_275}), .b_4({net_270}), 
      .b_5({net_266}), .alb(net_259), .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), 
      .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), .vdd_5(vdd), .gnd(gnd), 
      .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), 
      .gnd_5(gnd));
  Project__comp6 comp6_3(.a({net_169}), .a_1({net_167}), .a_2({net_163}), 
      .a_3({net_161}), .a_4({net_158}), .a_5({net_156}), .b({net_227}), 
      .b_1({net_220}), .b_2({net_216}), .b_3({net_210}), .b_4({net_205}), 
      .b_5({net_199}), .alb(net_198), .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), 
      .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), .vdd_5(vdd), .gnd(gnd), 
      .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), 
      .gnd_5(gnd));
  Project__comp6 comp6_4(.a({net_390}), .a_1({net_378}), .a_2({net_472}), 
      .a_3({net_523}), .a_4({net_536}), .a_5({net_477}), .b({net_433}), 
      .b_1({net_400}), .b_2({net_525}), .b_3({net_527}), .b_4({net_534}), 
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
  Project__comp6 comp6_7(.a({net_419}), .a_1({net_412}), .a_2({net_406}), 
      .a_3({net_401}), .a_4({net_394}), .a_5({net_383}), .b({net_421}), 
      .b_1({net_414}), .b_2({net_408}), .b_3({net_402}), .b_4({net_396}), 
      .b_5({net_387}), .alb(net_386), .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), 
      .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), .vdd_5(vdd), .gnd(gnd), 
      .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), 
      .gnd_5(gnd));
  Project__comp6 comp6_8(.a({net_807}), .a_1({net_812}), .a_2({net_814}), 
      .a_3({net_816}), .a_4({net_818}), .a_5({net_806}), .b({net_843}), 
      .b_1({net_862}), .b_2({net_865}), .b_3({net_871}), .b_4({net_875}), 
      .b_5({net_880}), .alb(net_892), .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), 
      .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), .vdd_5(vdd), .gnd(gnd), 
      .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), 
      .gnd_5(gnd));
  Project__comp6 comp6_9(.a({net_927}), .a_1({net_929}), .a_2({net_931}), 
      .a_3({net_933}), .a_4({net_935}), .a_5({net_937}), .b({net_1011}), 
      .b_1({net_1002}), .b_2({net_997}), .b_3({net_992}), .b_4({net_987}), 
      .b_5({net_984}), .alb(net_969), .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), 
      .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), .vdd_5(vdd), .gnd(gnd), 
      .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), 
      .gnd_5(gnd));
  Project__comp6 comp6_10(.a({net_1018}), .a_1({net_1022}), .a_2({net_1025}), 
      .a_3({net_1028}), .a_4({net_1031}), .a_5({net_1035}), .b({net_1350}), 
      .b_1({net_1349}), .b_2({net_1348}), .b_3({net_1347}), .b_4({net_1346}), 
      .b_5({net_1345}), .alb(net_1332), .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), 
      .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), .vdd_5(vdd), .gnd(gnd), 
      .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), 
      .gnd_5(gnd));
  Project__inv_1x inv_1x_0(.a(net_594), .y(net_1153), .vdd(vdd), .gnd(gnd));
  Project__inv_1x inv_1x_1(.a(net_1165), .y(net_1178), .vdd(vdd), .gnd(gnd));
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
  Project__mux2_c_1x mux2_c_1_8(.d0(net_1302), .d1(net_1294), .s(net_1332), 
      .y(m_3[3]), .vdd(vdd), .gnd(gnd));
  Project__mux2_c_1x mux2_c_1_9(.d0(net_1312), .d1(net_1300), .s(net_1332), 
      .y(m_2[2]), .vdd(vdd), .gnd(gnd));
  Project__mux2_c_1x mux2_c_1_10(.d0(net_1326), .d1(net_1310), .s(net_1332), 
      .y(m_1[1]), .vdd(vdd), .gnd(gnd));
  Project__mux2_c_1x mux2_c_1_11(.d0(net_1322), .d1(net_1800), .s(net_1332), 
      .y(m[0]), .vdd(vdd), .gnd(gnd));
  Project__mux6 mux6_0(.d0({net_227}), .d0_1({net_220}), .d0_2({net_216}), 
      .d0_3({net_210}), .d0_4({net_205}), .d0_5({net_199}), .d1({net_169}), 
      .d1_1({net_167}), .d1_2({net_163}), .d1_3({net_161}), .d1_4({net_158}), 
      .d1_5({net_156}), .s(net_198), .y({net_4180}), .y_1({net_4177}), 
      .y_2({net_4174}), .y_3({net_4171}), .y_4({net_4168}), .y_5({net_4167}), 
      .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), 
      .vdd_4(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd));
  Project__mux6 mux6_1(.d0({net_291}), .d0_1({net_285}), .d0_2({net_281}), 
      .d0_3({net_275}), .d0_4({net_270}), .d0_5({net_266}), .d1({net_136}), 
      .d1_1({net_133}), .d1_2({net_131}), .d1_3({net_129}), .d1_4({net_127}), 
      .d1_5({net_125}), .s(net_259), .y({net_4160}), .y_1({net_4154}), 
      .y_2({net_4151}), .y_3({net_4148}), .y_4({net_4145}), .y_5({net_4142}), 
      .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), 
      .vdd_4(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd));
  Project__mux6 mux6_2(.d0({net_4714}), .d0_1({net_4706}), .d0_2({net_312}), 
      .d0_3({net_313}), .d0_4({net_4684}), .d0_5({net_116}), .d1({net_20}), 
      .d1_1({net_23}), .d1_2({net_27}), .d1_3({net_31}), .d1_4({net_35}), 
      .d1_5({net_39}), .s(net_330), .y({net_4338}), .y_1({net_4341}), 
      .y_2({net_4344}), .y_3({net_4348}), .y_4({net_4351}), .y_5({net_4354}), 
      .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), 
      .vdd_4(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd));
  Project__mux6 mux6_3(.d0({gnd}), .d0_1({gnd}), .d0_2({gnd}), .d0_3({gnd}), 
      .d0_4({gnd}), .d0_5({gnd}), .d1({net_69}), .d1_1({net_64}), 
      .d1_2({net_59}), .d1_3({net_56}), .d1_4({net_47}), .d1_5({net_44}), 
      .s(net_1165), .y({net_4325}), .y_1({net_4322}), .y_2({net_4319}), 
      .y_3({net_4315}), .y_4({net_4311}), .y_5({net_4307}), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), 
      .gnd_4(gnd));
  Project__mux6 mux6_4(.d0({net_421}), .d0_1({net_414}), .d0_2({net_408}), 
      .d0_3({net_402}), .d0_4({net_396}), .d0_5({net_387}), .d1({net_419}), 
      .d1_1({net_412}), .d1_2({net_406}), .d1_3({net_401}), .d1_4({net_394}), 
      .d1_5({net_383}), .s(net_386), .y({net_1131}), .y_1({net_1130}), 
      .y_2({net_1129}), .y_3({net_1128}), .y_4({net_1127}), .y_5({net_1126}), 
      .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), 
      .vdd_4(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd));
  Project__mux6 mux6_5(.d0({net_499}), .d0_1({net_492}), .d0_2({net_486}), 
      .d0_3({net_479}), .d0_4({net_473}), .d0_5({net_468}), .d1({net_498}), 
      .d1_1({net_493}), .d1_2({net_485}), .d1_3({net_480}), .d1_4({net_474}), 
      .d1_5({net_464}), .s(net_459), .y({net_1124}), .y_1({net_1123}), 
      .y_2({net_1120}), .y_3({net_1119}), .y_4({net_1117}), .y_5({net_1115}), 
      .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), 
      .vdd_4(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd));
  Project__mux6 mux6_6(.d0({net_433}), .d0_1({net_400}), .d0_2({net_525}), 
      .d0_3({net_527}), .d0_4({net_534}), .d0_5({net_489}), .d1({net_390}), 
      .d1_1({net_378}), .d1_2({net_472}), .d1_3({net_523}), .d1_4({net_536}), 
      .d1_5({net_477}), .s(net_546), .y({net_1088}), .y_1({net_1087}), 
      .y_2({net_1085}), .y_3({net_1082}), .y_4({net_1081}), .y_5({net_1079}), 
      .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), 
      .vdd_4(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd));
  Project__mux6 mux6_7(.d0({gnd}), .d0_1({gnd}), .d0_2({gnd}), .d0_3({gnd}), 
      .d0_4({gnd}), .d0_5({gnd}), .d1({net_557}), .d1_1({net_562}), 
      .d1_2({net_564}), .d1_3({net_575}), .d1_4({net_584}), .d1_5({net_587}), 
      .s(net_594), .y({net_1106}), .y_1({net_1104}), .y_2({net_1103}), 
      .y_3({net_1101}), .y_4({net_1099}), .y_5({net_4305}), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), 
      .gnd_4(gnd));
  Project__mux6 mux6_8(.d0({net_843}), .d0_1({net_862}), .d0_2({net_865}), 
      .d0_3({net_871}), .d0_4({net_875}), .d0_5({net_880}), .d1({net_807}), 
      .d1_1({net_812}), .d1_2({net_814}), .d1_3({net_816}), .d1_4({net_818}), 
      .d1_5({net_806}), .s(net_892), .y({net_1018}), .y_1({net_1022}), 
      .y_2({net_1025}), .y_3({net_1028}), .y_4({net_1031}), .y_5({net_1035}), 
      .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), 
      .vdd_4(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd));
  Project__mux6 mux6_9(.d0({net_1011}), .d0_1({net_1002}), .d0_2({net_997}), 
      .d0_3({net_992}), .d0_4({net_987}), .d0_5({net_984}), .d1({net_927}), 
      .d1_1({net_929}), .d1_2({net_931}), .d1_3({net_933}), .d1_4({net_935}), 
      .d1_5({net_937}), .s(net_969), .y({net_1350}), .y_1({net_1349}), 
      .y_2({net_1348}), .y_3({net_1347}), .y_4({net_1346}), .y_5({net_1345}), 
      .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), 
      .vdd_4(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), 
      .gnd_3(gnd), .gnd_4(gnd));
endmodule   /* decoder1 */
