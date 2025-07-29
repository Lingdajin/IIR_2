// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Tue Jul 29 18:25:49 2025
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
    
    wire GND_net, VCC_net, n1829, n1828, n1827, dac_c_7, dac_c_6, 
        dac_c_5, dac_c_4, dac_c_3, dac_c_2, dac_c_1, dac_c_0, dac_clk_c;
    wire [7:0]clk_divide_counter;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(20[11:29])
    
    wire x_d1_c_7, x_d1_c_6, x_d1_c_5, x_d1_c_4, x_d1_c_3, x_d1_c_0;
    wire [8:0]x_d2;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(62[24:28])
    
    wire n920, n919, n918, n917, n916, n915, n914;
    wire [8:0]y_d2;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(64[24:28])
    
    wire n18, n1769;
    wire [31:0]term_a0;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(67[20:27])
    
    wire n1947, n1826;
    wire [31:0]term_a1;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(67[29:36])
    
    wire n1951, n1767;
    wire [31:0]term_a2;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(67[38:45])
    wire [31:0]term_b1;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(68[20:27])
    
    wire n2008;
    wire [31:0]term_b2;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(68[29:36])
    wire [31:0]y_full;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(69[20:26])
    
    wire adc_clk_N_84, n26, n103, n100, n97, n94, n1766, n1765, 
        n1764, n1763, n1762, n1760, n1759, n1758, n1756, n1755, 
        n1754, n1752, n1751, n1750, n10, n45, n44, n43, n42, 
        n41, n40, n39, n38, n1825, n1336, n361, n358, n1749, 
        n1748, n1747, n1745, n1946, n1945, n1944, n1943, n1744, 
        n16, n1743, n1742, n1741, n1405, n1740, n1738, n1737, 
        n1736, n355, n1735, n1734, n1733, n1962, n1731, n352, 
        n1730, n1963, n91, n27, n1823, n232, n229, n226, n223, 
        n220, n1949, n1822, n189, n186, n183, n180, n177, n1952, 
        n1821, n146, n143, n140, n137, n134, n1888, n315, n312, 
        n309, n306, n19, n1338, n1887, n272, n269, n266, n263, 
        n349, n1886, n1337, n1729, n9, n10_adj_1, n11, n12, 
        n13, n14, n15, n16_adj_2, n17, n18_adj_3, n19_adj_4, n20, 
        n21, n22, n23, n24, n25, n26_adj_5, n27_adj_6, n28, 
        n29, n30, n31, n1728, n1954, n1727, n40_adj_7, n41_adj_8, 
        n42_adj_9, n43_adj_10, n44_adj_11, n45_adj_12, n46, n47, 
        n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, 
        n58, n59, n60, n61, n62, n1964, n1965, n1966, n1967, 
        n1968, n1969, n1970, n1972, n1973, n1974, n1975, n1976, 
        n1977, n1942, n1940, n1939, n1656, n1657, n1658, n1659, 
        n1660, n1661, n1663, n1664, n1665, n1667, n1668, n1669, 
        n1670, n1671, n1672, n1673, n1674, n1675, n1676, n1677, 
        n1678, n1679, n1680, n1681, n1682, n1495, n1494, n1493, 
        n1492, n1491, n1490, n1885, n1884, n1883, n1882, n1881, 
        n1880, n1879, n392, n1878, n1877, n1876, n1875, n1874, 
        n1871, n1870, n1869, n1868, n1865, n1864, n1863, n1820, 
        n921, n922, n923, n924, n925, n926, n927, n928, n929, 
        n930, n931, n932, n933, n934, n935, n936, n395, n398, 
        n401, n404, n1335, n25_adj_13, n435, n438, n441, n444, 
        n447, n1334, n24_adj_14, n478, n481, n484, n487, n490, 
        n1333, n23_adj_15, n521, n524, n527, n530, n1862, n1332, 
        n22_adj_16, n1726, n15_adj_17, n563, n1724, n566, n567, 
        n1723, n570, n571, n1489, n574, n575, n1488, n578, n579, 
        n1487, n1861, n583, n1722, n1331, n1330, n1721, n21_adj_18, 
        n20_adj_19, n143_adj_20, n146_adj_21, n149, n152, n14_adj_22, 
        n1819, n1980, n189_adj_23, n192, n195, n198, n13_adj_24, 
        n1818, n1979, n235, n238, n241, n244, n1816, n1815, 
        n1978, n281, n284, n287, n290, n1814, n1813, n1938, 
        n327, n330, n333, n336, n1812, n1811, n1937, n373, n376, 
        n379, n382, n1809, n1808, n1936, n419, n422, n425, n428, 
        n1720, n1935, n465, n468, n471, n474, n1807, n1934, 
        n511, n514, n517, n520, n1806, n1932, n557, n560, n563_adj_25, 
        n566_adj_26, n1634, n1805, n1931, n603, n606, n609, n612, 
        n1860, n1804, n1930, n1719, n1802, n648, n1717, n651, 
        n652, n1716, n655, n656, n1715, n659, n660, n1714, n663, 
        n664, n1713, n1858, n1629, n1486, n1801, n1800, n1485, 
        n1929, n1928, n91_adj_27, n94_adj_28, n97_adj_29, n100_adj_30, 
        n103_adj_31, n1799, n12_adj_32, n134_adj_33, n137_adj_34, 
        n140_adj_35, n143_adj_36, n146_adj_37, n1798, n11_adj_38, 
        n177_adj_39, n180_adj_40, n183_adj_41, n186_adj_42, n189_adj_43, 
        n1797, n10_adj_44, n220_adj_45, n223_adj_46, n226_adj_47, 
        n229_adj_48, n232_adj_49, n1795, n9_adj_50, n263_adj_51, n266_adj_52, 
        n269_adj_53, n272_adj_54, n1712, n1710, n1950, n306_adj_55, 
        n309_adj_56, n312_adj_57, n315_adj_58, n1709, n1708, n1707, 
        n349_adj_59, n352_adj_60, n355_adj_61, n358_adj_62, n361_adj_63, 
        n1706, n8, n392_adj_64, n395_adj_65, n398_adj_66, n401_adj_67, 
        n404_adj_68, n1705, n7, n435_adj_69, n438_adj_70, n441_adj_71, 
        n444_adj_72, n447_adj_73, n1703, n6, n478_adj_74, n481_adj_75, 
        n484_adj_76, n487_adj_77, n490_adj_78, n1702, n5, n521_adj_79, 
        n524_adj_80, n527_adj_81, n530_adj_82, n1701, n1484, n4, 
        n1483, n1927, n563_adj_83, n1482, n566_adj_84, n567_adj_85, 
        n1481, n570_adj_86, n571_adj_87, n1480, n574_adj_88, n575_adj_89, 
        n1700, n578_adj_90, n579_adj_91, n1699, n1698, n583_adj_92, 
        n1479, n1696, n1695, n1478, n3, n97_adj_93, n100_adj_94, 
        n103_adj_95, n106, n109, n112, n115, n1926, n1794, n1924, 
        n143_adj_96, n146_adj_97, n149_adj_98, n152_adj_99, n155, 
        n158, n161, n1923, n1922, n1921, n189_adj_100, n192_adj_101, 
        n195_adj_102, n198_adj_103, n201, n204, n1351, n1920, n1396, 
        n1919, n1918, n1916, n235_adj_104, n238_adj_105, n241_adj_106, 
        n244_adj_107, n247, n250, n253, n1915, n1857, n1914, n1352, 
        n1913, n281_adj_108, n284_adj_109, n287_adj_110, n290_adj_111, 
        n293, n296, n299, n1912, n1694, n1911, n1793, n1910, 
        n327_adj_112, n330_adj_113, n333_adj_114, n336_adj_115, n339, 
        n342, n345, n1395, n1693, n1908, n1792, n1907, n373_adj_116, 
        n376_adj_117, n379_adj_118, n382_adj_119, n385, n388, n391, 
        n1394, n1692, n1906, n1791, n1905, n419_adj_120, n422_adj_121, 
        n425_adj_122, n428_adj_123, n431, n434, n437, n1393, n1691, 
        n1904, n1790, n1903, n465_adj_124, n468_adj_125, n471_adj_126, 
        n1902, n474_adj_127, n1900, n477, n1899, n480, n1898, 
        n483, n1897, n1392, n1896, n1689, n1961, n1895, n1960, 
        n1788, n1959, n1894, n511_adj_128, n514_adj_129, n517_adj_130, 
        n520_adj_131, n523, n526, n529, n1391, n1688, n1787, n1891, 
        n557_adj_132, n560_adj_133, n563_adj_134, n566_adj_135, n569, 
        n572, n575_adj_136, n1390, n1687, n1890, n1786, n603_adj_137, 
        n606_adj_138, n609_adj_139, n612_adj_140, n615, n618, n621, 
        n1389, n1686, n1889, n647, n648_adj_141, n651_adj_142, n652_adj_143, 
        n655_adj_144, n656_adj_145, n659_adj_146, n660_adj_147, n663_adj_148, 
        n664_adj_149, n667, n668, n671, n672, n675, n676, n1477, 
        n1388, n1387, n1476, n1386, n1996, n1994, n1992, n1990, 
        n1988, n1986, n1982, n1785, n103_adj_150, n106_adj_151, 
        n109_adj_152, n112_adj_153, n115_adj_154, n118, n1685, n1342, 
        n17_adj_155, n1856, n152_adj_156, n155_adj_157, n158_adj_158, 
        n161_adj_159, n164, n167, n1684, n1341, n1855, n1343, 
        n1854, n201_adj_160, n204_adj_161, n207, n210, n213, n216, 
        n1340, n1853, n1851, n1850, n250_adj_162, n253_adj_163, 
        n256, n259, n262, n265, n1652, n1849, n1848, n1847, 
        n299_adj_164, n302, n305, n308, n311, n314, n1651, n1650, 
        n1846, n1844, n1843, n348, n351, n354, n357, n360, n363, 
        n1649, n1648, n1842, n1339, n1841, n397, n400, n403, 
        n406, n409, n412, n1647, n1646, n1840, n1350, n1784, 
        n446, n449, n452, n455, n458, n461, n1645, n1644, n1839, 
        n1349, n1783, n495, n498, n501, n504, n507, n510, n1643, 
        n1642, n1837, n1348, n1781, n544, n547, n550, n553, 
        n556, n559, n1641, n1640, n1836, n1347, n1780, n1835, 
        n593, n1957, n596, n1956, n599, n1955, n602, n1779, 
        n605, n1778, n608, n1777, n1776, n1596, n1774, n1834, 
        n1773, n1346, n1772, n1771, n1770, n642, n645, n648_adj_165, 
        n651_adj_166, n654, n657, n1588, n1630, n1833, n1345, 
        n1948, n691, n694, n697, n700, n703, n706, n1632, n1399, 
        n1832, n1344, n1475, n738, n739, n1474, n742, n743, 
        n1473, n1995, n746, n747, n1472, n1993, n750, n751, 
        n1471, n1991, n754, n755, n1636, n1989, n758, n759, 
        n1635, n1987, n762, n763, n1638, n1985, n1637, n1639, 
        n1631, n1983, n1397, n1633, n1981, n1830;
    
    VHI i298 (.Z(VCC_net));
    LUT4 i4_4_lut (.A(clk_divide_counter[7]), .B(clk_divide_counter[6]), 
         .C(clk_divide_counter[4]), .D(clk_divide_counter[2]), .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    CCU2D add_102_8 (.A0(n306), .B0(x_d1_c_0), .C0(GND_net), .D0(GND_net), 
          .A1(n349), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1658), 
          .COUT(n1659), .S0(term_a0[8]), .S1(term_a0[9]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_102_8.INIT0 = 16'h5666;
    defparam add_102_8.INIT1 = 16'h5aaa;
    defparam add_102_8.INJECT1_0 = "NO";
    defparam add_102_8.INJECT1_1 = "NO";
    CCU2D add_182_2 (.A0(n651), .B0(n648), .C0(GND_net), .D0(GND_net), 
          .A1(n655), .B1(n652), .C1(GND_net), .D1(GND_net), .COUT(n1663), 
          .S1(term_a1[16]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam add_182_2.INIT0 = 16'h7000;
    defparam add_182_2.INIT1 = 16'h5666;
    defparam add_182_2.INJECT1_0 = "NO";
    defparam add_182_2.INJECT1_1 = "NO";
    CCU2D add_102_4 (.A0(n134), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n177), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1656), 
          .COUT(n1657), .S0(term_a0[4]), .S1(term_a0[5]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_102_4.INIT0 = 16'h5aaa;
    defparam add_102_4.INIT1 = 16'h5aaa;
    defparam add_102_4.INJECT1_0 = "NO";
    defparam add_102_4.INJECT1_1 = "NO";
    FD1S3AX x_d1_rep_1_i1 (.D(x_d1_c_0), .CK(clk_c), .Q(x_d2[0]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_rep_1_i1.GSR = "ENABLED";
    OB dac_pad_4 (.I(dac_c_4), .O(dac[4]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(15[31:34])
    LUT4 i243_2_lut (.A(x_d1_c_4), .B(term_a1[1]), .Z(n143_adj_20)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i243_2_lut.init = 16'h6666;
    FD1S3AX clk_1M_reg_28 (.D(adc_clk_N_84), .CK(clk_c), .Q(dac_clk_c));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(29[10] 37[8])
    defparam clk_1M_reg_28.GSR = "ENABLED";
    FD1S3AX y_d2_ret2_i1 (.D(term_b1[1]), .CK(clk_c), .Q(term_b2[0]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_ret2_i1.GSR = "ENABLED";
    OB dac_pad_6 (.I(dac_c_6), .O(dac[6]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(15[31:34])
    CCU2D add_104_6 (.A0(n226), .B0(term_a1[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n269), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1692), 
          .COUT(n1693), .S0(n266), .S1(n309));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_104_6.INIT0 = 16'h5666;
    defparam add_104_6.INIT1 = 16'h5aaa;
    defparam add_104_6.INJECT1_0 = "NO";
    defparam add_104_6.INJECT1_1 = "NO";
    OB dac_pad_7 (.I(dac_c_7), .O(dac[7]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(15[31:34])
    FD1S3AX x_d1_ret3_i1 (.D(n1351), .CK(clk_c), .Q(n62));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_ret3_i1.GSR = "ENABLED";
    LUT4 i237_2_lut (.A(x_d1_c_3), .B(term_a1[1]), .Z(n91)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i237_2_lut.init = 16'h6666;
    FD1S3AX y_d1_i0 (.D(dac_c_0), .CK(clk_c), .Q(term_b1[1]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d1_i0.GSR = "ENABLED";
    LUT4 i240_2_lut (.A(x_d1_c_6), .B(x_d1_c_4), .Z(n100)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i240_2_lut.init = 16'h6666;
    LUT4 i266_2_lut (.A(y_d2[2]), .B(term_b1[1]), .Z(n914)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i266_2_lut.init = 16'h6666;
    TSALL TSALL_INST (.TSALL(GND_net));
    FD1S3IX clk_divide_counter_56__i0 (.D(n45), .CK(clk_c), .CD(n1405), 
            .Q(clk_divide_counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(35[35:60])
    defparam clk_divide_counter_56__i0.GSR = "ENABLED";
    LUT4 i274_2_lut (.A(n738), .B(y_d2[8]), .Z(n927)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i274_2_lut.init = 16'h6666;
    CCU2D add_105_12 (.A0(n487), .B0(x_d1_c_3), .C0(GND_net), .D0(GND_net), 
          .A1(n530), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1702), 
          .COUT(n1703), .S0(n527), .S1(n574));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_105_12.INIT0 = 16'h5666;
    defparam add_105_12.INIT1 = 16'h5aaa;
    defparam add_105_12.INJECT1_0 = "NO";
    defparam add_105_12.INJECT1_1 = "NO";
    CCU2D add_102_10 (.A0(n392), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n435), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1659), 
          .COUT(n1660), .S0(term_a0[10]), .S1(term_a0[11]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_102_10.INIT0 = 16'h5aaa;
    defparam add_102_10.INIT1 = 16'h5aaa;
    defparam add_102_10.INJECT1_0 = "NO";
    defparam add_102_10.INJECT1_1 = "NO";
    CCU2D add_102_6 (.A0(n220), .B0(x_d1_c_0), .C0(GND_net), .D0(GND_net), 
          .A1(n263), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1657), 
          .COUT(n1658), .S0(term_a0[6]), .S1(term_a0[7]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_102_6.INIT0 = 16'h5666;
    defparam add_102_6.INIT1 = 16'h5aaa;
    defparam add_102_6.INJECT1_0 = "NO";
    defparam add_102_6.INJECT1_1 = "NO";
    LUT4 i295_4_lut (.A(clk_divide_counter[5]), .B(n10), .C(clk_divide_counter[1]), 
         .D(n2008), .Z(n1405)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(30[12:39])
    defparam i295_4_lut.init = 16'h1000;
    OB dac_pad_5 (.I(dac_c_5), .O(dac[5]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(15[31:34])
    FD1S3AX y_d1_i1 (.D(dac_c_1), .CK(clk_c), .Q(y_d2[1]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d1_i1.GSR = "ENABLED";
    OB dac_pad_3 (.I(dac_c_3), .O(dac[3]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(15[31:34])
    CCU2D add_102_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1661), 
          .S0(n563));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_102_cout.INIT0 = 16'h0000;
    defparam add_102_cout.INIT1 = 16'h0000;
    defparam add_102_cout.INJECT1_0 = "NO";
    defparam add_102_cout.INJECT1_1 = "NO";
    OB dac_pad_2 (.I(dac_c_2), .O(dac[2]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(15[31:34])
    OB dac_pad_1 (.I(dac_c_1), .O(dac[1]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(15[31:34])
    OB dac_pad_0 (.I(dac_c_0), .O(dac[0]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(15[31:34])
    OB adc_clk_pad (.I(dac_clk_c), .O(adc_clk));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(16[25:32])
    OB dac_clk_pad (.I(dac_clk_c), .O(dac_clk));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(17[25:32])
    IB clk_pad (.I(clk), .O(clk_c));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(10[25:28])
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(12[25:30])
    IB x_d1_pad_7 (.I(adc[7]), .O(x_d1_c_7));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(13[31:34])
    IB x_d1_pad_6 (.I(adc[6]), .O(x_d1_c_6));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(13[31:34])
    IB x_d1_pad_5 (.I(adc[5]), .O(x_d1_c_5));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(13[31:34])
    IB x_d1_pad_4 (.I(adc[4]), .O(x_d1_c_4));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(13[31:34])
    IB x_d1_pad_3 (.I(adc[3]), .O(x_d1_c_3));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(13[31:34])
    IB x_d1_pad_2 (.I(adc[2]), .O(term_a1[2]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(13[31:34])
    IB x_d1_pad_1 (.I(adc[1]), .O(term_a1[1]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(13[31:34])
    IB x_d1_pad_0 (.I(adc[0]), .O(x_d1_c_0));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(13[31:34])
    CCU2D add_104_2 (.A0(x_d1_c_4), .B0(term_a1[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n97), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1691), 
          .S1(n137));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_104_2.INIT0 = 16'h7000;
    defparam add_104_2.INIT1 = 16'h5aaa;
    defparam add_104_2.INJECT1_0 = "NO";
    defparam add_104_2.INJECT1_1 = "NO";
    CCU2D add_103_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1689), 
          .S0(n567));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_103_cout.INIT0 = 16'h0000;
    defparam add_103_cout.INIT1 = 16'h0000;
    defparam add_103_cout.INJECT1_0 = "NO";
    defparam add_103_cout.INJECT1_1 = "NO";
    CCU2D add_103_12 (.A0(n481), .B0(term_a1[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n524), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1688), 
          .COUT(n1689), .S0(n521), .S1(n566));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_103_12.INIT0 = 16'h5666;
    defparam add_103_12.INIT1 = 16'h5aaa;
    defparam add_103_12.INJECT1_0 = "NO";
    defparam add_103_12.INJECT1_1 = "NO";
    CCU2D add_103_10 (.A0(n395), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n438), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1687), 
          .COUT(n1688), .S0(n435), .S1(n478));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_103_10.INIT0 = 16'h5aaa;
    defparam add_103_10.INIT1 = 16'h5aaa;
    defparam add_103_10.INJECT1_0 = "NO";
    defparam add_103_10.INJECT1_1 = "NO";
    CCU2D add_103_8 (.A0(n309), .B0(term_a1[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n352), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1686), 
          .COUT(n1687), .S0(n349), .S1(n392));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_103_8.INIT0 = 16'h5666;
    defparam add_103_8.INIT1 = 16'h5aaa;
    defparam add_103_8.INJECT1_0 = "NO";
    defparam add_103_8.INJECT1_1 = "NO";
    CCU2D add_103_6 (.A0(n223), .B0(term_a1[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n266), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1685), 
          .COUT(n1686), .S0(n263), .S1(n306));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_103_6.INIT0 = 16'h5666;
    defparam add_103_6.INIT1 = 16'h5aaa;
    defparam add_103_6.INJECT1_0 = "NO";
    defparam add_103_6.INJECT1_1 = "NO";
    CCU2D add_104_12 (.A0(n484), .B0(term_a1[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n527), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1695), 
          .COUT(n1696), .S0(n524), .S1(n570));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_104_12.INIT0 = 16'h5666;
    defparam add_104_12.INIT1 = 16'h5aaa;
    defparam add_104_12.INJECT1_0 = "NO";
    defparam add_104_12.INJECT1_1 = "NO";
    CCU2D add_103_4 (.A0(n137), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n180), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1684), 
          .COUT(n1685), .S0(n177), .S1(n220));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_103_4.INIT0 = 16'h5aaa;
    defparam add_103_4.INIT1 = 16'h5aaa;
    defparam add_103_4.INJECT1_0 = "NO";
    defparam add_103_4.INJECT1_1 = "NO";
    CCU2D add_105_10 (.A0(n401), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n444), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1701), 
          .COUT(n1702), .S0(n441), .S1(n484));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_105_10.INIT0 = 16'h5aaa;
    defparam add_105_10.INIT1 = 16'h5aaa;
    defparam add_105_10.INJECT1_0 = "NO";
    defparam add_105_10.INJECT1_1 = "NO";
    CCU2D add_106_6 (.A0(n232), .B0(x_d1_c_4), .C0(GND_net), .D0(GND_net), 
          .A1(x_d1_c_5), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1706), 
          .COUT(n1707), .S0(n272), .S1(n315));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_106_6.INIT0 = 16'h5666;
    defparam add_106_6.INIT1 = 16'h5aaa;
    defparam add_106_6.INJECT1_0 = "NO";
    defparam add_106_6.INJECT1_1 = "NO";
    CCU2D add_103_2 (.A0(x_d1_c_3), .B0(term_a1[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n94), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1684), 
          .S1(n134));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_103_2.INIT0 = 16'h7000;
    defparam add_103_2.INIT1 = 16'h5aaa;
    defparam add_103_2.INJECT1_0 = "NO";
    defparam add_103_2.INJECT1_1 = "NO";
    CCU2D clk_divide_counter_56_add_4_9 (.A0(clk_divide_counter[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1682), .S0(n38));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(35[35:60])
    defparam clk_divide_counter_56_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_divide_counter_56_add_4_9.INIT1 = 16'h0000;
    defparam clk_divide_counter_56_add_4_9.INJECT1_0 = "NO";
    defparam clk_divide_counter_56_add_4_9.INJECT1_1 = "NO";
    CCU2D clk_divide_counter_56_add_4_7 (.A0(clk_divide_counter[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(clk_divide_counter[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1681), .COUT(n1682), .S0(n40), 
          .S1(n39));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(35[35:60])
    defparam clk_divide_counter_56_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_divide_counter_56_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_divide_counter_56_add_4_7.INJECT1_0 = "NO";
    defparam clk_divide_counter_56_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_divide_counter_56_add_4_5 (.A0(clk_divide_counter[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(clk_divide_counter[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1680), .COUT(n1681), .S0(n42), 
          .S1(n41));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(35[35:60])
    defparam clk_divide_counter_56_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_divide_counter_56_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_divide_counter_56_add_4_5.INJECT1_0 = "NO";
    defparam clk_divide_counter_56_add_4_5.INJECT1_1 = "NO";
    CCU2D clk_divide_counter_56_add_4_3 (.A0(clk_divide_counter[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(clk_divide_counter[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1679), .COUT(n1680), .S0(n44), 
          .S1(n43));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(35[35:60])
    defparam clk_divide_counter_56_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_divide_counter_56_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_divide_counter_56_add_4_3.INJECT1_0 = "NO";
    defparam clk_divide_counter_56_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_divide_counter_56_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_divide_counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1679), .S1(n45));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(35[35:60])
    defparam clk_divide_counter_56_add_4_1.INIT0 = 16'hF000;
    defparam clk_divide_counter_56_add_4_1.INIT1 = 16'h0555;
    defparam clk_divide_counter_56_add_4_1.INJECT1_0 = "NO";
    defparam clk_divide_counter_56_add_4_1.INJECT1_1 = "NO";
    CCU2D add_232_26 (.A0(n1495), .B0(n9), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1678), 
          .S0(n1629));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_232_26.INIT0 = 16'h5666;
    defparam add_232_26.INIT1 = 16'h0000;
    defparam add_232_26.INJECT1_0 = "NO";
    defparam add_232_26.INJECT1_1 = "NO";
    CCU2D add_105_8 (.A0(n315), .B0(x_d1_c_3), .C0(GND_net), .D0(GND_net), 
          .A1(n358), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1700), 
          .COUT(n1701), .S0(n355), .S1(n398));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_105_8.INIT0 = 16'h5666;
    defparam add_105_8.INIT1 = 16'h5aaa;
    defparam add_105_8.INJECT1_0 = "NO";
    defparam add_105_8.INJECT1_1 = "NO";
    CCU2D add_232_24 (.A0(n1493), .B0(n9), .C0(GND_net), .D0(GND_net), 
          .A1(n1494), .B1(n9), .C1(GND_net), .D1(GND_net), .CIN(n1677), 
          .COUT(n1678), .S0(n1631), .S1(n1630));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_232_24.INIT0 = 16'h5666;
    defparam add_232_24.INIT1 = 16'h5666;
    defparam add_232_24.INJECT1_0 = "NO";
    defparam add_232_24.INJECT1_1 = "NO";
    CCU2D add_232_22 (.A0(n1491), .B0(n11), .C0(GND_net), .D0(GND_net), 
          .A1(n1492), .B1(n10_adj_1), .C1(GND_net), .D1(GND_net), .CIN(n1676), 
          .COUT(n1677), .S0(n1633), .S1(n1632));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_232_22.INIT0 = 16'h5666;
    defparam add_232_22.INIT1 = 16'h5666;
    defparam add_232_22.INJECT1_0 = "NO";
    defparam add_232_22.INJECT1_1 = "NO";
    CCU2D add_232_20 (.A0(n1489), .B0(n13), .C0(GND_net), .D0(GND_net), 
          .A1(n1490), .B1(n12), .C1(GND_net), .D1(GND_net), .CIN(n1675), 
          .COUT(n1676), .S0(n1635), .S1(n1634));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_232_20.INIT0 = 16'h5666;
    defparam add_232_20.INIT1 = 16'h5666;
    defparam add_232_20.INJECT1_0 = "NO";
    defparam add_232_20.INJECT1_1 = "NO";
    CCU2D add_232_18 (.A0(n1487), .B0(n15), .C0(GND_net), .D0(GND_net), 
          .A1(n1488), .B1(n14), .C1(GND_net), .D1(GND_net), .CIN(n1674), 
          .COUT(n1675), .S0(n1637), .S1(n1636));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_232_18.INIT0 = 16'h5666;
    defparam add_232_18.INIT1 = 16'h5666;
    defparam add_232_18.INJECT1_0 = "NO";
    defparam add_232_18.INJECT1_1 = "NO";
    CCU2D add_232_16 (.A0(n1485), .B0(n17), .C0(GND_net), .D0(GND_net), 
          .A1(n1486), .B1(n16_adj_2), .C1(GND_net), .D1(GND_net), .CIN(n1673), 
          .COUT(n1674), .S0(n1639), .S1(n1638));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_232_16.INIT0 = 16'h5666;
    defparam add_232_16.INIT1 = 16'h5666;
    defparam add_232_16.INJECT1_0 = "NO";
    defparam add_232_16.INJECT1_1 = "NO";
    CCU2D add_232_14 (.A0(n1483), .B0(n19_adj_4), .C0(GND_net), .D0(GND_net), 
          .A1(n1484), .B1(n18_adj_3), .C1(GND_net), .D1(GND_net), .CIN(n1672), 
          .COUT(n1673), .S0(n1641), .S1(n1640));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_232_14.INIT0 = 16'h5666;
    defparam add_232_14.INIT1 = 16'h5666;
    defparam add_232_14.INJECT1_0 = "NO";
    defparam add_232_14.INJECT1_1 = "NO";
    CCU2D add_105_6 (.A0(n229), .B0(x_d1_c_3), .C0(GND_net), .D0(GND_net), 
          .A1(n272), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1699), 
          .COUT(n1700), .S0(n269), .S1(n312));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_105_6.INIT0 = 16'h5666;
    defparam add_105_6.INIT1 = 16'h5aaa;
    defparam add_105_6.INJECT1_0 = "NO";
    defparam add_105_6.INJECT1_1 = "NO";
    CCU2D add_232_12 (.A0(n1481), .B0(n21), .C0(GND_net), .D0(GND_net), 
          .A1(n1482), .B1(n20), .C1(GND_net), .D1(GND_net), .CIN(n1671), 
          .COUT(n1672), .S0(n1643), .S1(n1642));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_232_12.INIT0 = 16'h5666;
    defparam add_232_12.INIT1 = 16'h5666;
    defparam add_232_12.INJECT1_0 = "NO";
    defparam add_232_12.INJECT1_1 = "NO";
    CCU2D add_104_10 (.A0(n398), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n441), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1694), 
          .COUT(n1695), .S0(n438), .S1(n481));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_104_10.INIT0 = 16'h5aaa;
    defparam add_104_10.INIT1 = 16'h5aaa;
    defparam add_104_10.INJECT1_0 = "NO";
    defparam add_104_10.INJECT1_1 = "NO";
    CCU2D add_232_10 (.A0(n1479), .B0(n23), .C0(GND_net), .D0(GND_net), 
          .A1(n1480), .B1(n22), .C1(GND_net), .D1(GND_net), .CIN(n1670), 
          .COUT(n1671), .S0(n1645), .S1(n1644));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_232_10.INIT0 = 16'h5666;
    defparam add_232_10.INIT1 = 16'h5666;
    defparam add_232_10.INJECT1_0 = "NO";
    defparam add_232_10.INJECT1_1 = "NO";
    CCU2D add_106_10 (.A0(n404), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n447), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1708), 
          .COUT(n1709), .S0(n444), .S1(n487));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_106_10.INIT0 = 16'h5aaa;
    defparam add_106_10.INIT1 = 16'h5aaa;
    defparam add_106_10.INJECT1_0 = "NO";
    defparam add_106_10.INJECT1_1 = "NO";
    CCU2D add_106_4 (.A0(n146), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n189), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1705), 
          .COUT(n1706), .S0(n186), .S1(n229));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_106_4.INIT0 = 16'h5aaa;
    defparam add_106_4.INIT1 = 16'h5aaa;
    defparam add_106_4.INJECT1_0 = "NO";
    defparam add_106_4.INJECT1_1 = "NO";
    CCU2D add_68_188_add_1_25 (.A0(term_b2[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(term_b2[31]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1996), .S0(n4), .S1(n3));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_68_188_add_1_25.INIT0 = 16'ha555;
    defparam add_68_188_add_1_25.INIT1 = 16'ha555;
    defparam add_68_188_add_1_25.INJECT1_0 = "NO";
    defparam add_68_188_add_1_25.INJECT1_1 = "NO";
    CCU2D add_68_188_add_1_23 (.A0(term_b2[21]), .B0(n41_adj_8), .C0(GND_net), 
          .D0(GND_net), .A1(term_b2[22]), .B1(n40_adj_7), .C1(GND_net), 
          .D1(GND_net), .CIN(n1995), .COUT(n1996), .S0(n6), .S1(n5));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_68_188_add_1_23.INIT0 = 16'ha999;
    defparam add_68_188_add_1_23.INIT1 = 16'ha999;
    defparam add_68_188_add_1_23.INJECT1_0 = "NO";
    defparam add_68_188_add_1_23.INJECT1_1 = "NO";
    CCU2D add_68_188_add_1_21 (.A0(term_b2[19]), .B0(n43_adj_10), .C0(GND_net), 
          .D0(GND_net), .A1(term_b2[20]), .B1(n42_adj_9), .C1(GND_net), 
          .D1(GND_net), .CIN(n1994), .COUT(n1995), .S0(n8), .S1(n7));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_68_188_add_1_21.INIT0 = 16'ha999;
    defparam add_68_188_add_1_21.INIT1 = 16'ha999;
    defparam add_68_188_add_1_21.INJECT1_0 = "NO";
    defparam add_68_188_add_1_21.INJECT1_1 = "NO";
    CCU2D add_68_188_add_1_19 (.A0(term_b2[17]), .B0(n45_adj_12), .C0(GND_net), 
          .D0(GND_net), .A1(term_b2[18]), .B1(n44_adj_11), .C1(GND_net), 
          .D1(GND_net), .CIN(n1993), .COUT(n1994), .S0(n10_adj_44), 
          .S1(n9_adj_50));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_68_188_add_1_19.INIT0 = 16'ha999;
    defparam add_68_188_add_1_19.INIT1 = 16'ha999;
    defparam add_68_188_add_1_19.INJECT1_0 = "NO";
    defparam add_68_188_add_1_19.INJECT1_1 = "NO";
    CCU2D add_68_188_add_1_17 (.A0(term_b2[15]), .B0(n47), .C0(GND_net), 
          .D0(GND_net), .A1(term_b2[16]), .B1(n46), .C1(GND_net), .D1(GND_net), 
          .CIN(n1992), .COUT(n1993), .S0(n12_adj_32), .S1(n11_adj_38));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_68_188_add_1_17.INIT0 = 16'ha999;
    defparam add_68_188_add_1_17.INIT1 = 16'ha999;
    defparam add_68_188_add_1_17.INJECT1_0 = "NO";
    defparam add_68_188_add_1_17.INJECT1_1 = "NO";
    CCU2D add_68_188_add_1_15 (.A0(term_b2[13]), .B0(n49), .C0(GND_net), 
          .D0(GND_net), .A1(term_b2[14]), .B1(n48), .C1(GND_net), .D1(GND_net), 
          .CIN(n1991), .COUT(n1992), .S0(n14_adj_22), .S1(n13_adj_24));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_68_188_add_1_15.INIT0 = 16'ha999;
    defparam add_68_188_add_1_15.INIT1 = 16'ha999;
    defparam add_68_188_add_1_15.INJECT1_0 = "NO";
    defparam add_68_188_add_1_15.INJECT1_1 = "NO";
    CCU2D add_68_188_add_1_13 (.A0(term_b2[11]), .B0(n51), .C0(GND_net), 
          .D0(GND_net), .A1(term_b2[12]), .B1(n50), .C1(GND_net), .D1(GND_net), 
          .CIN(n1990), .COUT(n1991), .S0(n16), .S1(n15_adj_17));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_68_188_add_1_13.INIT0 = 16'ha999;
    defparam add_68_188_add_1_13.INIT1 = 16'ha999;
    defparam add_68_188_add_1_13.INJECT1_0 = "NO";
    defparam add_68_188_add_1_13.INJECT1_1 = "NO";
    CCU2D add_68_188_add_1_11 (.A0(term_b2[9]), .B0(n53), .C0(GND_net), 
          .D0(GND_net), .A1(term_b2[10]), .B1(n52), .C1(GND_net), .D1(GND_net), 
          .CIN(n1989), .COUT(n1990), .S0(n18), .S1(n17_adj_155));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_68_188_add_1_11.INIT0 = 16'ha999;
    defparam add_68_188_add_1_11.INIT1 = 16'ha999;
    defparam add_68_188_add_1_11.INJECT1_0 = "NO";
    defparam add_68_188_add_1_11.INJECT1_1 = "NO";
    CCU2D add_68_188_add_1_9 (.A0(term_b2[7]), .B0(n55), .C0(GND_net), 
          .D0(GND_net), .A1(term_b2[8]), .B1(n54), .C1(GND_net), .D1(GND_net), 
          .CIN(n1988), .COUT(n1989), .S0(n20_adj_19), .S1(n19));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_68_188_add_1_9.INIT0 = 16'ha999;
    defparam add_68_188_add_1_9.INIT1 = 16'ha999;
    defparam add_68_188_add_1_9.INJECT1_0 = "NO";
    defparam add_68_188_add_1_9.INJECT1_1 = "NO";
    CCU2D add_68_188_add_1_7 (.A0(term_b2[5]), .B0(n57), .C0(GND_net), 
          .D0(GND_net), .A1(term_b2[6]), .B1(n56), .C1(GND_net), .D1(GND_net), 
          .CIN(n1987), .COUT(n1988), .S0(n22_adj_16), .S1(n21_adj_18));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_68_188_add_1_7.INIT0 = 16'ha999;
    defparam add_68_188_add_1_7.INIT1 = 16'ha999;
    defparam add_68_188_add_1_7.INJECT1_0 = "NO";
    defparam add_68_188_add_1_7.INJECT1_1 = "NO";
    CCU2D add_68_188_add_1_5 (.A0(term_b2[3]), .B0(n59), .C0(GND_net), 
          .D0(GND_net), .A1(term_b2[4]), .B1(n58), .C1(GND_net), .D1(GND_net), 
          .CIN(n1986), .COUT(n1987), .S0(n24_adj_14), .S1(n23_adj_15));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_68_188_add_1_5.INIT0 = 16'ha999;
    defparam add_68_188_add_1_5.INIT1 = 16'ha999;
    defparam add_68_188_add_1_5.INJECT1_0 = "NO";
    defparam add_68_188_add_1_5.INJECT1_1 = "NO";
    CCU2D add_68_188_add_1_3 (.A0(term_b2[1]), .B0(n61), .C0(GND_net), 
          .D0(GND_net), .A1(term_b2[2]), .B1(n60), .C1(GND_net), .D1(GND_net), 
          .CIN(n1985), .COUT(n1986), .S0(n26), .S1(n25_adj_13));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_68_188_add_1_3.INIT0 = 16'ha999;
    defparam add_68_188_add_1_3.INIT1 = 16'ha999;
    defparam add_68_188_add_1_3.INJECT1_0 = "NO";
    defparam add_68_188_add_1_3.INJECT1_1 = "NO";
    CCU2D add_68_188_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(term_b2[0]), .B1(n62), .C1(GND_net), .D1(GND_net), 
          .COUT(n1985), .S1(n27));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_68_188_add_1_1.INIT0 = 16'hF000;
    defparam add_68_188_add_1_1.INIT1 = 16'ha999;
    defparam add_68_188_add_1_1.INJECT1_0 = "NO";
    defparam add_68_188_add_1_1.INJECT1_1 = "NO";
    CCU2D add_68_188_add_2_25 (.A0(n4), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1983), 
          .S0(n1494), .S1(n1495));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_68_188_add_2_25.INIT0 = 16'h5aaa;
    defparam add_68_188_add_2_25.INIT1 = 16'h5aaa;
    defparam add_68_188_add_2_25.INJECT1_0 = "NO";
    defparam add_68_188_add_2_25.INJECT1_1 = "NO";
    CCU2D add_68_188_add_2_23 (.A0(n6), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n5), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1982), 
          .COUT(n1983), .S0(n1492), .S1(n1493));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_68_188_add_2_23.INIT0 = 16'h5aaa;
    defparam add_68_188_add_2_23.INIT1 = 16'h5aaa;
    defparam add_68_188_add_2_23.INJECT1_0 = "NO";
    defparam add_68_188_add_2_23.INJECT1_1 = "NO";
    CCU2D add_68_188_add_2_21 (.A0(n8), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n7), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1981), 
          .COUT(n1982), .S0(n1490), .S1(n1491));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_68_188_add_2_21.INIT0 = 16'h5aaa;
    defparam add_68_188_add_2_21.INIT1 = 16'h5aaa;
    defparam add_68_188_add_2_21.INJECT1_0 = "NO";
    defparam add_68_188_add_2_21.INJECT1_1 = "NO";
    CCU2D add_68_188_add_2_19 (.A0(n10_adj_44), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n9_adj_50), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1980), .COUT(n1981), .S0(n1488), .S1(n1489));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_68_188_add_2_19.INIT0 = 16'h5aaa;
    defparam add_68_188_add_2_19.INIT1 = 16'h5aaa;
    defparam add_68_188_add_2_19.INJECT1_0 = "NO";
    defparam add_68_188_add_2_19.INJECT1_1 = "NO";
    CCU2D add_68_188_add_2_17 (.A0(n12_adj_32), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n11_adj_38), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1979), .COUT(n1980), .S0(n1486), .S1(n1487));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_68_188_add_2_17.INIT0 = 16'h5aaa;
    defparam add_68_188_add_2_17.INIT1 = 16'h5aaa;
    defparam add_68_188_add_2_17.INJECT1_0 = "NO";
    defparam add_68_188_add_2_17.INJECT1_1 = "NO";
    CCU2D add_68_188_add_2_15 (.A0(n14_adj_22), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n13_adj_24), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1978), .COUT(n1979), .S0(n1484), .S1(n1485));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_68_188_add_2_15.INIT0 = 16'h5aaa;
    defparam add_68_188_add_2_15.INIT1 = 16'h5aaa;
    defparam add_68_188_add_2_15.INJECT1_0 = "NO";
    defparam add_68_188_add_2_15.INJECT1_1 = "NO";
    CCU2D add_68_188_add_2_13 (.A0(n16), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n15_adj_17), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1977), .COUT(n1978), .S0(n1482), .S1(n1483));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_68_188_add_2_13.INIT0 = 16'h5aaa;
    defparam add_68_188_add_2_13.INIT1 = 16'h5aaa;
    defparam add_68_188_add_2_13.INJECT1_0 = "NO";
    defparam add_68_188_add_2_13.INJECT1_1 = "NO";
    CCU2D add_68_188_add_2_11 (.A0(n18), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n17_adj_155), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1976), .COUT(n1977), .S0(n1480), .S1(n1481));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_68_188_add_2_11.INIT0 = 16'h5aaa;
    defparam add_68_188_add_2_11.INIT1 = 16'h5aaa;
    defparam add_68_188_add_2_11.INJECT1_0 = "NO";
    defparam add_68_188_add_2_11.INJECT1_1 = "NO";
    CCU2D add_68_188_add_2_9 (.A0(n20_adj_19), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n19), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1975), .COUT(n1976), .S0(n1478), .S1(n1479));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_68_188_add_2_9.INIT0 = 16'h5aaa;
    defparam add_68_188_add_2_9.INIT1 = 16'h5aaa;
    defparam add_68_188_add_2_9.INJECT1_0 = "NO";
    defparam add_68_188_add_2_9.INJECT1_1 = "NO";
    CCU2D add_68_188_add_2_7 (.A0(n22_adj_16), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n21_adj_18), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1974), .COUT(n1975), .S0(n1476), .S1(n1477));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_68_188_add_2_7.INIT0 = 16'h5aaa;
    defparam add_68_188_add_2_7.INIT1 = 16'h5aaa;
    defparam add_68_188_add_2_7.INJECT1_0 = "NO";
    defparam add_68_188_add_2_7.INJECT1_1 = "NO";
    CCU2D add_68_188_add_2_5 (.A0(n24_adj_14), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n23_adj_15), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1973), .COUT(n1974), .S0(n1474), .S1(n1475));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_68_188_add_2_5.INIT0 = 16'h5aaa;
    defparam add_68_188_add_2_5.INIT1 = 16'h5aaa;
    defparam add_68_188_add_2_5.INJECT1_0 = "NO";
    defparam add_68_188_add_2_5.INJECT1_1 = "NO";
    CCU2D add_68_188_add_2_3 (.A0(n26), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n25_adj_13), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1972), .COUT(n1973), .S0(n1472), .S1(n1473));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_68_188_add_2_3.INIT0 = 16'h5aaa;
    defparam add_68_188_add_2_3.INIT1 = 16'h5aaa;
    defparam add_68_188_add_2_3.INJECT1_0 = "NO";
    defparam add_68_188_add_2_3.INJECT1_1 = "NO";
    CCU2D add_68_188_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n27), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1972), .S1(n1471));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_68_188_add_2_1.INIT0 = 16'hF000;
    defparam add_68_188_add_2_1.INIT1 = 16'h5555;
    defparam add_68_188_add_2_1.INJECT1_0 = "NO";
    defparam add_68_188_add_2_1.INJECT1_1 = "NO";
    CCU2D add_106_2 (.A0(x_d1_c_6), .B0(x_d1_c_4), .C0(GND_net), .D0(GND_net), 
          .A1(n103), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1705), 
          .S1(n143));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_106_2.INIT0 = 16'h7000;
    defparam add_106_2.INIT1 = 16'h5aaa;
    defparam add_106_2.INJECT1_0 = "NO";
    defparam add_106_2.INJECT1_1 = "NO";
    CCU2D add_189_25 (.A0(n1630), .B0(term_b1[31]), .C0(GND_net), .D0(GND_net), 
          .A1(n1629), .B1(term_b1[31]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1970), .S0(dac_c_7), .S1(y_full[24]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_189_25.INIT0 = 16'h5999;
    defparam add_189_25.INIT1 = 16'h5999;
    defparam add_189_25.INJECT1_0 = "NO";
    defparam add_189_25.INJECT1_1 = "NO";
    CCU2D add_189_23 (.A0(n1632), .B0(term_b1[21]), .C0(GND_net), .D0(GND_net), 
          .A1(n1631), .B1(term_b1[22]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1969), .COUT(n1970), .S0(dac_c_5), .S1(dac_c_6));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_189_23.INIT0 = 16'h5999;
    defparam add_189_23.INIT1 = 16'h5999;
    defparam add_189_23.INJECT1_0 = "NO";
    defparam add_189_23.INJECT1_1 = "NO";
    CCU2D add_189_21 (.A0(n1634), .B0(term_b1[19]), .C0(GND_net), .D0(GND_net), 
          .A1(n1633), .B1(term_b1[20]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1968), .COUT(n1969), .S0(dac_c_3), .S1(dac_c_4));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_189_21.INIT0 = 16'h5999;
    defparam add_189_21.INIT1 = 16'h5999;
    defparam add_189_21.INJECT1_0 = "NO";
    defparam add_189_21.INJECT1_1 = "NO";
    CCU2D add_189_19 (.A0(n1636), .B0(term_b1[17]), .C0(GND_net), .D0(GND_net), 
          .A1(n1635), .B1(term_b1[18]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1967), .COUT(n1968), .S0(dac_c_1), .S1(dac_c_2));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_189_19.INIT0 = 16'h5999;
    defparam add_189_19.INIT1 = 16'h5999;
    defparam add_189_19.INJECT1_0 = "NO";
    defparam add_189_19.INJECT1_1 = "NO";
    CCU2D add_189_17 (.A0(n1638), .B0(term_b1[15]), .C0(GND_net), .D0(GND_net), 
          .A1(n1637), .B1(term_b1[16]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1966), .COUT(n1967), .S1(dac_c_0));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_189_17.INIT0 = 16'h5999;
    defparam add_189_17.INIT1 = 16'h5999;
    defparam add_189_17.INJECT1_0 = "NO";
    defparam add_189_17.INJECT1_1 = "NO";
    CCU2D add_189_15 (.A0(n1640), .B0(term_b1[13]), .C0(GND_net), .D0(GND_net), 
          .A1(n647), .B1(y_d2[8]), .C1(n1639), .D1(GND_net), .CIN(n1965), 
          .COUT(n1966));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_189_15.INIT0 = 16'h5999;
    defparam add_189_15.INIT1 = 16'h9696;
    defparam add_189_15.INJECT1_0 = "NO";
    defparam add_189_15.INJECT1_1 = "NO";
    CCU2D add_189_13 (.A0(n1642), .B0(term_b1[11]), .C0(GND_net), .D0(GND_net), 
          .A1(n1641), .B1(term_b1[12]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1964), .COUT(n1965));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_189_13.INIT0 = 16'h5999;
    defparam add_189_13.INIT1 = 16'h5999;
    defparam add_189_13.INJECT1_0 = "NO";
    defparam add_189_13.INJECT1_1 = "NO";
    CCU2D add_189_11 (.A0(n1644), .B0(term_b1[9]), .C0(GND_net), .D0(GND_net), 
          .A1(n1643), .B1(term_b1[10]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1963), .COUT(n1964));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_189_11.INIT0 = 16'h5999;
    defparam add_189_11.INIT1 = 16'h5999;
    defparam add_189_11.INJECT1_0 = "NO";
    defparam add_189_11.INJECT1_1 = "NO";
    CCU2D add_189_9 (.A0(n1646), .B0(term_b1[7]), .C0(GND_net), .D0(GND_net), 
          .A1(n1645), .B1(term_b1[8]), .C1(GND_net), .D1(GND_net), .CIN(n1962), 
          .COUT(n1963));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_189_9.INIT0 = 16'h5999;
    defparam add_189_9.INIT1 = 16'h5999;
    defparam add_189_9.INJECT1_0 = "NO";
    defparam add_189_9.INJECT1_1 = "NO";
    CCU2D add_189_7 (.A0(n1648), .B0(term_b1[5]), .C0(GND_net), .D0(GND_net), 
          .A1(n1647), .B1(term_b1[6]), .C1(GND_net), .D1(GND_net), .CIN(n1961), 
          .COUT(n1962));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_189_7.INIT0 = 16'h5999;
    defparam add_189_7.INIT1 = 16'h5999;
    defparam add_189_7.INJECT1_0 = "NO";
    defparam add_189_7.INJECT1_1 = "NO";
    CCU2D add_189_5 (.A0(n1650), .B0(term_b1[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n1649), .B1(term_b1[4]), .C1(GND_net), .D1(GND_net), .CIN(n1960), 
          .COUT(n1961));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_189_5.INIT0 = 16'h5999;
    defparam add_189_5.INIT1 = 16'h5999;
    defparam add_189_5.INJECT1_0 = "NO";
    defparam add_189_5.INJECT1_1 = "NO";
    CCU2D add_189_3 (.A0(n1652), .B0(term_b1[1]), .C0(GND_net), .D0(GND_net), 
          .A1(y_d2[1]), .B1(term_b1[1]), .C1(n1651), .D1(GND_net), .CIN(n1959), 
          .COUT(n1960));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_189_3.INIT0 = 16'h5999;
    defparam add_189_3.INIT1 = 16'h6969;
    defparam add_189_3.INJECT1_0 = "NO";
    defparam add_189_3.INJECT1_1 = "NO";
    CCU2D add_189_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1471), .B1(n31), .C1(GND_net), .D1(GND_net), .COUT(n1959));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_189_1.INIT0 = 16'hF000;
    defparam add_189_1.INIT1 = 16'h9999;
    defparam add_189_1.INJECT1_0 = "NO";
    defparam add_189_1.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_569_10 (.A0(y_d2[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(y_d2[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1957), .S0(n935), .S1(n936));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_569_10.INIT0 = 16'h5aaa;
    defparam y_d2_8__I_0_add_569_10.INIT1 = 16'h5aaa;
    defparam y_d2_8__I_0_add_569_10.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_569_10.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_569_8 (.A0(n762), .B0(n759), .C0(GND_net), .D0(GND_net), 
          .A1(n1399), .B1(n763), .C1(GND_net), .D1(GND_net), .CIN(n1956), 
          .COUT(n1957), .S0(n933), .S1(n934));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_569_8.INIT0 = 16'h5666;
    defparam y_d2_8__I_0_add_569_8.INIT1 = 16'h5666;
    defparam y_d2_8__I_0_add_569_8.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_569_8.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_569_6 (.A0(n754), .B0(n751), .C0(GND_net), .D0(GND_net), 
          .A1(n758), .B1(n755), .C1(GND_net), .D1(GND_net), .CIN(n1955), 
          .COUT(n1956), .S0(n931), .S1(n932));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_569_6.INIT0 = 16'h5666;
    defparam y_d2_8__I_0_add_569_6.INIT1 = 16'h5666;
    defparam y_d2_8__I_0_add_569_6.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_569_6.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_569_4 (.A0(n746), .B0(n743), .C0(GND_net), .D0(GND_net), 
          .A1(n750), .B1(n747), .C1(GND_net), .D1(GND_net), .CIN(n1954), 
          .COUT(n1955), .S0(n929), .S1(n930));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_569_4.INIT0 = 16'h5666;
    defparam y_d2_8__I_0_add_569_4.INIT1 = 16'h5666;
    defparam y_d2_8__I_0_add_569_4.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_569_4.INJECT1_1 = "NO";
    CCU2D y_d2_8__I_0_add_569_2 (.A0(n738), .B0(y_d2[8]), .C0(GND_net), 
          .D0(GND_net), .A1(n742), .B1(n739), .C1(GND_net), .D1(GND_net), 
          .COUT(n1954), .S1(n928));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam y_d2_8__I_0_add_569_2.INIT0 = 16'h7000;
    defparam y_d2_8__I_0_add_569_2.INIT1 = 16'h5666;
    defparam y_d2_8__I_0_add_569_2.INJECT1_0 = "NO";
    defparam y_d2_8__I_0_add_569_2.INJECT1_1 = "NO";
    CCU2D add_163_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1952), 
          .S0(n1352));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_163_cout.INIT0 = 16'h0000;
    defparam add_163_cout.INIT1 = 16'h0000;
    defparam add_163_cout.INJECT1_0 = "NO";
    defparam add_163_cout.INJECT1_1 = "NO";
    CCU2D add_163_22 (.A0(term_a1[20]), .B0(term_a2[20]), .C0(GND_net), 
          .D0(GND_net), .A1(term_a1[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1951), .COUT(n1952), .S0(n1331), .S1(n1330));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_163_22.INIT0 = 16'h5666;
    defparam add_163_22.INIT1 = 16'h5aaa;
    defparam add_163_22.INJECT1_0 = "NO";
    defparam add_163_22.INJECT1_1 = "NO";
    CCU2D add_163_20 (.A0(term_a1[18]), .B0(term_a2[18]), .C0(GND_net), 
          .D0(GND_net), .A1(term_a1[19]), .B1(term_a2[19]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1950), .COUT(n1951), .S0(n1333), .S1(n1332));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_163_20.INIT0 = 16'h5666;
    defparam add_163_20.INIT1 = 16'h5666;
    defparam add_163_20.INJECT1_0 = "NO";
    defparam add_163_20.INJECT1_1 = "NO";
    CCU2D add_163_18 (.A0(term_a1[16]), .B0(term_a2[16]), .C0(GND_net), 
          .D0(GND_net), .A1(term_a1[17]), .B1(term_a2[17]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1949), .COUT(n1950), .S0(n1335), .S1(n1334));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_163_18.INIT0 = 16'h5666;
    defparam add_163_18.INIT1 = 16'h5666;
    defparam add_163_18.INJECT1_0 = "NO";
    defparam add_163_18.INJECT1_1 = "NO";
    CCU2D add_163_16 (.A0(n566_adj_84), .B0(n563_adj_83), .C0(term_a1[14]), 
          .D0(GND_net), .A1(n651), .B1(n648), .C1(term_a2[15]), .D1(GND_net), 
          .CIN(n1948), .COUT(n1949), .S0(n1337), .S1(n1336));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_163_16.INIT0 = 16'h9696;
    defparam add_163_16.INIT1 = 16'h9696;
    defparam add_163_16.INJECT1_0 = "NO";
    defparam add_163_16.INJECT1_1 = "NO";
    CCU2D add_163_14 (.A0(term_a1[12]), .B0(term_a2[12]), .C0(GND_net), 
          .D0(GND_net), .A1(term_a1[13]), .B1(term_a2[13]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1947), .COUT(n1948), .S0(n1339), .S1(n1338));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_163_14.INIT0 = 16'h5666;
    defparam add_163_14.INIT1 = 16'h5666;
    defparam add_163_14.INJECT1_0 = "NO";
    defparam add_163_14.INJECT1_1 = "NO";
    CCU2D add_104_8 (.A0(n312), .B0(term_a1[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n355), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1693), 
          .COUT(n1694), .S0(n352), .S1(n395));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_104_8.INIT0 = 16'h5666;
    defparam add_104_8.INIT1 = 16'h5aaa;
    defparam add_104_8.INJECT1_0 = "NO";
    defparam add_104_8.INJECT1_1 = "NO";
    CCU2D add_163_12 (.A0(term_a1[10]), .B0(term_a2[10]), .C0(GND_net), 
          .D0(GND_net), .A1(term_a1[11]), .B1(term_a2[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1946), .COUT(n1947), .S0(n1341), .S1(n1340));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_163_12.INIT0 = 16'h5666;
    defparam add_163_12.INIT1 = 16'h5666;
    defparam add_163_12.INJECT1_0 = "NO";
    defparam add_163_12.INJECT1_1 = "NO";
    CCU2D add_163_10 (.A0(term_a1[8]), .B0(term_a2[8]), .C0(GND_net), 
          .D0(GND_net), .A1(term_a1[9]), .B1(term_a2[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1945), .COUT(n1946), .S0(n1343), .S1(n1342));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_163_10.INIT0 = 16'h5666;
    defparam add_163_10.INIT1 = 16'h5666;
    defparam add_163_10.INJECT1_0 = "NO";
    defparam add_163_10.INJECT1_1 = "NO";
    CCU2D add_163_8 (.A0(term_a1[6]), .B0(term_a2[6]), .C0(GND_net), .D0(GND_net), 
          .A1(term_a1[7]), .B1(term_a2[7]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1944), .COUT(n1945), .S0(n1345), .S1(n1344));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_163_8.INIT0 = 16'h5666;
    defparam add_163_8.INIT1 = 16'h5666;
    defparam add_163_8.INJECT1_0 = "NO";
    defparam add_163_8.INJECT1_1 = "NO";
    CCU2D add_163_6 (.A0(term_a1[4]), .B0(term_a2[4]), .C0(GND_net), .D0(GND_net), 
          .A1(term_a1[5]), .B1(term_a2[5]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1943), .COUT(n1944), .S0(n1347), .S1(n1346));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_163_6.INIT0 = 16'h5666;
    defparam add_163_6.INIT1 = 16'h5666;
    defparam add_163_6.INJECT1_0 = "NO";
    defparam add_163_6.INJECT1_1 = "NO";
    CCU2D add_163_4 (.A0(x_d2[2]), .B0(x_d2[0]), .C0(term_a1[2]), .D0(GND_net), 
          .A1(x_d1_c_3), .B1(x_d1_c_0), .C1(term_a2[3]), .D1(GND_net), 
          .CIN(n1942), .COUT(n1943), .S0(n1349), .S1(n1348));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_163_4.INIT0 = 16'h9696;
    defparam add_163_4.INIT1 = 16'h9696;
    defparam add_163_4.INJECT1_0 = "NO";
    defparam add_163_4.INJECT1_1 = "NO";
    CCU2D add_163_2 (.A0(x_d1_c_0), .B0(x_d2[0]), .C0(GND_net), .D0(GND_net), 
          .A1(term_a1[1]), .B1(term_a2[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1942), .S1(n1350));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_163_2.INIT0 = 16'h7000;
    defparam add_163_2.INIT1 = 16'h5666;
    defparam add_163_2.INJECT1_0 = "NO";
    defparam add_163_2.INJECT1_1 = "NO";
    CCU2D add_141_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1940), 
          .S0(n763));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_141_cout.INIT0 = 16'h0000;
    defparam add_141_cout.INIT1 = 16'h0000;
    defparam add_141_cout.INJECT1_0 = "NO";
    defparam add_141_cout.INJECT1_1 = "NO";
    CCU2D add_141_14 (.A0(n1387), .B0(y_d2[6]), .C0(GND_net), .D0(GND_net), 
          .A1(n1386), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1939), 
          .COUT(n1940), .S0(n706), .S1(n762));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_141_14.INIT0 = 16'h5666;
    defparam add_141_14.INIT1 = 16'h5aaa;
    defparam add_141_14.INJECT1_0 = "NO";
    defparam add_141_14.INJECT1_1 = "NO";
    CCU2D add_141_12 (.A0(n1389), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1388), .B1(y_d2[6]), .C1(GND_net), .D1(GND_net), .CIN(n1938), 
          .COUT(n1939), .S0(n608), .S1(n657));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_141_12.INIT0 = 16'h5aaa;
    defparam add_141_12.INIT1 = 16'h5666;
    defparam add_141_12.INJECT1_0 = "NO";
    defparam add_141_12.INJECT1_1 = "NO";
    CCU2D add_141_10 (.A0(n1391), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1390), .B1(y_d2[6]), .C1(GND_net), .D1(GND_net), .CIN(n1937), 
          .COUT(n1938), .S0(n510), .S1(n559));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_141_10.INIT0 = 16'h5aaa;
    defparam add_141_10.INIT1 = 16'h5666;
    defparam add_141_10.INJECT1_0 = "NO";
    defparam add_141_10.INJECT1_1 = "NO";
    CCU2D add_141_8 (.A0(n1393), .B0(y_d2[6]), .C0(GND_net), .D0(GND_net), 
          .A1(n1392), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1936), 
          .COUT(n1937), .S0(n412), .S1(n461));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_141_8.INIT0 = 16'h5666;
    defparam add_141_8.INIT1 = 16'h5aaa;
    defparam add_141_8.INJECT1_0 = "NO";
    defparam add_141_8.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(rst_n_c));
    CCU2D add_141_6 (.A0(n1395), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1394), .B1(y_d2[6]), .C1(GND_net), .D1(GND_net), .CIN(n1935), 
          .COUT(n1936), .S0(n314), .S1(n363));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_141_6.INIT0 = 16'h5aaa;
    defparam add_141_6.INIT1 = 16'h5666;
    defparam add_141_6.INJECT1_0 = "NO";
    defparam add_141_6.INJECT1_1 = "NO";
    CCU2D add_141_4 (.A0(n1397), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1396), .B1(y_d2[6]), .C1(GND_net), .D1(GND_net), .CIN(n1934), 
          .COUT(n1935), .S0(n216), .S1(n265));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_141_4.INIT0 = 16'h5aaa;
    defparam add_141_4.INIT1 = 16'h5666;
    defparam add_141_4.INJECT1_0 = "NO";
    defparam add_141_4.INJECT1_1 = "NO";
    CCU2D add_141_2 (.A0(y_d2[8]), .B0(y_d2[6]), .C0(GND_net), .D0(GND_net), 
          .A1(y_d2[8]), .B1(y_d2[7]), .C1(y_d2[6]), .D1(GND_net), .COUT(n1934), 
          .S1(n167));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_141_2.INIT0 = 16'h7000;
    defparam add_141_2.INIT1 = 16'h9696;
    defparam add_141_2.INJECT1_0 = "NO";
    defparam add_141_2.INJECT1_1 = "NO";
    CCU2D add_140_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1932), 
          .S0(n759));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_140_cout.INIT0 = 16'h0000;
    defparam add_140_cout.INIT1 = 16'h0000;
    defparam add_140_cout.INJECT1_0 = "NO";
    defparam add_140_cout.INJECT1_1 = "NO";
    CCU2D add_140_14 (.A0(n657), .B0(y_d2[5]), .C0(GND_net), .D0(GND_net), 
          .A1(n706), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1931), 
          .COUT(n1932), .S0(n703), .S1(n758));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_140_14.INIT0 = 16'h5666;
    defparam add_140_14.INIT1 = 16'h5aaa;
    defparam add_140_14.INJECT1_0 = "NO";
    defparam add_140_14.INJECT1_1 = "NO";
    CCU2D add_140_12 (.A0(n559), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n608), .B1(y_d2[5]), .C1(GND_net), .D1(GND_net), .CIN(n1930), 
          .COUT(n1931), .S0(n605), .S1(n654));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_140_12.INIT0 = 16'h5aaa;
    defparam add_140_12.INIT1 = 16'h5666;
    defparam add_140_12.INJECT1_0 = "NO";
    defparam add_140_12.INJECT1_1 = "NO";
    CCU2D add_140_10 (.A0(n461), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n510), .B1(y_d2[5]), .C1(GND_net), .D1(GND_net), .CIN(n1929), 
          .COUT(n1930), .S0(n507), .S1(n556));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_140_10.INIT0 = 16'h5aaa;
    defparam add_140_10.INIT1 = 16'h5666;
    defparam add_140_10.INJECT1_0 = "NO";
    defparam add_140_10.INJECT1_1 = "NO";
    CCU2D add_232_8 (.A0(n1477), .B0(n25), .C0(GND_net), .D0(GND_net), 
          .A1(n1478), .B1(n24), .C1(GND_net), .D1(GND_net), .CIN(n1669), 
          .COUT(n1670), .S0(n1647), .S1(n1646));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_232_8.INIT0 = 16'h5666;
    defparam add_232_8.INIT1 = 16'h5666;
    defparam add_232_8.INJECT1_0 = "NO";
    defparam add_232_8.INJECT1_1 = "NO";
    CCU2D add_140_8 (.A0(n363), .B0(y_d2[5]), .C0(GND_net), .D0(GND_net), 
          .A1(n412), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1928), 
          .COUT(n1929), .S0(n409), .S1(n458));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_140_8.INIT0 = 16'h5666;
    defparam add_140_8.INIT1 = 16'h5aaa;
    defparam add_140_8.INJECT1_0 = "NO";
    defparam add_140_8.INJECT1_1 = "NO";
    CCU2D add_106_8 (.A0(x_d1_c_6), .B0(x_d1_c_4), .C0(GND_net), .D0(GND_net), 
          .A1(n361), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1707), 
          .COUT(n1708), .S0(n358), .S1(n401));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_106_8.INIT0 = 16'h5666;
    defparam add_106_8.INIT1 = 16'h5aaa;
    defparam add_106_8.INJECT1_0 = "NO";
    defparam add_106_8.INJECT1_1 = "NO";
    CCU2D add_232_6 (.A0(n1475), .B0(n27_adj_6), .C0(GND_net), .D0(GND_net), 
          .A1(n1476), .B1(n26_adj_5), .C1(GND_net), .D1(GND_net), .CIN(n1668), 
          .COUT(n1669), .S0(n1649), .S1(n1648));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_232_6.INIT0 = 16'h5666;
    defparam add_232_6.INIT1 = 16'h5666;
    defparam add_232_6.INJECT1_0 = "NO";
    defparam add_232_6.INJECT1_1 = "NO";
    CCU2D add_105_4 (.A0(n143), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n186), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1698), 
          .COUT(n1699), .S0(n183), .S1(n226));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_105_4.INIT0 = 16'h5aaa;
    defparam add_105_4.INIT1 = 16'h5aaa;
    defparam add_105_4.INJECT1_0 = "NO";
    defparam add_105_4.INJECT1_1 = "NO";
    CCU2D add_140_6 (.A0(n265), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n314), .B1(y_d2[5]), .C1(GND_net), .D1(GND_net), .CIN(n1927), 
          .COUT(n1928), .S0(n311), .S1(n360));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_140_6.INIT0 = 16'h5aaa;
    defparam add_140_6.INIT1 = 16'h5666;
    defparam add_140_6.INJECT1_0 = "NO";
    defparam add_140_6.INJECT1_1 = "NO";
    CCU2D add_140_4 (.A0(n167), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n216), .B1(y_d2[5]), .C1(GND_net), .D1(GND_net), .CIN(n1926), 
          .COUT(n1927), .S0(n213), .S1(n262));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_140_4.INIT0 = 16'h5aaa;
    defparam add_140_4.INIT1 = 16'h5666;
    defparam add_140_4.INJECT1_0 = "NO";
    defparam add_140_4.INJECT1_1 = "NO";
    CCU2D add_140_2 (.A0(y_d2[7]), .B0(y_d2[5]), .C0(GND_net), .D0(GND_net), 
          .A1(n118), .B1(y_d2[5]), .C1(GND_net), .D1(GND_net), .COUT(n1926), 
          .S1(n164));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_140_2.INIT0 = 16'h7000;
    defparam add_140_2.INIT1 = 16'h5666;
    defparam add_140_2.INJECT1_0 = "NO";
    defparam add_140_2.INJECT1_1 = "NO";
    LUT4 i286_2_lut (.A(clk_divide_counter[3]), .B(clk_divide_counter[0]), 
         .Z(n2008)) /* synthesis lut_function=(A (B)) */ ;
    defparam i286_2_lut.init = 16'h8888;
    CCU2D add_139_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1924), 
          .S0(n755));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_139_cout.INIT0 = 16'h0000;
    defparam add_139_cout.INIT1 = 16'h0000;
    defparam add_139_cout.INJECT1_0 = "NO";
    defparam add_139_cout.INJECT1_1 = "NO";
    CCU2D add_139_14 (.A0(n654), .B0(y_d2[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n703), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1923), 
          .COUT(n1924), .S0(n700), .S1(n754));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_139_14.INIT0 = 16'h5666;
    defparam add_139_14.INIT1 = 16'h5aaa;
    defparam add_139_14.INJECT1_0 = "NO";
    defparam add_139_14.INJECT1_1 = "NO";
    CCU2D add_139_12 (.A0(n556), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n605), .B1(y_d2[4]), .C1(GND_net), .D1(GND_net), .CIN(n1922), 
          .COUT(n1923), .S0(n602), .S1(n651_adj_166));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_139_12.INIT0 = 16'h5aaa;
    defparam add_139_12.INIT1 = 16'h5666;
    defparam add_139_12.INJECT1_0 = "NO";
    defparam add_139_12.INJECT1_1 = "NO";
    CCU2D add_139_10 (.A0(n458), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n507), .B1(y_d2[4]), .C1(GND_net), .D1(GND_net), .CIN(n1921), 
          .COUT(n1922), .S0(n504), .S1(n553));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_139_10.INIT0 = 16'h5aaa;
    defparam add_139_10.INIT1 = 16'h5666;
    defparam add_139_10.INJECT1_0 = "NO";
    defparam add_139_10.INJECT1_1 = "NO";
    CCU2D add_139_8 (.A0(n360), .B0(y_d2[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n409), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1920), 
          .COUT(n1921), .S0(n406), .S1(n455));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_139_8.INIT0 = 16'h5666;
    defparam add_139_8.INIT1 = 16'h5aaa;
    defparam add_139_8.INJECT1_0 = "NO";
    defparam add_139_8.INJECT1_1 = "NO";
    CCU2D add_139_6 (.A0(n262), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n311), .B1(y_d2[4]), .C1(GND_net), .D1(GND_net), .CIN(n1919), 
          .COUT(n1920), .S0(n308), .S1(n357));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_139_6.INIT0 = 16'h5aaa;
    defparam add_139_6.INIT1 = 16'h5666;
    defparam add_139_6.INJECT1_0 = "NO";
    defparam add_139_6.INJECT1_1 = "NO";
    CCU2D add_139_4 (.A0(n164), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n213), .B1(y_d2[4]), .C1(GND_net), .D1(GND_net), .CIN(n1918), 
          .COUT(n1919), .S0(n210), .S1(n259));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_139_4.INIT0 = 16'h5aaa;
    defparam add_139_4.INIT1 = 16'h5666;
    defparam add_139_4.INJECT1_0 = "NO";
    defparam add_139_4.INJECT1_1 = "NO";
    CCU2D add_139_2 (.A0(y_d2[6]), .B0(y_d2[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n115_adj_154), .B1(y_d2[4]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1918), .S1(n161_adj_159));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_139_2.INIT0 = 16'h7000;
    defparam add_139_2.INIT1 = 16'h5666;
    defparam add_139_2.INJECT1_0 = "NO";
    defparam add_139_2.INJECT1_1 = "NO";
    LUT4 i273_2_lut (.A(x_d1_c_0), .B(x_d2[0]), .Z(n1351)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i273_2_lut.init = 16'h6666;
    CCU2D add_138_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1916), 
          .S0(n751));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_138_cout.INIT0 = 16'h0000;
    defparam add_138_cout.INIT1 = 16'h0000;
    defparam add_138_cout.INJECT1_0 = "NO";
    defparam add_138_cout.INJECT1_1 = "NO";
    CCU2D add_138_14 (.A0(n651_adj_166), .B0(y_d2[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n700), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1915), 
          .COUT(n1916), .S0(n697), .S1(n750));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_138_14.INIT0 = 16'h5666;
    defparam add_138_14.INIT1 = 16'h5aaa;
    defparam add_138_14.INJECT1_0 = "NO";
    defparam add_138_14.INJECT1_1 = "NO";
    CCU2D add_138_12 (.A0(n553), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n602), .B1(y_d2[3]), .C1(GND_net), .D1(GND_net), .CIN(n1914), 
          .COUT(n1915), .S0(n599), .S1(n648_adj_165));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_138_12.INIT0 = 16'h5aaa;
    defparam add_138_12.INIT1 = 16'h5666;
    defparam add_138_12.INJECT1_0 = "NO";
    defparam add_138_12.INJECT1_1 = "NO";
    CCU2D add_138_10 (.A0(n455), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n504), .B1(y_d2[3]), .C1(GND_net), .D1(GND_net), .CIN(n1913), 
          .COUT(n1914), .S0(n501), .S1(n550));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_138_10.INIT0 = 16'h5aaa;
    defparam add_138_10.INIT1 = 16'h5666;
    defparam add_138_10.INJECT1_0 = "NO";
    defparam add_138_10.INJECT1_1 = "NO";
    CCU2D add_138_8 (.A0(n357), .B0(y_d2[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n406), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1912), 
          .COUT(n1913), .S0(n403), .S1(n452));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_138_8.INIT0 = 16'h5666;
    defparam add_138_8.INIT1 = 16'h5aaa;
    defparam add_138_8.INJECT1_0 = "NO";
    defparam add_138_8.INJECT1_1 = "NO";
    CCU2D add_138_6 (.A0(n259), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n308), .B1(y_d2[3]), .C1(GND_net), .D1(GND_net), .CIN(n1911), 
          .COUT(n1912), .S0(n305), .S1(n354));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_138_6.INIT0 = 16'h5aaa;
    defparam add_138_6.INIT1 = 16'h5666;
    defparam add_138_6.INJECT1_0 = "NO";
    defparam add_138_6.INJECT1_1 = "NO";
    CCU2D add_138_4 (.A0(n161_adj_159), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n210), .B1(y_d2[3]), .C1(GND_net), .D1(GND_net), .CIN(n1910), 
          .COUT(n1911), .S0(n207), .S1(n256));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_138_4.INIT0 = 16'h5aaa;
    defparam add_138_4.INIT1 = 16'h5666;
    defparam add_138_4.INJECT1_0 = "NO";
    defparam add_138_4.INJECT1_1 = "NO";
    CCU2D add_138_2 (.A0(y_d2[5]), .B0(y_d2[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n112_adj_153), .B1(y_d2[3]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1910), .S1(n158_adj_158));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_138_2.INIT0 = 16'h7000;
    defparam add_138_2.INIT1 = 16'h5666;
    defparam add_138_2.INJECT1_0 = "NO";
    defparam add_138_2.INJECT1_1 = "NO";
    LUT4 i239_2_lut (.A(x_d1_c_5), .B(x_d1_c_3), .Z(n97)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i239_2_lut.init = 16'h6666;
    CCU2D add_137_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1908), 
          .S0(n747));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_137_cout.INIT0 = 16'h0000;
    defparam add_137_cout.INIT1 = 16'h0000;
    defparam add_137_cout.INJECT1_0 = "NO";
    defparam add_137_cout.INJECT1_1 = "NO";
    CCU2D add_137_14 (.A0(n648_adj_165), .B0(y_d2[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n697), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1907), 
          .COUT(n1908), .S0(n694), .S1(n746));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_137_14.INIT0 = 16'h5666;
    defparam add_137_14.INIT1 = 16'h5aaa;
    defparam add_137_14.INJECT1_0 = "NO";
    defparam add_137_14.INJECT1_1 = "NO";
    CCU2D add_137_12 (.A0(n550), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n599), .B1(y_d2[2]), .C1(GND_net), .D1(GND_net), .CIN(n1906), 
          .COUT(n1907), .S0(n596), .S1(n645));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_137_12.INIT0 = 16'h5aaa;
    defparam add_137_12.INIT1 = 16'h5666;
    defparam add_137_12.INJECT1_0 = "NO";
    defparam add_137_12.INJECT1_1 = "NO";
    CCU2D add_137_10 (.A0(n452), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n501), .B1(y_d2[2]), .C1(GND_net), .D1(GND_net), .CIN(n1905), 
          .COUT(n1906), .S0(n498), .S1(n547));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_137_10.INIT0 = 16'h5aaa;
    defparam add_137_10.INIT1 = 16'h5666;
    defparam add_137_10.INJECT1_0 = "NO";
    defparam add_137_10.INJECT1_1 = "NO";
    CCU2D add_137_8 (.A0(n354), .B0(y_d2[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n403), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1904), 
          .COUT(n1905), .S0(n400), .S1(n449));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_137_8.INIT0 = 16'h5666;
    defparam add_137_8.INIT1 = 16'h5aaa;
    defparam add_137_8.INJECT1_0 = "NO";
    defparam add_137_8.INJECT1_1 = "NO";
    CCU2D add_137_6 (.A0(n256), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n305), .B1(y_d2[2]), .C1(GND_net), .D1(GND_net), .CIN(n1903), 
          .COUT(n1904), .S0(n302), .S1(n351));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_137_6.INIT0 = 16'h5aaa;
    defparam add_137_6.INIT1 = 16'h5666;
    defparam add_137_6.INJECT1_0 = "NO";
    defparam add_137_6.INJECT1_1 = "NO";
    CCU2D add_137_4 (.A0(n158_adj_158), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n207), .B1(y_d2[2]), .C1(GND_net), .D1(GND_net), .CIN(n1902), 
          .COUT(n1903), .S0(n204_adj_161), .S1(n253_adj_163));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_137_4.INIT0 = 16'h5aaa;
    defparam add_137_4.INIT1 = 16'h5666;
    defparam add_137_4.INJECT1_0 = "NO";
    defparam add_137_4.INJECT1_1 = "NO";
    CCU2D add_137_2 (.A0(y_d2[4]), .B0(y_d2[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n109_adj_152), .B1(y_d2[2]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1902), .S1(n155_adj_157));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_137_2.INIT0 = 16'h7000;
    defparam add_137_2.INIT1 = 16'h5666;
    defparam add_137_2.INJECT1_0 = "NO";
    defparam add_137_2.INJECT1_1 = "NO";
    LUT4 i238_2_lut (.A(x_d1_c_4), .B(term_a1[2]), .Z(n94)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i238_2_lut.init = 16'h6666;
    CCU2D add_136_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1900), 
          .S0(n743));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_136_cout.INIT0 = 16'h0000;
    defparam add_136_cout.INIT1 = 16'h0000;
    defparam add_136_cout.INJECT1_0 = "NO";
    defparam add_136_cout.INJECT1_1 = "NO";
    CCU2D add_136_14 (.A0(n645), .B0(y_d2[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n694), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1899), 
          .COUT(n1900), .S0(n691), .S1(n742));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_136_14.INIT0 = 16'h5666;
    defparam add_136_14.INIT1 = 16'h5aaa;
    defparam add_136_14.INJECT1_0 = "NO";
    defparam add_136_14.INJECT1_1 = "NO";
    CCU2D add_136_12 (.A0(n547), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n596), .B1(y_d2[1]), .C1(GND_net), .D1(GND_net), .CIN(n1898), 
          .COUT(n1899), .S0(n593), .S1(n642));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_136_12.INIT0 = 16'h5aaa;
    defparam add_136_12.INIT1 = 16'h5666;
    defparam add_136_12.INJECT1_0 = "NO";
    defparam add_136_12.INJECT1_1 = "NO";
    CCU2D add_136_10 (.A0(n449), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n498), .B1(y_d2[1]), .C1(GND_net), .D1(GND_net), .CIN(n1897), 
          .COUT(n1898), .S0(n495), .S1(n544));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_136_10.INIT0 = 16'h5aaa;
    defparam add_136_10.INIT1 = 16'h5666;
    defparam add_136_10.INJECT1_0 = "NO";
    defparam add_136_10.INJECT1_1 = "NO";
    CCU2D add_136_8 (.A0(n351), .B0(y_d2[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n400), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1896), 
          .COUT(n1897), .S0(n397), .S1(n446));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_136_8.INIT0 = 16'h5666;
    defparam add_136_8.INIT1 = 16'h5aaa;
    defparam add_136_8.INJECT1_0 = "NO";
    defparam add_136_8.INJECT1_1 = "NO";
    CCU2D add_136_6 (.A0(n253_adj_163), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n302), .B1(y_d2[1]), .C1(GND_net), .D1(GND_net), .CIN(n1895), 
          .COUT(n1896), .S0(n299_adj_164), .S1(n348));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_136_6.INIT0 = 16'h5aaa;
    defparam add_136_6.INIT1 = 16'h5666;
    defparam add_136_6.INJECT1_0 = "NO";
    defparam add_136_6.INJECT1_1 = "NO";
    CCU2D add_136_4 (.A0(n155_adj_157), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n204_adj_161), .B1(y_d2[1]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1894), .COUT(n1895), .S0(n201_adj_160), .S1(n250_adj_162));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_136_4.INIT0 = 16'h5aaa;
    defparam add_136_4.INIT1 = 16'h5666;
    defparam add_136_4.INJECT1_0 = "NO";
    defparam add_136_4.INJECT1_1 = "NO";
    CCU2D add_136_2 (.A0(y_d2[3]), .B0(y_d2[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n106_adj_151), .B1(y_d2[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1894), .S1(n152_adj_156));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_136_2.INIT0 = 16'h7000;
    defparam add_136_2.INIT1 = 16'h5666;
    defparam add_136_2.INJECT1_0 = "NO";
    defparam add_136_2.INJECT1_1 = "NO";
    LUT4 i241_2_lut (.A(x_d1_c_7), .B(x_d1_c_5), .Z(n103)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i241_2_lut.init = 16'h6666;
    CCU2D add_17_add_1_23 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1891), 
          .S0(n10_adj_1), .S1(n9));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_17_add_1_23.INIT0 = 16'h0fff;
    defparam add_17_add_1_23.INIT1 = 16'h0fff;
    defparam add_17_add_1_23.INJECT1_0 = "NO";
    defparam add_17_add_1_23.INJECT1_1 = "NO";
    CCU2D add_17_add_1_21 (.A0(term_a0[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(term_a0[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1890), .COUT(n1891), .S0(n12), .S1(n11));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_17_add_1_21.INIT0 = 16'h0555;
    defparam add_17_add_1_21.INIT1 = 16'h0555;
    defparam add_17_add_1_21.INJECT1_0 = "NO";
    defparam add_17_add_1_21.INJECT1_1 = "NO";
    CCU2D add_17_add_1_19 (.A0(term_a0[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(term_a0[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1889), .COUT(n1890), .S0(n14), .S1(n13));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_17_add_1_19.INIT0 = 16'h0555;
    defparam add_17_add_1_19.INIT1 = 16'h0555;
    defparam add_17_add_1_19.INJECT1_0 = "NO";
    defparam add_17_add_1_19.INJECT1_1 = "NO";
    CCU2D add_17_add_1_17 (.A0(term_a0[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(term_a0[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1888), .COUT(n1889), .S0(n16_adj_2), .S1(n15));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_17_add_1_17.INIT0 = 16'h0555;
    defparam add_17_add_1_17.INIT1 = 16'h0555;
    defparam add_17_add_1_17.INJECT1_0 = "NO";
    defparam add_17_add_1_17.INJECT1_1 = "NO";
    CCU2D add_17_add_1_15 (.A0(term_a0[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n566), .B1(n563), .C1(GND_net), .D1(GND_net), 
          .CIN(n1887), .COUT(n1888), .S0(n18_adj_3), .S1(n17));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_17_add_1_15.INIT0 = 16'h0555;
    defparam add_17_add_1_15.INIT1 = 16'h9999;
    defparam add_17_add_1_15.INJECT1_0 = "NO";
    defparam add_17_add_1_15.INJECT1_1 = "NO";
    CCU2D add_17_add_1_13 (.A0(term_a0[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(term_a0[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1886), .COUT(n1887), .S0(n20), .S1(n19_adj_4));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_17_add_1_13.INIT0 = 16'h0555;
    defparam add_17_add_1_13.INIT1 = 16'h0555;
    defparam add_17_add_1_13.INJECT1_0 = "NO";
    defparam add_17_add_1_13.INJECT1_1 = "NO";
    CCU2D add_17_add_1_11 (.A0(term_a0[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(term_a0[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1885), .COUT(n1886), .S0(n22), .S1(n21));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_17_add_1_11.INIT0 = 16'h0555;
    defparam add_17_add_1_11.INIT1 = 16'h0555;
    defparam add_17_add_1_11.INJECT1_0 = "NO";
    defparam add_17_add_1_11.INJECT1_1 = "NO";
    CCU2D add_17_add_1_9 (.A0(term_a0[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(term_a0[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1884), .COUT(n1885), .S0(n24), .S1(n23));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_17_add_1_9.INIT0 = 16'h0555;
    defparam add_17_add_1_9.INIT1 = 16'h0555;
    defparam add_17_add_1_9.INJECT1_0 = "NO";
    defparam add_17_add_1_9.INJECT1_1 = "NO";
    CCU2D add_17_add_1_7 (.A0(term_a0[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(term_a0[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1883), .COUT(n1884), .S0(n26_adj_5), .S1(n25));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_17_add_1_7.INIT0 = 16'h0555;
    defparam add_17_add_1_7.INIT1 = 16'h0555;
    defparam add_17_add_1_7.INJECT1_0 = "NO";
    defparam add_17_add_1_7.INJECT1_1 = "NO";
    CCU2D add_17_add_1_5 (.A0(term_a0[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(term_a0[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1882), .COUT(n1883), .S0(n28), .S1(n27_adj_6));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_17_add_1_5.INIT0 = 16'h0555;
    defparam add_17_add_1_5.INIT1 = 16'h0555;
    defparam add_17_add_1_5.INJECT1_0 = "NO";
    defparam add_17_add_1_5.INJECT1_1 = "NO";
    CCU2D add_17_add_1_3 (.A0(term_a1[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(term_a1[2]), .B1(x_d1_c_0), .C1(GND_net), 
          .D1(GND_net), .CIN(n1881), .COUT(n1882), .S0(n30), .S1(n29));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_17_add_1_3.INIT0 = 16'h0555;
    defparam add_17_add_1_3.INIT1 = 16'h9999;
    defparam add_17_add_1_3.INJECT1_0 = "NO";
    defparam add_17_add_1_3.INJECT1_1 = "NO";
    CCU2D add_17_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(x_d1_c_0), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1881), 
          .S1(n31));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_17_add_1_1.INIT0 = 16'hF000;
    defparam add_17_add_1_1.INIT1 = 16'h0555;
    defparam add_17_add_1_1.INJECT1_0 = "NO";
    defparam add_17_add_1_1.INJECT1_1 = "NO";
    CCU2D add_135_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1880), 
          .S0(n739));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_135_cout.INIT0 = 16'h0000;
    defparam add_135_cout.INIT1 = 16'h0000;
    defparam add_135_cout.INJECT1_0 = "NO";
    defparam add_135_cout.INJECT1_1 = "NO";
    CCU2D add_135_14 (.A0(n642), .B0(term_b1[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n691), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1879), 
          .COUT(n1880), .S0(n926), .S1(n738));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_135_14.INIT0 = 16'h5666;
    defparam add_135_14.INIT1 = 16'h5aaa;
    defparam add_135_14.INJECT1_0 = "NO";
    defparam add_135_14.INJECT1_1 = "NO";
    CCU2D add_135_12 (.A0(n544), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n593), .B1(term_b1[1]), .C1(GND_net), .D1(GND_net), .CIN(n1878), 
          .COUT(n1879), .S0(n924), .S1(n925));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_135_12.INIT0 = 16'h5aaa;
    defparam add_135_12.INIT1 = 16'h5666;
    defparam add_135_12.INJECT1_0 = "NO";
    defparam add_135_12.INJECT1_1 = "NO";
    CCU2D add_135_10 (.A0(n446), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n495), .B1(term_b1[1]), .C1(GND_net), .D1(GND_net), .CIN(n1877), 
          .COUT(n1878), .S0(n922), .S1(n923));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_135_10.INIT0 = 16'h5aaa;
    defparam add_135_10.INIT1 = 16'h5666;
    defparam add_135_10.INJECT1_0 = "NO";
    defparam add_135_10.INJECT1_1 = "NO";
    CCU2D add_135_8 (.A0(n348), .B0(term_b1[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n397), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1876), 
          .COUT(n1877), .S0(n920), .S1(n921));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_135_8.INIT0 = 16'h5666;
    defparam add_135_8.INIT1 = 16'h5aaa;
    defparam add_135_8.INJECT1_0 = "NO";
    defparam add_135_8.INJECT1_1 = "NO";
    CCU2D add_135_6 (.A0(n250_adj_162), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n299_adj_164), .B1(term_b1[1]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1875), .COUT(n1876), .S0(n918), .S1(n919));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_135_6.INIT0 = 16'h5aaa;
    defparam add_135_6.INIT1 = 16'h5666;
    defparam add_135_6.INJECT1_0 = "NO";
    defparam add_135_6.INJECT1_1 = "NO";
    CCU2D add_135_4 (.A0(n152_adj_156), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n201_adj_160), .B1(term_b1[1]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1874), .COUT(n1875), .S0(n916), .S1(n917));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_135_4.INIT0 = 16'h5aaa;
    defparam add_135_4.INIT1 = 16'h5666;
    defparam add_135_4.INJECT1_0 = "NO";
    defparam add_135_4.INJECT1_1 = "NO";
    CCU2D add_135_2 (.A0(y_d2[2]), .B0(term_b1[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n103_adj_150), .B1(term_b1[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1874), .S1(n915));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_135_2.INIT0 = 16'h7000;
    defparam add_135_2.INIT1 = 16'h5666;
    defparam add_135_2.INJECT1_0 = "NO";
    defparam add_135_2.INJECT1_1 = "NO";
    LUT4 i272_2_lut (.A(y_d2[8]), .B(y_d2[6]), .Z(n118)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i272_2_lut.init = 16'h6666;
    CCU2D y_d1_8__I_0_add_504_10 (.A0(n676), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1871), .S0(term_b1[22]), .S1(term_b1[31]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam y_d1_8__I_0_add_504_10.INIT0 = 16'h0555;
    defparam y_d1_8__I_0_add_504_10.INIT1 = 16'h0fff;
    defparam y_d1_8__I_0_add_504_10.INJECT1_0 = "NO";
    defparam y_d1_8__I_0_add_504_10.INJECT1_1 = "NO";
    CCU2D y_d1_8__I_0_add_504_8 (.A0(n671), .B0(n668), .C0(GND_net), .D0(GND_net), 
          .A1(n675), .B1(n672), .C1(GND_net), .D1(GND_net), .CIN(n1870), 
          .COUT(n1871), .S0(term_b1[20]), .S1(term_b1[21]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam y_d1_8__I_0_add_504_8.INIT0 = 16'h5666;
    defparam y_d1_8__I_0_add_504_8.INIT1 = 16'h5666;
    defparam y_d1_8__I_0_add_504_8.INJECT1_0 = "NO";
    defparam y_d1_8__I_0_add_504_8.INJECT1_1 = "NO";
    CCU2D y_d1_8__I_0_add_504_6 (.A0(n663_adj_148), .B0(n660_adj_147), .C0(GND_net), 
          .D0(GND_net), .A1(n667), .B1(n664_adj_149), .C1(GND_net), 
          .D1(GND_net), .CIN(n1869), .COUT(n1870), .S0(term_b1[18]), 
          .S1(term_b1[19]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam y_d1_8__I_0_add_504_6.INIT0 = 16'h5666;
    defparam y_d1_8__I_0_add_504_6.INIT1 = 16'h5666;
    defparam y_d1_8__I_0_add_504_6.INJECT1_0 = "NO";
    defparam y_d1_8__I_0_add_504_6.INJECT1_1 = "NO";
    CCU2D y_d1_8__I_0_add_504_4 (.A0(n655_adj_144), .B0(n652_adj_143), .C0(GND_net), 
          .D0(GND_net), .A1(n659_adj_146), .B1(n656_adj_145), .C1(GND_net), 
          .D1(GND_net), .CIN(n1868), .COUT(n1869), .S0(term_b1[16]), 
          .S1(term_b1[17]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam y_d1_8__I_0_add_504_4.INIT0 = 16'h5666;
    defparam y_d1_8__I_0_add_504_4.INIT1 = 16'h5666;
    defparam y_d1_8__I_0_add_504_4.INJECT1_0 = "NO";
    defparam y_d1_8__I_0_add_504_4.INJECT1_1 = "NO";
    CCU2D y_d1_8__I_0_add_504_2 (.A0(n647), .B0(y_d2[8]), .C0(GND_net), 
          .D0(GND_net), .A1(n651_adj_142), .B1(n648_adj_141), .C1(GND_net), 
          .D1(GND_net), .COUT(n1868), .S1(term_b1[15]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam y_d1_8__I_0_add_504_2.INIT0 = 16'h1000;
    defparam y_d1_8__I_0_add_504_2.INIT1 = 16'h5666;
    defparam y_d1_8__I_0_add_504_2.INJECT1_0 = "NO";
    defparam y_d1_8__I_0_add_504_2.INJECT1_1 = "NO";
    LUT4 i271_2_lut (.A(y_d2[7]), .B(y_d2[5]), .Z(n115_adj_154)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i271_2_lut.init = 16'h6666;
    LUT4 i1_2_lut (.A(dac_clk_c), .B(n1405), .Z(adc_clk_N_84)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    CCU2D add_132_14 (.A0(y_d2[8]), .B0(y_d2[7]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1865), 
          .S0(n675), .S1(n676));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_132_14.INIT0 = 16'h5999;
    defparam add_132_14.INIT1 = 16'h0000;
    defparam add_132_14.INJECT1_0 = "NO";
    defparam add_132_14.INJECT1_1 = "NO";
    CCU2D add_132_12 (.A0(y_d2[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1864), 
          .COUT(n1865), .S0(n575_adj_136), .S1(n621));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_132_12.INIT0 = 16'hfaaa;
    defparam add_132_12.INIT1 = 16'hf000;
    defparam add_132_12.INJECT1_0 = "NO";
    defparam add_132_12.INJECT1_1 = "NO";
    CCU2D add_132_10 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(y_d2[8]), .B1(y_d2[7]), .C1(GND_net), .D1(GND_net), .CIN(n1863), 
          .COUT(n1864), .S0(n483), .S1(n529));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_132_10.INIT0 = 16'hf000;
    defparam add_132_10.INIT1 = 16'h5666;
    defparam add_132_10.INJECT1_0 = "NO";
    defparam add_132_10.INJECT1_1 = "NO";
    CCU2D add_132_8 (.A0(y_d2[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(y_d2[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1862), 
          .COUT(n1863), .S0(n391), .S1(n437));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_132_8.INIT0 = 16'hfaaa;
    defparam add_132_8.INIT1 = 16'hfaaa;
    defparam add_132_8.INJECT1_0 = "NO";
    defparam add_132_8.INJECT1_1 = "NO";
    CCU2D add_132_6 (.A0(y_d2[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(y_d2[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1861), 
          .COUT(n1862), .S0(n299), .S1(n345));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_132_6.INIT0 = 16'hfaaa;
    defparam add_132_6.INIT1 = 16'h5aaa;
    defparam add_132_6.INJECT1_0 = "NO";
    defparam add_132_6.INJECT1_1 = "NO";
    CCU2D add_132_4 (.A0(y_d2[8]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(y_d2[8]), .B1(y_d2[7]), .C1(GND_net), .D1(GND_net), .CIN(n1860), 
          .COUT(n1861), .S1(n253));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_132_4.INIT0 = 16'h5aaa;
    defparam add_132_4.INIT1 = 16'h5666;
    defparam add_132_4.INJECT1_0 = "NO";
    defparam add_132_4.INJECT1_1 = "NO";
    CCU2D add_132_2 (.A0(y_d2[8]), .B0(y_d2[7]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1860), 
          .S1(n161));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_132_2.INIT0 = 16'h7000;
    defparam add_132_2.INIT1 = 16'hf000;
    defparam add_132_2.INJECT1_0 = "NO";
    defparam add_132_2.INJECT1_1 = "NO";
    LUT4 i270_2_lut (.A(y_d2[6]), .B(y_d2[4]), .Z(n112_adj_153)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i270_2_lut.init = 16'h6666;
    CCU2D add_131_14 (.A0(n621), .B0(y_d2[6]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1858), 
          .S0(n671), .S1(n672));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_131_14.INIT0 = 16'h5999;
    defparam add_131_14.INIT1 = 16'h0000;
    defparam add_131_14.INJECT1_0 = "NO";
    defparam add_131_14.INJECT1_1 = "NO";
    CCU2D add_131_12 (.A0(n529), .B0(y_d2[6]), .C0(GND_net), .D0(GND_net), 
          .A1(n575_adj_136), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1857), .COUT(n1858), .S0(n572), .S1(n618));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_131_12.INIT0 = 16'h5666;
    defparam add_131_12.INIT1 = 16'h5aaa;
    defparam add_131_12.INJECT1_0 = "NO";
    defparam add_131_12.INJECT1_1 = "NO";
    CCU2D add_131_10 (.A0(n437), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n483), .B1(y_d2[6]), .C1(GND_net), .D1(GND_net), .CIN(n1856), 
          .COUT(n1857), .S0(n480), .S1(n526));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_131_10.INIT0 = 16'h5aaa;
    defparam add_131_10.INIT1 = 16'h5666;
    defparam add_131_10.INJECT1_0 = "NO";
    defparam add_131_10.INJECT1_1 = "NO";
    CCU2D add_131_8 (.A0(n345), .B0(y_d2[6]), .C0(GND_net), .D0(GND_net), 
          .A1(n391), .B1(y_d2[6]), .C1(GND_net), .D1(GND_net), .CIN(n1855), 
          .COUT(n1856), .S0(n388), .S1(n434));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_131_8.INIT0 = 16'h5666;
    defparam add_131_8.INIT1 = 16'h5666;
    defparam add_131_8.INJECT1_0 = "NO";
    defparam add_131_8.INJECT1_1 = "NO";
    CCU2D add_131_6 (.A0(n253), .B0(y_d2[6]), .C0(GND_net), .D0(GND_net), 
          .A1(n299), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1854), 
          .COUT(n1855), .S0(n296), .S1(n342));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_131_6.INIT0 = 16'h5666;
    defparam add_131_6.INIT1 = 16'h5aaa;
    defparam add_131_6.INJECT1_0 = "NO";
    defparam add_131_6.INJECT1_1 = "NO";
    CCU2D add_131_4 (.A0(n161), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(y_d2[8]), .B1(y_d2[6]), .C1(GND_net), .D1(GND_net), .CIN(n1853), 
          .COUT(n1854), .S0(n204), .S1(n250));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_131_4.INIT0 = 16'h5aaa;
    defparam add_131_4.INIT1 = 16'h5666;
    defparam add_131_4.INJECT1_0 = "NO";
    defparam add_131_4.INJECT1_1 = "NO";
    CCU2D add_131_2 (.A0(y_d2[7]), .B0(y_d2[6]), .C0(GND_net), .D0(GND_net), 
          .A1(n115), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1853), 
          .S1(n158));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_131_2.INIT0 = 16'h7000;
    defparam add_131_2.INIT1 = 16'h5aaa;
    defparam add_131_2.INJECT1_0 = "NO";
    defparam add_131_2.INJECT1_1 = "NO";
    LUT4 i269_2_lut (.A(y_d2[5]), .B(y_d2[3]), .Z(n109_adj_152)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i269_2_lut.init = 16'h6666;
    CCU2D add_130_14 (.A0(n618), .B0(y_d2[5]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1851), 
          .S0(n667), .S1(n668));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_130_14.INIT0 = 16'h5999;
    defparam add_130_14.INIT1 = 16'h0000;
    defparam add_130_14.INJECT1_0 = "NO";
    defparam add_130_14.INJECT1_1 = "NO";
    CCU2D add_130_12 (.A0(n526), .B0(y_d2[5]), .C0(GND_net), .D0(GND_net), 
          .A1(n572), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1850), 
          .COUT(n1851), .S0(n569), .S1(n615));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_130_12.INIT0 = 16'h5666;
    defparam add_130_12.INIT1 = 16'h5aaa;
    defparam add_130_12.INJECT1_0 = "NO";
    defparam add_130_12.INJECT1_1 = "NO";
    CCU2D add_130_10 (.A0(n434), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n480), .B1(y_d2[5]), .C1(GND_net), .D1(GND_net), .CIN(n1849), 
          .COUT(n1850), .S0(n477), .S1(n523));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_130_10.INIT0 = 16'h5aaa;
    defparam add_130_10.INIT1 = 16'h5666;
    defparam add_130_10.INJECT1_0 = "NO";
    defparam add_130_10.INJECT1_1 = "NO";
    CCU2D add_130_8 (.A0(n342), .B0(y_d2[5]), .C0(GND_net), .D0(GND_net), 
          .A1(n388), .B1(y_d2[5]), .C1(GND_net), .D1(GND_net), .CIN(n1848), 
          .COUT(n1849), .S0(n385), .S1(n431));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_130_8.INIT0 = 16'h5666;
    defparam add_130_8.INIT1 = 16'h5666;
    defparam add_130_8.INJECT1_0 = "NO";
    defparam add_130_8.INJECT1_1 = "NO";
    CCU2D add_130_6 (.A0(n250), .B0(y_d2[5]), .C0(GND_net), .D0(GND_net), 
          .A1(n296), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1847), 
          .COUT(n1848), .S0(n293), .S1(n339));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_130_6.INIT0 = 16'h5666;
    defparam add_130_6.INIT1 = 16'h5aaa;
    defparam add_130_6.INJECT1_0 = "NO";
    defparam add_130_6.INJECT1_1 = "NO";
    CCU2D add_130_4 (.A0(n158), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n204), .B1(y_d2[5]), .C1(GND_net), .D1(GND_net), .CIN(n1846), 
          .COUT(n1847), .S0(n201), .S1(n247));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_130_4.INIT0 = 16'h5aaa;
    defparam add_130_4.INIT1 = 16'h5666;
    defparam add_130_4.INJECT1_0 = "NO";
    defparam add_130_4.INJECT1_1 = "NO";
    CCU2D add_130_2 (.A0(y_d2[6]), .B0(y_d2[5]), .C0(GND_net), .D0(GND_net), 
          .A1(n112), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1846), 
          .S1(n155));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_130_2.INIT0 = 16'h7000;
    defparam add_130_2.INIT1 = 16'h5aaa;
    defparam add_130_2.INJECT1_0 = "NO";
    defparam add_130_2.INJECT1_1 = "NO";
    LUT4 i268_2_lut (.A(y_d2[4]), .B(y_d2[2]), .Z(n106_adj_151)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i268_2_lut.init = 16'h6666;
    CCU2D add_129_14 (.A0(n615), .B0(y_d2[4]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1844), 
          .S0(n663_adj_148), .S1(n664_adj_149));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_129_14.INIT0 = 16'h5999;
    defparam add_129_14.INIT1 = 16'h0000;
    defparam add_129_14.INJECT1_0 = "NO";
    defparam add_129_14.INJECT1_1 = "NO";
    CCU2D add_129_12 (.A0(n523), .B0(y_d2[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n569), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1843), 
          .COUT(n1844), .S0(n566_adj_135), .S1(n612_adj_140));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_129_12.INIT0 = 16'h5666;
    defparam add_129_12.INIT1 = 16'h5aaa;
    defparam add_129_12.INJECT1_0 = "NO";
    defparam add_129_12.INJECT1_1 = "NO";
    CCU2D add_129_10 (.A0(n431), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n477), .B1(y_d2[4]), .C1(GND_net), .D1(GND_net), .CIN(n1842), 
          .COUT(n1843), .S0(n474_adj_127), .S1(n520_adj_131));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_129_10.INIT0 = 16'h5aaa;
    defparam add_129_10.INIT1 = 16'h5666;
    defparam add_129_10.INJECT1_0 = "NO";
    defparam add_129_10.INJECT1_1 = "NO";
    CCU2D add_129_8 (.A0(n339), .B0(y_d2[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n385), .B1(y_d2[4]), .C1(GND_net), .D1(GND_net), .CIN(n1841), 
          .COUT(n1842), .S0(n382_adj_119), .S1(n428_adj_123));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_129_8.INIT0 = 16'h5666;
    defparam add_129_8.INIT1 = 16'h5666;
    defparam add_129_8.INJECT1_0 = "NO";
    defparam add_129_8.INJECT1_1 = "NO";
    CCU2D add_129_6 (.A0(n247), .B0(y_d2[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n293), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1840), 
          .COUT(n1841), .S0(n290_adj_111), .S1(n336_adj_115));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_129_6.INIT0 = 16'h5666;
    defparam add_129_6.INIT1 = 16'h5aaa;
    defparam add_129_6.INJECT1_0 = "NO";
    defparam add_129_6.INJECT1_1 = "NO";
    CCU2D add_129_4 (.A0(n155), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n201), .B1(y_d2[4]), .C1(GND_net), .D1(GND_net), .CIN(n1839), 
          .COUT(n1840), .S0(n198_adj_103), .S1(n244_adj_107));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_129_4.INIT0 = 16'h5aaa;
    defparam add_129_4.INIT1 = 16'h5666;
    defparam add_129_4.INJECT1_0 = "NO";
    defparam add_129_4.INJECT1_1 = "NO";
    CCU2D add_129_2 (.A0(y_d2[5]), .B0(y_d2[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n109), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1839), 
          .S1(n152_adj_99));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_129_2.INIT0 = 16'h7000;
    defparam add_129_2.INIT1 = 16'h5aaa;
    defparam add_129_2.INJECT1_0 = "NO";
    defparam add_129_2.INJECT1_1 = "NO";
    LUT4 i267_2_lut (.A(y_d2[3]), .B(y_d2[1]), .Z(n103_adj_150)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i267_2_lut.init = 16'h6666;
    CCU2D add_128_14 (.A0(n612_adj_140), .B0(y_d2[3]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1837), 
          .S0(n659_adj_146), .S1(n660_adj_147));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_128_14.INIT0 = 16'h5999;
    defparam add_128_14.INIT1 = 16'h0000;
    defparam add_128_14.INJECT1_0 = "NO";
    defparam add_128_14.INJECT1_1 = "NO";
    CCU2D add_128_12 (.A0(n520_adj_131), .B0(y_d2[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n566_adj_135), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1836), .COUT(n1837), .S0(n563_adj_134), .S1(n609_adj_139));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_128_12.INIT0 = 16'h5666;
    defparam add_128_12.INIT1 = 16'h5aaa;
    defparam add_128_12.INJECT1_0 = "NO";
    defparam add_128_12.INJECT1_1 = "NO";
    CCU2D add_128_10 (.A0(n428_adj_123), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n474_adj_127), .B1(y_d2[3]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1835), .COUT(n1836), .S0(n471_adj_126), .S1(n517_adj_130));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_128_10.INIT0 = 16'h5aaa;
    defparam add_128_10.INIT1 = 16'h5666;
    defparam add_128_10.INJECT1_0 = "NO";
    defparam add_128_10.INJECT1_1 = "NO";
    CCU2D add_128_8 (.A0(n336_adj_115), .B0(y_d2[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n382_adj_119), .B1(y_d2[3]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1834), .COUT(n1835), .S0(n379_adj_118), .S1(n425_adj_122));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_128_8.INIT0 = 16'h5666;
    defparam add_128_8.INIT1 = 16'h5666;
    defparam add_128_8.INJECT1_0 = "NO";
    defparam add_128_8.INJECT1_1 = "NO";
    CCU2D add_128_6 (.A0(n244_adj_107), .B0(y_d2[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n290_adj_111), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1833), .COUT(n1834), .S0(n287_adj_110), .S1(n333_adj_114));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_128_6.INIT0 = 16'h5666;
    defparam add_128_6.INIT1 = 16'h5aaa;
    defparam add_128_6.INJECT1_0 = "NO";
    defparam add_128_6.INJECT1_1 = "NO";
    CCU2D add_128_4 (.A0(n152_adj_99), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n198_adj_103), .B1(y_d2[3]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1832), .COUT(n1833), .S0(n195_adj_102), .S1(n241_adj_106));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_128_4.INIT0 = 16'h5aaa;
    defparam add_128_4.INIT1 = 16'h5666;
    defparam add_128_4.INJECT1_0 = "NO";
    defparam add_128_4.INJECT1_1 = "NO";
    CCU2D add_128_2 (.A0(y_d2[4]), .B0(y_d2[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n106), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1832), 
          .S1(n149_adj_98));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_128_2.INIT0 = 16'h7000;
    defparam add_128_2.INIT1 = 16'h5aaa;
    defparam add_128_2.INJECT1_0 = "NO";
    defparam add_128_2.INJECT1_1 = "NO";
    LUT4 i263_2_lut (.A(y_d2[8]), .B(y_d2[7]), .Z(n115)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i263_2_lut.init = 16'h6666;
    CCU2D add_127_14 (.A0(n609_adj_139), .B0(y_d2[2]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1830), 
          .S0(n655_adj_144), .S1(n656_adj_145));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_127_14.INIT0 = 16'h5999;
    defparam add_127_14.INIT1 = 16'h0000;
    defparam add_127_14.INJECT1_0 = "NO";
    defparam add_127_14.INJECT1_1 = "NO";
    CCU2D add_127_12 (.A0(n517_adj_130), .B0(y_d2[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n563_adj_134), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1829), .COUT(n1830), .S0(n560_adj_133), .S1(n606_adj_138));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_127_12.INIT0 = 16'h5666;
    defparam add_127_12.INIT1 = 16'h5aaa;
    defparam add_127_12.INJECT1_0 = "NO";
    defparam add_127_12.INJECT1_1 = "NO";
    CCU2D add_127_10 (.A0(n425_adj_122), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n471_adj_126), .B1(y_d2[2]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1828), .COUT(n1829), .S0(n468_adj_125), .S1(n514_adj_129));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_127_10.INIT0 = 16'h5aaa;
    defparam add_127_10.INIT1 = 16'h5666;
    defparam add_127_10.INJECT1_0 = "NO";
    defparam add_127_10.INJECT1_1 = "NO";
    CCU2D add_127_8 (.A0(n333_adj_114), .B0(y_d2[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n379_adj_118), .B1(y_d2[2]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1827), .COUT(n1828), .S0(n376_adj_117), .S1(n422_adj_121));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_127_8.INIT0 = 16'h5666;
    defparam add_127_8.INIT1 = 16'h5666;
    defparam add_127_8.INJECT1_0 = "NO";
    defparam add_127_8.INJECT1_1 = "NO";
    CCU2D add_127_6 (.A0(n241_adj_106), .B0(y_d2[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n287_adj_110), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1826), .COUT(n1827), .S0(n284_adj_109), .S1(n330_adj_113));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_127_6.INIT0 = 16'h5666;
    defparam add_127_6.INIT1 = 16'h5aaa;
    defparam add_127_6.INJECT1_0 = "NO";
    defparam add_127_6.INJECT1_1 = "NO";
    CCU2D add_127_4 (.A0(n149_adj_98), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n195_adj_102), .B1(y_d2[2]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1825), .COUT(n1826), .S0(n192_adj_101), .S1(n238_adj_105));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_127_4.INIT0 = 16'h5aaa;
    defparam add_127_4.INIT1 = 16'h5666;
    defparam add_127_4.INJECT1_0 = "NO";
    defparam add_127_4.INJECT1_1 = "NO";
    CCU2D add_127_2 (.A0(y_d2[3]), .B0(y_d2[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n103_adj_95), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1825), .S1(n146_adj_97));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_127_2.INIT0 = 16'h7000;
    defparam add_127_2.INIT1 = 16'h5aaa;
    defparam add_127_2.INJECT1_0 = "NO";
    defparam add_127_2.INJECT1_1 = "NO";
    LUT4 i262_2_lut (.A(y_d2[7]), .B(y_d2[6]), .Z(n112)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i262_2_lut.init = 16'h6666;
    CCU2D add_126_14 (.A0(n606_adj_138), .B0(y_d2[1]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1823), 
          .S0(n651_adj_142), .S1(n652_adj_143));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_126_14.INIT0 = 16'h5999;
    defparam add_126_14.INIT1 = 16'h0000;
    defparam add_126_14.INJECT1_0 = "NO";
    defparam add_126_14.INJECT1_1 = "NO";
    CCU2D add_126_12 (.A0(n514_adj_129), .B0(y_d2[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n560_adj_133), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1822), .COUT(n1823), .S0(n557_adj_132), .S1(n603_adj_137));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_126_12.INIT0 = 16'h5666;
    defparam add_126_12.INIT1 = 16'h5aaa;
    defparam add_126_12.INJECT1_0 = "NO";
    defparam add_126_12.INJECT1_1 = "NO";
    CCU2D add_126_10 (.A0(n422_adj_121), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n468_adj_125), .B1(y_d2[1]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1821), .COUT(n1822), .S0(n465_adj_124), .S1(n511_adj_128));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_126_10.INIT0 = 16'h5aaa;
    defparam add_126_10.INIT1 = 16'h5666;
    defparam add_126_10.INJECT1_0 = "NO";
    defparam add_126_10.INJECT1_1 = "NO";
    CCU2D add_126_8 (.A0(n330_adj_113), .B0(y_d2[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n376_adj_117), .B1(y_d2[1]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1820), .COUT(n1821), .S0(n373_adj_116), .S1(n419_adj_120));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_126_8.INIT0 = 16'h5666;
    defparam add_126_8.INIT1 = 16'h5666;
    defparam add_126_8.INJECT1_0 = "NO";
    defparam add_126_8.INJECT1_1 = "NO";
    CCU2D add_126_6 (.A0(n238_adj_105), .B0(y_d2[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n284_adj_109), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1819), .COUT(n1820), .S0(n281_adj_108), .S1(n327_adj_112));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_126_6.INIT0 = 16'h5666;
    defparam add_126_6.INIT1 = 16'h5aaa;
    defparam add_126_6.INJECT1_0 = "NO";
    defparam add_126_6.INJECT1_1 = "NO";
    CCU2D add_126_4 (.A0(n146_adj_97), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n192_adj_101), .B1(y_d2[1]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1818), .COUT(n1819), .S0(n189_adj_100), .S1(n235_adj_104));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_126_4.INIT0 = 16'h5aaa;
    defparam add_126_4.INIT1 = 16'h5666;
    defparam add_126_4.INJECT1_0 = "NO";
    defparam add_126_4.INJECT1_1 = "NO";
    CCU2D add_126_2 (.A0(y_d2[2]), .B0(y_d2[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n100_adj_94), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1818), .S1(n143_adj_96));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_126_2.INIT0 = 16'h7000;
    defparam add_126_2.INIT1 = 16'h5aaa;
    defparam add_126_2.INJECT1_0 = "NO";
    defparam add_126_2.INJECT1_1 = "NO";
    LUT4 i261_2_lut (.A(y_d2[6]), .B(y_d2[5]), .Z(n109)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i261_2_lut.init = 16'h6666;
    CCU2D add_169_14 (.A0(y_d2[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1816), 
          .S0(n1386), .S1(n1399));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_169_14.INIT0 = 16'hfaaa;
    defparam add_169_14.INIT1 = 16'h0000;
    defparam add_169_14.INJECT1_0 = "NO";
    defparam add_169_14.INJECT1_1 = "NO";
    CCU2D add_169_12 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(y_d2[8]), .B1(y_d2[7]), .C1(GND_net), .D1(GND_net), .CIN(n1815), 
          .COUT(n1816), .S0(n1388), .S1(n1387));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_169_12.INIT0 = 16'hf000;
    defparam add_169_12.INIT1 = 16'h5666;
    defparam add_169_12.INJECT1_0 = "NO";
    defparam add_169_12.INJECT1_1 = "NO";
    CCU2D add_169_10 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(y_d2[8]), .B1(y_d2[7]), .C1(GND_net), .D1(GND_net), .CIN(n1814), 
          .COUT(n1815), .S0(n1390), .S1(n1389));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_169_10.INIT0 = 16'hf000;
    defparam add_169_10.INIT1 = 16'h5666;
    defparam add_169_10.INJECT1_0 = "NO";
    defparam add_169_10.INJECT1_1 = "NO";
    CCU2D add_169_8 (.A0(y_d2[8]), .B0(y_d2[7]), .C0(GND_net), .D0(GND_net), 
          .A1(y_d2[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1813), 
          .COUT(n1814), .S0(n1392), .S1(n1391));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_169_8.INIT0 = 16'h5666;
    defparam add_169_8.INIT1 = 16'h5aaa;
    defparam add_169_8.INJECT1_0 = "NO";
    defparam add_169_8.INJECT1_1 = "NO";
    CCU2D add_169_6 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(y_d2[8]), .B1(y_d2[7]), .C1(GND_net), .D1(GND_net), .CIN(n1812), 
          .COUT(n1813), .S0(n1394), .S1(n1393));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_169_6.INIT0 = 16'hf000;
    defparam add_169_6.INIT1 = 16'h5666;
    defparam add_169_6.INJECT1_0 = "NO";
    defparam add_169_6.INJECT1_1 = "NO";
    CCU2D add_169_4 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(y_d2[8]), .B1(y_d2[7]), .C1(GND_net), .D1(GND_net), .CIN(n1811), 
          .COUT(n1812), .S0(n1396), .S1(n1395));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_169_4.INIT0 = 16'hf000;
    defparam add_169_4.INIT1 = 16'h5666;
    defparam add_169_4.INJECT1_0 = "NO";
    defparam add_169_4.INJECT1_1 = "NO";
    CCU2D add_169_2 (.A0(y_d2[8]), .B0(y_d2[7]), .C0(GND_net), .D0(GND_net), 
          .A1(y_d2[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1811), 
          .S1(n1397));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(79[18:27])
    defparam add_169_2.INIT0 = 16'h7000;
    defparam add_169_2.INIT1 = 16'hfaaa;
    defparam add_169_2.INJECT1_0 = "NO";
    defparam add_169_2.INJECT1_1 = "NO";
    CCU2D add_125_14 (.A0(n603_adj_137), .B0(term_b1[1]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1809), .S0(n647), .S1(n648_adj_141));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_125_14.INIT0 = 16'h5999;
    defparam add_125_14.INIT1 = 16'h0000;
    defparam add_125_14.INJECT1_0 = "NO";
    defparam add_125_14.INJECT1_1 = "NO";
    CCU2D add_125_12 (.A0(n511_adj_128), .B0(term_b1[1]), .C0(GND_net), 
          .D0(GND_net), .A1(n557_adj_132), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1808), .COUT(n1809), .S0(term_b1[12]), 
          .S1(term_b1[13]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_125_12.INIT0 = 16'h5666;
    defparam add_125_12.INIT1 = 16'h5aaa;
    defparam add_125_12.INJECT1_0 = "NO";
    defparam add_125_12.INJECT1_1 = "NO";
    CCU2D add_125_10 (.A0(n419_adj_120), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n465_adj_124), .B1(term_b1[1]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1807), .COUT(n1808), .S0(term_b1[10]), .S1(term_b1[11]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_125_10.INIT0 = 16'h5aaa;
    defparam add_125_10.INIT1 = 16'h5666;
    defparam add_125_10.INJECT1_0 = "NO";
    defparam add_125_10.INJECT1_1 = "NO";
    CCU2D add_125_8 (.A0(n327_adj_112), .B0(term_b1[1]), .C0(GND_net), 
          .D0(GND_net), .A1(n373_adj_116), .B1(term_b1[1]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1806), .COUT(n1807), .S0(term_b1[8]), 
          .S1(term_b1[9]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_125_8.INIT0 = 16'h5666;
    defparam add_125_8.INIT1 = 16'h5666;
    defparam add_125_8.INJECT1_0 = "NO";
    defparam add_125_8.INJECT1_1 = "NO";
    CCU2D add_125_6 (.A0(n235_adj_104), .B0(term_b1[1]), .C0(GND_net), 
          .D0(GND_net), .A1(n281_adj_108), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1805), .COUT(n1806), .S0(term_b1[6]), 
          .S1(term_b1[7]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_125_6.INIT0 = 16'h5666;
    defparam add_125_6.INIT1 = 16'h5aaa;
    defparam add_125_6.INJECT1_0 = "NO";
    defparam add_125_6.INJECT1_1 = "NO";
    CCU2D add_125_4 (.A0(n143_adj_96), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n189_adj_100), .B1(term_b1[1]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1804), .COUT(n1805), .S0(term_b1[4]), .S1(term_b1[5]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_125_4.INIT0 = 16'h5aaa;
    defparam add_125_4.INIT1 = 16'h5666;
    defparam add_125_4.INJECT1_0 = "NO";
    defparam add_125_4.INJECT1_1 = "NO";
    CCU2D add_125_2 (.A0(y_d2[1]), .B0(term_b1[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n97_adj_93), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1804), .S1(term_b1[3]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(78[18:27])
    defparam add_125_2.INIT0 = 16'h7000;
    defparam add_125_2.INIT1 = 16'h5aaa;
    defparam add_125_2.INJECT1_0 = "NO";
    defparam add_125_2.INJECT1_1 = "NO";
    CCU2D add_121_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1802), 
          .S0(n583_adj_92));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_121_cout.INIT0 = 16'h0000;
    defparam add_121_cout.INIT1 = 16'h0000;
    defparam add_121_cout.INJECT1_0 = "NO";
    defparam add_121_cout.INJECT1_1 = "NO";
    CCU2D add_121_12 (.A0(x_d2[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(x_d2[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1801), 
          .COUT(n1802));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_121_12.INIT0 = 16'hfaaa;
    defparam add_121_12.INIT1 = 16'h5aaa;
    defparam add_121_12.INJECT1_0 = "NO";
    defparam add_121_12.INJECT1_1 = "NO";
    CCU2D add_121_10 (.A0(x_d2[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1800), 
          .COUT(n1801), .S0(n447_adj_73), .S1(n490_adj_78));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_121_10.INIT0 = 16'h5aaa;
    defparam add_121_10.INIT1 = 16'hf000;
    defparam add_121_10.INJECT1_0 = "NO";
    defparam add_121_10.INJECT1_1 = "NO";
    CCU2D add_121_8 (.A0(x_d2[7]), .B0(x_d2[5]), .C0(GND_net), .D0(GND_net), 
          .A1(x_d2[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1799), 
          .COUT(n1800), .S0(n361_adj_63), .S1(n404_adj_68));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_121_8.INIT0 = 16'h5666;
    defparam add_121_8.INIT1 = 16'h5aaa;
    defparam add_121_8.INJECT1_0 = "NO";
    defparam add_121_8.INJECT1_1 = "NO";
    CCU2D add_121_6 (.A0(x_d2[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(x_d2[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1798), 
          .COUT(n1799));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_121_6.INIT0 = 16'hfaaa;
    defparam add_121_6.INIT1 = 16'h5aaa;
    defparam add_121_6.INJECT1_0 = "NO";
    defparam add_121_6.INJECT1_1 = "NO";
    CCU2D add_121_4 (.A0(x_d2[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1797), 
          .COUT(n1798), .S0(n189_adj_43), .S1(n232_adj_49));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_121_4.INIT0 = 16'h5aaa;
    defparam add_121_4.INIT1 = 16'hf000;
    defparam add_121_4.INJECT1_0 = "NO";
    defparam add_121_4.INJECT1_1 = "NO";
    CCU2D add_121_2 (.A0(x_d2[7]), .B0(x_d2[5]), .C0(GND_net), .D0(GND_net), 
          .A1(x_d2[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1797), 
          .S1(n146_adj_37));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_121_2.INIT0 = 16'h7000;
    defparam add_121_2.INIT1 = 16'h5aaa;
    defparam add_121_2.INJECT1_0 = "NO";
    defparam add_121_2.INJECT1_1 = "NO";
    LUT4 i260_2_lut (.A(y_d2[5]), .B(y_d2[4]), .Z(n106)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i260_2_lut.init = 16'h6666;
    CCU2D add_120_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1795), 
          .S0(n579_adj_91));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_120_cout.INIT0 = 16'h0000;
    defparam add_120_cout.INIT1 = 16'h0000;
    defparam add_120_cout.INJECT1_0 = "NO";
    defparam add_120_cout.INJECT1_1 = "NO";
    CCU2D add_120_12 (.A0(n490_adj_78), .B0(x_d2[4]), .C0(GND_net), .D0(GND_net), 
          .A1(x_d2[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1794), 
          .COUT(n1795), .S0(n530_adj_82), .S1(n578_adj_90));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_120_12.INIT0 = 16'h5666;
    defparam add_120_12.INIT1 = 16'h5aaa;
    defparam add_120_12.INJECT1_0 = "NO";
    defparam add_120_12.INJECT1_1 = "NO";
    CCU2D add_120_10 (.A0(n404_adj_68), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n447_adj_73), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1793), .COUT(n1794), .S0(n444_adj_72), .S1(n487_adj_77));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_120_10.INIT0 = 16'h5aaa;
    defparam add_120_10.INIT1 = 16'h5aaa;
    defparam add_120_10.INJECT1_0 = "NO";
    defparam add_120_10.INJECT1_1 = "NO";
    CCU2D add_120_8 (.A0(x_d2[6]), .B0(x_d2[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n361_adj_63), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1792), .COUT(n1793), .S0(n358_adj_62), .S1(n401_adj_67));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_120_8.INIT0 = 16'h5666;
    defparam add_120_8.INIT1 = 16'h5aaa;
    defparam add_120_8.INJECT1_0 = "NO";
    defparam add_120_8.INJECT1_1 = "NO";
    CCU2D add_120_6 (.A0(n232_adj_49), .B0(x_d2[4]), .C0(GND_net), .D0(GND_net), 
          .A1(x_d2[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1791), 
          .COUT(n1792), .S0(n272_adj_54), .S1(n315_adj_58));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_120_6.INIT0 = 16'h5666;
    defparam add_120_6.INIT1 = 16'h5aaa;
    defparam add_120_6.INJECT1_0 = "NO";
    defparam add_120_6.INJECT1_1 = "NO";
    CCU2D add_120_4 (.A0(n146_adj_37), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n189_adj_43), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1790), .COUT(n1791), .S0(n186_adj_42), .S1(n229_adj_48));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_120_4.INIT0 = 16'h5aaa;
    defparam add_120_4.INIT1 = 16'h5aaa;
    defparam add_120_4.INJECT1_0 = "NO";
    defparam add_120_4.INJECT1_1 = "NO";
    CCU2D add_120_2 (.A0(x_d2[6]), .B0(x_d2[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n103_adj_31), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1790), .S1(n143_adj_36));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_120_2.INIT0 = 16'h7000;
    defparam add_120_2.INIT1 = 16'h5aaa;
    defparam add_120_2.INJECT1_0 = "NO";
    defparam add_120_2.INJECT1_1 = "NO";
    LUT4 i259_2_lut (.A(y_d2[4]), .B(y_d2[3]), .Z(n103_adj_95)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i259_2_lut.init = 16'h6666;
    CCU2D add_119_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1788), 
          .S0(n575_adj_89));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_119_cout.INIT0 = 16'h0000;
    defparam add_119_cout.INIT1 = 16'h0000;
    defparam add_119_cout.INJECT1_0 = "NO";
    defparam add_119_cout.INJECT1_1 = "NO";
    CCU2D add_119_12 (.A0(n487_adj_77), .B0(x_d2[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n530_adj_82), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1787), .COUT(n1788), .S0(n527_adj_81), .S1(n574_adj_88));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_119_12.INIT0 = 16'h5666;
    defparam add_119_12.INIT1 = 16'h5aaa;
    defparam add_119_12.INJECT1_0 = "NO";
    defparam add_119_12.INJECT1_1 = "NO";
    CCU2D add_119_10 (.A0(n401_adj_67), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n444_adj_72), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1786), .COUT(n1787), .S0(n441_adj_71), .S1(n484_adj_76));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_119_10.INIT0 = 16'h5aaa;
    defparam add_119_10.INIT1 = 16'h5aaa;
    defparam add_119_10.INJECT1_0 = "NO";
    defparam add_119_10.INJECT1_1 = "NO";
    CCU2D add_119_8 (.A0(n315_adj_58), .B0(x_d2[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n358_adj_62), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1785), .COUT(n1786), .S0(n355_adj_61), .S1(n398_adj_66));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_119_8.INIT0 = 16'h5666;
    defparam add_119_8.INIT1 = 16'h5aaa;
    defparam add_119_8.INJECT1_0 = "NO";
    defparam add_119_8.INJECT1_1 = "NO";
    CCU2D add_119_6 (.A0(n229_adj_48), .B0(x_d2[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n272_adj_54), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1784), .COUT(n1785), .S0(n269_adj_53), .S1(n312_adj_57));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_119_6.INIT0 = 16'h5666;
    defparam add_119_6.INIT1 = 16'h5aaa;
    defparam add_119_6.INJECT1_0 = "NO";
    defparam add_119_6.INJECT1_1 = "NO";
    CCU2D add_119_4 (.A0(n143_adj_36), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n186_adj_42), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1783), .COUT(n1784), .S0(n183_adj_41), .S1(n226_adj_47));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_119_4.INIT0 = 16'h5aaa;
    defparam add_119_4.INIT1 = 16'h5aaa;
    defparam add_119_4.INJECT1_0 = "NO";
    defparam add_119_4.INJECT1_1 = "NO";
    CCU2D add_119_2 (.A0(x_d2[5]), .B0(x_d2[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n100_adj_30), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1783), .S1(n140_adj_35));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_119_2.INIT0 = 16'h7000;
    defparam add_119_2.INIT1 = 16'h5aaa;
    defparam add_119_2.INJECT1_0 = "NO";
    defparam add_119_2.INJECT1_1 = "NO";
    LUT4 i258_2_lut (.A(y_d2[3]), .B(y_d2[2]), .Z(n100_adj_94)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i258_2_lut.init = 16'h6666;
    CCU2D add_118_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1781), 
          .S0(n571_adj_87));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_118_cout.INIT0 = 16'h0000;
    defparam add_118_cout.INIT1 = 16'h0000;
    defparam add_118_cout.INJECT1_0 = "NO";
    defparam add_118_cout.INJECT1_1 = "NO";
    CCU2D add_118_12 (.A0(n484_adj_76), .B0(x_d2[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n527_adj_81), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1780), .COUT(n1781), .S0(n524_adj_80), .S1(n570_adj_86));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_118_12.INIT0 = 16'h5666;
    defparam add_118_12.INIT1 = 16'h5aaa;
    defparam add_118_12.INJECT1_0 = "NO";
    defparam add_118_12.INJECT1_1 = "NO";
    CCU2D add_118_10 (.A0(n398_adj_66), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n441_adj_71), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1779), .COUT(n1780), .S0(n438_adj_70), .S1(n481_adj_75));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_118_10.INIT0 = 16'h5aaa;
    defparam add_118_10.INIT1 = 16'h5aaa;
    defparam add_118_10.INJECT1_0 = "NO";
    defparam add_118_10.INJECT1_1 = "NO";
    CCU2D add_118_8 (.A0(n312_adj_57), .B0(x_d2[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n355_adj_61), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1778), .COUT(n1779), .S0(n352_adj_60), .S1(n395_adj_65));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_118_8.INIT0 = 16'h5666;
    defparam add_118_8.INIT1 = 16'h5aaa;
    defparam add_118_8.INJECT1_0 = "NO";
    defparam add_118_8.INJECT1_1 = "NO";
    CCU2D add_118_6 (.A0(n226_adj_47), .B0(x_d2[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n269_adj_53), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1777), .COUT(n1778), .S0(n266_adj_52), .S1(n309_adj_56));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_118_6.INIT0 = 16'h5666;
    defparam add_118_6.INIT1 = 16'h5aaa;
    defparam add_118_6.INJECT1_0 = "NO";
    defparam add_118_6.INJECT1_1 = "NO";
    CCU2D add_118_4 (.A0(n140_adj_35), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n183_adj_41), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1776), .COUT(n1777), .S0(n180_adj_40), .S1(n223_adj_46));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_118_4.INIT0 = 16'h5aaa;
    defparam add_118_4.INIT1 = 16'h5aaa;
    defparam add_118_4.INJECT1_0 = "NO";
    defparam add_118_4.INJECT1_1 = "NO";
    CCU2D add_118_2 (.A0(x_d2[4]), .B0(x_d2[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n97_adj_29), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1776), .S1(n137_adj_34));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_118_2.INIT0 = 16'h7000;
    defparam add_118_2.INIT1 = 16'h5aaa;
    defparam add_118_2.INJECT1_0 = "NO";
    defparam add_118_2.INJECT1_1 = "NO";
    LUT4 i257_2_lut (.A(y_d2[2]), .B(y_d2[1]), .Z(n97_adj_93)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i257_2_lut.init = 16'h6666;
    CCU2D add_117_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1774), 
          .S0(n567_adj_85));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_117_cout.INIT0 = 16'h0000;
    defparam add_117_cout.INIT1 = 16'h0000;
    defparam add_117_cout.INJECT1_0 = "NO";
    defparam add_117_cout.INJECT1_1 = "NO";
    CCU2D add_117_12 (.A0(n481_adj_75), .B0(term_a2[1]), .C0(GND_net), 
          .D0(GND_net), .A1(n524_adj_80), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1773), .COUT(n1774), .S0(n521_adj_79), 
          .S1(n566_adj_84));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_117_12.INIT0 = 16'h5666;
    defparam add_117_12.INIT1 = 16'h5aaa;
    defparam add_117_12.INJECT1_0 = "NO";
    defparam add_117_12.INJECT1_1 = "NO";
    CCU2D add_117_10 (.A0(n395_adj_65), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n438_adj_70), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1772), .COUT(n1773), .S0(n435_adj_69), .S1(n478_adj_74));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_117_10.INIT0 = 16'h5aaa;
    defparam add_117_10.INIT1 = 16'h5aaa;
    defparam add_117_10.INJECT1_0 = "NO";
    defparam add_117_10.INJECT1_1 = "NO";
    CCU2D add_117_8 (.A0(n309_adj_56), .B0(term_a2[1]), .C0(GND_net), 
          .D0(GND_net), .A1(n352_adj_60), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1771), .COUT(n1772), .S0(n349_adj_59), 
          .S1(n392_adj_64));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_117_8.INIT0 = 16'h5666;
    defparam add_117_8.INIT1 = 16'h5aaa;
    defparam add_117_8.INJECT1_0 = "NO";
    defparam add_117_8.INJECT1_1 = "NO";
    CCU2D add_117_6 (.A0(n223_adj_46), .B0(term_a2[1]), .C0(GND_net), 
          .D0(GND_net), .A1(n266_adj_52), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1770), .COUT(n1771), .S0(n263_adj_51), 
          .S1(n306_adj_55));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_117_6.INIT0 = 16'h5666;
    defparam add_117_6.INIT1 = 16'h5aaa;
    defparam add_117_6.INJECT1_0 = "NO";
    defparam add_117_6.INJECT1_1 = "NO";
    CCU2D add_117_4 (.A0(n137_adj_34), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n180_adj_40), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1769), .COUT(n1770), .S0(n177_adj_39), .S1(n220_adj_45));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_117_4.INIT0 = 16'h5aaa;
    defparam add_117_4.INIT1 = 16'h5aaa;
    defparam add_117_4.INJECT1_0 = "NO";
    defparam add_117_4.INJECT1_1 = "NO";
    CCU2D add_117_2 (.A0(x_d2[3]), .B0(term_a2[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n94_adj_28), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1769), .S1(n134_adj_33));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_117_2.INIT0 = 16'h7000;
    defparam add_117_2.INIT1 = 16'h5aaa;
    defparam add_117_2.INJECT1_0 = "NO";
    defparam add_117_2.INJECT1_1 = "NO";
    LUT4 i254_2_lut (.A(x_d2[7]), .B(x_d2[5]), .Z(n103_adj_31)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i254_2_lut.init = 16'h6666;
    CCU2D add_116_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1767), 
          .S0(n563_adj_83));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_116_cout.INIT0 = 16'h0000;
    defparam add_116_cout.INIT1 = 16'h0000;
    defparam add_116_cout.INJECT1_0 = "NO";
    defparam add_116_cout.INJECT1_1 = "NO";
    CCU2D add_116_12 (.A0(n478_adj_74), .B0(x_d2[0]), .C0(GND_net), .D0(GND_net), 
          .A1(n521_adj_79), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1766), .COUT(n1767), .S0(term_a2[12]), .S1(term_a2[13]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_116_12.INIT0 = 16'h5666;
    defparam add_116_12.INIT1 = 16'h5aaa;
    defparam add_116_12.INJECT1_0 = "NO";
    defparam add_116_12.INJECT1_1 = "NO";
    CCU2D add_116_10 (.A0(n392_adj_64), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n435_adj_69), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1765), .COUT(n1766), .S0(term_a2[10]), .S1(term_a2[11]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_116_10.INIT0 = 16'h5aaa;
    defparam add_116_10.INIT1 = 16'h5aaa;
    defparam add_116_10.INJECT1_0 = "NO";
    defparam add_116_10.INJECT1_1 = "NO";
    CCU2D add_116_8 (.A0(n306_adj_55), .B0(x_d2[0]), .C0(GND_net), .D0(GND_net), 
          .A1(n349_adj_59), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1764), .COUT(n1765), .S0(term_a2[8]), .S1(term_a2[9]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_116_8.INIT0 = 16'h5666;
    defparam add_116_8.INIT1 = 16'h5aaa;
    defparam add_116_8.INJECT1_0 = "NO";
    defparam add_116_8.INJECT1_1 = "NO";
    CCU2D add_116_6 (.A0(n220_adj_45), .B0(x_d2[0]), .C0(GND_net), .D0(GND_net), 
          .A1(n263_adj_51), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1763), .COUT(n1764), .S0(term_a2[6]), .S1(term_a2[7]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_116_6.INIT0 = 16'h5666;
    defparam add_116_6.INIT1 = 16'h5aaa;
    defparam add_116_6.INJECT1_0 = "NO";
    defparam add_116_6.INJECT1_1 = "NO";
    CCU2D add_116_4 (.A0(n134_adj_33), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n177_adj_39), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1762), .COUT(n1763), .S0(term_a2[4]), .S1(term_a2[5]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_116_4.INIT0 = 16'h5aaa;
    defparam add_116_4.INIT1 = 16'h5aaa;
    defparam add_116_4.INJECT1_0 = "NO";
    defparam add_116_4.INJECT1_1 = "NO";
    CCU2D add_116_2 (.A0(x_d2[2]), .B0(x_d2[0]), .C0(GND_net), .D0(GND_net), 
          .A1(n91_adj_27), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1762), .S1(term_a2[3]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_116_2.INIT0 = 16'h7000;
    defparam add_116_2.INIT1 = 16'h5aaa;
    defparam add_116_2.INJECT1_0 = "NO";
    defparam add_116_2.INJECT1_1 = "NO";
    CCU2D add_184_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1760), 
          .S0(term_a0[20]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_184_cout.INIT0 = 16'h0000;
    defparam add_184_cout.INIT1 = 16'h0000;
    defparam add_184_cout.INJECT1_0 = "NO";
    defparam add_184_cout.INJECT1_1 = "NO";
    CCU2D add_184_6 (.A0(x_d1_c_6), .B0(n579), .C0(GND_net), .D0(GND_net), 
          .A1(x_d1_c_7), .B1(n583), .C1(GND_net), .D1(GND_net), .CIN(n1759), 
          .COUT(n1760), .S0(term_a0[18]), .S1(term_a0[19]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_184_6.INIT0 = 16'h5666;
    defparam add_184_6.INIT1 = 16'h5666;
    defparam add_184_6.INJECT1_0 = "NO";
    defparam add_184_6.INJECT1_1 = "NO";
    CCU2D add_184_4 (.A0(n574), .B0(n571), .C0(GND_net), .D0(GND_net), 
          .A1(n578), .B1(n575), .C1(GND_net), .D1(GND_net), .CIN(n1758), 
          .COUT(n1759), .S0(term_a0[16]), .S1(term_a0[17]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_184_4.INIT0 = 16'h5666;
    defparam add_184_4.INIT1 = 16'h5666;
    defparam add_184_4.INJECT1_0 = "NO";
    defparam add_184_4.INJECT1_1 = "NO";
    CCU2D add_184_2 (.A0(n566), .B0(n563), .C0(GND_net), .D0(GND_net), 
          .A1(n570), .B1(n567), .C1(GND_net), .D1(GND_net), .COUT(n1758), 
          .S1(term_a0[15]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_184_2.INIT0 = 16'h7000;
    defparam add_184_2.INIT1 = 16'h5666;
    defparam add_184_2.INJECT1_0 = "NO";
    defparam add_184_2.INJECT1_1 = "NO";
    CCU2D add_183_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1756), 
          .S0(term_a2[20]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_183_cout.INIT0 = 16'h0000;
    defparam add_183_cout.INIT1 = 16'h0000;
    defparam add_183_cout.INJECT1_0 = "NO";
    defparam add_183_cout.INJECT1_1 = "NO";
    CCU2D add_183_6 (.A0(x_d2[6]), .B0(n579_adj_91), .C0(GND_net), .D0(GND_net), 
          .A1(x_d2[7]), .B1(n583_adj_92), .C1(GND_net), .D1(GND_net), 
          .CIN(n1755), .COUT(n1756), .S0(term_a2[18]), .S1(term_a2[19]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_183_6.INIT0 = 16'h5666;
    defparam add_183_6.INIT1 = 16'h5666;
    defparam add_183_6.INJECT1_0 = "NO";
    defparam add_183_6.INJECT1_1 = "NO";
    CCU2D add_183_4 (.A0(n574_adj_88), .B0(n571_adj_87), .C0(GND_net), 
          .D0(GND_net), .A1(n578_adj_90), .B1(n575_adj_89), .C1(GND_net), 
          .D1(GND_net), .CIN(n1754), .COUT(n1755), .S0(term_a2[16]), 
          .S1(term_a2[17]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_183_4.INIT0 = 16'h5666;
    defparam add_183_4.INIT1 = 16'h5666;
    defparam add_183_4.INJECT1_0 = "NO";
    defparam add_183_4.INJECT1_1 = "NO";
    CCU2D add_183_2 (.A0(n566_adj_84), .B0(n563_adj_83), .C0(GND_net), 
          .D0(GND_net), .A1(n570_adj_86), .B1(n567_adj_85), .C1(GND_net), 
          .D1(GND_net), .COUT(n1754), .S1(term_a2[15]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(77[18:27])
    defparam add_183_2.INIT0 = 16'h7000;
    defparam add_183_2.INIT1 = 16'h5666;
    defparam add_183_2.INJECT1_0 = "NO";
    defparam add_183_2.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_494_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1752), .S0(n664));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_494_cout.INIT0 = 16'h0000;
    defparam x_d1_8__I_0_add_494_cout.INIT1 = 16'h0000;
    defparam x_d1_8__I_0_add_494_cout.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_494_cout.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_494_12 (.A0(x_d1_c_7), .B0(n1596), .C0(x_d1_c_4), 
          .D0(GND_net), .A1(x_d1_c_5), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1751), .COUT(n1752), .S0(n612), .S1(n663));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_494_12.INIT0 = 16'h7878;
    defparam x_d1_8__I_0_add_494_12.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_494_12.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_494_12.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_494_10 (.A0(x_d1_c_6), .B0(n1588), .C0(GND_net), 
          .D0(GND_net), .A1(x_d1_c_7), .B1(n1596), .C1(GND_net), .D1(GND_net), 
          .CIN(n1750), .COUT(n1751), .S0(n520), .S1(n566_adj_26));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_494_10.INIT0 = 16'h9666;
    defparam x_d1_8__I_0_add_494_10.INIT1 = 16'h9666;
    defparam x_d1_8__I_0_add_494_10.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_494_10.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_494_8 (.A0(x_d1_c_6), .B0(x_d1_c_4), .C0(GND_net), 
          .D0(GND_net), .A1(x_d1_c_7), .B1(x_d1_c_5), .C1(GND_net), 
          .D1(GND_net), .CIN(n1749), .COUT(n1750), .S0(n428), .S1(n474));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_494_8.INIT0 = 16'h5666;
    defparam x_d1_8__I_0_add_494_8.INIT1 = 16'h9666;
    defparam x_d1_8__I_0_add_494_8.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_494_8.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_494_6 (.A0(x_d1_c_4), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(x_d1_c_5), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1748), .COUT(n1749), .S0(n336), .S1(n382));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_494_6.INIT0 = 16'hfaaa;
    defparam x_d1_8__I_0_add_494_6.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_494_6.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_494_6.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_494_4 (.A0(x_d1_c_6), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(x_d1_c_7), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1747), .COUT(n1748), .S0(n244), .S1(n290));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_494_4.INIT0 = 16'h5aaa;
    defparam x_d1_8__I_0_add_494_4.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_494_4.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_494_4.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_494_2 (.A0(x_d1_c_7), .B0(x_d1_c_4), .C0(GND_net), 
          .D0(GND_net), .A1(x_d1_c_5), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1747), .S1(n198));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_494_2.INIT0 = 16'h7000;
    defparam x_d1_8__I_0_add_494_2.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_494_2.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_494_2.INJECT1_1 = "NO";
    LUT4 i253_2_lut (.A(x_d2[6]), .B(x_d2[4]), .Z(n100_adj_30)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i253_2_lut.init = 16'h6666;
    CCU2D x_d1_8__I_0_add_493_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1745), .S0(n660));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_493_cout.INIT0 = 16'h0000;
    defparam x_d1_8__I_0_add_493_cout.INIT1 = 16'h0000;
    defparam x_d1_8__I_0_add_493_cout.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_493_cout.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_493_12 (.A0(n566_adj_26), .B0(x_d1_c_3), .C0(GND_net), 
          .D0(GND_net), .A1(n612), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1744), .COUT(n1745), .S0(n609), .S1(n659));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_493_12.INIT0 = 16'h5666;
    defparam x_d1_8__I_0_add_493_12.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_493_12.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_493_12.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_493_10 (.A0(n474), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n520), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1743), .COUT(n1744), .S0(n517), .S1(n563_adj_25));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_493_10.INIT0 = 16'h5aaa;
    defparam x_d1_8__I_0_add_493_10.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_493_10.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_493_10.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_493_8 (.A0(n382), .B0(x_d1_c_3), .C0(GND_net), 
          .D0(GND_net), .A1(n428), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1742), .COUT(n1743), .S0(n425), .S1(n471));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_493_8.INIT0 = 16'h5666;
    defparam x_d1_8__I_0_add_493_8.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_493_8.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_493_8.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_493_6 (.A0(n290), .B0(x_d1_c_3), .C0(GND_net), 
          .D0(GND_net), .A1(n336), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1741), .COUT(n1742), .S0(n333), .S1(n379));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_493_6.INIT0 = 16'h5666;
    defparam x_d1_8__I_0_add_493_6.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_493_6.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_493_6.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_493_4 (.A0(n198), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n244), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1740), .COUT(n1741), .S0(n241), .S1(n287));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_493_4.INIT0 = 16'h5aaa;
    defparam x_d1_8__I_0_add_493_4.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_493_4.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_493_4.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_493_2 (.A0(x_d1_c_6), .B0(x_d1_c_3), .C0(GND_net), 
          .D0(GND_net), .A1(n152), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1740), .S1(n195));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_493_2.INIT0 = 16'h7000;
    defparam x_d1_8__I_0_add_493_2.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_493_2.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_493_2.INJECT1_1 = "NO";
    LUT4 i252_2_lut (.A(x_d2[5]), .B(x_d2[3]), .Z(n97_adj_29)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i252_2_lut.init = 16'h6666;
    CCU2D add_105_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1703), 
          .S0(n575));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_105_cout.INIT0 = 16'h0000;
    defparam add_105_cout.INIT1 = 16'h0000;
    defparam add_105_cout.INJECT1_0 = "NO";
    defparam add_105_cout.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_492_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1738), .S0(n656));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_492_cout.INIT0 = 16'h0000;
    defparam x_d1_8__I_0_add_492_cout.INIT1 = 16'h0000;
    defparam x_d1_8__I_0_add_492_cout.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_492_cout.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_492_12 (.A0(n563_adj_25), .B0(term_a1[2]), .C0(GND_net), 
          .D0(GND_net), .A1(n609), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1737), .COUT(n1738), .S0(n606), .S1(n655));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_492_12.INIT0 = 16'h5666;
    defparam x_d1_8__I_0_add_492_12.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_492_12.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_492_12.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_492_10 (.A0(n471), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n517), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1736), .COUT(n1737), .S0(n514), .S1(n560));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_492_10.INIT0 = 16'h5aaa;
    defparam x_d1_8__I_0_add_492_10.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_492_10.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_492_10.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_492_8 (.A0(n379), .B0(term_a1[2]), .C0(GND_net), 
          .D0(GND_net), .A1(n425), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1735), .COUT(n1736), .S0(n422), .S1(n468));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_492_8.INIT0 = 16'h5666;
    defparam x_d1_8__I_0_add_492_8.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_492_8.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_492_8.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_492_6 (.A0(n287), .B0(term_a1[2]), .C0(GND_net), 
          .D0(GND_net), .A1(n333), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1734), .COUT(n1735), .S0(n330), .S1(n376));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_492_6.INIT0 = 16'h5666;
    defparam x_d1_8__I_0_add_492_6.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_492_6.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_492_6.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_492_4 (.A0(n195), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n241), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1733), .COUT(n1734), .S0(n238), .S1(n284));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_492_4.INIT0 = 16'h5aaa;
    defparam x_d1_8__I_0_add_492_4.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_492_4.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_492_4.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_492_2 (.A0(x_d1_c_5), .B0(term_a1[2]), .C0(GND_net), 
          .D0(GND_net), .A1(n149), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1733), .S1(n192));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_492_2.INIT0 = 16'h7000;
    defparam x_d1_8__I_0_add_492_2.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_492_2.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_492_2.INJECT1_1 = "NO";
    LUT4 i251_2_lut (.A(x_d2[4]), .B(x_d2[2]), .Z(n94_adj_28)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i251_2_lut.init = 16'h6666;
    CCU2D x_d1_8__I_0_add_491_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1731), .S0(n652));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_491_cout.INIT0 = 16'h0000;
    defparam x_d1_8__I_0_add_491_cout.INIT1 = 16'h0000;
    defparam x_d1_8__I_0_add_491_cout.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_491_cout.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_491_12 (.A0(n560), .B0(term_a1[1]), .C0(GND_net), 
          .D0(GND_net), .A1(n606), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1730), .COUT(n1731), .S0(n603), .S1(n651));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_491_12.INIT0 = 16'h5666;
    defparam x_d1_8__I_0_add_491_12.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_491_12.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_491_12.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_491_10 (.A0(n468), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n514), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1729), .COUT(n1730), .S0(n511), .S1(n557));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_491_10.INIT0 = 16'h5aaa;
    defparam x_d1_8__I_0_add_491_10.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_491_10.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_491_10.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_491_8 (.A0(n376), .B0(term_a1[1]), .C0(GND_net), 
          .D0(GND_net), .A1(n422), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1728), .COUT(n1729), .S0(n419), .S1(n465));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_491_8.INIT0 = 16'h5666;
    defparam x_d1_8__I_0_add_491_8.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_491_8.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_491_8.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_491_6 (.A0(n284), .B0(term_a1[1]), .C0(GND_net), 
          .D0(GND_net), .A1(n330), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1727), .COUT(n1728), .S0(n327), .S1(n373));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_491_6.INIT0 = 16'h5666;
    defparam x_d1_8__I_0_add_491_6.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_491_6.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_491_6.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_491_4 (.A0(n192), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n238), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1726), .COUT(n1727), .S0(n235), .S1(n281));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_491_4.INIT0 = 16'h5aaa;
    defparam x_d1_8__I_0_add_491_4.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_491_4.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_491_4.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_491_2 (.A0(x_d1_c_4), .B0(term_a1[1]), .C0(GND_net), 
          .D0(GND_net), .A1(n146_adj_21), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1726), .S1(n189_adj_23));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_491_2.INIT0 = 16'h7000;
    defparam x_d1_8__I_0_add_491_2.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_491_2.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_491_2.INJECT1_1 = "NO";
    LUT4 i250_2_lut (.A(x_d2[3]), .B(term_a2[1]), .Z(n91_adj_27)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i250_2_lut.init = 16'h6666;
    CCU2D x_d1_8__I_0_add_490_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1724), .S0(n648));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_490_cout.INIT0 = 16'h0000;
    defparam x_d1_8__I_0_add_490_cout.INIT1 = 16'h0000;
    defparam x_d1_8__I_0_add_490_cout.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_490_cout.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_490_12 (.A0(n557), .B0(x_d1_c_0), .C0(GND_net), 
          .D0(GND_net), .A1(n603), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1723), .COUT(n1724), .S0(term_a1[13]), .S1(term_a1[14]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_490_12.INIT0 = 16'h5666;
    defparam x_d1_8__I_0_add_490_12.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_490_12.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_490_12.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_490_10 (.A0(n465), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n511), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1722), .COUT(n1723), .S0(term_a1[11]), .S1(term_a1[12]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_490_10.INIT0 = 16'h5aaa;
    defparam x_d1_8__I_0_add_490_10.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_490_10.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_490_10.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_490_8 (.A0(n373), .B0(x_d1_c_0), .C0(GND_net), 
          .D0(GND_net), .A1(n419), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1721), .COUT(n1722), .S0(term_a1[9]), .S1(term_a1[10]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_490_8.INIT0 = 16'h5666;
    defparam x_d1_8__I_0_add_490_8.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_490_8.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_490_8.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_490_6 (.A0(n281), .B0(x_d1_c_0), .C0(GND_net), 
          .D0(GND_net), .A1(n327), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1720), .COUT(n1721), .S0(term_a1[7]), .S1(term_a1[8]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_490_6.INIT0 = 16'h5666;
    defparam x_d1_8__I_0_add_490_6.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_490_6.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_490_6.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_490_4 (.A0(n189_adj_23), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n235), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1719), .COUT(n1720), .S0(term_a1[5]), .S1(term_a1[6]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_490_4.INIT0 = 16'h5aaa;
    defparam x_d1_8__I_0_add_490_4.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_490_4.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_490_4.INJECT1_1 = "NO";
    CCU2D x_d1_8__I_0_add_490_2 (.A0(x_d1_c_3), .B0(x_d1_c_0), .C0(GND_net), 
          .D0(GND_net), .A1(n143_adj_20), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1719), .S1(term_a1[4]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam x_d1_8__I_0_add_490_2.INIT0 = 16'h7000;
    defparam x_d1_8__I_0_add_490_2.INIT1 = 16'h5aaa;
    defparam x_d1_8__I_0_add_490_2.INJECT1_0 = "NO";
    defparam x_d1_8__I_0_add_490_2.INJECT1_1 = "NO";
    CCU2D add_232_4 (.A0(n1473), .B0(n29), .C0(GND_net), .D0(GND_net), 
          .A1(n1474), .B1(n28), .C1(GND_net), .D1(GND_net), .CIN(n1667), 
          .COUT(n1668), .S0(n1651), .S1(n1650));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_232_4.INIT0 = 16'h5666;
    defparam add_232_4.INIT1 = 16'h5666;
    defparam add_232_4.INJECT1_0 = "NO";
    defparam add_232_4.INJECT1_1 = "NO";
    CCU2D add_107_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1717), 
          .S0(n583));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_107_cout.INIT0 = 16'h0000;
    defparam add_107_cout.INIT1 = 16'h0000;
    defparam add_107_cout.INJECT1_0 = "NO";
    defparam add_107_cout.INJECT1_1 = "NO";
    CCU2D add_232_2 (.A0(n1471), .B0(n31), .C0(GND_net), .D0(GND_net), 
          .A1(n1472), .B1(n30), .C1(GND_net), .D1(GND_net), .COUT(n1667), 
          .S1(n1652));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(83[17:34])
    defparam add_232_2.INIT0 = 16'h7000;
    defparam add_232_2.INIT1 = 16'h5666;
    defparam add_232_2.INJECT1_0 = "NO";
    defparam add_232_2.INJECT1_1 = "NO";
    CCU2D add_107_12 (.A0(x_d1_c_5), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(x_d1_c_6), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1716), 
          .COUT(n1717));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_107_12.INIT0 = 16'hfaaa;
    defparam add_107_12.INIT1 = 16'h5aaa;
    defparam add_107_12.INJECT1_0 = "NO";
    defparam add_107_12.INJECT1_1 = "NO";
    CCU2D add_107_10 (.A0(x_d1_c_7), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1715), 
          .COUT(n1716), .S0(n447), .S1(n490));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_107_10.INIT0 = 16'h5aaa;
    defparam add_107_10.INIT1 = 16'hf000;
    defparam add_107_10.INJECT1_0 = "NO";
    defparam add_107_10.INJECT1_1 = "NO";
    CCU2D add_182_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1665), 
          .S0(term_a1[21]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam add_182_cout.INIT0 = 16'h0000;
    defparam add_182_cout.INIT1 = 16'h0000;
    defparam add_182_cout.INJECT1_0 = "NO";
    defparam add_182_cout.INJECT1_1 = "NO";
    CCU2D add_107_8 (.A0(x_d1_c_7), .B0(x_d1_c_5), .C0(GND_net), .D0(GND_net), 
          .A1(x_d1_c_6), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1714), 
          .COUT(n1715), .S0(n361), .S1(n404));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_107_8.INIT0 = 16'h5666;
    defparam add_107_8.INIT1 = 16'h5aaa;
    defparam add_107_8.INJECT1_0 = "NO";
    defparam add_107_8.INJECT1_1 = "NO";
    CCU2D add_182_6 (.A0(x_d1_c_6), .B0(n664), .C0(GND_net), .D0(GND_net), 
          .A1(x_d1_c_7), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1664), 
          .COUT(n1665), .S0(term_a1[19]), .S1(term_a1[20]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam add_182_6.INIT0 = 16'h5666;
    defparam add_182_6.INIT1 = 16'h5aaa;
    defparam add_182_6.INJECT1_0 = "NO";
    defparam add_182_6.INJECT1_1 = "NO";
    CCU2D add_107_6 (.A0(x_d1_c_5), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(x_d1_c_6), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1713), 
          .COUT(n1714));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_107_6.INIT0 = 16'hfaaa;
    defparam add_107_6.INIT1 = 16'h5aaa;
    defparam add_107_6.INJECT1_0 = "NO";
    defparam add_107_6.INJECT1_1 = "NO";
    CCU2D add_182_4 (.A0(n659), .B0(n656), .C0(GND_net), .D0(GND_net), 
          .A1(n663), .B1(n660), .C1(GND_net), .D1(GND_net), .CIN(n1663), 
          .COUT(n1664), .S0(term_a1[17]), .S1(term_a1[18]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam add_182_4.INIT0 = 16'h5666;
    defparam add_182_4.INIT1 = 16'h5666;
    defparam add_182_4.INJECT1_0 = "NO";
    defparam add_182_4.INJECT1_1 = "NO";
    CCU2D add_107_4 (.A0(x_d1_c_7), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1712), 
          .COUT(n1713), .S0(n189), .S1(n232));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_107_4.INIT0 = 16'h5aaa;
    defparam add_107_4.INIT1 = 16'hf000;
    defparam add_107_4.INJECT1_0 = "NO";
    defparam add_107_4.INJECT1_1 = "NO";
    CCU2D add_102_2 (.A0(term_a1[2]), .B0(x_d1_c_0), .C0(GND_net), .D0(GND_net), 
          .A1(n91), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1656), 
          .S1(term_a0[3]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_102_2.INIT0 = 16'h7000;
    defparam add_102_2.INIT1 = 16'h5aaa;
    defparam add_102_2.INJECT1_0 = "NO";
    defparam add_102_2.INJECT1_1 = "NO";
    CCU2D add_107_2 (.A0(x_d1_c_7), .B0(x_d1_c_5), .C0(GND_net), .D0(GND_net), 
          .A1(x_d1_c_6), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1712), 
          .S1(n146));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_107_2.INIT0 = 16'h7000;
    defparam add_107_2.INIT1 = 16'h5aaa;
    defparam add_107_2.INJECT1_0 = "NO";
    defparam add_107_2.INJECT1_1 = "NO";
    CCU2D add_104_4 (.A0(n140), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n183), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1691), 
          .COUT(n1692), .S0(n180), .S1(n223));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_104_4.INIT0 = 16'h5aaa;
    defparam add_104_4.INIT1 = 16'h5aaa;
    defparam add_104_4.INJECT1_0 = "NO";
    defparam add_104_4.INJECT1_1 = "NO";
    CCU2D add_102_12 (.A0(n478), .B0(x_d1_c_0), .C0(GND_net), .D0(GND_net), 
          .A1(n521), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1660), 
          .COUT(n1661), .S0(term_a0[12]), .S1(term_a0[13]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_102_12.INIT0 = 16'h5666;
    defparam add_102_12.INIT1 = 16'h5aaa;
    defparam add_102_12.INJECT1_0 = "NO";
    defparam add_102_12.INJECT1_1 = "NO";
    LUT4 i2_3_lut (.A(x_d1_c_5), .B(x_d1_c_6), .C(x_d1_c_7), .Z(n1596)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam i2_3_lut.init = 16'h8080;
    CCU2D add_105_2 (.A0(x_d1_c_5), .B0(x_d1_c_3), .C0(GND_net), .D0(GND_net), 
          .A1(n100), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1698), 
          .S1(n140));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_105_2.INIT0 = 16'h7000;
    defparam add_105_2.INIT1 = 16'h5aaa;
    defparam add_105_2.INJECT1_0 = "NO";
    defparam add_105_2.INJECT1_1 = "NO";
    CCU2D add_106_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1710), 
          .S0(n579));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_106_cout.INIT0 = 16'h0000;
    defparam add_106_cout.INIT1 = 16'h0000;
    defparam add_106_cout.INJECT1_0 = "NO";
    defparam add_106_cout.INJECT1_1 = "NO";
    LUT4 i193_2_lut (.A(x_d1_c_7), .B(x_d1_c_5), .Z(n1588)) /* synthesis lut_function=(A (B)) */ ;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(76[18:27])
    defparam i193_2_lut.init = 16'h8888;
    LUT4 i246_2_lut (.A(x_d1_c_7), .B(x_d1_c_4), .Z(n152)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i246_2_lut.init = 16'h6666;
    CCU2D add_106_12 (.A0(n490), .B0(x_d1_c_4), .C0(GND_net), .D0(GND_net), 
          .A1(x_d1_c_5), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1709), 
          .COUT(n1710), .S0(n530), .S1(n578));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_106_12.INIT0 = 16'h5666;
    defparam add_106_12.INIT1 = 16'h5aaa;
    defparam add_106_12.INJECT1_0 = "NO";
    defparam add_106_12.INJECT1_1 = "NO";
    FD1S3AX y_d1_i2 (.D(dac_c_2), .CK(clk_c), .Q(y_d2[2]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d1_i2.GSR = "ENABLED";
    FD1S3AX y_d1_i3 (.D(dac_c_3), .CK(clk_c), .Q(y_d2[3]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d1_i3.GSR = "ENABLED";
    FD1S3AX y_d1_i4 (.D(dac_c_4), .CK(clk_c), .Q(y_d2[4]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d1_i4.GSR = "ENABLED";
    FD1S3AX y_d1_i5 (.D(dac_c_5), .CK(clk_c), .Q(y_d2[5]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d1_i5.GSR = "ENABLED";
    FD1S3AX y_d1_i6 (.D(dac_c_6), .CK(clk_c), .Q(y_d2[6]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d1_i6.GSR = "ENABLED";
    FD1S3AX y_d1_i7 (.D(dac_c_7), .CK(clk_c), .Q(y_d2[7]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d1_i7.GSR = "ENABLED";
    FD1S3AX y_d1_i8 (.D(y_full[24]), .CK(clk_c), .Q(y_d2[8]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d1_i8.GSR = "ENABLED";
    FD1S3AX x_d1_rep_1_i2 (.D(term_a1[1]), .CK(clk_c), .Q(term_a2[1]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_rep_1_i2.GSR = "ENABLED";
    FD1S3AX x_d1_rep_1_i3 (.D(term_a1[2]), .CK(clk_c), .Q(x_d2[2]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_rep_1_i3.GSR = "ENABLED";
    FD1S3AX x_d1_rep_1_i4 (.D(x_d1_c_3), .CK(clk_c), .Q(x_d2[3]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_rep_1_i4.GSR = "ENABLED";
    FD1S3AX x_d1_rep_1_i5 (.D(x_d1_c_4), .CK(clk_c), .Q(x_d2[4]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_rep_1_i5.GSR = "ENABLED";
    FD1S3AX x_d1_rep_1_i6 (.D(x_d1_c_5), .CK(clk_c), .Q(x_d2[5]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_rep_1_i6.GSR = "ENABLED";
    FD1S3AX x_d1_rep_1_i7 (.D(x_d1_c_6), .CK(clk_c), .Q(x_d2[6]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_rep_1_i7.GSR = "ENABLED";
    FD1S3AX x_d1_rep_1_i8 (.D(x_d1_c_7), .CK(clk_c), .Q(x_d2[7]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_rep_1_i8.GSR = "ENABLED";
    FD1S3AX y_d2_ret2_i2 (.D(y_d2[1]), .CK(clk_c), .Q(term_b2[1]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_ret2_i2.GSR = "ENABLED";
    FD1S3AX y_d2_ret2_i3 (.D(n914), .CK(clk_c), .Q(term_b2[2]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_ret2_i3.GSR = "ENABLED";
    FD1S3AX y_d2_ret2_i4 (.D(n915), .CK(clk_c), .Q(term_b2[3]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_ret2_i4.GSR = "ENABLED";
    FD1S3AX y_d2_ret2_i5 (.D(n916), .CK(clk_c), .Q(term_b2[4]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_ret2_i5.GSR = "ENABLED";
    FD1S3AX y_d2_ret2_i6 (.D(n917), .CK(clk_c), .Q(term_b2[5]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_ret2_i6.GSR = "ENABLED";
    FD1S3AX y_d2_ret2_i7 (.D(n918), .CK(clk_c), .Q(term_b2[6]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_ret2_i7.GSR = "ENABLED";
    FD1S3AX y_d2_ret2_i8 (.D(n919), .CK(clk_c), .Q(term_b2[7]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_ret2_i8.GSR = "ENABLED";
    FD1S3AX y_d2_ret2_i9 (.D(n920), .CK(clk_c), .Q(term_b2[8]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_ret2_i9.GSR = "ENABLED";
    FD1S3AX y_d2_ret2_i10 (.D(n921), .CK(clk_c), .Q(term_b2[9]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_ret2_i10.GSR = "ENABLED";
    FD1S3AX y_d2_ret2_i11 (.D(n922), .CK(clk_c), .Q(term_b2[10]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_ret2_i11.GSR = "ENABLED";
    FD1S3AX y_d2_ret2_i12 (.D(n923), .CK(clk_c), .Q(term_b2[11]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_ret2_i12.GSR = "ENABLED";
    FD1S3AX y_d2_ret2_i13 (.D(n924), .CK(clk_c), .Q(term_b2[12]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_ret2_i13.GSR = "ENABLED";
    FD1S3AX y_d2_ret2_i14 (.D(n925), .CK(clk_c), .Q(term_b2[13]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_ret2_i14.GSR = "ENABLED";
    FD1S3AX y_d2_ret2_i15 (.D(n926), .CK(clk_c), .Q(term_b2[14]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_ret2_i15.GSR = "ENABLED";
    FD1S3AX y_d2_ret2_i16 (.D(n927), .CK(clk_c), .Q(term_b2[15]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_ret2_i16.GSR = "ENABLED";
    FD1S3AX y_d2_ret2_i17 (.D(n928), .CK(clk_c), .Q(term_b2[16]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_ret2_i17.GSR = "ENABLED";
    FD1S3AX y_d2_ret2_i18 (.D(n929), .CK(clk_c), .Q(term_b2[17]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_ret2_i18.GSR = "ENABLED";
    FD1S3AX y_d2_ret2_i19 (.D(n930), .CK(clk_c), .Q(term_b2[18]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_ret2_i19.GSR = "ENABLED";
    FD1S3AX y_d2_ret2_i20 (.D(n931), .CK(clk_c), .Q(term_b2[19]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_ret2_i20.GSR = "ENABLED";
    FD1S3AX y_d2_ret2_i21 (.D(n932), .CK(clk_c), .Q(term_b2[20]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_ret2_i21.GSR = "ENABLED";
    FD1S3AX y_d2_ret2_i22 (.D(n933), .CK(clk_c), .Q(term_b2[21]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_ret2_i22.GSR = "ENABLED";
    FD1S3AX y_d2_ret2_i23 (.D(n934), .CK(clk_c), .Q(term_b2[22]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_ret2_i23.GSR = "ENABLED";
    FD1S3AX y_d2_ret2_i24 (.D(n935), .CK(clk_c), .Q(term_b2[23]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_ret2_i24.GSR = "ENABLED";
    FD1S3AX y_d2_ret2_i25 (.D(n936), .CK(clk_c), .Q(term_b2[31]));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam y_d2_ret2_i25.GSR = "ENABLED";
    FD1S3AX x_d1_ret3_i2 (.D(n1350), .CK(clk_c), .Q(n61));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_ret3_i2.GSR = "ENABLED";
    FD1S3AX x_d1_ret3_i3 (.D(n1349), .CK(clk_c), .Q(n60));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_ret3_i3.GSR = "ENABLED";
    FD1S3AX x_d1_ret3_i4 (.D(n1348), .CK(clk_c), .Q(n59));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_ret3_i4.GSR = "ENABLED";
    FD1S3AX x_d1_ret3_i5 (.D(n1347), .CK(clk_c), .Q(n58));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_ret3_i5.GSR = "ENABLED";
    FD1S3AX x_d1_ret3_i6 (.D(n1346), .CK(clk_c), .Q(n57));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_ret3_i6.GSR = "ENABLED";
    FD1S3AX x_d1_ret3_i7 (.D(n1345), .CK(clk_c), .Q(n56));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_ret3_i7.GSR = "ENABLED";
    FD1S3AX x_d1_ret3_i8 (.D(n1344), .CK(clk_c), .Q(n55));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_ret3_i8.GSR = "ENABLED";
    FD1S3AX x_d1_ret3_i9 (.D(n1343), .CK(clk_c), .Q(n54));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_ret3_i9.GSR = "ENABLED";
    FD1S3AX x_d1_ret3_i10 (.D(n1342), .CK(clk_c), .Q(n53));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_ret3_i10.GSR = "ENABLED";
    FD1S3AX x_d1_ret3_i11 (.D(n1341), .CK(clk_c), .Q(n52));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_ret3_i11.GSR = "ENABLED";
    FD1S3AX x_d1_ret3_i12 (.D(n1340), .CK(clk_c), .Q(n51));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_ret3_i12.GSR = "ENABLED";
    FD1S3AX x_d1_ret3_i13 (.D(n1339), .CK(clk_c), .Q(n50));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_ret3_i13.GSR = "ENABLED";
    FD1S3AX x_d1_ret3_i14 (.D(n1338), .CK(clk_c), .Q(n49));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_ret3_i14.GSR = "ENABLED";
    FD1S3AX x_d1_ret3_i15 (.D(n1337), .CK(clk_c), .Q(n48));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_ret3_i15.GSR = "ENABLED";
    FD1S3AX x_d1_ret3_i16 (.D(n1336), .CK(clk_c), .Q(n47));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_ret3_i16.GSR = "ENABLED";
    FD1S3AX x_d1_ret3_i17 (.D(n1335), .CK(clk_c), .Q(n46));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_ret3_i17.GSR = "ENABLED";
    FD1S3AX x_d1_ret3_i18 (.D(n1334), .CK(clk_c), .Q(n45_adj_12));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_ret3_i18.GSR = "ENABLED";
    FD1S3AX x_d1_ret3_i19 (.D(n1333), .CK(clk_c), .Q(n44_adj_11));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_ret3_i19.GSR = "ENABLED";
    FD1S3AX x_d1_ret3_i20 (.D(n1332), .CK(clk_c), .Q(n43_adj_10));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_ret3_i20.GSR = "ENABLED";
    FD1S3AX x_d1_ret3_i21 (.D(n1331), .CK(clk_c), .Q(n42_adj_9));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_ret3_i21.GSR = "ENABLED";
    FD1S3AX x_d1_ret3_i22 (.D(n1330), .CK(clk_c), .Q(n41_adj_8));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_ret3_i22.GSR = "ENABLED";
    FD1S3AX x_d1_ret3_i23 (.D(n1352), .CK(clk_c), .Q(n40_adj_7));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(102[14] 108[8])
    defparam x_d1_ret3_i23.GSR = "ENABLED";
    FD1S3IX clk_divide_counter_56__i1 (.D(n44), .CK(clk_c), .CD(n1405), 
            .Q(clk_divide_counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(35[35:60])
    defparam clk_divide_counter_56__i1.GSR = "ENABLED";
    CCU2D add_104_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1696), 
          .S0(n571));   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(75[18:24])
    defparam add_104_cout.INIT0 = 16'h0000;
    defparam add_104_cout.INIT1 = 16'h0000;
    defparam add_104_cout.INJECT1_0 = "NO";
    defparam add_104_cout.INJECT1_1 = "NO";
    LUT4 i245_2_lut (.A(x_d1_c_6), .B(x_d1_c_3), .Z(n149)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i245_2_lut.init = 16'h6666;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i244_2_lut (.A(x_d1_c_5), .B(term_a1[2]), .Z(n146_adj_21)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i244_2_lut.init = 16'h6666;
    VLO i1 (.Z(GND_net));
    FD1S3IX clk_divide_counter_56__i2 (.D(n43), .CK(clk_c), .CD(n1405), 
            .Q(clk_divide_counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(35[35:60])
    defparam clk_divide_counter_56__i2.GSR = "ENABLED";
    FD1S3IX clk_divide_counter_56__i3 (.D(n42), .CK(clk_c), .CD(n1405), 
            .Q(clk_divide_counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(35[35:60])
    defparam clk_divide_counter_56__i3.GSR = "ENABLED";
    FD1S3IX clk_divide_counter_56__i4 (.D(n41), .CK(clk_c), .CD(n1405), 
            .Q(clk_divide_counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(35[35:60])
    defparam clk_divide_counter_56__i4.GSR = "ENABLED";
    FD1S3IX clk_divide_counter_56__i5 (.D(n40), .CK(clk_c), .CD(n1405), 
            .Q(clk_divide_counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(35[35:60])
    defparam clk_divide_counter_56__i5.GSR = "ENABLED";
    FD1S3IX clk_divide_counter_56__i6 (.D(n39), .CK(clk_c), .CD(n1405), 
            .Q(clk_divide_counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(35[35:60])
    defparam clk_divide_counter_56__i6.GSR = "ENABLED";
    FD1S3IX clk_divide_counter_56__i7 (.D(n38), .CK(clk_c), .CD(n1405), 
            .Q(clk_divide_counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/codefield/verilog/diamond_design/iir_2/source/iir.v(35[35:60])
    defparam clk_divide_counter_56__i7.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

