/* Verilog for cell 'mux6{lay}' from library 'Project' */
/* Created on Thu Nov 24, 2016 12:19:33 */
/* Last revised on Thu Nov 24, 2016 20:05:42 */
/* Written on Thu Nov 24, 2016 21:44:45 by Electric VLSI Design System, version 8.06 */

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

module mux6(d0, d0_1, d0_2, d0_3, d0_4, d0_5, d1, d1_1, d1_2, d1_3, d1_4, d1_5, 
      s, y, y_1, y_2, y_3, y_4, y_5);
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
  /*
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
*/
  supply1 vdd,vdd_1,vdd_1_1,vdd_2,vdd_3,vdd_4;
  supply0 gnd,gnd_1,gnd_1_1,gnd_2,gnd_3,gnd_4;
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
endmodule   /* mux6 */
