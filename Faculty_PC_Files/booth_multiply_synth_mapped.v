
// Generated by Cadence Genus(TM) Synthesis Solution 19.11-s087_1
// Generated on: Jun  1 2021 16:32:11 CEST (Jun  1 2021 14:32:11 UTC)

// Verification Directory fv/booth_multiply 

module booth_multiply(clk, rst, a_in, b_in, r_out, start, ready);
  input clk, rst, start;
  input [7:0] a_in, b_in;
  output [15:0] r_out;
  output ready;
  wire clk, rst, start;
  wire [7:0] a_in, b_in;
  wire [15:0] r_out;
  wire ready;
  wire [16:0] temp_reg;
  wire [16:0] P_reg;
  wire [16:0] A_reg;
  wire [16:0] S_reg;
  wire [3:0] i_reg;
  wire [2:0] state_reg;
  wire UNCONNECTED, UNCONNECTED0, UNCONNECTED1, UNCONNECTED2,
       UNCONNECTED3, UNCONNECTED4, UNCONNECTED5, UNCONNECTED6;
  wire UNCONNECTED7, UNCONNECTED8, UNCONNECTED9, UNCONNECTED10,
       UNCONNECTED11, UNCONNECTED12, UNCONNECTED13, UNCONNECTED14;
  wire UNCONNECTED15, UNCONNECTED16, UNCONNECTED17, UNCONNECTED18,
       UNCONNECTED19, UNCONNECTED20, UNCONNECTED21, UNCONNECTED22;
  wire UNCONNECTED23, UNCONNECTED24, UNCONNECTED25, UNCONNECTED26,
       UNCONNECTED27, UNCONNECTED28, UNCONNECTED29, UNCONNECTED30;
  wire UNCONNECTED31, UNCONNECTED32, UNCONNECTED33, UNCONNECTED34,
       UNCONNECTED35, UNCONNECTED36, UNCONNECTED37, UNCONNECTED38;
  wire UNCONNECTED39, n_0, n_1, n_2, n_3, n_4, n_5, n_6;
  wire n_7, n_8, n_9, n_10, n_11, n_12, n_13, n_14;
  wire n_15, n_16, n_17, n_18, n_19, n_20, n_21, n_22;
  wire n_23, n_24, n_25, n_26, n_27, n_28, n_29, n_30;
  wire n_31, n_32, n_33, n_34, n_35, n_36, n_37, n_38;
  wire n_39, n_40, n_41, n_42, n_44, n_45, n_46, n_47;
  wire n_49, n_50, n_51, n_52, n_53, n_54, n_55, n_56;
  wire n_57, n_58, n_59, n_60, n_61, n_62, n_63, n_64;
  wire n_65, n_66, n_67, n_68, n_69, n_70, n_71, n_72;
  wire n_73, n_74, n_75, n_76, n_77, n_78, n_79, n_80;
  wire n_81, n_82, n_83, n_84, n_85, n_86, n_87, n_88;
  wire n_89, n_90, n_91, n_92, n_93, n_94, n_95, n_96;
  wire n_97, n_98, n_99, n_100, n_101, n_102, n_103, n_104;
  wire n_105, n_106, n_107, n_108, n_109, n_110, n_111, n_112;
  wire n_113, n_114, n_115, n_116, n_117, n_118, n_119, n_120;
  wire n_121, n_122, n_123, n_124, n_125, n_126, n_127, n_128;
  wire n_129, n_130, n_131, n_132, n_133, n_134, n_135, n_136;
  wire n_137, n_138, n_139, n_140, n_141, n_142, n_143, n_144;
  wire n_145, n_146, n_147, n_148, n_149, n_150, n_151, n_152;
  wire n_153, n_154, n_155, n_156, n_157, n_158, n_159, n_160;
  wire n_161, n_162, n_163, n_164, n_165, n_166, n_167, n_168;
  wire n_169, n_170, n_171, n_172, n_173, n_174, n_175, n_176;
  wire n_177, n_178, n_179, n_180, n_181, n_182, n_183, n_184;
  wire n_185, n_186, n_187, n_188, n_189, n_190, n_191, n_192;
  wire n_193, n_194, n_195, n_196, n_197, n_198, n_199, n_200;
  wire n_201, n_202, n_203, n_204, n_205, n_206, n_207, n_208;
  wire n_209, n_210, n_211, n_212, n_213, n_214, n_215, n_216;
  wire n_217, n_218, n_219, n_220, n_221, n_222, n_223, n_224;
  wire n_225, n_226, n_227, n_228, n_229, n_230, n_231, n_232;
  wire n_233, n_234, n_235, n_236, n_237, n_238, n_239, n_240;
  wire n_241, n_242, n_243, n_244, n_245, n_246, n_247, n_248;
  wire n_249, n_250, n_251, n_252, n_253, n_273;
  assign r_out[14] = r_out[15];
  DFC3 \temp_reg_reg[16] (.RN (n_252), .C (clk), .D (n_253), .Q
       (temp_reg[16]), .QN (UNCONNECTED));
  OAI2110 g8135(.A (n_241), .B (n_251), .C (n_248), .D (n_249), .Q
       (n_253));
  DFC3 \temp_reg_reg[15] (.RN (n_252), .C (clk), .D (n_250), .Q
       (temp_reg[15]), .QN (UNCONNECTED0));
  OAI220 g8139(.A (n_245), .B (n_233), .C (n_246), .D (temp_reg[16]),
       .Q (n_251));
  OAI2110 g8137(.A (n_76), .B (n_240), .C (n_247), .D (n_249), .Q
       (n_250));
  NAND20 g8140(.A (n_244), .B (n_75), .Q (n_248));
  OAI2110 g8141(.A (temp_reg[15]), .B (n_246), .C (n_243), .D (n_98),
       .Q (n_247));
  XNR30 g8144(.A (P_reg[15]), .B (A_reg[16]), .C (n_237), .Q (n_245));
  XNR30 g8145(.A (P_reg[15]), .B (S_reg[16]), .C (n_239), .Q (n_244));
  DFC3 \temp_reg_reg[14] (.RN (n_252), .C (clk), .D (n_242), .Q
       (temp_reg[14]), .QN (n_11));
  NAND20 g8146(.A (n_238), .B (n_223), .Q (n_243));
  OAI210 g8147(.A (n_241), .B (n_234), .C (n_235), .Q (n_242));
  ADD31 g8149(.A (n_1), .B (n_236), .CI (n_227), .CO (n_239), .S
       (n_240));
  ADD31 g8150(.A (A_reg[15]), .B (n_236), .CI (n_229), .CO (n_237), .S
       (n_238));
  OAI220 g8151(.A (n_232), .B (n_151), .C (n_150), .D (n_162), .Q
       (n_235));
  OAI220 g8154(.A (n_231), .B (n_233), .C (n_246), .D (temp_reg[14]),
       .Q (n_234));
  NOR20 g8156(.A (n_130), .B (n_228), .Q (n_232));
  DFC3 \temp_reg_reg[13] (.RN (n_252), .C (clk), .D (n_226), .Q
       (temp_reg[13]), .QN (UNCONNECTED1));
  INV0 g8157(.A (n_230), .Q (n_231));
  ADD31 g8158(.A (A_reg[14]), .B (P_reg[14]), .CI (n_218), .CO (n_229),
       .S (n_230));
  ADD31 g8159(.A (n_2), .B (P_reg[14]), .CI (n_220), .CO (n_227), .S
       (n_228));
  INV0 g8160(.A (n_225), .Q (n_226));
  NOR20 g8161(.A (n_222), .B (n_224), .Q (n_225));
  DFEC1 \S_reg_reg[16] (.RN (n_252), .C (clk), .D (n_215), .E (n_217),
       .Q (S_reg[16]), .QN (UNCONNECTED2));
  AOI210 g8164(.A (n_219), .B (n_223), .C (n_99), .Q (n_224));
  AOI210 g8165(.A (n_221), .B (n_212), .C (n_71), .Q (n_222));
  DFC3 \temp_reg_reg[12] (.RN (n_252), .C (clk), .D (n_216), .Q
       (temp_reg[12]), .QN (UNCONNECTED3));
  ADD31 g8170(.A (n_21), .B (P_reg[13]), .CI (n_190), .CO (n_220), .S
       (n_221));
  ADD31 g8169(.A (A_reg[13]), .B (P_reg[13]), .CI (n_188), .CO (n_218),
       .S (n_219));
  DFEC1 \S_reg_reg[15] (.RN (n_252), .C (clk), .D (n_209), .E (n_217),
       .Q (S_reg[15]), .QN (n_1));
  INV0 g8168(.A (n_214), .Q (n_216));
  XNR20 g8148(.A (n_208), .B (a_in[7]), .Q (n_215));
  NOR20 g8171(.A (n_213), .B (n_210), .Q (n_214));
  DFC3 \temp_reg_reg[9] (.RN (n_252), .C (clk), .D (n_211), .Q
       (temp_reg[9]), .QN (n_8));
  DFC3 \r_reg_reg[1] (.RN (n_252), .C (clk), .D (n_203), .Q (r_out[1]),
       .QN (UNCONNECTED4));
  DFC3 \temp_reg_reg[11] (.RN (n_252), .C (clk), .D (n_206), .Q
       (temp_reg[11]), .QN (UNCONNECTED5));
  DFC3 \r_reg_reg[2] (.RN (n_252), .C (clk), .D (n_207), .Q (r_out[2]),
       .QN (UNCONNECTED6));
  DFC3 \r_reg_reg[3] (.RN (n_252), .C (clk), .D (n_196), .Q (r_out[3]),
       .QN (UNCONNECTED7));
  DFC3 \r_reg_reg[4] (.RN (n_252), .C (clk), .D (n_192), .Q (r_out[4]),
       .QN (UNCONNECTED8));
  DFC3 \r_reg_reg[6] (.RN (n_252), .C (clk), .D (n_198), .Q (r_out[6]),
       .QN (UNCONNECTED9));
  DFC3 \r_reg_reg[7] (.RN (n_252), .C (clk), .D (n_197), .Q (r_out[7]),
       .QN (UNCONNECTED10));
  DFC3 \r_reg_reg[8] (.RN (n_252), .C (clk), .D (n_202), .Q (r_out[8]),
       .QN (UNCONNECTED11));
  DFC3 \i_reg_reg[3] (.RN (n_252), .C (clk), .D (n_205), .Q (i_reg[3]),
       .QN (n_6));
  AOI210 g8178(.A (n_191), .B (n_212), .C (n_74), .Q (n_213));
  OAI2110 g8172(.A (n_223), .B (n_131), .C (n_170), .D (n_273), .Q
       (n_211));
  AOI210 g8177(.A (n_189), .B (n_223), .C (n_94), .Q (n_210));
  DFC3 \r_reg_reg[0] (.RN (n_252), .C (clk), .D (n_204), .Q (r_out[0]),
       .QN (UNCONNECTED12));
  DFC3 \r_reg_reg[10] (.RN (n_252), .C (clk), .D (n_194), .Q
       (r_out[10]), .QN (UNCONNECTED13));
  DFC3 \r_reg_reg[13] (.RN (n_252), .C (clk), .D (n_200), .Q
       (r_out[13]), .QN (UNCONNECTED14));
  DFC3 \r_reg_reg[11] (.RN (n_252), .C (clk), .D (n_193), .Q
       (r_out[11]), .QN (UNCONNECTED15));
  DFC3 \r_reg_reg[5] (.RN (n_252), .C (clk), .D (n_199), .Q (r_out[5]),
       .QN (UNCONNECTED16));
  DFC3 \r_reg_reg[9] (.RN (n_252), .C (clk), .D (n_195), .Q (r_out[9]),
       .QN (UNCONNECTED17));
  DFC3 \r_reg_reg[15] (.RN (n_252), .C (clk), .D (n_201), .Q
       (r_out[15]), .QN (UNCONNECTED18));
  ADD21 g8152(.A (n_147), .B (n_4), .CO (n_208), .S (n_209));
  DFEC1 \S_reg_reg[14] (.RN (n_252), .C (clk), .D (n_148), .E (n_217),
       .Q (S_reg[14]), .QN (n_2));
  DFC3 \P_reg_reg[5] (.RN (n_252), .C (clk), .D (n_176), .Q (P_reg[5]),
       .QN (n_23));
  DFC3 \P_reg_reg[8] (.RN (n_252), .C (clk), .D (n_166), .Q (P_reg[8]),
       .QN (n_20));
  DFC3 \P_reg_reg[2] (.RN (n_252), .C (clk), .D (n_171), .Q (P_reg[2]),
       .QN (UNCONNECTED19));
  DFC3 \P_reg_reg[4] (.RN (n_252), .C (clk), .D (n_177), .Q (P_reg[4]),
       .QN (n_10));
  DFC3 \P_reg_reg[3] (.RN (n_252), .C (clk), .D (n_169), .Q (P_reg[3]),
       .QN (UNCONNECTED20));
  DFC3 \P_reg_reg[7] (.RN (n_252), .C (clk), .D (n_173), .Q (P_reg[7]),
       .QN (n_14));
  DFC3 \P_reg_reg[6] (.RN (n_252), .C (clk), .D (n_174), .Q (P_reg[6]),
       .QN (n_13));
  DFC3 \P_reg_reg[1] (.RN (n_252), .C (clk), .D (n_165), .Q (P_reg[1]),
       .QN (n_27));
  INV0 g8209(.A (n_168), .Q (n_207));
  OAI210 g8195(.A (n_136), .B (n_241), .C (n_152), .Q (n_206));
  OAI2110 g8194(.A (n_133), .B (n_66), .C (n_145), .D (n_96), .Q
       (n_205));
  INV0 g8211(.A (n_172), .Q (n_204));
  INV0 g8210(.A (n_167), .Q (n_203));
  DFC3 \P_reg_reg[14] (.RN (n_252), .C (clk), .D (n_149), .Q (n_162),
       .QN (P_reg[14]));
  DFC3 \P_reg_reg[0] (.RN (n_252), .C (clk), .D (n_154), .Q (P_reg[0]),
       .QN (UNCONNECTED21));
  DFC3 \P_reg_reg[12] (.RN (n_252), .C (clk), .D (n_156), .Q
       (P_reg[12]), .QN (n_187));
  DFC3 \P_reg_reg[11] (.RN (n_252), .C (clk), .D (n_153), .Q
       (P_reg[11]), .QN (n_100));
  DFC3 \P_reg_reg[15] (.RN (n_252), .C (clk), .D (n_155), .Q
       (P_reg[15]), .QN (n_236));
  DFC3 \P_reg_reg[9] (.RN (n_252), .C (clk), .D (n_157), .Q (P_reg[9]),
       .QN (n_7));
  DFC3 \P_reg_reg[10] (.RN (n_252), .C (clk), .D (n_159), .Q
       (P_reg[10]), .QN (n_36));
  INV0 g8237(.A (n_185), .Q (n_202));
  INV0 g8242(.A (n_178), .Q (n_201));
  INV0 g8233(.A (n_163), .Q (n_200));
  INV0 g8234(.A (n_161), .Q (n_199));
  INV0 g8235(.A (n_160), .Q (n_198));
  INV0 g8236(.A (n_179), .Q (n_197));
  INV0 g8212(.A (n_164), .Q (n_196));
  INV0 g8238(.A (n_182), .Q (n_195));
  INV0 g8239(.A (n_181), .Q (n_194));
  INV0 g8240(.A (n_180), .Q (n_193));
  INV0 g8241(.A (n_186), .Q (n_192));
  DFC3 \r_reg_reg[12] (.RN (n_252), .C (clk), .D (n_158), .Q
       (r_out[12]), .QN (n_12));
  ADD31 g8213(.A (n_5), .B (n_187), .CI (n_101), .CO (n_190), .S
       (n_191));
  ADD31 g8214(.A (A_reg[12]), .B (n_187), .CI (n_103), .CO (n_188), .S
       (n_189));
  AOI220 g8253(.A (n_184), .B (r_out[4]), .C (n_183), .D (P_reg[5]), .Q
       (n_186));
  AOI220 g8248(.A (n_184), .B (r_out[8]), .C (n_183), .D (P_reg[9]), .Q
       (n_185));
  AOI220 g8249(.A (n_184), .B (r_out[9]), .C (n_183), .D (P_reg[10]),
       .Q (n_182));
  AOI220 g8250(.A (n_184), .B (r_out[10]), .C (n_183), .D (P_reg[11]),
       .Q (n_181));
  AOI220 g8251(.A (n_184), .B (r_out[11]), .C (n_183), .D (P_reg[12]),
       .Q (n_180));
  AOI220 g8247(.A (n_184), .B (r_out[7]), .C (n_183), .D (P_reg[8]), .Q
       (n_179));
  AOI220 g8254(.A (n_184), .B (r_out[15]), .C (n_183), .D (P_reg[15]),
       .Q (n_178));
  OAI220 g8256(.A (n_125), .B (n_60), .C (n_175), .D (temp_reg[5]), .Q
       (n_177));
  OAI220 g8257(.A (n_126), .B (n_65), .C (n_175), .D (temp_reg[6]), .Q
       (n_176));
  OAI220 g8258(.A (n_124), .B (n_61), .C (n_175), .D (temp_reg[7]), .Q
       (n_174));
  OAI220 g8259(.A (n_123), .B (n_62), .C (n_175), .D (temp_reg[8]), .Q
       (n_173));
  AOI220 g8218(.A (n_184), .B (r_out[0]), .C (n_183), .D (P_reg[1]), .Q
       (n_172));
  OAI220 g8261(.A (n_120), .B (n_59), .C (n_175), .D (temp_reg[3]), .Q
       (n_171));
  OAI210 g8197(.A (n_132), .B (n_129), .C (n_49), .Q (n_170));
  OAI220 g8262(.A (n_119), .B (n_58), .C (n_175), .D (temp_reg[4]), .Q
       (n_169));
  AOI220 g8216(.A (n_184), .B (r_out[2]), .C (n_183), .D (P_reg[3]), .Q
       (n_168));
  AOI220 g8217(.A (n_184), .B (r_out[1]), .C (n_183), .D (P_reg[2]), .Q
       (n_167));
  OAI220 g8260(.A (n_122), .B (n_57), .C (n_175), .D (n_8), .Q (n_166));
  OAI220 g8219(.A (n_121), .B (n_56), .C (n_175), .D (temp_reg[2]), .Q
       (n_165));
  AOI220 g8221(.A (n_184), .B (r_out[3]), .C (n_183), .D (P_reg[4]), .Q
       (n_164));
  AOI220 g8244(.A (n_184), .B (r_out[13]), .C (n_183), .D (n_162), .Q
       (n_163));
  AOI220 g8245(.A (n_184), .B (r_out[5]), .C (n_183), .D (P_reg[6]), .Q
       (n_161));
  AOI220 g8246(.A (n_184), .B (r_out[6]), .C (n_183), .D (P_reg[7]), .Q
       (n_160));
  INV0 g8263(.A (n_146), .Q (n_159));
  OAI220 g8252(.A (n_118), .B (n_12), .C (n_114), .D (P_reg[13]), .Q
       (n_158));
  DFC3 \i_reg_reg[2] (.RN (n_252), .C (clk), .D (n_128), .Q (i_reg[2]),
       .QN (n_41));
  INV0 g8264(.A (n_144), .Q (n_157));
  INV0 g8274(.A (n_141), .Q (n_156));
  DFC3 \i_reg_reg[1] (.RN (n_252), .C (clk), .D (n_135), .Q (i_reg[1]),
       .QN (n_9));
  INV0 g8276(.A (n_139), .Q (n_155));
  INV0 g8277(.A (n_138), .Q (n_154));
  INV0 g8278(.A (n_137), .Q (n_153));
  OAI220 g8215(.A (n_117), .B (n_151), .C (n_150), .D (P_reg[11]), .Q
       (n_152));
  INV0 g8275(.A (n_140), .Q (n_149));
  DFC3 \P_reg_reg[13] (.RN (n_252), .C (clk), .D (n_127), .Q (n_15),
       .QN (P_reg[13]));
  ADD21 g8162(.A (n_105), .B (n_0), .CO (n_147), .S (n_148));
  AOI220 g8267(.A (n_143), .B (P_reg[10]), .C (n_142), .D
       (temp_reg[11]), .Q (n_146));
  NAND20 g8269(.A (n_116), .B (i_reg[3]), .Q (n_145));
  AOI220 g8270(.A (n_143), .B (P_reg[9]), .C (n_142), .D
       (temp_reg[10]), .Q (n_144));
  DFEC1 \S_reg_reg[13] (.RN (n_252), .C (clk), .D (n_106), .E (n_217),
       .Q (S_reg[13]), .QN (n_21));
  AOI220 g8280(.A (n_143), .B (P_reg[12]), .C (n_142), .D
       (temp_reg[13]), .Q (n_141));
  DFC3 \temp_reg_reg[10] (.RN (n_252), .C (clk), .D (n_115), .Q
       (temp_reg[10]), .QN (UNCONNECTED22));
  AOI220 g8282(.A (n_143), .B (n_162), .C (n_142), .D (temp_reg[15]),
       .Q (n_140));
  AOI220 g8283(.A (n_143), .B (P_reg[15]), .C (n_142), .D
       (temp_reg[16]), .Q (n_139));
  AOI220 g8284(.A (n_143), .B (P_reg[0]), .C (n_142), .D (temp_reg[1]),
       .Q (n_138));
  AOI220 g8287(.A (n_143), .B (P_reg[11]), .C (n_142), .D
       (temp_reg[12]), .Q (n_137));
  OAI220 g8279(.A (n_112), .B (n_233), .C (n_246), .D (temp_reg[11]),
       .Q (n_136));
  JKC3 \i_reg_reg[0] (.RN (n_252), .C (clk), .J (n_92), .K (n_134), .Q
       (i_reg[0]), .QN (UNCONNECTED23));
  OAI220 g8286(.A (n_134), .B (n_9), .C (n_133), .D (n_32), .Q (n_135));
  AOI210 g8271(.A (n_131), .B (n_130), .C (n_7), .Q (n_132));
  AOI210 g8266(.A (n_131), .B (n_51), .C (A_reg[9]), .Q (n_129));
  OAI220 g8285(.A (n_134), .B (n_41), .C (n_42), .D (n_133), .Q
       (n_128));
  OAI220 g8281(.A (n_107), .B (P_reg[13]), .C (n_175), .D (n_11), .Q
       (n_127));
  DFC3 \temp_reg_reg[2] (.RN (n_252), .C (clk), .D (n_110), .Q
       (UNCONNECTED24), .QN (temp_reg[2]));
  DFC3 \temp_reg_reg[3] (.RN (n_252), .C (clk), .D (n_108), .Q
       (UNCONNECTED25), .QN (temp_reg[3]));
  DFC3 \temp_reg_reg[1] (.RN (n_252), .C (clk), .D (n_109), .Q
       (temp_reg[1]), .QN (UNCONNECTED26));
  DFC3 \state_reg_reg[0] (.RN (n_252), .C (clk), .D (n_113), .Q
       (state_reg[0]), .QN (n_3));
  NOR20 g8288(.A (b_in[4]), .B (n_143), .Q (n_126));
  NOR20 g8289(.A (b_in[3]), .B (n_143), .Q (n_125));
  NOR20 g8290(.A (b_in[5]), .B (n_143), .Q (n_124));
  NOR20 g8291(.A (b_in[6]), .B (n_143), .Q (n_123));
  NOR20 g8292(.A (b_in[7]), .B (n_143), .Q (n_122));
  NOR20 g8293(.A (b_in[0]), .B (n_143), .Q (n_121));
  NOR20 g8299(.A (b_in[1]), .B (n_143), .Q (n_120));
  NOR20 g8297(.A (b_in[2]), .B (n_143), .Q (n_119));
  DFC3 \state_reg_reg[2] (.RN (n_252), .C (clk), .D (n_111), .Q
       (state_reg[2]), .QN (n_16));
  CLKIN1 g8295(.A (n_118), .Q (n_184));
  NOR20 g8296(.A (n_130), .B (n_102), .Q (n_117));
  NAND20 g8298(.A (n_134), .B (n_46), .Q (n_116));
  OAI210 g8300(.A (n_73), .B (n_241), .C (n_95), .Q (n_115));
  OAI310 g8302(.A (n_142), .B (n_217), .C (n_77), .D (n_114), .Q
       (n_118));
  NAND30 g8196(.A (n_87), .B (n_175), .C (n_44), .Q (n_113));
  INV0 g8303(.A (n_104), .Q (n_112));
  DFC3 \temp_reg_reg[4] (.RN (n_252), .C (clk), .D (n_90), .Q
       (UNCONNECTED27), .QN (temp_reg[4]));
  DFC3 \temp_reg_reg[5] (.RN (n_252), .C (clk), .D (n_85), .Q
       (UNCONNECTED28), .QN (temp_reg[5]));
  DFC3 \temp_reg_reg[7] (.RN (n_252), .C (clk), .D (n_82), .Q
       (UNCONNECTED29), .QN (temp_reg[7]));
  DFC3 \temp_reg_reg[8] (.RN (n_252), .C (clk), .D (n_83), .Q
       (UNCONNECTED30), .QN (temp_reg[8]));
  INV0 g8243(.A (n_97), .Q (n_111));
  OAI210 g8327(.A (temp_reg[2]), .B (n_223), .C (n_78), .Q (n_110));
  INV0 g8322(.A (n_93), .Q (n_109));
  OAI210 g8326(.A (temp_reg[3]), .B (n_223), .C (n_80), .Q (n_108));
  DFC3 \temp_reg_reg[6] (.RN (n_252), .C (clk), .D (n_81), .Q
       (UNCONNECTED31), .QN (temp_reg[6]));
  DFC3 \state_reg_reg[1] (.RN (n_252), .C (clk), .D (n_89), .Q
       (state_reg[1]), .QN (n_35));
  CLKIN1 g8313(.A (n_107), .Q (n_143));
  ADD21 g8173(.A (n_67), .B (n_22), .CO (n_105), .S (n_106));
  ADD31 g8305(.A (A_reg[11]), .B (n_100), .CI (n_54), .CO (n_103), .S
       (n_104));
  ADD31 g8304(.A (n_17), .B (n_100), .CI (n_55), .CO (n_101), .S
       (n_102));
  AOI210 g8314(.A (n_98), .B (temp_reg[13]), .C (n_246), .Q (n_99));
  DFEC1 \S_reg_reg[12] (.RN (n_252), .C (clk), .D (n_68), .E (n_217),
       .Q (S_reg[12]), .QN (n_5));
  AOI220 g8255(.A (n_86), .B (n_88), .C (n_45), .D (n_96), .Q (n_97));
  OAI220 g8315(.A (n_72), .B (n_151), .C (n_150), .D (P_reg[10]), .Q
       (n_95));
  AOI210 g8316(.A (n_98), .B (temp_reg[12]), .C (n_246), .Q (n_94));
  AOI220 g8325(.A (n_79), .B (P_reg[1]), .C (n_233), .D (temp_reg[1]),
       .Q (n_93));
  NOR20 g8321(.A (n_92), .B (n_91), .Q (n_107));
  AOI210 g8319(.A (n_98), .B (temp_reg[9]), .C (n_246), .Q (n_131));
  NOR20 g8320(.A (n_142), .B (n_91), .Q (n_134));
  OAI220 g8330(.A (n_84), .B (n_10), .C (n_223), .D (temp_reg[4]), .Q
       (n_90));
  OAI210 g8220(.A (n_88), .B (n_69), .C (n_38), .Q (n_89));
  OAI210 g8268(.A (P_reg[0]), .B (n_27), .C (n_86), .Q (n_87));
  OAI220 g8331(.A (n_84), .B (n_23), .C (n_223), .D (temp_reg[5]), .Q
       (n_85));
  OAI220 g8334(.A (n_84), .B (n_20), .C (n_223), .D (temp_reg[8]), .Q
       (n_83));
  OAI220 g8333(.A (n_84), .B (n_14), .C (n_223), .D (temp_reg[7]), .Q
       (n_82));
  OAI220 g8332(.A (n_84), .B (n_13), .C (n_223), .D (temp_reg[6]), .Q
       (n_81));
  NAND20 g8345(.A (n_79), .B (P_reg[3]), .Q (n_80));
  NAND20 g8347(.A (n_79), .B (P_reg[2]), .Q (n_78));
  NAND30 g8328(.A (n_84), .B (n_114), .C (n_37), .Q (n_91));
  NAND30 g8348(.A (n_84), .B (n_133), .C (start), .Q (n_77));
  INV0 g8352(.A (n_75), .Q (n_76));
  DFEC1 \A_reg_reg[15] (.RN (n_252), .C (clk), .D (a_in[6]), .E
       (n_217), .Q (UNCONNECTED32), .QN (A_reg[15]));
  DFEC1 \A_reg_reg[16] (.RN (n_252), .C (clk), .D (a_in[7]), .E
       (n_217), .Q (A_reg[16]), .QN (UNCONNECTED33));
  DFEC1 \A_reg_reg[13] (.RN (n_252), .C (clk), .D (a_in[4]), .E
       (n_217), .Q (UNCONNECTED34), .QN (A_reg[13]));
  DFEC1 \A_reg_reg[14] (.RN (n_252), .C (clk), .D (a_in[5]), .E
       (n_217), .Q (UNCONNECTED35), .QN (A_reg[14]));
  DFEC1 \A_reg_reg[12] (.RN (n_252), .C (clk), .D (a_in[3]), .E
       (n_217), .Q (UNCONNECTED36), .QN (A_reg[12]));
  DFEC1 \S_reg_reg[11] (.RN (n_252), .C (clk), .D (n_40), .E (n_217),
       .Q (S_reg[11]), .QN (n_17));
  DFEC1 \A_reg_reg[10] (.RN (n_252), .C (clk), .D (a_in[1]), .E
       (n_217), .Q (A_reg[10]), .QN (UNCONNECTED37));
  DFEC1 \A_reg_reg[9] (.RN (n_252), .C (clk), .D (a_in[0]), .E (n_217),
       .Q (n_19), .QN (A_reg[9]));
  DFEC1 \S_reg_reg[10] (.RN (n_252), .C (clk), .D (n_26), .E (n_217),
       .Q (S_reg[10]), .QN (UNCONNECTED38));
  AOI210 g8344(.A (n_70), .B (P_reg[12]), .C (n_150), .Q (n_74));
  DFEC1 \A_reg_reg[11] (.RN (n_252), .C (clk), .D (a_in[2]), .E
       (n_217), .Q (UNCONNECTED39), .QN (A_reg[11]));
  OAI220 g8335(.A (n_233), .B (n_47), .C (n_246), .D (temp_reg[10]), .Q
       (n_73));
  NOR20 g8346(.A (n_50), .B (n_130), .Q (n_72));
  AOI210 g8349(.A (n_70), .B (n_15), .C (n_150), .Q (n_71));
  NOR20 g8360(.A (n_64), .B (n_130), .Q (n_75));
  INV0 g8294(.A (n_69), .Q (n_86));
  INV0 g8353(.A (n_84), .Q (n_79));
  INV0 g8343(.A (n_241), .Q (n_98));
  ADD21 g8265(.A (n_39), .B (n_18), .CO (n_67), .S (n_68));
  NAND20 g8301(.A (n_66), .B (n_92), .Q (n_69));
  NOR20 g8361(.A (n_246), .B (n_70), .Q (n_84));
  NAND20 g8359(.A (n_63), .B (n_151), .Q (n_249));
  NOR20 g8351(.A (n_246), .B (n_233), .Q (n_241));
  AOI210 g8355(.A (n_175), .B (P_reg[5]), .C (n_217), .Q (n_65));
  INV0 g8374(.A (n_63), .Q (n_64));
  AOI210 g8356(.A (n_175), .B (P_reg[7]), .C (n_217), .Q (n_62));
  INV0 g8375(.A (n_70), .Q (n_130));
  INV3 g8354(.A (n_233), .Q (n_223));
  AOI210 g8357(.A (n_175), .B (P_reg[6]), .C (n_217), .Q (n_61));
  AOI210 g8358(.A (n_175), .B (P_reg[4]), .C (n_217), .Q (n_60));
  AOI210 g8364(.A (n_175), .B (P_reg[2]), .C (n_217), .Q (n_59));
  AOI210 g8365(.A (n_175), .B (P_reg[3]), .C (n_217), .Q (n_58));
  AOI210 g8366(.A (n_175), .B (P_reg[8]), .C (n_217), .Q (n_57));
  AOI210 g8369(.A (n_175), .B (P_reg[1]), .C (n_217), .Q (n_56));
  OAI210 g8371(.A (S_reg[10]), .B (n_53), .C (n_52), .Q (n_55));
  OAI210 g8370(.A (A_reg[10]), .B (n_53), .C (n_52), .Q (n_54));
  NAND20 g8376(.A (n_51), .B (n_236), .Q (n_63));
  NAND20 g8377(.A (n_212), .B (n_51), .Q (n_70));
  XOR30 g8363(.A (P_reg[10]), .B (S_reg[10]), .C (n_49), .Q (n_50));
  XNR30 g8367(.A (P_reg[10]), .B (A_reg[10]), .C (n_49), .Q (n_47));
  NAND20 g8318(.A (n_46), .B (n_6), .Q (n_66));
  NAND20 g8362(.A (n_45), .B (n_175), .Q (n_233));
  NAND20 g8372(.A (ready), .B (start), .Q (n_44));
  CLKIN0 g8389(.A (n_175), .Q (n_142));
  CLKIN2 g8390(.A (n_96), .Q (n_217));
  ADD21 g8323(.A (n_31), .B (n_41), .CO (n_46), .S (n_42));
  ADD21 g8324(.A (n_25), .B (n_24), .CO (n_39), .S (n_40));
  NOR20 g8373(.A (n_38), .B (n_183), .Q (n_45));
  INV0 g8388(.A (n_150), .Q (n_51));
  NAND20 g8396(.A (n_34), .B (n_35), .Q (n_96));
  NAND21 g8395(.A (n_30), .B (state_reg[1]), .Q (n_175));
  INV0 g8378(.A (n_37), .Q (ready));
  NAND20 g8383(.A (n_49), .B (n_36), .Q (n_52));
  INV0 g8381(.A (n_183), .Q (n_114));
  INV0 g8380(.A (n_151), .Q (n_212));
  NOR20 g8382(.A (n_36), .B (n_49), .Q (n_53));
  INV0 g8379(.A (n_133), .Q (n_92));
  NOR20 g8393(.A (state_reg[1]), .B (n_29), .Q (n_150));
  NOR20 g8394(.A (n_35), .B (n_33), .Q (n_246));
  NAND20 g8384(.A (n_38), .B (n_35), .Q (n_37));
  NAND20 g8385(.A (n_38), .B (state_reg[1]), .Q (n_133));
  NOR20 g8386(.A (state_reg[1]), .B (n_28), .Q (n_151));
  INV0 g8401(.A (n_33), .Q (n_34));
  AOI210 g8391(.A (i_reg[1]), .B (i_reg[0]), .C (n_31), .Q (n_32));
  INV0 g8402(.A (n_29), .Q (n_30));
  NOR21 g8387(.A (n_35), .B (n_28), .Q (n_183));
  NAND20 g8404(.A (n_27), .B (P_reg[0]), .Q (n_88));
  NAND20 g8400(.A (P_reg[9]), .B (n_19), .Q (n_49));
  XOR20 g8392(.A (a_in[0]), .B (a_in[1]), .Q (n_26));
  NAND20 g8403(.A (n_16), .B (state_reg[0]), .Q (n_33));
  NAND20 g8405(.A (n_3), .B (state_reg[2]), .Q (n_29));
  NOR20 g8406(.A (a_in[0]), .B (a_in[1]), .Q (n_25));
  NOR20 g8398(.A (i_reg[0]), .B (i_reg[1]), .Q (n_31));
  NAND20 g8397(.A (state_reg[2]), .B (state_reg[0]), .Q (n_28));
  NOR20 g8399(.A (state_reg[0]), .B (state_reg[2]), .Q (n_38));
  CLKIN0 g8436(.A (a_in[2]), .Q (n_24));
  CLKIN0 g8413(.A (a_in[4]), .Q (n_22));
  CLKIN0 g8435(.A (a_in[3]), .Q (n_18));
  CLKIN0 g8434(.A (a_in[6]), .Q (n_4));
  CLKIN0 g8415(.A (a_in[5]), .Q (n_0));
  INV0 g8440(.A (rst), .Q (n_252));
  NAND22 g2(.A (P_reg[9]), .B (n_151), .Q (n_273));
endmodule

