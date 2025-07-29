// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Tue Jul 29 20:54:41 2025
//
// Verilog Description of module IIR
//

module IIR (clk, rst_n, adc, dac, adc_clk, dac_clk) /* synthesis syn_module_defined=1 */ ;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(8[8:11])
    input clk /* synthesis syn_force_pads=1 */ ;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(10[25:28])
    input rst_n /* synthesis syn_force_pads=1 */ ;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(12[25:30])
    input [7:0]adc;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(13[31:34])
    output [7:0]dac;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(15[31:34])
    output adc_clk;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(16[25:32])
    output dac_clk;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(17[25:32])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(10[25:28])
    wire rst_n_c /* synthesis syn_force_pads=1 */ ;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(12[25:30])
    
    wire GND_net, VCC_net, adc_c_7, adc_c_6, adc_c_5, adc_c_4, adc_c_3, 
        adc_c_2, dac_c_7, dac_c_6, dac_c_5, dac_c_4, dac_c_3, dac_c_2, 
        dac_c_1, dac_c_0, dac_clk_c;
    wire [7:0]clk_divide_counter;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(20[11:29])
    wire [8:0]x_d1;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(62[18:22])
    wire [8:0]x_d2;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(62[24:28])
    
    wire n1302, n1611;
    wire [8:0]y_d1;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(64[18:22])
    wire [8:0]y_d2;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(64[24:28])
    
    wire n1559;
    wire [31:0]term_a0;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(67[20:27])
    
    wire n1635;
    wire [31:0]term_a1;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(67[29:36])
    
    wire n1576, n1560;
    wire [31:0]term_a2;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(67[38:45])
    wire [31:0]term_b1;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(68[20:27])
    wire [31:0]term_b2;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(68[29:36])
    wire [31:0]y_full;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(69[20:26])
    
    wire adc_clk_N_84, n993, n992, n991, n990, n989, n988, n987, 
        n986, n1557, n1005, n1004, n1003, n1002, n1001, n1000, 
        n999, n998, n997, n1645, n1442, n1440, n1439, n1438, 
        n1437, n1436, n1496, n1495, n1494, n1493, n1491, n1490, 
        n1489, n1488, n45, n44, n43, n42, n41, n40, n39, n38, 
        n1647, n1435, n1434, n1433, n1388, n1486, n1380, n1422, 
        n1424, n1429, n1427, n1431, n1430, n1649, n1432, n1636, 
        n1423, clk_c_enable_34, n996, n1650, n1648, n1445, n1646, 
        n1644, n1596, n1444, n995, n994, n1443, n1425, n129, 
        n1613, n1556, n1591, n1574, n262, n259, n256, n253, 
        n1426, n231, n228, n225, n222, n1594, n200, n197, n194, 
        n191, n1595, n169, n166, n163, n160, n1555, n1589, n1590, 
        n1554, n1421, n1573, n1553, n299, n298, n1552, n295, 
        n294, n1550, n291, n290, n1549, n287, n286, n1548, n283, 
        n138, n135, n132, n1652, n1653, n1654, n1655, n1656, 
        n1657, n1658, n1660, n1661, n1662, n1663, n1651, n1009, 
        n1010, n1011, n1012, n1013, n1014, n1015, n1016, n1017, 
        n1018, n1019, n1020, n1021, n1022, n1023, n1024, n1025, 
        n1026, n1027, n1547, n1485, n1484, n1483, n1481, n1480, 
        n1479, n1478, n1476, n1475, n1474, n1472, n1471, n1470, 
        n1468, n1467, n1466, n1464, n1463, n1462, n1460, n1459, 
        n1458, n1456, n1455, n1454, n1451, n1450, n1449, n1448, 
        n1447, n1446, n10, n107, n110, n113, n116, n1588, n1615, 
        n141, n144, n147, n150, n1617, n1614, n175, n178, n181, 
        n184, n1546, n209, n212, n215, n218, n221, n1643, n243, 
        n246, n249, n252, n255, n1642, n277, n280, n283_adj_1, 
        n286_adj_2, n289, n1641, n311, n314, n317, n320, n1545, 
        n1639, n1543, n1612, n344, n1542, n347, n348, n1541, 
        n351, n352, n1540, n355, n356, n1539, n359, n360, n1538, 
        n1561, n364, n1536, n1638, n1637, n1535, n1609, n1624, 
        n1625, n1632, n1630, n1627, n1577, n1575, n1587, n1633, 
        n1631, n1629, n1626, n1569, n129_adj_3, n132_adj_4, n135_adj_5, 
        n138_adj_6, n141_adj_7, n1534, n160_adj_8, n163_adj_9, n166_adj_10, 
        n169_adj_11, n172, n1568, n1584, n191_adj_12, n194_adj_13, 
        n197_adj_14, n200_adj_15, n203, n1567, n1583, n222_adj_16, 
        n225_adj_17, n228_adj_18, n231_adj_19, n234, n1566, n1582, 
        n253_adj_20, n256_adj_21, n259_adj_22, n262_adj_23, n1571, 
        n1564, n1581, n1533, n283_adj_24, n1532, n286_adj_25, n287_adj_26, 
        n1531, n290_adj_27, n291_adj_28, n1529, n294_adj_29, n295_adj_30, 
        n1528, n298_adj_31, n299_adj_32, n1527, n1570, n303, n1525, 
        n1563, n1562, n1524, n1580, n1578, n1523, n91, n94, 
        n97, n100, n103, n106, n109, n1312, n1521, n134, n137, 
        n140, n143, n146, n149, n152, n1623, n177, n180, n183, 
        n186, n189, n192, n195, n1621, n1310, n220, n223, n226, 
        n229, n232, n235, n238, n1620, n1309, n263, n266, n269, 
        n272, n275, n278, n281, n1619, n1308, n306, n309, n312, 
        n315, n318, n321, n324, n1618, n1307, n349, n352_adj_33, 
        n355_adj_34, n358, n361, n364_adj_35, n367, n1330, n1306, 
        n392, n395, n398, n401, n404, n407, n410, n1305, n435, 
        n438, n441, n444, n447, n450, n453, n1328, n1304, n478, 
        n481, n484, n487, n490, n493, n496, n1327, n1303, n1520, 
        n521, n524, n527, n530, n533, n536, n539, n1326, n1519, 
        n562, n563, n566, n567, n570, n571, n574, n575, n1675, 
        n578, n579, n582, n583, n586, n587, n590, n1517, n1516, 
        n1515, n1513, n1512, n1511, n42_adj_36, n45_adj_37, n48, 
        n51, n54, n57, n1325, n79, n82, n85, n88, n91_adj_38, 
        n94_adj_39, n1324, n1608, n116_adj_40, n119, n122, n125, 
        n128, n131, n1323, n1607, n153, n156, n159, n162, n165, 
        n168, n1322, n1606, n190, n193, n196, n199, n202, n205, 
        n1321, n1605, n227, n230, n233, n236, n239, n242, n1320, 
        n1603, n264, n267, n270, n273, n276, n279, n1319, n1602, 
        n301, n304, n307, n310, n313, n316, n1318, n1601, n338, 
        n341, n344_adj_41, n347_adj_42, n350, n353, n1317, n1600, 
        n375, n378, n381, n384, n387, n390, n1316, n1599, n1509, 
        n410_adj_43, n411, n1508, n414, n415, n1507, n418, n419, 
        n1505, n422, n423, n1504, n426, n427, n1503, n430, n431, 
        n1501, n434, n435_adj_44, n1500, n1315, n1314, n1499, 
        n1498, n1367;
    
    VHI i332 (.Z(VCC_net));
    LUT4 i1_2_lut (.A(dac_clk_c), .B(n1367), .Z(adc_clk_N_84)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    CCU2D add_132_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1456), 
          .S0(n287));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_132_cout.INIT0 = 16'h0000;
    defparam add_132_cout.INIT1 = 16'h0000;
    defparam add_132_cout.INJECT1_0 = "NO";
    defparam add_132_cout.INJECT1_1 = "NO";
    OB dac_pad_4 (.I(dac_c_4), .O(dac[4]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(15[31:34])
    LUT4 i304_2_lut (.A(n410_adj_43), .B(y_d2[8]), .Z(term_b2[11])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i304_2_lut.init = 16'h6666;
    FD1S3AX clk_1M_reg_28 (.D(adc_clk_N_84), .CK(clk_c), .Q(dac_clk_c));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(29[10] 37[8])
    defparam clk_1M_reg_28.GSR = "ENABLED";
    OB dac_pad_6 (.I(dac_c_6), .O(dac[6]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(15[31:34])
    LUT4 i296_2_lut (.A(y_d2[1]), .B(y_d2[0]), .Z(term_b2[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i296_2_lut.init = 16'h6666;
    LUT4 i294_2_lut (.A(n562), .B(y_d1[8]), .Z(term_b1[13])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i294_2_lut.init = 16'h9999;
    TSALL TSALL_INST (.TSALL(GND_net));
    OB dac_pad_3 (.I(dac_c_3), .O(dac[3]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(15[31:34])
    FD1P3AX y_d2_i0_i0 (.D(term_b1[1]), .SP(clk_c_enable_34), .CK(clk_c), 
            .Q(y_d2[0]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_i0_i0.GSR = "ENABLED";
    FD1P3AX x_d1__i1 (.D(term_a0[2]), .SP(clk_c_enable_34), .CK(clk_c), 
            .Q(x_d1[0]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1__i1.GSR = "ENABLED";
    OB dac_pad_7 (.I(dac_c_7), .O(dac[7]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(15[31:34])
    CCU2D clk_divide_counter_86_add_4_5 (.A0(clk_divide_counter[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(clk_divide_counter[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1425), .COUT(n1426), .S0(n42), 
          .S1(n41));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(35[35:60])
    defparam clk_divide_counter_86_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_divide_counter_86_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_divide_counter_86_add_4_5.INJECT1_0 = "NO";
    defparam clk_divide_counter_86_add_4_5.INJECT1_1 = "NO";
    CCU2D clk_divide_counter_86_add_4_7 (.A0(clk_divide_counter[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(clk_divide_counter[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1426), .COUT(n1427), .S0(n40), 
          .S1(n39));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(35[35:60])
    defparam clk_divide_counter_86_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_divide_counter_86_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_divide_counter_86_add_4_7.INJECT1_0 = "NO";
    defparam clk_divide_counter_86_add_4_7.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_276_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1491), .S0(n352));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_276_cout.INIT0 = 16'h0000;
    defparam x_d1_8__I_0_add_276_cout.INIT1 = 16'h0000;
    defparam x_d1_8__I_0_add_276_cout.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_276_cout.INJECT1_1 = "NO";
    CCU2D add_131_4 (.A0(n160), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n191), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1421), 
          .COUT(n1422), .S0(term_a0[6]), .S1(term_a0[7]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_131_4.INIT0 = 16'h5aaa;
    defparam add_131_4.INIT1 = 16'h5aaa;
    defparam add_131_4.INJECT1_0 = "NO";
    defparam add_131_4.INJECT1_1 = "NO";
    LUT4 i285_2_lut (.A(y_d1[1]), .B(term_b1[1]), .Z(term_b1[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i285_2_lut.init = 16'h6666;
    CCU2D add_132_6 (.A0(n225), .B0(term_a0[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n256), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1455), 
          .COUT(n1456), .S0(n253), .S1(n286));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_132_6.INIT0 = 16'h5666;
    defparam add_132_6.INIT1 = 16'h5aaa;
    defparam add_132_6.INJECT1_0 = "NO";
    defparam add_132_6.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(rst_n_c));
    CCU2D add_132_4 (.A0(n163), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n194), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1454), 
          .COUT(n1455), .S0(n191), .S1(n222));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_132_4.INIT0 = 16'h5aaa;
    defparam add_132_4.INIT1 = 16'h5aaa;
    defparam add_132_4.INJECT1_0 = "NO";
    defparam add_132_4.INJECT1_1 = "NO";
    CCU2D add_132_2 (.A0(adc_c_3), .B0(term_a0[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n132), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1454), 
          .S1(n160));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_132_2.INIT0 = 16'h7000;
    defparam add_132_2.INIT1 = 16'h5aaa;
    defparam add_132_2.INJECT1_0 = "NO";
    defparam add_132_2.INJECT1_1 = "NO";
    CCU2D add_100_21 (.A0(n987), .B0(term_b2[19]), .C0(GND_net), .D0(GND_net), 
          .A1(n986), .B1(term_b2[31]), .C1(GND_net), .D1(GND_net), .CIN(n1451), 
          .S0(dac_c_7), .S1(y_full[20]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_100_21.INIT0 = 16'h5999;
    defparam add_100_21.INIT1 = 16'h5999;
    defparam add_100_21.INJECT1_0 = "NO";
    defparam add_100_21.INJECT1_1 = "NO";
    FD1P3AX x_d2__i8 (.D(x_d1[7]), .SP(clk_c_enable_34), .CK(clk_c), .Q(x_d2[7]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d2__i8.GSR = "ENABLED";
    FD1P3AX x_d2__i7 (.D(x_d1[6]), .SP(clk_c_enable_34), .CK(clk_c), .Q(x_d2[6]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d2__i7.GSR = "ENABLED";
    FD1P3AX x_d2__i6 (.D(x_d1[5]), .SP(clk_c_enable_34), .CK(clk_c), .Q(x_d2[5]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d2__i6.GSR = "ENABLED";
    FD1P3AX x_d2__i5 (.D(x_d1[4]), .SP(clk_c_enable_34), .CK(clk_c), .Q(x_d2[4]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d2__i5.GSR = "ENABLED";
    FD1P3AX x_d2__i4 (.D(x_d1[3]), .SP(clk_c_enable_34), .CK(clk_c), .Q(x_d2[3]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d2__i4.GSR = "ENABLED";
    FD1P3AX x_d2__i3 (.D(term_a1[2]), .SP(clk_c_enable_34), .CK(clk_c), 
            .Q(x_d2[2]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d2__i3.GSR = "ENABLED";
    FD1P3AX x_d2__i2 (.D(term_a1[1]), .SP(clk_c_enable_34), .CK(clk_c), 
            .Q(term_a2[3]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d2__i2.GSR = "ENABLED";
    FD1P3AX x_d2__i1 (.D(x_d1[0]), .SP(clk_c_enable_34), .CK(clk_c), .Q(term_a2[2]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d2__i1.GSR = "ENABLED";
    FD1P3AX y_d1_i0_i1 (.D(dac_c_1), .SP(clk_c_enable_34), .CK(clk_c), 
            .Q(y_d1[1]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d1_i0_i1.GSR = "ENABLED";
    OB dac_pad_5 (.I(dac_c_5), .O(dac[5]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(15[31:34])
    CCU2D clk_divide_counter_86_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_divide_counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1424), .S1(n45));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(35[35:60])
    defparam clk_divide_counter_86_add_4_1.INIT0 = 16'hF000;
    defparam clk_divide_counter_86_add_4_1.INIT1 = 16'h0555;
    defparam clk_divide_counter_86_add_4_1.INJECT1_0 = "NO";
    defparam clk_divide_counter_86_add_4_1.INJECT1_1 = "NO";
    OB dac_pad_2 (.I(dac_c_2), .O(dac[2]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(15[31:34])
    OB dac_pad_1 (.I(dac_c_1), .O(dac[1]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(15[31:34])
    OB dac_pad_0 (.I(dac_c_0), .O(dac[0]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(15[31:34])
    OB adc_clk_pad (.I(dac_clk_c), .O(adc_clk));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(16[25:32])
    OB dac_clk_pad (.I(dac_clk_c), .O(dac_clk));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(17[25:32])
    IB clk_pad (.I(clk), .O(clk_c));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(10[25:28])
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(12[25:30])
    IB adc_pad_7 (.I(adc[7]), .O(adc_c_7));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(13[31:34])
    IB adc_pad_6 (.I(adc[6]), .O(adc_c_6));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(13[31:34])
    IB adc_pad_5 (.I(adc[5]), .O(adc_c_5));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(13[31:34])
    IB adc_pad_4 (.I(adc[4]), .O(adc_c_4));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(13[31:34])
    IB adc_pad_3 (.I(adc[3]), .O(adc_c_3));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(13[31:34])
    IB adc_pad_2 (.I(adc[2]), .O(adc_c_2));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(13[31:34])
    IB adc_pad_1 (.I(adc[1]), .O(term_a0[3]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(13[31:34])
    IB adc_pad_0 (.I(adc[0]), .O(term_a0[2]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(13[31:34])
    CCU2D x_d1_8__I_0_add_275_4 (.A0(n144), .B0(term_a1[1]), .C0(GND_net), 
          .D0(GND_net), .A1(n178), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1483), .COUT(n1484), .S0(n175), .S1(n209));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_275_4.INIT0 = 16'h5666;
    defparam x_d1_8__I_0_add_275_4.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_275_4.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_275_4.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_275_2 (.A0(x_d1[4]), .B0(term_a1[1]), .C0(GND_net), 
          .D0(GND_net), .A1(n110), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1483), .S1(n141));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_275_2.INIT0 = 16'h7000;
    defparam x_d1_8__I_0_add_275_2.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_275_2.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_275_2.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_274_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1481), .S0(n344));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_274_cout.INIT0 = 16'h0000;
    defparam x_d1_8__I_0_add_274_cout.INIT1 = 16'h0000;
    defparam x_d1_8__I_0_add_274_cout.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_274_cout.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_274_8 (.A0(n277), .B0(x_d1[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n311), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1480), .COUT(n1481), .S0(term_a1[9]), .S1(term_a1[10]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_274_8.INIT0 = 16'h5666;
    defparam x_d1_8__I_0_add_274_8.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_274_8.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_274_8.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_274_6 (.A0(n209), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n243), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1479), .COUT(n1480), .S0(term_a1[7]), .S1(term_a1[8]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_274_6.INIT0 = 16'h5aaa;
    defparam x_d1_8__I_0_add_274_6.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_274_6.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_274_6.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_276_8 (.A0(n283_adj_1), .B0(term_a1[2]), .C0(GND_net), 
          .D0(GND_net), .A1(n317), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1490), .COUT(n1491), .S0(n314), .S1(n351));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_276_8.INIT0 = 16'h5666;
    defparam x_d1_8__I_0_add_276_8.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_276_8.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_276_8.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_274_4 (.A0(n141), .B0(x_d1[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n175), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1478), .COUT(n1479), .S0(term_a1[5]), .S1(term_a1[6]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_274_4.INIT0 = 16'h5666;
    defparam x_d1_8__I_0_add_274_4.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_274_4.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_274_4.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_275_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1486), .S0(n348));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_275_cout.INIT0 = 16'h0000;
    defparam x_d1_8__I_0_add_275_cout.INIT1 = 16'h0000;
    defparam x_d1_8__I_0_add_275_cout.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_275_cout.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_274_2 (.A0(x_d1[3]), .B0(x_d1[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n107), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1478), .S1(term_a1[4]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_274_2.INIT0 = 16'h7000;
    defparam x_d1_8__I_0_add_274_2.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_274_2.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_274_2.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_279_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1476), .S0(n364));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_279_cout.INIT0 = 16'h0000;
    defparam x_d1_8__I_0_add_279_cout.INIT1 = 16'h0000;
    defparam x_d1_8__I_0_add_279_cout.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_279_cout.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_279_6 (.A0(x_d1[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(x_d1[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1475), .COUT(n1476));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_279_6.INIT0 = 16'hfaaa;
    defparam x_d1_8__I_0_add_279_6.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_279_6.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_279_6.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_279_4 (.A0(x_d1[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1474), .COUT(n1475), .S0(n255), .S1(n289));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_279_4.INIT0 = 16'h5aaa;
    defparam x_d1_8__I_0_add_279_4.INIT1 = 16'hf000;
    defparam x_d1_8__I_0_add_279_4.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_279_4.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_279_2 (.A0(x_d1[7]), .B0(x_d1[5]), .C0(GND_net), 
          .D0(GND_net), .A1(x_d1[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1474), .S1(n221));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_279_2.INIT0 = 16'h7000;
    defparam x_d1_8__I_0_add_279_2.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_279_2.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_279_2.INJECT1_1 = "NO";
    CCU2D add_220_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1472), 
          .S0(term_a1[17]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam add_220_cout.INIT0 = 16'h0000;
    defparam add_220_cout.INIT1 = 16'h0000;
    defparam add_220_cout.INJECT1_0 = "NO";
    defparam add_220_cout.INJECT1_1 = "NO";
    CCU2D add_220_6 (.A0(x_d1[6]), .B0(n360), .C0(GND_net), .D0(GND_net), 
          .A1(x_d1[7]), .B1(n364), .C1(GND_net), .D1(GND_net), .CIN(n1471), 
          .COUT(n1472), .S0(term_a1[15]), .S1(term_a1[16]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam add_220_6.INIT0 = 16'h5666;
    defparam add_220_6.INIT1 = 16'h5666;
    defparam add_220_6.INJECT1_0 = "NO";
    defparam add_220_6.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_276_6 (.A0(n215), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n249), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1489), .COUT(n1490), .S0(n246), .S1(n280));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_276_6.INIT0 = 16'h5aaa;
    defparam x_d1_8__I_0_add_276_6.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_276_6.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_276_6.INJECT1_1 = "NO";
    CCU2D add_220_4 (.A0(n355), .B0(n352), .C0(GND_net), .D0(GND_net), 
          .A1(n359), .B1(n356), .C1(GND_net), .D1(GND_net), .CIN(n1470), 
          .COUT(n1471), .S0(term_a1[13]), .S1(term_a1[14]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam add_220_4.INIT0 = 16'h5666;
    defparam add_220_4.INIT1 = 16'h5666;
    defparam add_220_4.INJECT1_0 = "NO";
    defparam add_220_4.INJECT1_1 = "NO";
    CCU2D add_220_2 (.A0(n347), .B0(n344), .C0(GND_net), .D0(GND_net), 
          .A1(n351), .B1(n348), .C1(GND_net), .D1(GND_net), .COUT(n1470), 
          .S1(term_a1[12]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam add_220_2.INIT0 = 16'h7000;
    defparam add_220_2.INIT1 = 16'h5666;
    defparam add_220_2.INJECT1_0 = "NO";
    defparam add_220_2.INJECT1_1 = "NO";
    CCU2D add_135_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1468), 
          .S0(n299));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_135_cout.INIT0 = 16'h0000;
    defparam add_135_cout.INIT1 = 16'h0000;
    defparam add_135_cout.INJECT1_0 = "NO";
    defparam add_135_cout.INJECT1_1 = "NO";
    CCU2D add_135_6 (.A0(adc_c_7), .B0(n1388), .C0(adc_c_4), .D0(GND_net), 
          .A1(adc_c_5), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1467), 
          .COUT(n1468), .S0(n262), .S1(n298));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_135_6.INIT0 = 16'h7878;
    defparam add_135_6.INIT1 = 16'h5aaa;
    defparam add_135_6.INJECT1_0 = "NO";
    defparam add_135_6.INJECT1_1 = "NO";
    CCU2D clk_divide_counter_86_add_4_9 (.A0(clk_divide_counter[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1427), .S0(n38));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(35[35:60])
    defparam clk_divide_counter_86_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_divide_counter_86_add_4_9.INIT1 = 16'h0000;
    defparam clk_divide_counter_86_add_4_9.INJECT1_0 = "NO";
    defparam clk_divide_counter_86_add_4_9.INJECT1_1 = "NO";
    CCU2D add_135_4 (.A0(adc_c_6), .B0(n1380), .C0(GND_net), .D0(GND_net), 
          .A1(adc_c_7), .B1(n1388), .C1(GND_net), .D1(GND_net), .CIN(n1466), 
          .COUT(n1467), .S0(n200), .S1(n231));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_135_4.INIT0 = 16'h9666;
    defparam add_135_4.INIT1 = 16'h9666;
    defparam add_135_4.INJECT1_0 = "NO";
    defparam add_135_4.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_276_4 (.A0(n147), .B0(term_a1[2]), .C0(GND_net), 
          .D0(GND_net), .A1(n181), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1488), .COUT(n1489), .S0(n178), .S1(n212));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_276_4.INIT0 = 16'h5666;
    defparam x_d1_8__I_0_add_276_4.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_276_4.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_276_4.INJECT1_1 = "NO";
    CCU2D add_135_2 (.A0(adc_c_6), .B0(adc_c_4), .C0(GND_net), .D0(GND_net), 
          .A1(adc_c_7), .B1(adc_c_5), .C1(GND_net), .D1(GND_net), .COUT(n1466), 
          .S1(n169));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_135_2.INIT0 = 16'h7000;
    defparam add_135_2.INIT1 = 16'h9666;
    defparam add_135_2.INJECT1_0 = "NO";
    defparam add_135_2.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_275_6 (.A0(n212), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n246), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1484), .COUT(n1485), .S0(n243), .S1(n277));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_275_6.INIT0 = 16'h5aaa;
    defparam x_d1_8__I_0_add_275_6.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_275_6.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_275_6.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_277_6 (.A0(n218), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n252), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1494), .COUT(n1495), .S0(n249), .S1(n283_adj_1));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_277_6.INIT0 = 16'h5aaa;
    defparam x_d1_8__I_0_add_277_6.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_277_6.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_277_6.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_275_8 (.A0(n280), .B0(term_a1[1]), .C0(GND_net), 
          .D0(GND_net), .A1(n314), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1485), .COUT(n1486), .S0(n311), .S1(n347));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_275_8.INIT0 = 16'h5666;
    defparam x_d1_8__I_0_add_275_8.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_275_8.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_275_8.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_333_10 (.A0(y_d2[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(y_d2[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1663), .S0(term_b2[19]), .S1(term_b2[31]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_333_10.INIT0 = 16'h5aaa;
    defparam y_d2_8__I_0_add_333_10.INIT1 = 16'h5aaa;
    defparam y_d2_8__I_0_add_333_10.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_333_10.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_333_8 (.A0(n434), .B0(n431), .C0(GND_net), .D0(GND_net), 
          .A1(n1312), .B1(n435_adj_44), .C1(GND_net), .D1(GND_net), 
          .CIN(n1662), .COUT(n1663), .S0(term_b2[17]), .S1(term_b2[18]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_333_8.INIT0 = 16'h5666;
    defparam y_d2_8__I_0_add_333_8.INIT1 = 16'h5666;
    defparam y_d2_8__I_0_add_333_8.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_333_8.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_333_6 (.A0(n426), .B0(n423), .C0(GND_net), .D0(GND_net), 
          .A1(n430), .B1(n427), .C1(GND_net), .D1(GND_net), .CIN(n1661), 
          .COUT(n1662), .S0(term_b2[15]), .S1(term_b2[16]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_333_6.INIT0 = 16'h5666;
    defparam y_d2_8__I_0_add_333_6.INIT1 = 16'h5666;
    defparam y_d2_8__I_0_add_333_6.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_333_6.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_333_4 (.A0(n418), .B0(n415), .C0(GND_net), .D0(GND_net), 
          .A1(n422), .B1(n419), .C1(GND_net), .D1(GND_net), .CIN(n1660), 
          .COUT(n1661), .S0(term_b2[13]), .S1(term_b2[14]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_333_4.INIT0 = 16'h5666;
    defparam y_d2_8__I_0_add_333_4.INIT1 = 16'h5666;
    defparam y_d2_8__I_0_add_333_4.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_333_4.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_333_2 (.A0(n410_adj_43), .B0(y_d2[8]), .C0(GND_net), 
          .D0(GND_net), .A1(n414), .B1(n411), .C1(GND_net), .D1(GND_net), 
          .COUT(n1660), .S1(term_b2[12]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_333_2.INIT0 = 16'h7000;
    defparam y_d2_8__I_0_add_333_2.INIT1 = 16'h5666;
    defparam y_d2_8__I_0_add_333_2.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_333_2.INJECT1_1 = "NO";
    CCU2D add_198_21 (.A0(n1009), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1658), 
          .S0(n986));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_198_21.INIT0 = 16'h5aaa;
    defparam add_198_21.INIT1 = 16'h0000;
    defparam add_198_21.INJECT1_0 = "NO";
    defparam add_198_21.INJECT1_1 = "NO";
    CCU2D add_198_19 (.A0(n1011), .B0(n1330), .C0(GND_net), .D0(GND_net), 
          .A1(n1010), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1657), 
          .COUT(n1658), .S0(n988), .S1(n987));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_198_19.INIT0 = 16'h5666;
    defparam add_198_19.INIT1 = 16'h5aaa;
    defparam add_198_19.INJECT1_0 = "NO";
    defparam add_198_19.INJECT1_1 = "NO";
    CCU2D add_198_17 (.A0(n1013), .B0(n1315), .C0(GND_net), .D0(GND_net), 
          .A1(n1012), .B1(n1314), .C1(GND_net), .D1(GND_net), .CIN(n1656), 
          .COUT(n1657), .S0(n990), .S1(n989));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_198_17.INIT0 = 16'h5666;
    defparam add_198_17.INIT1 = 16'h5666;
    defparam add_198_17.INJECT1_0 = "NO";
    defparam add_198_17.INJECT1_1 = "NO";
    CCU2D add_198_15 (.A0(n1015), .B0(n1317), .C0(GND_net), .D0(GND_net), 
          .A1(n1014), .B1(n1316), .C1(GND_net), .D1(GND_net), .CIN(n1655), 
          .COUT(n1656), .S0(n992), .S1(n991));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_198_15.INIT0 = 16'h5666;
    defparam add_198_15.INIT1 = 16'h5666;
    defparam add_198_15.INJECT1_0 = "NO";
    defparam add_198_15.INJECT1_1 = "NO";
    CCU2D add_198_13 (.A0(n1017), .B0(n1319), .C0(GND_net), .D0(GND_net), 
          .A1(n1016), .B1(n1318), .C1(GND_net), .D1(GND_net), .CIN(n1654), 
          .COUT(n1655), .S0(n994), .S1(n993));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_198_13.INIT0 = 16'h5666;
    defparam add_198_13.INIT1 = 16'h5666;
    defparam add_198_13.INJECT1_0 = "NO";
    defparam add_198_13.INJECT1_1 = "NO";
    CCU2D add_198_11 (.A0(n1019), .B0(n1321), .C0(GND_net), .D0(GND_net), 
          .A1(n1018), .B1(n1320), .C1(GND_net), .D1(GND_net), .CIN(n1653), 
          .COUT(n1654), .S0(n996), .S1(n995));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_198_11.INIT0 = 16'h5666;
    defparam add_198_11.INIT1 = 16'h5666;
    defparam add_198_11.INJECT1_0 = "NO";
    defparam add_198_11.INJECT1_1 = "NO";
    CCU2D add_198_9 (.A0(n1021), .B0(n1323), .C0(GND_net), .D0(GND_net), 
          .A1(n1020), .B1(n1322), .C1(GND_net), .D1(GND_net), .CIN(n1652), 
          .COUT(n1653), .S0(n998), .S1(n997));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_198_9.INIT0 = 16'h5666;
    defparam add_198_9.INIT1 = 16'h5666;
    defparam add_198_9.INJECT1_0 = "NO";
    defparam add_198_9.INJECT1_1 = "NO";
    CCU2D add_198_7 (.A0(n1023), .B0(n1325), .C0(GND_net), .D0(GND_net), 
          .A1(n1022), .B1(n1324), .C1(GND_net), .D1(GND_net), .CIN(n1651), 
          .COUT(n1652), .S0(n1000), .S1(n999));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_198_7.INIT0 = 16'h5666;
    defparam add_198_7.INIT1 = 16'h5666;
    defparam add_198_7.INJECT1_0 = "NO";
    defparam add_198_7.INJECT1_1 = "NO";
    CCU2D add_198_5 (.A0(n1025), .B0(n1327), .C0(GND_net), .D0(GND_net), 
          .A1(n1024), .B1(n1326), .C1(GND_net), .D1(GND_net), .CIN(n1650), 
          .COUT(n1651), .S0(n1002), .S1(n1001));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_198_5.INIT0 = 16'h5666;
    defparam add_198_5.INIT1 = 16'h5666;
    defparam add_198_5.INJECT1_0 = "NO";
    defparam add_198_5.INJECT1_1 = "NO";
    CCU2D add_198_3 (.A0(term_a1[2]), .B0(term_a2[2]), .C0(n1027), .D0(GND_net), 
          .A1(n1026), .B1(n1328), .C1(GND_net), .D1(GND_net), .CIN(n1649), 
          .COUT(n1650), .S0(n1004), .S1(n1003));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_198_3.INIT0 = 16'h9696;
    defparam add_198_3.INIT1 = 16'h5666;
    defparam add_198_3.INJECT1_0 = "NO";
    defparam add_198_3.INJECT1_1 = "NO";
    CCU2D add_198_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(term_b1[1]), .B1(term_a1[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1649), .S1(n1005));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_198_1.INIT0 = 16'hF000;
    defparam add_198_1.INIT1 = 16'ha999;
    defparam add_198_1.INJECT1_0 = "NO";
    defparam add_198_1.INJECT1_1 = "NO";
    CCU2D add_202_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1648), 
          .S0(n1330));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_202_cout.INIT0 = 16'h0000;
    defparam add_202_cout.INIT1 = 16'h0000;
    defparam add_202_cout.INJECT1_0 = "NO";
    defparam add_202_cout.INJECT1_1 = "NO";
    CCU2D add_202_16 (.A0(term_a1[16]), .B0(term_a2[16]), .C0(GND_net), 
          .D0(GND_net), .A1(term_a1[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1647), .COUT(n1648), .S0(n1315), .S1(n1314));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_202_16.INIT0 = 16'h5666;
    defparam add_202_16.INIT1 = 16'h5aaa;
    defparam add_202_16.INJECT1_0 = "NO";
    defparam add_202_16.INJECT1_1 = "NO";
    CCU2D add_202_14 (.A0(term_a1[14]), .B0(term_a2[14]), .C0(GND_net), 
          .D0(GND_net), .A1(term_a1[15]), .B1(term_a2[15]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1646), .COUT(n1647), .S0(n1317), .S1(n1316));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_202_14.INIT0 = 16'h5666;
    defparam add_202_14.INIT1 = 16'h5666;
    defparam add_202_14.INJECT1_0 = "NO";
    defparam add_202_14.INJECT1_1 = "NO";
    CCU2D add_202_12 (.A0(term_a1[12]), .B0(term_a2[12]), .C0(GND_net), 
          .D0(GND_net), .A1(term_a1[13]), .B1(term_a2[13]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1645), .COUT(n1646), .S0(n1319), .S1(n1318));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_202_12.INIT0 = 16'h5666;
    defparam add_202_12.INIT1 = 16'h5666;
    defparam add_202_12.INJECT1_0 = "NO";
    defparam add_202_12.INJECT1_1 = "NO";
    CCU2D add_202_10 (.A0(n286_adj_25), .B0(n283_adj_24), .C0(term_a1[10]), 
          .D0(GND_net), .A1(n347), .B1(n344), .C1(term_a2[11]), .D1(GND_net), 
          .CIN(n1644), .COUT(n1645), .S0(n1321), .S1(n1320));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_202_10.INIT0 = 16'h9696;
    defparam add_202_10.INIT1 = 16'h9696;
    defparam add_202_10.INJECT1_0 = "NO";
    defparam add_202_10.INJECT1_1 = "NO";
    CCU2D add_202_8 (.A0(term_a1[8]), .B0(term_a2[8]), .C0(GND_net), .D0(GND_net), 
          .A1(term_a1[9]), .B1(term_a2[9]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1643), .COUT(n1644), .S0(n1323), .S1(n1322));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_202_8.INIT0 = 16'h5666;
    defparam add_202_8.INIT1 = 16'h5666;
    defparam add_202_8.INJECT1_0 = "NO";
    defparam add_202_8.INJECT1_1 = "NO";
    CCU2D add_202_6 (.A0(term_a1[6]), .B0(term_a2[6]), .C0(GND_net), .D0(GND_net), 
          .A1(term_a1[7]), .B1(term_a2[7]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1642), .COUT(n1643), .S0(n1325), .S1(n1324));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_202_6.INIT0 = 16'h5666;
    defparam add_202_6.INIT1 = 16'h5666;
    defparam add_202_6.INJECT1_0 = "NO";
    defparam add_202_6.INJECT1_1 = "NO";
    CCU2D add_202_4 (.A0(x_d2[2]), .B0(term_a2[2]), .C0(term_a1[4]), .D0(GND_net), 
          .A1(term_a1[5]), .B1(term_a2[5]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1641), .COUT(n1642), .S0(n1327), .S1(n1326));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_202_4.INIT0 = 16'h9696;
    defparam add_202_4.INIT1 = 16'h5666;
    defparam add_202_4.INJECT1_0 = "NO";
    defparam add_202_4.INJECT1_1 = "NO";
    CCU2D add_202_2 (.A0(term_a1[2]), .B0(term_a2[2]), .C0(GND_net), .D0(GND_net), 
          .A1(x_d1[3]), .B1(x_d1[0]), .C1(term_a2[3]), .D1(GND_net), 
          .COUT(n1641), .S1(n1328));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_202_2.INIT0 = 16'h7000;
    defparam add_202_2.INIT1 = 16'h9696;
    defparam add_202_2.INJECT1_0 = "NO";
    defparam add_202_2.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_328_12 (.A0(n1302), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1639), .S0(n434), .S1(n435_adj_44));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_328_12.INIT0 = 16'h5aaa;
    defparam y_d2_8__I_0_add_328_12.INIT1 = 16'h0000;
    defparam y_d2_8__I_0_add_328_12.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_328_12.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_328_10 (.A0(n1304), .B0(y_d2[6]), .C0(GND_net), 
          .D0(GND_net), .A1(n1303), .B1(y_d2[6]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1638), .COUT(n1639), .S0(n353), .S1(n390));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_328_10.INIT0 = 16'h5666;
    defparam y_d2_8__I_0_add_328_10.INIT1 = 16'h5666;
    defparam y_d2_8__I_0_add_328_10.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_328_10.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_328_8 (.A0(n1306), .B0(y_d2[6]), .C0(GND_net), 
          .D0(GND_net), .A1(n1305), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1637), .COUT(n1638), .S0(n279), .S1(n316));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_328_8.INIT0 = 16'h5666;
    defparam y_d2_8__I_0_add_328_8.INIT1 = 16'h5aaa;
    defparam y_d2_8__I_0_add_328_8.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_328_8.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_328_6 (.A0(n1308), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n1307), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1636), .COUT(n1637), .S0(n205), .S1(n242));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_328_6.INIT0 = 16'h5aaa;
    defparam y_d2_8__I_0_add_328_6.INIT1 = 16'h5aaa;
    defparam y_d2_8__I_0_add_328_6.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_328_6.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_328_4 (.A0(n1310), .B0(y_d2[6]), .C0(GND_net), 
          .D0(GND_net), .A1(n1309), .B1(y_d2[6]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1635), .COUT(n1636), .S0(n131), .S1(n168));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_328_4.INIT0 = 16'h5666;
    defparam y_d2_8__I_0_add_328_4.INIT1 = 16'h5666;
    defparam y_d2_8__I_0_add_328_4.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_328_4.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_328_2 (.A0(y_d2[7]), .B0(y_d2[6]), .C0(GND_net), 
          .D0(GND_net), .A1(y_d2[8]), .B1(y_d2[7]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1635), .S1(n94_adj_39));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_328_2.INIT0 = 16'h7000;
    defparam y_d2_8__I_0_add_328_2.INIT1 = 16'h9666;
    defparam y_d2_8__I_0_add_328_2.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_328_2.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_327_12 (.A0(n390), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1633), .S0(n430), .S1(n431));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_327_12.INIT0 = 16'h5aaa;
    defparam y_d2_8__I_0_add_327_12.INIT1 = 16'h0000;
    defparam y_d2_8__I_0_add_327_12.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_327_12.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_327_10 (.A0(n316), .B0(y_d2[5]), .C0(GND_net), 
          .D0(GND_net), .A1(n353), .B1(y_d2[5]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1632), .COUT(n1633), .S0(n350), .S1(n387));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_327_10.INIT0 = 16'h5666;
    defparam y_d2_8__I_0_add_327_10.INIT1 = 16'h5666;
    defparam y_d2_8__I_0_add_327_10.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_327_10.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_327_8 (.A0(n242), .B0(y_d2[5]), .C0(GND_net), 
          .D0(GND_net), .A1(n279), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1631), .COUT(n1632), .S0(n276), .S1(n313));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_327_8.INIT0 = 16'h5666;
    defparam y_d2_8__I_0_add_327_8.INIT1 = 16'h5aaa;
    defparam y_d2_8__I_0_add_327_8.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_327_8.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_327_6 (.A0(n168), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n205), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1630), .COUT(n1631), .S0(n202), .S1(n239));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_327_6.INIT0 = 16'h5aaa;
    defparam y_d2_8__I_0_add_327_6.INIT1 = 16'h5aaa;
    defparam y_d2_8__I_0_add_327_6.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_327_6.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_327_4 (.A0(n94_adj_39), .B0(y_d2[5]), .C0(GND_net), 
          .D0(GND_net), .A1(n131), .B1(y_d2[5]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1629), .COUT(n1630), .S0(n128), .S1(n165));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_327_4.INIT0 = 16'h5666;
    defparam y_d2_8__I_0_add_327_4.INIT1 = 16'h5666;
    defparam y_d2_8__I_0_add_327_4.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_327_4.INJECT1_1 = "NO";
    LUT4 i267_2_lut (.A(adc_c_3), .B(term_a0[3]), .Z(n129)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i267_2_lut.init = 16'h6666;
    CCU2D y_d2_8__I_0_add_327_2 (.A0(y_d2[6]), .B0(y_d2[5]), .C0(GND_net), 
          .D0(GND_net), .A1(n57), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1629), .S1(n91_adj_38));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_327_2.INIT0 = 16'h7000;
    defparam y_d2_8__I_0_add_327_2.INIT1 = 16'h5aaa;
    defparam y_d2_8__I_0_add_327_2.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_327_2.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_276_2 (.A0(x_d1[5]), .B0(term_a1[2]), .C0(GND_net), 
          .D0(GND_net), .A1(n113), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1488), .S1(n144));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_276_2.INIT0 = 16'h7000;
    defparam x_d1_8__I_0_add_276_2.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_276_2.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_276_2.INJECT1_1 = "NO";
    CCU2D add_134_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1464), 
          .S0(n295));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_134_cout.INIT0 = 16'h0000;
    defparam add_134_cout.INIT1 = 16'h0000;
    defparam add_134_cout.INJECT1_0 = "NO";
    defparam add_134_cout.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_326_12 (.A0(n387), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1627), .S0(n426), .S1(n427));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_326_12.INIT0 = 16'h5aaa;
    defparam y_d2_8__I_0_add_326_12.INIT1 = 16'h0000;
    defparam y_d2_8__I_0_add_326_12.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_326_12.INJECT1_1 = "NO";
    CCU2D add_134_6 (.A0(n231), .B0(adc_c_3), .C0(GND_net), .D0(GND_net), 
          .A1(n262), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1463), 
          .COUT(n1464), .S0(n259), .S1(n294));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_134_6.INIT0 = 16'h5666;
    defparam add_134_6.INIT1 = 16'h5aaa;
    defparam add_134_6.INJECT1_0 = "NO";
    defparam add_134_6.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_277_4 (.A0(n150), .B0(x_d1[3]), .C0(GND_net), 
          .D0(GND_net), .A1(n184), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1493), .COUT(n1494), .S0(n181), .S1(n215));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_277_4.INIT0 = 16'h5666;
    defparam x_d1_8__I_0_add_277_4.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_277_4.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_277_4.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_326_10 (.A0(n313), .B0(y_d2[4]), .C0(GND_net), 
          .D0(GND_net), .A1(n350), .B1(y_d2[4]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1626), .COUT(n1627), .S0(n347_adj_42), .S1(n384));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_326_10.INIT0 = 16'h5666;
    defparam y_d2_8__I_0_add_326_10.INIT1 = 16'h5666;
    defparam y_d2_8__I_0_add_326_10.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_326_10.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_326_8 (.A0(n239), .B0(y_d2[4]), .C0(GND_net), 
          .D0(GND_net), .A1(n276), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1625), .COUT(n1626), .S0(n273), .S1(n310));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_326_8.INIT0 = 16'h5666;
    defparam y_d2_8__I_0_add_326_8.INIT1 = 16'h5aaa;
    defparam y_d2_8__I_0_add_326_8.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_326_8.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_326_6 (.A0(n165), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n202), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1624), .COUT(n1625), .S0(n199), .S1(n236));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_326_6.INIT0 = 16'h5aaa;
    defparam y_d2_8__I_0_add_326_6.INIT1 = 16'h5aaa;
    defparam y_d2_8__I_0_add_326_6.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_326_6.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_326_4 (.A0(n91_adj_38), .B0(y_d2[4]), .C0(GND_net), 
          .D0(GND_net), .A1(n128), .B1(y_d2[4]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1623), .COUT(n1624), .S0(n125), .S1(n162));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_326_4.INIT0 = 16'h5666;
    defparam y_d2_8__I_0_add_326_4.INIT1 = 16'h5666;
    defparam y_d2_8__I_0_add_326_4.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_326_4.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_326_2 (.A0(y_d2[5]), .B0(y_d2[4]), .C0(GND_net), 
          .D0(GND_net), .A1(n54), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1623), .S1(n88));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_326_2.INIT0 = 16'h7000;
    defparam y_d2_8__I_0_add_326_2.INIT1 = 16'h5aaa;
    defparam y_d2_8__I_0_add_326_2.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_326_2.INJECT1_1 = "NO";
    LUT4 i326_4_lut (.A(clk_divide_counter[5]), .B(n10), .C(clk_divide_counter[1]), 
         .D(n1675), .Z(n1367)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(30[12:39])
    defparam i326_4_lut.init = 16'h1000;
    CCU2D y_d2_8__I_0_add_325_12 (.A0(n384), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1621), .S0(n422), .S1(n423));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_325_12.INIT0 = 16'h5aaa;
    defparam y_d2_8__I_0_add_325_12.INIT1 = 16'h0000;
    defparam y_d2_8__I_0_add_325_12.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_325_12.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_325_10 (.A0(n310), .B0(y_d2[3]), .C0(GND_net), 
          .D0(GND_net), .A1(n347_adj_42), .B1(y_d2[3]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1620), .COUT(n1621), .S0(n344_adj_41), 
          .S1(n381));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_325_10.INIT0 = 16'h5666;
    defparam y_d2_8__I_0_add_325_10.INIT1 = 16'h5666;
    defparam y_d2_8__I_0_add_325_10.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_325_10.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_325_8 (.A0(n236), .B0(y_d2[3]), .C0(GND_net), 
          .D0(GND_net), .A1(n273), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1619), .COUT(n1620), .S0(n270), .S1(n307));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_325_8.INIT0 = 16'h5666;
    defparam y_d2_8__I_0_add_325_8.INIT1 = 16'h5aaa;
    defparam y_d2_8__I_0_add_325_8.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_325_8.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_325_6 (.A0(n162), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n199), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1618), .COUT(n1619), .S0(n196), .S1(n233));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_325_6.INIT0 = 16'h5aaa;
    defparam y_d2_8__I_0_add_325_6.INIT1 = 16'h5aaa;
    defparam y_d2_8__I_0_add_325_6.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_325_6.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_325_4 (.A0(n88), .B0(y_d2[3]), .C0(GND_net), 
          .D0(GND_net), .A1(n125), .B1(y_d2[3]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1617), .COUT(n1618), .S0(n122), .S1(n159));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_325_4.INIT0 = 16'h5666;
    defparam y_d2_8__I_0_add_325_4.INIT1 = 16'h5666;
    defparam y_d2_8__I_0_add_325_4.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_325_4.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_325_2 (.A0(y_d2[4]), .B0(y_d2[3]), .C0(GND_net), 
          .D0(GND_net), .A1(n51), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1617), .S1(n85));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_325_2.INIT0 = 16'h7000;
    defparam y_d2_8__I_0_add_325_2.INIT1 = 16'h5aaa;
    defparam y_d2_8__I_0_add_325_2.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_325_2.INJECT1_1 = "NO";
    LUT4 i4_4_lut (.A(clk_divide_counter[7]), .B(clk_divide_counter[6]), 
         .C(clk_divide_counter[4]), .D(clk_divide_counter[2]), .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    CCU2D y_d2_8__I_0_add_324_12 (.A0(n381), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1615), .S0(n418), .S1(n419));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_324_12.INIT0 = 16'h5aaa;
    defparam y_d2_8__I_0_add_324_12.INIT1 = 16'h0000;
    defparam y_d2_8__I_0_add_324_12.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_324_12.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_324_10 (.A0(n307), .B0(y_d2[2]), .C0(GND_net), 
          .D0(GND_net), .A1(n344_adj_41), .B1(y_d2[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1614), .COUT(n1615), .S0(n341), .S1(n378));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_324_10.INIT0 = 16'h5666;
    defparam y_d2_8__I_0_add_324_10.INIT1 = 16'h5666;
    defparam y_d2_8__I_0_add_324_10.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_324_10.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_324_8 (.A0(n233), .B0(y_d2[2]), .C0(GND_net), 
          .D0(GND_net), .A1(n270), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1613), .COUT(n1614), .S0(n267), .S1(n304));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_324_8.INIT0 = 16'h5666;
    defparam y_d2_8__I_0_add_324_8.INIT1 = 16'h5aaa;
    defparam y_d2_8__I_0_add_324_8.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_324_8.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_324_6 (.A0(n159), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n196), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1612), .COUT(n1613), .S0(n193), .S1(n230));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_324_6.INIT0 = 16'h5aaa;
    defparam y_d2_8__I_0_add_324_6.INIT1 = 16'h5aaa;
    defparam y_d2_8__I_0_add_324_6.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_324_6.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_324_4 (.A0(n85), .B0(y_d2[2]), .C0(GND_net), 
          .D0(GND_net), .A1(n122), .B1(y_d2[2]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1611), .COUT(n1612), .S0(n119), .S1(n156));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_324_4.INIT0 = 16'h5666;
    defparam y_d2_8__I_0_add_324_4.INIT1 = 16'h5666;
    defparam y_d2_8__I_0_add_324_4.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_324_4.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_324_2 (.A0(y_d2[3]), .B0(y_d2[2]), .C0(GND_net), 
          .D0(GND_net), .A1(n48), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1611), .S1(n82));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_324_2.INIT0 = 16'h7000;
    defparam y_d2_8__I_0_add_324_2.INIT1 = 16'h5aaa;
    defparam y_d2_8__I_0_add_324_2.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_324_2.INJECT1_1 = "NO";
    LUT4 i274_2_lut (.A(x_d1[4]), .B(term_a1[1]), .Z(n107)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i274_2_lut.init = 16'h6666;
    CCU2D y_d2_8__I_0_add_323_12 (.A0(n378), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1609), .S0(n414), .S1(n415));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_323_12.INIT0 = 16'h5aaa;
    defparam y_d2_8__I_0_add_323_12.INIT1 = 16'h0000;
    defparam y_d2_8__I_0_add_323_12.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_323_12.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_323_10 (.A0(n304), .B0(y_d2[1]), .C0(GND_net), 
          .D0(GND_net), .A1(n341), .B1(y_d2[1]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1608), .COUT(n1609), .S0(n338), .S1(n375));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_323_10.INIT0 = 16'h5666;
    defparam y_d2_8__I_0_add_323_10.INIT1 = 16'h5666;
    defparam y_d2_8__I_0_add_323_10.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_323_10.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_323_8 (.A0(n230), .B0(y_d2[1]), .C0(GND_net), 
          .D0(GND_net), .A1(n267), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1607), .COUT(n1608), .S0(n264), .S1(n301));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_323_8.INIT0 = 16'h5666;
    defparam y_d2_8__I_0_add_323_8.INIT1 = 16'h5aaa;
    defparam y_d2_8__I_0_add_323_8.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_323_8.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_323_6 (.A0(n156), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n193), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1606), .COUT(n1607), .S0(n190), .S1(n227));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_323_6.INIT0 = 16'h5aaa;
    defparam y_d2_8__I_0_add_323_6.INIT1 = 16'h5aaa;
    defparam y_d2_8__I_0_add_323_6.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_323_6.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_323_4 (.A0(n82), .B0(y_d2[1]), .C0(GND_net), 
          .D0(GND_net), .A1(n119), .B1(y_d2[1]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1605), .COUT(n1606), .S0(n116_adj_40), .S1(n153));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_323_4.INIT0 = 16'h5666;
    defparam y_d2_8__I_0_add_323_4.INIT1 = 16'h5666;
    defparam y_d2_8__I_0_add_323_4.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_323_4.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_323_2 (.A0(y_d2[2]), .B0(y_d2[1]), .C0(GND_net), 
          .D0(GND_net), .A1(n45_adj_37), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1605), .S1(n79));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_323_2.INIT0 = 16'h7000;
    defparam y_d2_8__I_0_add_323_2.INIT1 = 16'h5aaa;
    defparam y_d2_8__I_0_add_323_2.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_323_2.INJECT1_1 = "NO";
    LUT4 i2_3_lut (.A(adc_c_5), .B(adc_c_6), .C(adc_c_7), .Z(n1388)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam i2_3_lut.init = 16'h8080;
    CCU2D y_d2_8__I_0_add_322_12 (.A0(n375), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1603), .S0(n410_adj_43), .S1(n411));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_322_12.INIT0 = 16'h5aaa;
    defparam y_d2_8__I_0_add_322_12.INIT1 = 16'h0000;
    defparam y_d2_8__I_0_add_322_12.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_322_12.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_322_10 (.A0(n301), .B0(y_d2[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n338), .B1(y_d2[0]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1602), .COUT(n1603), .S0(term_b2[9]), .S1(term_b2[10]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_322_10.INIT0 = 16'h5666;
    defparam y_d2_8__I_0_add_322_10.INIT1 = 16'h5666;
    defparam y_d2_8__I_0_add_322_10.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_322_10.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_322_8 (.A0(n227), .B0(y_d2[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n264), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1601), .COUT(n1602), .S0(term_b2[7]), .S1(term_b2[8]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_322_8.INIT0 = 16'h5666;
    defparam y_d2_8__I_0_add_322_8.INIT1 = 16'h5aaa;
    defparam y_d2_8__I_0_add_322_8.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_322_8.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_322_6 (.A0(n153), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n190), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1600), .COUT(n1601), .S0(term_b2[5]), .S1(term_b2[6]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_322_6.INIT0 = 16'h5aaa;
    defparam y_d2_8__I_0_add_322_6.INIT1 = 16'h5aaa;
    defparam y_d2_8__I_0_add_322_6.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_322_6.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_322_4 (.A0(n79), .B0(y_d2[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n116_adj_40), .B1(y_d2[0]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1599), .COUT(n1600), .S0(term_b2[3]), 
          .S1(term_b2[4]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_322_4.INIT0 = 16'h5666;
    defparam y_d2_8__I_0_add_322_4.INIT1 = 16'h5666;
    defparam y_d2_8__I_0_add_322_4.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_322_4.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_322_2 (.A0(y_d2[1]), .B0(y_d2[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n42_adj_36), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1599), .S1(term_b2[2]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_322_2.INIT0 = 16'h7000;
    defparam y_d2_8__I_0_add_322_2.INIT1 = 16'h5aaa;
    defparam y_d2_8__I_0_add_322_2.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_322_2.INJECT1_1 = "NO";
    LUT4 i225_2_lut (.A(adc_c_7), .B(adc_c_5), .Z(n1380)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam i225_2_lut.init = 16'h8888;
    CCU2D add_125_8 (.A0(n586), .B0(n583), .C0(GND_net), .D0(GND_net), 
          .A1(n590), .B1(n587), .C1(GND_net), .D1(GND_net), .CIN(n1596), 
          .S0(term_b1[19]), .S1(term_b1[20]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_125_8.INIT0 = 16'h5666;
    defparam add_125_8.INIT1 = 16'h5666;
    defparam add_125_8.INJECT1_0 = "NO";
    defparam add_125_8.INJECT1_1 = "NO";
    CCU2D add_125_6 (.A0(n578), .B0(n575), .C0(GND_net), .D0(GND_net), 
          .A1(n582), .B1(n579), .C1(GND_net), .D1(GND_net), .CIN(n1595), 
          .COUT(n1596), .S0(term_b1[17]), .S1(term_b1[18]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_125_6.INIT0 = 16'h5666;
    defparam add_125_6.INIT1 = 16'h5666;
    defparam add_125_6.INJECT1_0 = "NO";
    defparam add_125_6.INJECT1_1 = "NO";
    CCU2D add_125_4 (.A0(n570), .B0(n567), .C0(GND_net), .D0(GND_net), 
          .A1(n574), .B1(n571), .C1(GND_net), .D1(GND_net), .CIN(n1594), 
          .COUT(n1595), .S0(term_b1[15]), .S1(term_b1[16]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_125_4.INIT0 = 16'h5666;
    defparam add_125_4.INIT1 = 16'h5666;
    defparam add_125_4.INJECT1_0 = "NO";
    defparam add_125_4.INJECT1_1 = "NO";
    CCU2D add_125_2 (.A0(n562), .B0(y_d1[8]), .C0(GND_net), .D0(GND_net), 
          .A1(n566), .B1(n563), .C1(GND_net), .D1(GND_net), .COUT(n1594), 
          .S1(term_b1[14]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_125_2.INIT0 = 16'h1000;
    defparam add_125_2.INIT1 = 16'h5666;
    defparam add_125_2.INJECT1_0 = "NO";
    defparam add_125_2.INJECT1_1 = "NO";
    LUT4 i302_2_lut (.A(y_d2[7]), .B(y_d2[6]), .Z(n57)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i302_2_lut.init = 16'h6666;
    CCU2D add_201_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1591), 
          .S0(n1312));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_201_cout.INIT0 = 16'h0000;
    defparam add_201_cout.INIT1 = 16'h0000;
    defparam add_201_cout.INJECT1_0 = "NO";
    defparam add_201_cout.INJECT1_1 = "NO";
    CCU2D add_201_10 (.A0(y_d2[8]), .B0(y_d2[7]), .C0(GND_net), .D0(GND_net), 
          .A1(y_d2[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1590), 
          .COUT(n1591), .S0(n1303), .S1(n1302));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_201_10.INIT0 = 16'h5666;
    defparam add_201_10.INIT1 = 16'hfaaa;
    defparam add_201_10.INJECT1_0 = "NO";
    defparam add_201_10.INJECT1_1 = "NO";
    CCU2D add_201_8 (.A0(y_d2[8]), .B0(y_d2[7]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1589), 
          .COUT(n1590), .S0(n1305), .S1(n1304));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_201_8.INIT0 = 16'h5666;
    defparam add_201_8.INIT1 = 16'hf000;
    defparam add_201_8.INJECT1_0 = "NO";
    defparam add_201_8.INJECT1_1 = "NO";
    CCU2D add_201_6 (.A0(y_d2[8]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1588), 
          .COUT(n1589), .S0(n1307), .S1(n1306));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_201_6.INIT0 = 16'h5aaa;
    defparam add_201_6.INIT1 = 16'hf000;
    defparam add_201_6.INJECT1_0 = "NO";
    defparam add_201_6.INJECT1_1 = "NO";
    CCU2D add_201_4 (.A0(y_d2[8]), .B0(y_d2[7]), .C0(GND_net), .D0(GND_net), 
          .A1(y_d2[8]), .B1(y_d2[7]), .C1(GND_net), .D1(GND_net), .CIN(n1587), 
          .COUT(n1588), .S0(n1309), .S1(n1308));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_201_4.INIT0 = 16'h5666;
    defparam add_201_4.INIT1 = 16'h5666;
    defparam add_201_4.INJECT1_0 = "NO";
    defparam add_201_4.INJECT1_1 = "NO";
    CCU2D add_201_2 (.A0(y_d2[8]), .B0(y_d2[7]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1587), 
          .S1(n1310));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_201_2.INIT0 = 16'h7000;
    defparam add_201_2.INIT1 = 16'hf000;
    defparam add_201_2.INJECT1_0 = "NO";
    defparam add_201_2.INJECT1_1 = "NO";
    LUT4 i328_2_lut (.A(dac_clk_c), .B(n1367), .Z(clk_c_enable_34)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam i328_2_lut.init = 16'h4444;
    CCU2D add_160_12 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(y_d1[8]), .B1(y_d1[7]), .C1(GND_net), .D1(GND_net), .CIN(n1584), 
          .S0(n539), .S1(n590));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_160_12.INIT0 = 16'hf000;
    defparam add_160_12.INIT1 = 16'h5999;
    defparam add_160_12.INJECT1_0 = "NO";
    defparam add_160_12.INJECT1_1 = "NO";
    CCU2D add_160_10 (.A0(y_d1[8]), .B0(y_d1[7]), .C0(GND_net), .D0(GND_net), 
          .A1(y_d1[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1583), 
          .COUT(n1584), .S0(n453), .S1(n496));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_160_10.INIT0 = 16'h5666;
    defparam add_160_10.INIT1 = 16'hfaaa;
    defparam add_160_10.INJECT1_0 = "NO";
    defparam add_160_10.INJECT1_1 = "NO";
    CCU2D add_160_8 (.A0(y_d1[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1582), 
          .COUT(n1583), .S0(n367), .S1(n410));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_160_8.INIT0 = 16'hfaaa;
    defparam add_160_8.INIT1 = 16'hf000;
    defparam add_160_8.INJECT1_0 = "NO";
    defparam add_160_8.INJECT1_1 = "NO";
    CCU2D add_160_6 (.A0(y_d1[8]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(y_d1[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1581), 
          .COUT(n1582), .S0(n281), .S1(n324));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_160_6.INIT0 = 16'h5aaa;
    defparam add_160_6.INIT1 = 16'hfaaa;
    defparam add_160_6.INJECT1_0 = "NO";
    defparam add_160_6.INJECT1_1 = "NO";
    CCU2D add_160_4 (.A0(y_d1[8]), .B0(y_d1[7]), .C0(GND_net), .D0(GND_net), 
          .A1(y_d1[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1580), 
          .COUT(n1581), .S0(n195), .S1(n238));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_160_4.INIT0 = 16'h5666;
    defparam add_160_4.INIT1 = 16'hfaaa;
    defparam add_160_4.INJECT1_0 = "NO";
    defparam add_160_4.INJECT1_1 = "NO";
    CCU2D add_160_2 (.A0(y_d1[8]), .B0(y_d1[7]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1580), 
          .S1(n152));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_160_2.INIT0 = 16'h7000;
    defparam add_160_2.INIT1 = 16'hf000;
    defparam add_160_2.INJECT1_0 = "NO";
    defparam add_160_2.INJECT1_1 = "NO";
    LUT4 i276_2_lut (.A(x_d1[6]), .B(x_d1[3]), .Z(n113)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i276_2_lut.init = 16'h6666;
    CCU2D add_159_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1578), 
          .S0(n587));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_159_cout.INIT0 = 16'h0000;
    defparam add_159_cout.INIT1 = 16'h0000;
    defparam add_159_cout.INJECT1_0 = "NO";
    defparam add_159_cout.INJECT1_1 = "NO";
    CCU2D add_159_12 (.A0(n496), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n539), .B1(y_d1[6]), .C1(GND_net), .D1(GND_net), .CIN(n1577), 
          .COUT(n1578), .S0(n536), .S1(n586));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_159_12.INIT0 = 16'h5aaa;
    defparam add_159_12.INIT1 = 16'h5999;
    defparam add_159_12.INJECT1_0 = "NO";
    defparam add_159_12.INJECT1_1 = "NO";
    CCU2D add_159_10 (.A0(n410), .B0(y_d1[6]), .C0(GND_net), .D0(GND_net), 
          .A1(n453), .B1(y_d1[6]), .C1(GND_net), .D1(GND_net), .CIN(n1576), 
          .COUT(n1577), .S0(n450), .S1(n493));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_159_10.INIT0 = 16'h5666;
    defparam add_159_10.INIT1 = 16'h5666;
    defparam add_159_10.INJECT1_0 = "NO";
    defparam add_159_10.INJECT1_1 = "NO";
    CCU2D add_159_8 (.A0(n324), .B0(y_d1[6]), .C0(GND_net), .D0(GND_net), 
          .A1(n367), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1575), 
          .COUT(n1576), .S0(n364_adj_35), .S1(n407));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_159_8.INIT0 = 16'h5666;
    defparam add_159_8.INIT1 = 16'h5aaa;
    defparam add_159_8.INJECT1_0 = "NO";
    defparam add_159_8.INJECT1_1 = "NO";
    CCU2D add_159_6 (.A0(n238), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n281), .B1(y_d1[6]), .C1(GND_net), .D1(GND_net), .CIN(n1574), 
          .COUT(n1575), .S0(n278), .S1(n321));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_159_6.INIT0 = 16'h5aaa;
    defparam add_159_6.INIT1 = 16'h5666;
    defparam add_159_6.INJECT1_0 = "NO";
    defparam add_159_6.INJECT1_1 = "NO";
    CCU2D add_159_4 (.A0(n152), .B0(y_d1[6]), .C0(GND_net), .D0(GND_net), 
          .A1(n195), .B1(y_d1[6]), .C1(GND_net), .D1(GND_net), .CIN(n1573), 
          .COUT(n1574), .S0(n192), .S1(n235));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_159_4.INIT0 = 16'h5666;
    defparam add_159_4.INIT1 = 16'h5666;
    defparam add_159_4.INJECT1_0 = "NO";
    defparam add_159_4.INJECT1_1 = "NO";
    CCU2D add_159_2 (.A0(y_d1[7]), .B0(y_d1[6]), .C0(GND_net), .D0(GND_net), 
          .A1(n109), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1573), 
          .S1(n149));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_159_2.INIT0 = 16'h7000;
    defparam add_159_2.INIT1 = 16'h5aaa;
    defparam add_159_2.INJECT1_0 = "NO";
    defparam add_159_2.INJECT1_1 = "NO";
    LUT4 i316_2_lut (.A(clk_divide_counter[3]), .B(clk_divide_counter[0]), 
         .Z(n1675)) /* synthesis lut_function=(A (B)) */ ;
    defparam i316_2_lut.init = 16'h8888;
    CCU2D add_158_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1571), 
          .S0(n583));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_158_cout.INIT0 = 16'h0000;
    defparam add_158_cout.INIT1 = 16'h0000;
    defparam add_158_cout.INJECT1_0 = "NO";
    defparam add_158_cout.INJECT1_1 = "NO";
    CCU2D add_158_12 (.A0(n493), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n536), .B1(y_d1[5]), .C1(GND_net), .D1(GND_net), .CIN(n1570), 
          .COUT(n1571), .S0(n533), .S1(n582));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_158_12.INIT0 = 16'h5aaa;
    defparam add_158_12.INIT1 = 16'h5999;
    defparam add_158_12.INJECT1_0 = "NO";
    defparam add_158_12.INJECT1_1 = "NO";
    CCU2D add_158_10 (.A0(n407), .B0(y_d1[5]), .C0(GND_net), .D0(GND_net), 
          .A1(n450), .B1(y_d1[5]), .C1(GND_net), .D1(GND_net), .CIN(n1569), 
          .COUT(n1570), .S0(n447), .S1(n490));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_158_10.INIT0 = 16'h5666;
    defparam add_158_10.INIT1 = 16'h5666;
    defparam add_158_10.INJECT1_0 = "NO";
    defparam add_158_10.INJECT1_1 = "NO";
    CCU2D add_158_8 (.A0(n321), .B0(y_d1[5]), .C0(GND_net), .D0(GND_net), 
          .A1(n364_adj_35), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1568), .COUT(n1569), .S0(n361), .S1(n404));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_158_8.INIT0 = 16'h5666;
    defparam add_158_8.INIT1 = 16'h5aaa;
    defparam add_158_8.INJECT1_0 = "NO";
    defparam add_158_8.INJECT1_1 = "NO";
    CCU2D add_158_6 (.A0(n235), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n278), .B1(y_d1[5]), .C1(GND_net), .D1(GND_net), .CIN(n1567), 
          .COUT(n1568), .S0(n275), .S1(n318));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_158_6.INIT0 = 16'h5aaa;
    defparam add_158_6.INIT1 = 16'h5666;
    defparam add_158_6.INJECT1_0 = "NO";
    defparam add_158_6.INJECT1_1 = "NO";
    CCU2D add_158_4 (.A0(n149), .B0(y_d1[5]), .C0(GND_net), .D0(GND_net), 
          .A1(n192), .B1(y_d1[5]), .C1(GND_net), .D1(GND_net), .CIN(n1566), 
          .COUT(n1567), .S0(n189), .S1(n232));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_158_4.INIT0 = 16'h5666;
    defparam add_158_4.INIT1 = 16'h5666;
    defparam add_158_4.INJECT1_0 = "NO";
    defparam add_158_4.INJECT1_1 = "NO";
    CCU2D add_158_2 (.A0(y_d1[6]), .B0(y_d1[5]), .C0(GND_net), .D0(GND_net), 
          .A1(n106), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1566), 
          .S1(n146));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_158_2.INIT0 = 16'h7000;
    defparam add_158_2.INIT1 = 16'h5aaa;
    defparam add_158_2.INJECT1_0 = "NO";
    defparam add_158_2.INJECT1_1 = "NO";
    LUT4 i301_2_lut (.A(y_d2[6]), .B(y_d2[5]), .Z(n54)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i301_2_lut.init = 16'h6666;
    CCU2D add_157_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1564), 
          .S0(n579));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_157_cout.INIT0 = 16'h0000;
    defparam add_157_cout.INIT1 = 16'h0000;
    defparam add_157_cout.INJECT1_0 = "NO";
    defparam add_157_cout.INJECT1_1 = "NO";
    CCU2D add_157_12 (.A0(n490), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n533), .B1(y_d1[4]), .C1(GND_net), .D1(GND_net), .CIN(n1563), 
          .COUT(n1564), .S0(n530), .S1(n578));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_157_12.INIT0 = 16'h5aaa;
    defparam add_157_12.INIT1 = 16'h5999;
    defparam add_157_12.INJECT1_0 = "NO";
    defparam add_157_12.INJECT1_1 = "NO";
    CCU2D add_157_10 (.A0(n404), .B0(y_d1[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n447), .B1(y_d1[4]), .C1(GND_net), .D1(GND_net), .CIN(n1562), 
          .COUT(n1563), .S0(n444), .S1(n487));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_157_10.INIT0 = 16'h5666;
    defparam add_157_10.INIT1 = 16'h5666;
    defparam add_157_10.INJECT1_0 = "NO";
    defparam add_157_10.INJECT1_1 = "NO";
    CCU2D add_157_8 (.A0(n318), .B0(y_d1[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n361), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1561), 
          .COUT(n1562), .S0(n358), .S1(n401));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_157_8.INIT0 = 16'h5666;
    defparam add_157_8.INIT1 = 16'h5aaa;
    defparam add_157_8.INJECT1_0 = "NO";
    defparam add_157_8.INJECT1_1 = "NO";
    CCU2D add_157_6 (.A0(n232), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n275), .B1(y_d1[4]), .C1(GND_net), .D1(GND_net), .CIN(n1560), 
          .COUT(n1561), .S0(n272), .S1(n315));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_157_6.INIT0 = 16'h5aaa;
    defparam add_157_6.INIT1 = 16'h5666;
    defparam add_157_6.INJECT1_0 = "NO";
    defparam add_157_6.INJECT1_1 = "NO";
    CCU2D add_157_4 (.A0(n146), .B0(y_d1[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n189), .B1(y_d1[4]), .C1(GND_net), .D1(GND_net), .CIN(n1559), 
          .COUT(n1560), .S0(n186), .S1(n229));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_157_4.INIT0 = 16'h5666;
    defparam add_157_4.INIT1 = 16'h5666;
    defparam add_157_4.INJECT1_0 = "NO";
    defparam add_157_4.INJECT1_1 = "NO";
    CCU2D add_157_2 (.A0(y_d1[5]), .B0(y_d1[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n103), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1559), 
          .S1(n143));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_157_2.INIT0 = 16'h7000;
    defparam add_157_2.INIT1 = 16'h5aaa;
    defparam add_157_2.INJECT1_0 = "NO";
    defparam add_157_2.INJECT1_1 = "NO";
    LUT4 i300_2_lut (.A(y_d2[5]), .B(y_d2[4]), .Z(n51)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i300_2_lut.init = 16'h6666;
    CCU2D add_156_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1557), 
          .S0(n575));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_156_cout.INIT0 = 16'h0000;
    defparam add_156_cout.INIT1 = 16'h0000;
    defparam add_156_cout.INJECT1_0 = "NO";
    defparam add_156_cout.INJECT1_1 = "NO";
    CCU2D add_156_12 (.A0(n487), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n530), .B1(y_d1[3]), .C1(GND_net), .D1(GND_net), .CIN(n1556), 
          .COUT(n1557), .S0(n527), .S1(n574));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_156_12.INIT0 = 16'h5aaa;
    defparam add_156_12.INIT1 = 16'h5999;
    defparam add_156_12.INJECT1_0 = "NO";
    defparam add_156_12.INJECT1_1 = "NO";
    CCU2D add_156_10 (.A0(n401), .B0(y_d1[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n444), .B1(y_d1[3]), .C1(GND_net), .D1(GND_net), .CIN(n1555), 
          .COUT(n1556), .S0(n441), .S1(n484));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_156_10.INIT0 = 16'h5666;
    defparam add_156_10.INIT1 = 16'h5666;
    defparam add_156_10.INJECT1_0 = "NO";
    defparam add_156_10.INJECT1_1 = "NO";
    CCU2D add_156_8 (.A0(n315), .B0(y_d1[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n358), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1554), 
          .COUT(n1555), .S0(n355_adj_34), .S1(n398));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_156_8.INIT0 = 16'h5666;
    defparam add_156_8.INIT1 = 16'h5aaa;
    defparam add_156_8.INJECT1_0 = "NO";
    defparam add_156_8.INJECT1_1 = "NO";
    CCU2D add_156_6 (.A0(n229), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n272), .B1(y_d1[3]), .C1(GND_net), .D1(GND_net), .CIN(n1553), 
          .COUT(n1554), .S0(n269), .S1(n312));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_156_6.INIT0 = 16'h5aaa;
    defparam add_156_6.INIT1 = 16'h5666;
    defparam add_156_6.INJECT1_0 = "NO";
    defparam add_156_6.INJECT1_1 = "NO";
    CCU2D add_156_4 (.A0(n143), .B0(y_d1[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n186), .B1(y_d1[3]), .C1(GND_net), .D1(GND_net), .CIN(n1552), 
          .COUT(n1553), .S0(n183), .S1(n226));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_156_4.INIT0 = 16'h5666;
    defparam add_156_4.INIT1 = 16'h5666;
    defparam add_156_4.INJECT1_0 = "NO";
    defparam add_156_4.INJECT1_1 = "NO";
    CCU2D add_156_2 (.A0(y_d1[4]), .B0(y_d1[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n100), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1552), 
          .S1(n140));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_156_2.INIT0 = 16'h7000;
    defparam add_156_2.INIT1 = 16'h5aaa;
    defparam add_156_2.INJECT1_0 = "NO";
    defparam add_156_2.INJECT1_1 = "NO";
    LUT4 i299_2_lut (.A(y_d2[4]), .B(y_d2[3]), .Z(n48)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i299_2_lut.init = 16'h6666;
    CCU2D add_155_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1550), 
          .S0(n571));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_155_cout.INIT0 = 16'h0000;
    defparam add_155_cout.INIT1 = 16'h0000;
    defparam add_155_cout.INJECT1_0 = "NO";
    defparam add_155_cout.INJECT1_1 = "NO";
    CCU2D add_155_12 (.A0(n484), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n527), .B1(y_d1[2]), .C1(GND_net), .D1(GND_net), .CIN(n1549), 
          .COUT(n1550), .S0(n524), .S1(n570));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_155_12.INIT0 = 16'h5aaa;
    defparam add_155_12.INIT1 = 16'h5999;
    defparam add_155_12.INJECT1_0 = "NO";
    defparam add_155_12.INJECT1_1 = "NO";
    CCU2D add_155_10 (.A0(n398), .B0(y_d1[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n441), .B1(y_d1[2]), .C1(GND_net), .D1(GND_net), .CIN(n1548), 
          .COUT(n1549), .S0(n438), .S1(n481));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_155_10.INIT0 = 16'h5666;
    defparam add_155_10.INIT1 = 16'h5666;
    defparam add_155_10.INJECT1_0 = "NO";
    defparam add_155_10.INJECT1_1 = "NO";
    CCU2D add_155_8 (.A0(n312), .B0(y_d1[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n355_adj_34), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1547), .COUT(n1548), .S0(n352_adj_33), .S1(n395));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_155_8.INIT0 = 16'h5666;
    defparam add_155_8.INIT1 = 16'h5aaa;
    defparam add_155_8.INJECT1_0 = "NO";
    defparam add_155_8.INJECT1_1 = "NO";
    CCU2D add_155_6 (.A0(n226), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n269), .B1(y_d1[2]), .C1(GND_net), .D1(GND_net), .CIN(n1546), 
          .COUT(n1547), .S0(n266), .S1(n309));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_155_6.INIT0 = 16'h5aaa;
    defparam add_155_6.INIT1 = 16'h5666;
    defparam add_155_6.INJECT1_0 = "NO";
    defparam add_155_6.INJECT1_1 = "NO";
    CCU2D add_155_4 (.A0(n140), .B0(y_d1[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n183), .B1(y_d1[2]), .C1(GND_net), .D1(GND_net), .CIN(n1545), 
          .COUT(n1546), .S0(n180), .S1(n223));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_155_4.INIT0 = 16'h5666;
    defparam add_155_4.INIT1 = 16'h5666;
    defparam add_155_4.INJECT1_0 = "NO";
    defparam add_155_4.INJECT1_1 = "NO";
    CCU2D add_155_2 (.A0(y_d1[3]), .B0(y_d1[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n97), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1545), 
          .S1(n137));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_155_2.INIT0 = 16'h7000;
    defparam add_155_2.INIT1 = 16'h5aaa;
    defparam add_155_2.INJECT1_0 = "NO";
    defparam add_155_2.INJECT1_1 = "NO";
    LUT4 i298_2_lut (.A(y_d2[3]), .B(y_d2[2]), .Z(n45_adj_37)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i298_2_lut.init = 16'h6666;
    CCU2D add_154_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1543), 
          .S0(n567));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_154_cout.INIT0 = 16'h0000;
    defparam add_154_cout.INIT1 = 16'h0000;
    defparam add_154_cout.INJECT1_0 = "NO";
    defparam add_154_cout.INJECT1_1 = "NO";
    CCU2D add_154_12 (.A0(n481), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n524), .B1(y_d1[1]), .C1(GND_net), .D1(GND_net), .CIN(n1542), 
          .COUT(n1543), .S0(n521), .S1(n566));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_154_12.INIT0 = 16'h5aaa;
    defparam add_154_12.INIT1 = 16'h5999;
    defparam add_154_12.INJECT1_0 = "NO";
    defparam add_154_12.INJECT1_1 = "NO";
    CCU2D add_154_10 (.A0(n395), .B0(y_d1[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n438), .B1(y_d1[1]), .C1(GND_net), .D1(GND_net), .CIN(n1541), 
          .COUT(n1542), .S0(n435), .S1(n478));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_154_10.INIT0 = 16'h5666;
    defparam add_154_10.INIT1 = 16'h5666;
    defparam add_154_10.INJECT1_0 = "NO";
    defparam add_154_10.INJECT1_1 = "NO";
    CCU2D add_154_8 (.A0(n309), .B0(y_d1[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n352_adj_33), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1540), .COUT(n1541), .S0(n349), .S1(n392));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_154_8.INIT0 = 16'h5666;
    defparam add_154_8.INIT1 = 16'h5aaa;
    defparam add_154_8.INJECT1_0 = "NO";
    defparam add_154_8.INJECT1_1 = "NO";
    CCU2D add_154_6 (.A0(n223), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n266), .B1(y_d1[1]), .C1(GND_net), .D1(GND_net), .CIN(n1539), 
          .COUT(n1540), .S0(n263), .S1(n306));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_154_6.INIT0 = 16'h5aaa;
    defparam add_154_6.INIT1 = 16'h5666;
    defparam add_154_6.INJECT1_0 = "NO";
    defparam add_154_6.INJECT1_1 = "NO";
    CCU2D add_154_4 (.A0(n137), .B0(y_d1[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n180), .B1(y_d1[1]), .C1(GND_net), .D1(GND_net), .CIN(n1538), 
          .COUT(n1539), .S0(n177), .S1(n220));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_154_4.INIT0 = 16'h5666;
    defparam add_154_4.INIT1 = 16'h5666;
    defparam add_154_4.INJECT1_0 = "NO";
    defparam add_154_4.INJECT1_1 = "NO";
    CCU2D add_154_2 (.A0(y_d1[2]), .B0(y_d1[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n94), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1538), 
          .S1(n134));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_154_2.INIT0 = 16'h7000;
    defparam add_154_2.INIT1 = 16'h5aaa;
    defparam add_154_2.INJECT1_0 = "NO";
    defparam add_154_2.INJECT1_1 = "NO";
    LUT4 i297_2_lut (.A(y_d2[2]), .B(y_d2[1]), .Z(n42_adj_36)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i297_2_lut.init = 16'h6666;
    CCU2D add_153_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1536), 
          .S0(n563));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_153_cout.INIT0 = 16'h0000;
    defparam add_153_cout.INIT1 = 16'h0000;
    defparam add_153_cout.INJECT1_0 = "NO";
    defparam add_153_cout.INJECT1_1 = "NO";
    CCU2D add_153_12 (.A0(n478), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n521), .B1(term_b1[1]), .C1(GND_net), .D1(GND_net), .CIN(n1535), 
          .COUT(n1536), .S0(term_b1[12]), .S1(n562));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_153_12.INIT0 = 16'h5aaa;
    defparam add_153_12.INIT1 = 16'h5999;
    defparam add_153_12.INJECT1_0 = "NO";
    defparam add_153_12.INJECT1_1 = "NO";
    CCU2D add_153_10 (.A0(n392), .B0(term_b1[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n435), .B1(term_b1[1]), .C1(GND_net), .D1(GND_net), .CIN(n1534), 
          .COUT(n1535), .S0(term_b1[10]), .S1(term_b1[11]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_153_10.INIT0 = 16'h5666;
    defparam add_153_10.INIT1 = 16'h5666;
    defparam add_153_10.INJECT1_0 = "NO";
    defparam add_153_10.INJECT1_1 = "NO";
    CCU2D add_153_8 (.A0(n306), .B0(term_b1[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n349), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1533), 
          .COUT(n1534), .S0(term_b1[8]), .S1(term_b1[9]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_153_8.INIT0 = 16'h5666;
    defparam add_153_8.INIT1 = 16'h5aaa;
    defparam add_153_8.INJECT1_0 = "NO";
    defparam add_153_8.INJECT1_1 = "NO";
    CCU2D add_153_6 (.A0(n220), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n263), .B1(term_b1[1]), .C1(GND_net), .D1(GND_net), .CIN(n1532), 
          .COUT(n1533), .S0(term_b1[6]), .S1(term_b1[7]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_153_6.INIT0 = 16'h5aaa;
    defparam add_153_6.INIT1 = 16'h5666;
    defparam add_153_6.INJECT1_0 = "NO";
    defparam add_153_6.INJECT1_1 = "NO";
    CCU2D add_153_4 (.A0(n134), .B0(term_b1[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n177), .B1(term_b1[1]), .C1(GND_net), .D1(GND_net), .CIN(n1531), 
          .COUT(n1532), .S0(term_b1[4]), .S1(term_b1[5]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_153_4.INIT0 = 16'h5666;
    defparam add_153_4.INIT1 = 16'h5666;
    defparam add_153_4.INJECT1_0 = "NO";
    defparam add_153_4.INJECT1_1 = "NO";
    CCU2D add_153_2 (.A0(y_d1[1]), .B0(term_b1[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n91), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1531), 
          .S1(term_b1[3]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_153_2.INIT0 = 16'h7000;
    defparam add_153_2.INIT1 = 16'h5aaa;
    defparam add_153_2.INJECT1_0 = "NO";
    defparam add_153_2.INJECT1_1 = "NO";
    LUT4 i292_2_lut (.A(y_d1[8]), .B(y_d1[7]), .Z(n109)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i292_2_lut.init = 16'h6666;
    CCU2D add_150_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1529), 
          .S0(n303));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_150_cout.INIT0 = 16'h0000;
    defparam add_150_cout.INIT1 = 16'h0000;
    defparam add_150_cout.INJECT1_0 = "NO";
    defparam add_150_cout.INJECT1_1 = "NO";
    CCU2D add_150_6 (.A0(x_d2[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(x_d2[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1528), 
          .COUT(n1529));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_150_6.INIT0 = 16'hfaaa;
    defparam add_150_6.INIT1 = 16'h5aaa;
    defparam add_150_6.INJECT1_0 = "NO";
    defparam add_150_6.INJECT1_1 = "NO";
    CCU2D add_150_4 (.A0(x_d2[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1527), 
          .COUT(n1528), .S0(n203), .S1(n234));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_150_4.INIT0 = 16'h5aaa;
    defparam add_150_4.INIT1 = 16'hf000;
    defparam add_150_4.INJECT1_0 = "NO";
    defparam add_150_4.INJECT1_1 = "NO";
    CCU2D add_150_2 (.A0(x_d2[7]), .B0(x_d2[5]), .C0(GND_net), .D0(GND_net), 
          .A1(x_d2[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1527), 
          .S1(n172));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_150_2.INIT0 = 16'h7000;
    defparam add_150_2.INIT1 = 16'h5aaa;
    defparam add_150_2.INJECT1_0 = "NO";
    defparam add_150_2.INJECT1_1 = "NO";
    LUT4 i291_2_lut (.A(y_d1[7]), .B(y_d1[6]), .Z(n106)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i291_2_lut.init = 16'h6666;
    CCU2D add_149_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1525), 
          .S0(n299_adj_32));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_149_cout.INIT0 = 16'h0000;
    defparam add_149_cout.INIT1 = 16'h0000;
    defparam add_149_cout.INJECT1_0 = "NO";
    defparam add_149_cout.INJECT1_1 = "NO";
    CCU2D add_149_6 (.A0(n234), .B0(x_d2[4]), .C0(GND_net), .D0(GND_net), 
          .A1(x_d2[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1524), 
          .COUT(n1525), .S0(n262_adj_23), .S1(n298_adj_31));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_149_6.INIT0 = 16'h5666;
    defparam add_149_6.INIT1 = 16'h5aaa;
    defparam add_149_6.INJECT1_0 = "NO";
    defparam add_149_6.INJECT1_1 = "NO";
    CCU2D add_149_4 (.A0(n172), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n203), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1523), 
          .COUT(n1524), .S0(n200_adj_15), .S1(n231_adj_19));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_149_4.INIT0 = 16'h5aaa;
    defparam add_149_4.INIT1 = 16'h5aaa;
    defparam add_149_4.INJECT1_0 = "NO";
    defparam add_149_4.INJECT1_1 = "NO";
    CCU2D add_149_2 (.A0(x_d2[6]), .B0(x_d2[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n141_adj_7), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1523), .S1(n169_adj_11));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_149_2.INIT0 = 16'h7000;
    defparam add_149_2.INIT1 = 16'h5aaa;
    defparam add_149_2.INJECT1_0 = "NO";
    defparam add_149_2.INJECT1_1 = "NO";
    LUT4 i290_2_lut (.A(y_d1[6]), .B(y_d1[5]), .Z(n103)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i290_2_lut.init = 16'h6666;
    CCU2D add_148_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1521), 
          .S0(n295_adj_30));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_148_cout.INIT0 = 16'h0000;
    defparam add_148_cout.INIT1 = 16'h0000;
    defparam add_148_cout.INJECT1_0 = "NO";
    defparam add_148_cout.INJECT1_1 = "NO";
    CCU2D add_148_6 (.A0(n231_adj_19), .B0(x_d2[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n262_adj_23), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1520), .COUT(n1521), .S0(n259_adj_22), .S1(n294_adj_29));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_148_6.INIT0 = 16'h5666;
    defparam add_148_6.INIT1 = 16'h5aaa;
    defparam add_148_6.INJECT1_0 = "NO";
    defparam add_148_6.INJECT1_1 = "NO";
    CCU2D add_148_4 (.A0(n169_adj_11), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n200_adj_15), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1519), .COUT(n1520), .S0(n197_adj_14), .S1(n228_adj_18));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_148_4.INIT0 = 16'h5aaa;
    defparam add_148_4.INIT1 = 16'h5aaa;
    defparam add_148_4.INJECT1_0 = "NO";
    defparam add_148_4.INJECT1_1 = "NO";
    CCU2D add_148_2 (.A0(x_d2[5]), .B0(x_d2[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n138_adj_6), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1519), .S1(n166_adj_10));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_148_2.INIT0 = 16'h7000;
    defparam add_148_2.INIT1 = 16'h5aaa;
    defparam add_148_2.INJECT1_0 = "NO";
    defparam add_148_2.INJECT1_1 = "NO";
    LUT4 i289_2_lut (.A(y_d1[5]), .B(y_d1[4]), .Z(n100)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i289_2_lut.init = 16'h6666;
    CCU2D add_147_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1517), 
          .S0(n291_adj_28));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_147_cout.INIT0 = 16'h0000;
    defparam add_147_cout.INIT1 = 16'h0000;
    defparam add_147_cout.INJECT1_0 = "NO";
    defparam add_147_cout.INJECT1_1 = "NO";
    CCU2D add_147_6 (.A0(n228_adj_18), .B0(x_d2[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n259_adj_22), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1516), .COUT(n1517), .S0(n256_adj_21), .S1(n290_adj_27));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_147_6.INIT0 = 16'h5666;
    defparam add_147_6.INIT1 = 16'h5aaa;
    defparam add_147_6.INJECT1_0 = "NO";
    defparam add_147_6.INJECT1_1 = "NO";
    CCU2D add_147_4 (.A0(n166_adj_10), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n197_adj_14), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1515), .COUT(n1516), .S0(n194_adj_13), .S1(n225_adj_17));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_147_4.INIT0 = 16'h5aaa;
    defparam add_147_4.INIT1 = 16'h5aaa;
    defparam add_147_4.INJECT1_0 = "NO";
    defparam add_147_4.INJECT1_1 = "NO";
    CCU2D add_147_2 (.A0(x_d2[4]), .B0(x_d2[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n135_adj_5), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1515), .S1(n163_adj_9));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_147_2.INIT0 = 16'h7000;
    defparam add_147_2.INIT1 = 16'h5aaa;
    defparam add_147_2.INJECT1_0 = "NO";
    defparam add_147_2.INJECT1_1 = "NO";
    LUT4 i288_2_lut (.A(y_d1[4]), .B(y_d1[3]), .Z(n97)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i288_2_lut.init = 16'h6666;
    CCU2D add_146_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1513), 
          .S0(n287_adj_26));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_146_cout.INIT0 = 16'h0000;
    defparam add_146_cout.INIT1 = 16'h0000;
    defparam add_146_cout.INJECT1_0 = "NO";
    defparam add_146_cout.INJECT1_1 = "NO";
    CCU2D add_146_6 (.A0(n225_adj_17), .B0(term_a2[3]), .C0(GND_net), 
          .D0(GND_net), .A1(n256_adj_21), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1512), .COUT(n1513), .S0(n253_adj_20), 
          .S1(n286_adj_25));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_146_6.INIT0 = 16'h5666;
    defparam add_146_6.INIT1 = 16'h5aaa;
    defparam add_146_6.INJECT1_0 = "NO";
    defparam add_146_6.INJECT1_1 = "NO";
    CCU2D add_146_4 (.A0(n163_adj_9), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n194_adj_13), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1511), .COUT(n1512), .S0(n191_adj_12), .S1(n222_adj_16));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_146_4.INIT0 = 16'h5aaa;
    defparam add_146_4.INIT1 = 16'h5aaa;
    defparam add_146_4.INJECT1_0 = "NO";
    defparam add_146_4.INJECT1_1 = "NO";
    CCU2D add_146_2 (.A0(x_d2[3]), .B0(term_a2[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n132_adj_4), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1511), .S1(n160_adj_8));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_146_2.INIT0 = 16'h7000;
    defparam add_146_2.INIT1 = 16'h5aaa;
    defparam add_146_2.INJECT1_0 = "NO";
    defparam add_146_2.INJECT1_1 = "NO";
    LUT4 i287_2_lut (.A(y_d1[3]), .B(y_d1[2]), .Z(n94)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i287_2_lut.init = 16'h6666;
    CCU2D add_145_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1509), 
          .S0(n283_adj_24));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_145_cout.INIT0 = 16'h0000;
    defparam add_145_cout.INIT1 = 16'h0000;
    defparam add_145_cout.INJECT1_0 = "NO";
    defparam add_145_cout.INJECT1_1 = "NO";
    CCU2D add_145_6 (.A0(n222_adj_16), .B0(term_a2[2]), .C0(GND_net), 
          .D0(GND_net), .A1(n253_adj_20), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1508), .COUT(n1509), .S0(term_a2[8]), 
          .S1(term_a2[9]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_145_6.INIT0 = 16'h5666;
    defparam add_145_6.INIT1 = 16'h5aaa;
    defparam add_145_6.INJECT1_0 = "NO";
    defparam add_145_6.INJECT1_1 = "NO";
    CCU2D add_145_4 (.A0(n160_adj_8), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n191_adj_12), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1507), .COUT(n1508), .S0(term_a2[6]), .S1(term_a2[7]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_145_4.INIT0 = 16'h5aaa;
    defparam add_145_4.INIT1 = 16'h5aaa;
    defparam add_145_4.INJECT1_0 = "NO";
    defparam add_145_4.INJECT1_1 = "NO";
    CCU2D add_145_2 (.A0(x_d2[2]), .B0(term_a2[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n129_adj_3), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1507), .S1(term_a2[5]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_145_2.INIT0 = 16'h7000;
    defparam add_145_2.INIT1 = 16'h5aaa;
    defparam add_145_2.INJECT1_0 = "NO";
    defparam add_145_2.INJECT1_1 = "NO";
    LUT4 i286_2_lut (.A(y_d1[2]), .B(y_d1[1]), .Z(n91)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i286_2_lut.init = 16'h6666;
    CCU2D add_221_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1505), 
          .S0(term_a2[16]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_221_cout.INIT0 = 16'h0000;
    defparam add_221_cout.INIT1 = 16'h0000;
    defparam add_221_cout.INJECT1_0 = "NO";
    defparam add_221_cout.INJECT1_1 = "NO";
    CCU2D add_221_6 (.A0(x_d2[6]), .B0(n299_adj_32), .C0(GND_net), .D0(GND_net), 
          .A1(x_d2[7]), .B1(n303), .C1(GND_net), .D1(GND_net), .CIN(n1504), 
          .COUT(n1505), .S0(term_a2[14]), .S1(term_a2[15]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_221_6.INIT0 = 16'h5666;
    defparam add_221_6.INIT1 = 16'h5666;
    defparam add_221_6.INJECT1_0 = "NO";
    defparam add_221_6.INJECT1_1 = "NO";
    CCU2D add_221_4 (.A0(n294_adj_29), .B0(n291_adj_28), .C0(GND_net), 
          .D0(GND_net), .A1(n298_adj_31), .B1(n295_adj_30), .C1(GND_net), 
          .D1(GND_net), .CIN(n1503), .COUT(n1504), .S0(term_a2[12]), 
          .S1(term_a2[13]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_221_4.INIT0 = 16'h5666;
    defparam add_221_4.INIT1 = 16'h5666;
    defparam add_221_4.INJECT1_0 = "NO";
    defparam add_221_4.INJECT1_1 = "NO";
    CCU2D add_134_4 (.A0(n169), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n200), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1462), 
          .COUT(n1463), .S0(n197), .S1(n228));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_134_4.INIT0 = 16'h5aaa;
    defparam add_134_4.INIT1 = 16'h5aaa;
    defparam add_134_4.INJECT1_0 = "NO";
    defparam add_134_4.INJECT1_1 = "NO";
    CCU2D add_221_2 (.A0(n286_adj_25), .B0(n283_adj_24), .C0(GND_net), 
          .D0(GND_net), .A1(n290_adj_27), .B1(n287_adj_26), .C1(GND_net), 
          .D1(GND_net), .COUT(n1503), .S1(term_a2[11]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_221_2.INIT0 = 16'h7000;
    defparam add_221_2.INIT1 = 16'h5666;
    defparam add_221_2.INJECT1_0 = "NO";
    defparam add_221_2.INJECT1_1 = "NO";
    CCU2D add_134_2 (.A0(adc_c_5), .B0(adc_c_3), .C0(GND_net), .D0(GND_net), 
          .A1(n138), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1462), 
          .S1(n166));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_134_2.INIT0 = 16'h7000;
    defparam add_134_2.INIT1 = 16'h5aaa;
    defparam add_134_2.INJECT1_0 = "NO";
    defparam add_134_2.INJECT1_1 = "NO";
    LUT4 i268_2_lut (.A(adc_c_4), .B(adc_c_2), .Z(n132)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i268_2_lut.init = 16'h6666;
    LUT4 i284_2_lut (.A(x_d2[7]), .B(x_d2[5]), .Z(n141_adj_7)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i284_2_lut.init = 16'h6666;
    CCU2D x_d1_8__I_0_add_278_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1501), .S0(n360));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_278_cout.INIT0 = 16'h0000;
    defparam x_d1_8__I_0_add_278_cout.INIT1 = 16'h0000;
    defparam x_d1_8__I_0_add_278_cout.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_278_cout.INJECT1_1 = "NO";
    CCU2D add_133_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1460), 
          .S0(n291));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_133_cout.INIT0 = 16'h0000;
    defparam add_133_cout.INIT1 = 16'h0000;
    defparam add_133_cout.INJECT1_0 = "NO";
    defparam add_133_cout.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_278_8 (.A0(n289), .B0(x_d1[4]), .C0(GND_net), 
          .D0(GND_net), .A1(x_d1[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1500), .COUT(n1501), .S0(n320), .S1(n359));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_278_8.INIT0 = 16'h5666;
    defparam x_d1_8__I_0_add_278_8.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_278_8.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_278_8.INJECT1_1 = "NO";
    CCU2D add_133_6 (.A0(n228), .B0(adc_c_2), .C0(GND_net), .D0(GND_net), 
          .A1(n259), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1459), 
          .COUT(n1460), .S0(n256), .S1(n290));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_133_6.INIT0 = 16'h5666;
    defparam add_133_6.INIT1 = 16'h5aaa;
    defparam add_133_6.INJECT1_0 = "NO";
    defparam add_133_6.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_278_6 (.A0(n221), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n255), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1499), .COUT(n1500), .S0(n252), .S1(n286_adj_2));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_278_6.INIT0 = 16'h5aaa;
    defparam x_d1_8__I_0_add_278_6.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_278_6.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_278_6.INJECT1_1 = "NO";
    CCU2D add_133_4 (.A0(n166), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n197), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1458), 
          .COUT(n1459), .S0(n194), .S1(n225));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_133_4.INIT0 = 16'h5aaa;
    defparam add_133_4.INIT1 = 16'h5aaa;
    defparam add_133_4.INJECT1_0 = "NO";
    defparam add_133_4.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_278_4 (.A0(x_d1[6]), .B0(x_d1[4]), .C0(GND_net), 
          .D0(GND_net), .A1(x_d1[7]), .B1(x_d1[5]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1498), .COUT(n1499), .S0(n184), .S1(n218));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_278_4.INIT0 = 16'h5666;
    defparam x_d1_8__I_0_add_278_4.INIT1 = 16'h9666;
    defparam x_d1_8__I_0_add_278_4.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_278_4.INJECT1_1 = "NO";
    CCU2D add_133_2 (.A0(adc_c_4), .B0(adc_c_2), .C0(GND_net), .D0(GND_net), 
          .A1(n135), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1458), 
          .S1(n163));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_133_2.INIT0 = 16'h7000;
    defparam add_133_2.INIT1 = 16'h5aaa;
    defparam add_133_2.INJECT1_0 = "NO";
    defparam add_133_2.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_278_2 (.A0(x_d1[7]), .B0(x_d1[4]), .C0(GND_net), 
          .D0(GND_net), .A1(x_d1[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1498), .S1(n150));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_278_2.INIT0 = 16'h7000;
    defparam x_d1_8__I_0_add_278_2.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_278_2.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_278_2.INJECT1_1 = "NO";
    FD1S3IX clk_divide_counter_86__i0 (.D(n45), .CK(clk_c), .CD(n1367), 
            .Q(clk_divide_counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(35[35:60])
    defparam clk_divide_counter_86__i0.GSR = "ENABLED";
    LUT4 i283_2_lut (.A(x_d2[6]), .B(x_d2[4]), .Z(n138_adj_6)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i283_2_lut.init = 16'h6666;
    FD1P3AX y_d1_i0_i0 (.D(dac_c_0), .SP(clk_c_enable_34), .CK(clk_c), 
            .Q(term_b1[1]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d1_i0_i0.GSR = "ENABLED";
    CCU2D x_d1_8__I_0_add_277_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1496), .S0(n356));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_277_cout.INIT0 = 16'h0000;
    defparam x_d1_8__I_0_add_277_cout.INIT1 = 16'h0000;
    defparam x_d1_8__I_0_add_277_cout.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_277_cout.INJECT1_1 = "NO";
    LUT4 i282_2_lut (.A(x_d2[5]), .B(x_d2[3]), .Z(n135_adj_5)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i282_2_lut.init = 16'h6666;
    CCU2D x_d1_8__I_0_add_277_2 (.A0(x_d1[6]), .B0(x_d1[3]), .C0(GND_net), 
          .D0(GND_net), .A1(n116), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1493), .S1(n147));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_277_2.INIT0 = 16'h7000;
    defparam x_d1_8__I_0_add_277_2.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_277_2.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_277_2.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_277_8 (.A0(n286_adj_2), .B0(x_d1[3]), .C0(GND_net), 
          .D0(GND_net), .A1(n320), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1495), .COUT(n1496), .S0(n317), .S1(n355));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_277_8.INIT0 = 16'h5666;
    defparam x_d1_8__I_0_add_277_8.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_277_8.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_277_8.INJECT1_1 = "NO";
    FD1P3AX y_d1_i0_i2 (.D(dac_c_2), .SP(clk_c_enable_34), .CK(clk_c), 
            .Q(y_d1[2]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d1_i0_i2.GSR = "ENABLED";
    FD1P3AX y_d1_i0_i3 (.D(dac_c_3), .SP(clk_c_enable_34), .CK(clk_c), 
            .Q(y_d1[3]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d1_i0_i3.GSR = "ENABLED";
    FD1P3AX y_d1_i0_i4 (.D(dac_c_4), .SP(clk_c_enable_34), .CK(clk_c), 
            .Q(y_d1[4]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d1_i0_i4.GSR = "ENABLED";
    FD1P3AX y_d1_i0_i5 (.D(dac_c_5), .SP(clk_c_enable_34), .CK(clk_c), 
            .Q(y_d1[5]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d1_i0_i5.GSR = "ENABLED";
    FD1P3AX y_d1_i0_i6 (.D(dac_c_6), .SP(clk_c_enable_34), .CK(clk_c), 
            .Q(y_d1[6]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d1_i0_i6.GSR = "ENABLED";
    FD1P3AX y_d1_i0_i7 (.D(dac_c_7), .SP(clk_c_enable_34), .CK(clk_c), 
            .Q(y_d1[7]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d1_i0_i7.GSR = "ENABLED";
    FD1P3AX y_d1_i0_i8 (.D(y_full[20]), .SP(clk_c_enable_34), .CK(clk_c), 
            .Q(y_d1[8]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d1_i0_i8.GSR = "ENABLED";
    FD1P3AX y_d2_i0_i1 (.D(y_d1[1]), .SP(clk_c_enable_34), .CK(clk_c), 
            .Q(y_d2[1]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_i0_i1.GSR = "ENABLED";
    FD1P3AX y_d2_i0_i2 (.D(y_d1[2]), .SP(clk_c_enable_34), .CK(clk_c), 
            .Q(y_d2[2]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_i0_i2.GSR = "ENABLED";
    FD1P3AX y_d2_i0_i3 (.D(y_d1[3]), .SP(clk_c_enable_34), .CK(clk_c), 
            .Q(y_d2[3]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_i0_i3.GSR = "ENABLED";
    FD1P3AX y_d2_i0_i4 (.D(y_d1[4]), .SP(clk_c_enable_34), .CK(clk_c), 
            .Q(y_d2[4]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_i0_i4.GSR = "ENABLED";
    FD1P3AX y_d2_i0_i5 (.D(y_d1[5]), .SP(clk_c_enable_34), .CK(clk_c), 
            .Q(y_d2[5]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_i0_i5.GSR = "ENABLED";
    FD1P3AX y_d2_i0_i6 (.D(y_d1[6]), .SP(clk_c_enable_34), .CK(clk_c), 
            .Q(y_d2[6]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_i0_i6.GSR = "ENABLED";
    FD1P3AX y_d2_i0_i7 (.D(y_d1[7]), .SP(clk_c_enable_34), .CK(clk_c), 
            .Q(y_d2[7]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_i0_i7.GSR = "ENABLED";
    FD1P3AX y_d2_i0_i8 (.D(y_d1[8]), .SP(clk_c_enable_34), .CK(clk_c), 
            .Q(y_d2[8]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_i0_i8.GSR = "ENABLED";
    FD1P3AX x_d1__i2 (.D(term_a0[3]), .SP(clk_c_enable_34), .CK(clk_c), 
            .Q(term_a1[1]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1__i2.GSR = "ENABLED";
    FD1P3AX x_d1__i3 (.D(adc_c_2), .SP(clk_c_enable_34), .CK(clk_c), .Q(term_a1[2]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1__i3.GSR = "ENABLED";
    FD1P3AX x_d1__i4 (.D(adc_c_3), .SP(clk_c_enable_34), .CK(clk_c), .Q(x_d1[3]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1__i4.GSR = "ENABLED";
    FD1P3AX x_d1__i5 (.D(adc_c_4), .SP(clk_c_enable_34), .CK(clk_c), .Q(x_d1[4]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1__i5.GSR = "ENABLED";
    FD1P3AX x_d1__i6 (.D(adc_c_5), .SP(clk_c_enable_34), .CK(clk_c), .Q(x_d1[5]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1__i6.GSR = "ENABLED";
    FD1P3AX x_d1__i7 (.D(adc_c_6), .SP(clk_c_enable_34), .CK(clk_c), .Q(x_d1[6]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1__i7.GSR = "ENABLED";
    FD1P3AX x_d1__i8 (.D(adc_c_7), .SP(clk_c_enable_34), .CK(clk_c), .Q(x_d1[7]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1__i8.GSR = "ENABLED";
    FD1S3IX clk_divide_counter_86__i1 (.D(n44), .CK(clk_c), .CD(n1367), 
            .Q(clk_divide_counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(35[35:60])
    defparam clk_divide_counter_86__i1.GSR = "ENABLED";
    CCU2D add_100_19 (.A0(n989), .B0(term_b2[17]), .C0(GND_net), .D0(GND_net), 
          .A1(n988), .B1(term_b2[18]), .C1(GND_net), .D1(GND_net), .CIN(n1450), 
          .COUT(n1451), .S0(dac_c_5), .S1(dac_c_6));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_100_19.INIT0 = 16'h5999;
    defparam add_100_19.INIT1 = 16'h5999;
    defparam add_100_19.INJECT1_0 = "NO";
    defparam add_100_19.INJECT1_1 = "NO";
    CCU2D add_100_17 (.A0(n991), .B0(term_b2[15]), .C0(GND_net), .D0(GND_net), 
          .A1(n990), .B1(term_b2[16]), .C1(GND_net), .D1(GND_net), .CIN(n1449), 
          .COUT(n1450), .S0(dac_c_3), .S1(dac_c_4));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_100_17.INIT0 = 16'h5999;
    defparam add_100_17.INIT1 = 16'h5999;
    defparam add_100_17.INJECT1_0 = "NO";
    defparam add_100_17.INJECT1_1 = "NO";
    CCU2D add_100_15 (.A0(n993), .B0(term_b2[13]), .C0(GND_net), .D0(GND_net), 
          .A1(n992), .B1(term_b2[14]), .C1(GND_net), .D1(GND_net), .CIN(n1448), 
          .COUT(n1449), .S0(dac_c_1), .S1(dac_c_2));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_100_15.INIT0 = 16'h5999;
    defparam add_100_15.INIT1 = 16'h5999;
    defparam add_100_15.INJECT1_0 = "NO";
    defparam add_100_15.INJECT1_1 = "NO";
    CCU2D add_100_13 (.A0(n995), .B0(term_b2[11]), .C0(GND_net), .D0(GND_net), 
          .A1(n994), .B1(term_b2[12]), .C1(GND_net), .D1(GND_net), .CIN(n1447), 
          .COUT(n1448), .S1(dac_c_0));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_100_13.INIT0 = 16'h5999;
    defparam add_100_13.INIT1 = 16'h5999;
    defparam add_100_13.INJECT1_0 = "NO";
    defparam add_100_13.INJECT1_1 = "NO";
    CCU2D add_100_11 (.A0(n997), .B0(term_b2[9]), .C0(GND_net), .D0(GND_net), 
          .A1(n996), .B1(term_b2[10]), .C1(GND_net), .D1(GND_net), .CIN(n1446), 
          .COUT(n1447));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_100_11.INIT0 = 16'h5999;
    defparam add_100_11.INIT1 = 16'h5999;
    defparam add_100_11.INJECT1_0 = "NO";
    defparam add_100_11.INJECT1_1 = "NO";
    CCU2D add_100_9 (.A0(n999), .B0(term_b2[7]), .C0(GND_net), .D0(GND_net), 
          .A1(n998), .B1(term_b2[8]), .C1(GND_net), .D1(GND_net), .CIN(n1445), 
          .COUT(n1446));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_100_9.INIT0 = 16'h5999;
    defparam add_100_9.INIT1 = 16'h5999;
    defparam add_100_9.INJECT1_0 = "NO";
    defparam add_100_9.INJECT1_1 = "NO";
    CCU2D add_100_7 (.A0(n1001), .B0(term_b2[5]), .C0(GND_net), .D0(GND_net), 
          .A1(n1000), .B1(term_b2[6]), .C1(GND_net), .D1(GND_net), .CIN(n1444), 
          .COUT(n1445));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_100_7.INIT0 = 16'h5999;
    defparam add_100_7.INIT1 = 16'h5999;
    defparam add_100_7.INJECT1_0 = "NO";
    defparam add_100_7.INJECT1_1 = "NO";
    CCU2D add_100_5 (.A0(n1003), .B0(term_b2[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n1002), .B1(term_b2[4]), .C1(GND_net), .D1(GND_net), .CIN(n1443), 
          .COUT(n1444));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_100_5.INIT0 = 16'h5999;
    defparam add_100_5.INIT1 = 16'h5999;
    defparam add_100_5.INJECT1_0 = "NO";
    defparam add_100_5.INJECT1_1 = "NO";
    CCU2D add_100_3 (.A0(n1005), .B0(term_b2[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n1004), .B1(term_b2[2]), .C1(GND_net), .D1(GND_net), .CIN(n1442), 
          .COUT(n1443));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_100_3.INIT0 = 16'h5999;
    defparam add_100_3.INIT1 = 16'h5999;
    defparam add_100_3.INJECT1_0 = "NO";
    defparam add_100_3.INJECT1_1 = "NO";
    CCU2D add_100_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(x_d1[0]), .B1(y_d2[0]), .C1(GND_net), .D1(GND_net), .COUT(n1442));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_100_1.INIT0 = 16'h0000;
    defparam add_100_1.INIT1 = 16'h5999;
    defparam add_100_1.INJECT1_0 = "NO";
    defparam add_100_1.INJECT1_1 = "NO";
    CCU2D add_103_19 (.A0(term_b1[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(term_b1[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1440), .S0(n1010), .S1(n1009));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_103_19.INIT0 = 16'ha555;
    defparam add_103_19.INIT1 = 16'ha555;
    defparam add_103_19.INJECT1_0 = "NO";
    defparam add_103_19.INJECT1_1 = "NO";
    CCU2D add_103_17 (.A0(term_b1[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(term_b1[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1439), .COUT(n1440), .S0(n1012), .S1(n1011));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_103_17.INIT0 = 16'ha555;
    defparam add_103_17.INIT1 = 16'ha555;
    defparam add_103_17.INJECT1_0 = "NO";
    defparam add_103_17.INJECT1_1 = "NO";
    CCU2D add_103_15 (.A0(term_b1[15]), .B0(term_a0[15]), .C0(GND_net), 
          .D0(GND_net), .A1(term_b1[16]), .B1(term_a0[16]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1438), .COUT(n1439), .S0(n1014), .S1(n1013));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_103_15.INIT0 = 16'ha999;
    defparam add_103_15.INIT1 = 16'ha999;
    defparam add_103_15.INJECT1_0 = "NO";
    defparam add_103_15.INJECT1_1 = "NO";
    CCU2D add_103_13 (.A0(term_b1[13]), .B0(term_a0[13]), .C0(GND_net), 
          .D0(GND_net), .A1(term_b1[14]), .B1(term_a0[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1437), .COUT(n1438), .S0(n1016), .S1(n1015));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_103_13.INIT0 = 16'ha999;
    defparam add_103_13.INIT1 = 16'ha999;
    defparam add_103_13.INJECT1_0 = "NO";
    defparam add_103_13.INJECT1_1 = "NO";
    CCU2D add_103_11 (.A0(term_b1[11]), .B0(term_a0[11]), .C0(GND_net), 
          .D0(GND_net), .A1(term_b1[12]), .B1(term_a0[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1436), .COUT(n1437), .S0(n1018), .S1(n1017));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_103_11.INIT0 = 16'ha999;
    defparam add_103_11.INIT1 = 16'ha999;
    defparam add_103_11.INJECT1_0 = "NO";
    defparam add_103_11.INJECT1_1 = "NO";
    CCU2D add_103_9 (.A0(term_b1[9]), .B0(term_a0[9]), .C0(GND_net), .D0(GND_net), 
          .A1(n286), .B1(n283), .C1(term_b1[10]), .D1(GND_net), .CIN(n1435), 
          .COUT(n1436), .S0(n1020), .S1(n1019));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_103_9.INIT0 = 16'ha999;
    defparam add_103_9.INIT1 = 16'h9969;
    defparam add_103_9.INJECT1_0 = "NO";
    defparam add_103_9.INJECT1_1 = "NO";
    CCU2D add_103_7 (.A0(term_b1[7]), .B0(term_a0[7]), .C0(GND_net), .D0(GND_net), 
          .A1(term_b1[8]), .B1(term_a0[8]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1434), .COUT(n1435), .S0(n1022), .S1(n1021));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_103_7.INIT0 = 16'ha999;
    defparam add_103_7.INIT1 = 16'ha999;
    defparam add_103_7.INJECT1_0 = "NO";
    defparam add_103_7.INJECT1_1 = "NO";
    CCU2D add_103_5 (.A0(term_b1[5]), .B0(term_a0[5]), .C0(GND_net), .D0(GND_net), 
          .A1(term_b1[6]), .B1(term_a0[6]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1433), .COUT(n1434), .S0(n1024), .S1(n1023));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_103_5.INIT0 = 16'ha999;
    defparam add_103_5.INIT1 = 16'ha999;
    defparam add_103_5.INJECT1_0 = "NO";
    defparam add_103_5.INJECT1_1 = "NO";
    CCU2D add_103_3 (.A0(term_b1[3]), .B0(term_a0[3]), .C0(GND_net), .D0(GND_net), 
          .A1(adc_c_2), .B1(term_a0[2]), .C1(term_b1[4]), .D1(GND_net), 
          .CIN(n1432), .COUT(n1433), .S0(n1026), .S1(n1025));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_103_3.INIT0 = 16'ha999;
    defparam add_103_3.INIT1 = 16'h9969;
    defparam add_103_3.INJECT1_0 = "NO";
    defparam add_103_3.INJECT1_1 = "NO";
    CCU2D add_103_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(term_b1[2]), .B1(term_a0[2]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1432), .S1(n1027));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_103_1.INIT0 = 16'hF000;
    defparam add_103_1.INIT1 = 16'ha999;
    defparam add_103_1.INJECT1_0 = "NO";
    defparam add_103_1.INJECT1_1 = "NO";
    CCU2D add_219_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1431), 
          .S0(term_a0[16]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_219_cout.INIT0 = 16'h0000;
    defparam add_219_cout.INIT1 = 16'h0000;
    defparam add_219_cout.INJECT1_0 = "NO";
    defparam add_219_cout.INJECT1_1 = "NO";
    CCU2D add_219_6 (.A0(adc_c_6), .B0(n299), .C0(GND_net), .D0(GND_net), 
          .A1(adc_c_7), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1430), 
          .COUT(n1431), .S0(term_a0[14]), .S1(term_a0[15]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_219_6.INIT0 = 16'h5666;
    defparam add_219_6.INIT1 = 16'h5aaa;
    defparam add_219_6.INJECT1_0 = "NO";
    defparam add_219_6.INJECT1_1 = "NO";
    CCU2D add_219_4 (.A0(n294), .B0(n291), .C0(GND_net), .D0(GND_net), 
          .A1(n298), .B1(n295), .C1(GND_net), .D1(GND_net), .CIN(n1429), 
          .COUT(n1430), .S0(term_a0[12]), .S1(term_a0[13]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_219_4.INIT0 = 16'h5666;
    defparam add_219_4.INIT1 = 16'h5666;
    defparam add_219_4.INJECT1_0 = "NO";
    defparam add_219_4.INJECT1_1 = "NO";
    CCU2D add_219_2 (.A0(n286), .B0(n283), .C0(GND_net), .D0(GND_net), 
          .A1(n290), .B1(n287), .C1(GND_net), .D1(GND_net), .COUT(n1429), 
          .S1(term_a0[11]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_219_2.INIT0 = 16'h7000;
    defparam add_219_2.INIT1 = 16'h5666;
    defparam add_219_2.INJECT1_0 = "NO";
    defparam add_219_2.INJECT1_1 = "NO";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    CCU2D add_131_2 (.A0(adc_c_2), .B0(term_a0[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n129), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1421), 
          .S1(term_a0[5]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_131_2.INIT0 = 16'h7000;
    defparam add_131_2.INIT1 = 16'h5aaa;
    defparam add_131_2.INJECT1_0 = "NO";
    defparam add_131_2.INJECT1_1 = "NO";
    CCU2D clk_divide_counter_86_add_4_3 (.A0(clk_divide_counter[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(clk_divide_counter[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1424), .COUT(n1425), .S0(n44), 
          .S1(n43));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(35[35:60])
    defparam clk_divide_counter_86_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_divide_counter_86_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_divide_counter_86_add_4_3.INJECT1_0 = "NO";
    defparam clk_divide_counter_86_add_4_3.INJECT1_1 = "NO";
    LUT4 i281_2_lut (.A(x_d2[4]), .B(x_d2[2]), .Z(n132_adj_4)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i281_2_lut.init = 16'h6666;
    CCU2D add_131_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1423), 
          .S0(n283));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_131_cout.INIT0 = 16'h0000;
    defparam add_131_cout.INIT1 = 16'h0000;
    defparam add_131_cout.INJECT1_0 = "NO";
    defparam add_131_cout.INJECT1_1 = "NO";
    LUT4 i275_2_lut (.A(x_d1[5]), .B(term_a1[2]), .Z(n110)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i275_2_lut.init = 16'h6666;
    LUT4 i280_2_lut (.A(x_d2[3]), .B(term_a2[3]), .Z(n129_adj_3)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i280_2_lut.init = 16'h6666;
    CCU2D add_131_6 (.A0(n222), .B0(term_a0[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n253), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1422), 
          .COUT(n1423), .S0(term_a0[8]), .S1(term_a0[9]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_131_6.INIT0 = 16'h5666;
    defparam add_131_6.INIT1 = 16'h5aaa;
    defparam add_131_6.INJECT1_0 = "NO";
    defparam add_131_6.INJECT1_1 = "NO";
    LUT4 i270_2_lut (.A(adc_c_6), .B(adc_c_4), .Z(n138)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i270_2_lut.init = 16'h6666;
    LUT4 i269_2_lut (.A(adc_c_5), .B(adc_c_3), .Z(n135)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i269_2_lut.init = 16'h6666;
    VLO i1 (.Z(GND_net));
    FD1S3IX clk_divide_counter_86__i2 (.D(n43), .CK(clk_c), .CD(n1367), 
            .Q(clk_divide_counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(35[35:60])
    defparam clk_divide_counter_86__i2.GSR = "ENABLED";
    FD1S3IX clk_divide_counter_86__i3 (.D(n42), .CK(clk_c), .CD(n1367), 
            .Q(clk_divide_counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(35[35:60])
    defparam clk_divide_counter_86__i3.GSR = "ENABLED";
    FD1S3IX clk_divide_counter_86__i4 (.D(n41), .CK(clk_c), .CD(n1367), 
            .Q(clk_divide_counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(35[35:60])
    defparam clk_divide_counter_86__i4.GSR = "ENABLED";
    FD1S3IX clk_divide_counter_86__i5 (.D(n40), .CK(clk_c), .CD(n1367), 
            .Q(clk_divide_counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(35[35:60])
    defparam clk_divide_counter_86__i5.GSR = "ENABLED";
    FD1S3IX clk_divide_counter_86__i6 (.D(n39), .CK(clk_c), .CD(n1367), 
            .Q(clk_divide_counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(35[35:60])
    defparam clk_divide_counter_86__i6.GSR = "ENABLED";
    FD1S3IX clk_divide_counter_86__i7 (.D(n38), .CK(clk_c), .CD(n1367), 
            .Q(clk_divide_counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(35[35:60])
    defparam clk_divide_counter_86__i7.GSR = "ENABLED";
    LUT4 i277_2_lut (.A(x_d1[7]), .B(x_d1[4]), .Z(n116)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i277_2_lut.init = 16'h6666;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

