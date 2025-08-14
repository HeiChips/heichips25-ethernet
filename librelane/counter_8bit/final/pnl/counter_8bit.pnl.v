module counter_8bit (clk_i,
    en_i,
    ovf_o,
    rst_ni,
    VPWR,
    VGND,
    count_o);
 input clk_i;
 input en_i;
 output ovf_o;
 input rst_ni;
 inout VPWR;
 inout VGND;
 output [7:0] count_o;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire _20_;
 wire _21_;
 wire _22_;
 wire _23_;
 wire _24_;
 wire _25_;
 wire _26_;
 wire _27_;
 wire _28_;
 wire _29_;
 wire _30_;
 wire _31_;
 wire _32_;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire clknet_0_clk_i;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net3;
 wire net1;
 wire net2;
 wire net13;
 wire clknet_1_0__leaf_clk_i;
 wire clknet_1_1__leaf_clk_i;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;

 sg13g2_inv_1 _42_ (.VDD(VPWR),
    .Y(_09_),
    .A(net22),
    .VSS(VGND));
 sg13g2_inv_1 _43_ (.VDD(VPWR),
    .Y(_10_),
    .A(net31),
    .VSS(VGND));
 sg13g2_inv_1 _44_ (.VDD(VPWR),
    .Y(_11_),
    .A(net33),
    .VSS(VGND));
 sg13g2_nand2_1 _45_ (.Y(_12_),
    .A(net1),
    .B(net3),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand4_1 _46_ (.B(net6),
    .C(net5),
    .A(net7),
    .Y(_13_),
    .VDD(VPWR),
    .VSS(VGND),
    .D(net4));
 sg13g2_nand2_1 _47_ (.Y(_14_),
    .A(net22),
    .B(net10),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand2_1 _48_ (.Y(_15_),
    .A(net9),
    .B(net8),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nor4_1 _49_ (.A(_12_),
    .B(_13_),
    .C(_14_),
    .D(_15_),
    .Y(_16_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_a21o_1 _50_ (.A2(_12_),
    .A1(net24),
    .B1(_16_),
    .X(_00_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_o21ai_1 _51_ (.B1(net3),
    .VDD(VPWR),
    .Y(_17_),
    .VSS(VGND),
    .A1(net1),
    .A2(net29));
 sg13g2_a21oi_1 _52_ (.VSS(VGND),
    .VDD(VPWR),
    .A1(net1),
    .A2(net29),
    .Y(_01_),
    .B1(_17_));
 sg13g2_a21oi_1 _53_ (.VSS(VGND),
    .VDD(VPWR),
    .A1(net1),
    .A2(net29),
    .Y(_18_),
    .B1(net30));
 sg13g2_nand3_1 _54_ (.B(net30),
    .C(net29),
    .A(net1),
    .Y(_19_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand2_1 _55_ (.Y(_20_),
    .A(net3),
    .B(_19_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nor2_1 _56_ (.A(_18_),
    .B(_20_),
    .Y(_02_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand2b_1 _57_ (.Y(_21_),
    .B(_19_),
    .A_N(net37),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_and4_1 _58_ (.A(net1),
    .B(net6),
    .C(net30),
    .D(net29),
    .X(_22_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand4_1 _59_ (.B(net37),
    .C(net30),
    .A(net1),
    .Y(_23_),
    .VDD(VPWR),
    .VSS(VGND),
    .D(net29));
 sg13g2_and3_1 _60_ (.X(_03_),
    .A(net3),
    .B(_21_),
    .C(_23_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_o21ai_1 _61_ (.B1(net3),
    .VDD(VPWR),
    .Y(_24_),
    .VSS(VGND),
    .A1(_11_),
    .A2(_23_));
 sg13g2_a21oi_1 _62_ (.VSS(VGND),
    .VDD(VPWR),
    .A1(_11_),
    .A2(_23_),
    .Y(_04_),
    .B1(_24_));
 sg13g2_a21oi_1 _63_ (.VSS(VGND),
    .VDD(VPWR),
    .A1(net7),
    .A2(_22_),
    .Y(_25_),
    .B1(net26));
 sg13g2_nand3_1 _64_ (.B(net33),
    .C(_22_),
    .A(net26),
    .Y(_26_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand2_1 _65_ (.Y(_27_),
    .A(net3),
    .B(_26_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nor2_1 _66_ (.A(net27),
    .B(_27_),
    .Y(_05_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand2b_1 _67_ (.Y(_28_),
    .B(_26_),
    .A_N(net35),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand4_1 _68_ (.B(net26),
    .C(net33),
    .A(net35),
    .Y(_29_),
    .VDD(VPWR),
    .VSS(VGND),
    .D(_22_));
 sg13g2_and3_1 _69_ (.X(_06_),
    .A(net3),
    .B(net36),
    .C(_29_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_or2_1 _70_ (.VSS(VGND),
    .VDD(VPWR),
    .X(_30_),
    .B(_29_),
    .A(_10_));
 sg13g2_o21ai_1 _71_ (.B1(net3),
    .VDD(VPWR),
    .Y(_31_),
    .VSS(VGND),
    .A1(_10_),
    .A2(_29_));
 sg13g2_a21oi_1 _72_ (.VSS(VGND),
    .VDD(VPWR),
    .A1(_10_),
    .A2(_29_),
    .Y(_07_),
    .B1(_31_));
 sg13g2_o21ai_1 _73_ (.B1(net2),
    .VDD(VPWR),
    .Y(_32_),
    .VSS(VGND),
    .A1(_14_),
    .A2(_29_));
 sg13g2_a21oi_1 _74_ (.VSS(VGND),
    .VDD(VPWR),
    .A1(_09_),
    .A2(_30_),
    .Y(_08_),
    .B1(_32_));
 sg13g2_dfrbpq_1 _75_ (.RESET_B(net18),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net25),
    .Q(net12),
    .CLK(clknet_1_1__leaf_clk_i));
 sg13g2_dfrbpq_2 _76_ (.RESET_B(net19),
    .VSS(VGND),
    .VDD(VPWR),
    .D(_01_),
    .Q(net4),
    .CLK(clknet_1_1__leaf_clk_i));
 sg13g2_dfrbpq_2 _77_ (.RESET_B(net17),
    .VSS(VGND),
    .VDD(VPWR),
    .D(_02_),
    .Q(net5),
    .CLK(clknet_1_0__leaf_clk_i));
 sg13g2_dfrbpq_2 _78_ (.RESET_B(net15),
    .VSS(VGND),
    .VDD(VPWR),
    .D(_03_),
    .Q(net6),
    .CLK(clknet_1_0__leaf_clk_i));
 sg13g2_dfrbpq_2 _79_ (.RESET_B(net13),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net34),
    .Q(net7),
    .CLK(clknet_1_0__leaf_clk_i));
 sg13g2_dfrbpq_2 _80_ (.RESET_B(net20),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net28),
    .Q(net8),
    .CLK(clknet_1_0__leaf_clk_i));
 sg13g2_dfrbpq_1 _81_ (.RESET_B(net16),
    .VSS(VGND),
    .VDD(VPWR),
    .D(_06_),
    .Q(net9),
    .CLK(clknet_1_0__leaf_clk_i));
 sg13g2_dfrbpq_1 _82_ (.RESET_B(net21),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net32),
    .Q(net10),
    .CLK(clknet_1_1__leaf_clk_i));
 sg13g2_dfrbpq_1 _83_ (.RESET_B(net14),
    .VSS(VGND),
    .VDD(VPWR),
    .D(net23),
    .Q(net11),
    .CLK(clknet_1_1__leaf_clk_i));
 sg13g2_tiehi _83__13 (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(net14));
 sg13g2_tiehi _78__14 (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(net15));
 sg13g2_tiehi _81__15 (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(net16));
 sg13g2_tiehi _77__16 (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(net17));
 sg13g2_tiehi _75__17 (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(net18));
 sg13g2_tiehi _76__18 (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(net19));
 sg13g2_tiehi _80__19 (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(net20));
 sg13g2_tiehi _82__20 (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(net21));
 sg13g2_buf_8 clkbuf_0_clk_i (.A(clk_i),
    .X(clknet_0_clk_i),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_8 fanout3 (.A(net2),
    .X(net3),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_2 input1 (.A(en_i),
    .X(net1),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input2 (.A(rst_ni),
    .X(net2),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output3 (.A(net4),
    .X(count_o[0]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output4 (.A(net5),
    .X(count_o[1]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output5 (.A(net6),
    .X(count_o[2]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output6 (.A(net7),
    .X(count_o[3]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output7 (.A(net8),
    .X(count_o[4]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output8 (.A(net9),
    .X(count_o[5]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output9 (.A(net10),
    .X(count_o[6]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output10 (.A(net11),
    .X(count_o[7]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output11 (.A(net12),
    .X(ovf_o),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_tiehi _79__12 (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(net13));
 sg13g2_buf_8 clkbuf_1_0__f_clk_i (.A(clknet_0_clk_i),
    .X(clknet_1_0__leaf_clk_i),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_8 clkbuf_1_1__f_clk_i (.A(clknet_0_clk_i),
    .X(clknet_1_1__leaf_clk_i),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_inv_1 clkload0 (.VDD(VPWR),
    .A(clknet_1_1__leaf_clk_i),
    .VSS(VGND));
 sg13g2_dlygate4sd3_1 hold1 (.A(net11),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net22));
 sg13g2_dlygate4sd3_1 hold2 (.A(_08_),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net23));
 sg13g2_dlygate4sd3_1 hold3 (.A(net12),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net24));
 sg13g2_dlygate4sd3_1 hold4 (.A(_00_),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net25));
 sg13g2_dlygate4sd3_1 hold5 (.A(net8),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net26));
 sg13g2_dlygate4sd3_1 hold6 (.A(_25_),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net27));
 sg13g2_dlygate4sd3_1 hold7 (.A(_05_),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net28));
 sg13g2_dlygate4sd3_1 hold8 (.A(net4),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net29));
 sg13g2_dlygate4sd3_1 hold9 (.A(net5),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net30));
 sg13g2_dlygate4sd3_1 hold10 (.A(net10),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net31));
 sg13g2_dlygate4sd3_1 hold11 (.A(_07_),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net32));
 sg13g2_dlygate4sd3_1 hold12 (.A(net7),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net33));
 sg13g2_dlygate4sd3_1 hold13 (.A(_04_),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net34));
 sg13g2_dlygate4sd3_1 hold14 (.A(net9),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net35));
 sg13g2_dlygate4sd3_1 hold15 (.A(_28_),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net36));
 sg13g2_dlygate4sd3_1 hold16 (.A(net6),
    .VDD(VPWR),
    .VSS(VGND),
    .X(net37));
 sg13g2_decap_8 FILLER_0_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_21 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_0_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_0_30 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_0_39 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_0_43 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_49 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_56 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_63 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_70 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_77 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_0_84 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_0_91 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_1_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_1_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_1_9 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_1_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_1_21 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_1_40 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_1_75 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_1_82 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_1_89 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_1_91 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_4 FILLER_2_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_2_4 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_2_42 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_2_75 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_2_82 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_2_89 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_2_91 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_4 FILLER_3_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_3_4 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_4 FILLER_3_10 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_3_23 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_3_52 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_3_54 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_3_60 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_4 FILLER_3_84 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_4_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_4_47 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_4_63 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_5_4 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_4 FILLER_5_11 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_5_15 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_5_25 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_5_35 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_4 FILLER_6_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_4 FILLER_6_37 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_6_41 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_4 FILLER_6_82 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_6_86 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_7_13 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_7_20 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_7_27 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_7_29 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_7_63 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_8_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_8_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_8_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_8_25 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_8_35 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_8_65 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_9_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_9_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_9_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_9_43 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_9_58 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_9_80 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_9_90 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_10_0 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_10_7 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_10_14 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_10_21 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_10_28 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_1 FILLER_10_35 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_10_70 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_10_77 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_decap_8 FILLER_10_83 (.VDD(VPWR),
    .VSS(VGND));
 sg13g2_fill_2 FILLER_10_90 (.VDD(VPWR),
    .VSS(VGND));
endmodule
