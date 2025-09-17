module deconv_transposed_weight(
    input   wire            clk,
    input   wire            en,
    input   wire    [3:0]   addr,
    
    output  reg     [71:0]  dout_0,
    output  reg     [71:0]  dout_1,
    output  reg     [71:0]  dout_2,
    output  reg     [71:0]  dout_3,
    output  reg     [71:0]  dout_4,
    output  reg     [71:0]  dout_5,
    output  reg     [71:0]  dout_6,
    output  reg     [71:0]  dout_7,
    output  reg     [71:0]  dout_8,
    output  reg     [71:0]  dout_9,
    output  reg     [71:0]  dout_10,
    output  reg     [71:0]  dout_11,
    output  reg     [71:0]  dout_12,
    output  reg     [71:0]  dout_13,
    output  reg     [71:0]  dout_14,
    output  reg     [71:0]  dout_15
    );
    
    always @(posedge clk) begin
        if(!en) begin
            dout_0 = 72'd0;
            dout_1 = 72'd0;
            dout_2 = 72'd0;
            dout_3 = 72'd0;
            dout_4 = 72'd0;
            dout_5 = 72'd0;
            dout_6 = 72'd0;
            dout_7 = 72'd0;
            dout_8 = 72'd0;
            dout_9 = 72'd0;
            dout_10 = 72'd0;
            dout_11 = 72'd0;
            dout_12 = 72'd0;
            dout_13 = 72'd0;
            dout_14 = 72'd0;
            dout_15 = 72'd0;
        end
        else begin
            case(addr)
                4'd0: begin
                    dout_0 = 72'h07E80FF4480308F504;
                    dout_1 = 72'h070501FC42E1FF01F6;
                    dout_2 = 72'hF6F804F6F002060D00;
                    dout_3 = 72'h0A3FF01515EFFC0AF6;
                    dout_4 = 72'h11F708FBE80901FC04;
                    dout_5 = 72'h02F204102205FADC09;
                    dout_6 = 72'hFB19FAEF03F3020605;
                    dout_7 = 72'h01F6F7FE2DFBFBF6FF;
                    dout_8 = 72'h0C00FB240114FEFCFE;
                    dout_9 = 72'hF32DD3FE00F102060C;
                    dout_10 = 72'h0AF9FC020300F8F716;
                    dout_11 = 72'h00E70506010FFFF801;
                    dout_12 = 72'hFF02FF0CE90401FD00;
                    dout_13 = 72'hFE070101E9010309FE;
                    dout_14 = 72'h05FF03F9000002FF02;
                    dout_15 = 72'h0201FCFB2FFEFBF7FD;
                end
                
                4'd1: begin
                    dout_0 = 72'h00030D00451900FE00;
                    dout_1 = 72'h0005FE0023DF00FDFD;
                    dout_2 = 72'h00F70100F1FE001000;
                    dout_3 = 72'h003DFB00F9060000F8;
                    dout_4 = 72'h00190200F9FE00FF03;
                    dout_5 = 72'h00FAFF003E0200D60D;
                    dout_6 = 72'h0023F400E2F4000308;
                    dout_7 = 72'h00EAF70029FB00F100;
                    dout_8 = 72'h00F60400250700FFFC;
                    dout_9 = 72'h00EED80000E600070C;
                    dout_10 = 72'h0001EE0039E000FE0E;
                    dout_11 = 72'h00E308001E0800FA01;
                    dout_12 = 72'h00FA0000010A00FAFF;
                    dout_13 = 72'h00080200E5030008FD;
                    dout_14 = 72'h00070200F303000002;
                    dout_15 = 72'h0002FD001FF900FAFD;
                end
                
                4'd2: begin
                    dout_0 = 72'h00000100292000FEFC;
                    dout_1 = 72'h0011F400161200FD00;
                    dout_2 = 72'h00F5FC00EEF7000F04;
                    dout_3 = 72'h00250900070E00FEFC;
                    dout_4 = 72'h00240200F8F100FF01;
                    dout_5 = 72'h00FCFE003DFE00E203;
                    dout_6 = 72'h0017F500C802000308;
                    dout_7 = 72'h00EEF6001B0000F1FF;
                    dout_8 = 72'h0006080040ED0000FC;
                    dout_9 = 72'h00D6FB00FDD500060F;
                    dout_10 = 72'h0003F90027D900F70B;
                    dout_11 = 72'h00EB07002AFA00FBFF;
                    dout_12 = 72'h00F60200230500FBFD;
                    dout_13 = 72'h00060400EE010007FE;
                    dout_14 = 72'h000D0000EB07000100;
                    dout_15 = 72'h0003FD00FF0200FBFC;
                end
                
                4'd3: begin
                    dout_0 = 72'h0005EB0010F60000F6;
                    dout_1 = 72'h0013F700095200FCFC;
                    dout_2 = 72'h00F2F800E9F5000B0B;
                    dout_3 = 72'h00151F0026EA00FA02;
                    dout_4 = 72'h002DFC00F7F1000001;
                    dout_5 = 72'h00FDFE003A0400EFEB;
                    dout_6 = 72'h00000300CD0D000606;
                    dout_7 = 72'h00F5F700051100F5FD;
                    dout_8 = 72'h0017030054F20001FE;
                    dout_9 = 72'h00D32400F9D600040F;
                    dout_10 = 72'h00030C00081600FA0A;
                    dout_11 = 72'h00F9FB001DF700FDFA;
                    dout_12 = 72'h00F8040027F200FEFD;
                    dout_13 = 72'h00020600FBF7000603;
                    dout_14 = 72'h000CFF00F0070002FD;
                    dout_15 = 72'h0005FB00EF1A00F9F9;
                end
                
                4'd4: begin
                    dout_0 = 72'h000000FD4A04050002;
                    dout_1 = 72'h0000000446E5FE05F1;
                    dout_2 = 72'h000000F21604010AFE;
                    dout_3 = 72'h0000000F3EF0FC0CFE;
                    dout_4 = 72'h000000FBDE0702FA03;
                    dout_5 = 72'h000000FC0502FED50F;
                    dout_6 = 72'h000000E024F7050601;
                    dout_7 = 72'h000000F329FAFEF601;
                    dout_8 = 72'h0000003AF816FAF301;
                    dout_9 = 72'h000000F911E7030811;
                    dout_10 = 72'h000000F314FF03F30B;
                    dout_11 = 72'h00000010E90CFBF601;
                    dout_12 = 72'h0000000AE502FEFF01;
                    dout_13 = 72'h00000008EC02010BFE;
                    dout_14 = 72'h00000001F000060201;
                    dout_15 = 72'h000000FC14FBFFF5FD;
                end
                
                4'd5: begin
                    dout_0 = 72'h000000004A22000BFC;
                    dout_1 = 72'h000000002BD700FEFA;
                    dout_2 = 72'h0000000028FB000B00;
                    dout_3 = 72'h00000000180700FC01;
                    dout_4 = 72'h00000000EFFF00FF01;
                    dout_5 = 72'h0000000014FE00CF13;
                    dout_6 = 72'h0000000001F8000506;
                    dout_7 = 72'h0000000014FC00F300;
                    dout_8 = 72'h00000000320B00F2FE;
                    dout_9 = 72'h00000000FEDD000C0E;
                    dout_10 = 72'h0000000033E4000B03;
                    dout_11 = 72'h000000000E0800F8FF;
                    dout_12 = 72'h00000000F50A00F800;
                    dout_13 = 72'h00000000F2030009FE;
                    dout_14 = 72'h00000000E705000601;
                    dout_15 = 72'h0000000000F800F6FD;
                end
                
                4'd6: begin
                    dout_0 = 72'h00000000312C0004F8;
                    dout_1 = 72'h000000002EFE00FA03;
                    dout_2 = 72'h0000000010F2000B04;
                    dout_3 = 72'h000000000D1D00FB03;
                    dout_4 = 72'h00000000EDF2000100;
                    dout_5 = 72'h0000000008FA00DD0A;
                    dout_6 = 72'h00000000D106000709;
                    dout_7 = 72'h00000000FB0600F7FD;
                    dout_8 = 72'h000000005EEC00F6FB;
                    dout_9 = 72'h00000000F6DE000B0C;
                    dout_10 = 72'h000000000BE2000F01;
                    dout_11 = 72'h000000002AF500F6FC;
                    dout_12 = 72'h00000000180800F7FE;
                    dout_13 = 72'h0000000001FE000501;
                    dout_14 = 72'h00000000EF080006FF;
                    dout_15 = 72'h00000000ECFE00F9FB;
                end
                
                4'd7: begin
                    dout_0 = 72'h0000000024F80000F1;
                    dout_1 = 72'h00000000254700F904;
                    dout_2 = 72'h00000000ECFC000708;
                    dout_3 = 72'h000000001F1100FA05;
                    dout_4 = 72'h00000000F1E90002FF;
                    dout_5 = 72'h00000000FD0000F0EE;
                    dout_6 = 72'h00000000BF1D000A06;
                    dout_7 = 72'h00000000E71B00FAF9;
                    dout_8 = 72'h0000000073E900FEFC;
                    dout_9 = 72'h00000000F5F3000812;
                    dout_10 = 72'h00000000F11B000C04;
                    dout_11 = 72'h0000000027E700F6FA;
                    dout_12 = 72'h0000000023F400FAFF;
                    dout_13 = 72'h000000000BF4000306;
                    dout_14 = 72'h00000000FD000006FE;
                    dout_15 = 72'h00000000EB0D00FCF6;
                end
                
                4'd8: begin
                    dout_0 = 72'h000000031A0C0215FF;
                    dout_1 = 72'h0000000C3AF1FC13ED;
                    dout_2 = 72'h000000F22705FAFBFD;
                    dout_3 = 72'h0000000B6EE90206FC;
                    dout_4 = 72'h00000003ED0601FB04;
                    dout_5 = 72'h000000FAF6040DD812;
                    dout_6 = 72'h000000E140F706FFF6;
                    dout_7 = 72'h000000F111F9040102;
                    dout_8 = 72'h0000003BF10CFCF20A;
                    dout_9 = 72'h000000F42AD6020408;
                    dout_10 = 72'h000000EA09FD10F605;
                    dout_11 = 72'h00000011D10CFAFD06;
                    dout_12 = 72'h00000002EFFFFFFC03;
                    dout_13 = 72'h00000007FE02FC05FD;
                    dout_14 = 72'h0000000BE902040700;
                    dout_15 = 72'h000000FFF5FB000500;
                end
                
                4'd9: begin
                    dout_0 = 72'h000000003021001CFE;
                    dout_1 = 72'h000000001EE00002F8;
                    dout_2 = 72'h000000003BFA00F7FF;
                    dout_3 = 72'h00000000490000F606;
                    dout_4 = 72'h000000000000000100;
                    dout_5 = 72'h0000000004FF00E913;
                    dout_6 = 72'h000000002AF500FCFD;
                    dout_7 = 72'h00000000F3FC000100;
                    dout_8 = 72'h00000000270900F400;
                    dout_9 = 72'h00000000FAD5000A02;
                    dout_10 = 72'h0000000014E9001BF4;
                    dout_11 = 72'h00000000ED0A00FF03;
                    dout_12 = 72'h00000000E80700FA04;
                    dout_13 = 72'h0000000009010000FE;
                    dout_14 = 72'h00000000F305000AFF;
                    dout_15 = 72'h00000000E9FA0003FE;
                end
                
                4'd10: begin
                    dout_0 = 72'h0000000018200010FE;
                    dout_1 = 72'h000000002CF100F90E;
                    dout_2 = 72'h000000001AF200F703;
                    dout_3 = 72'h00000000211E00FC06;
                    dout_4 = 72'h00000000FBFB0004FD;
                    dout_5 = 72'h00000000F9FD00FB07;
                    dout_6 = 72'h00000000F302000005;
                    dout_7 = 72'h00000000E0030008FC;
                    dout_8 = 72'h0000000060F400F6F7;
                    dout_9 = 72'h00000000EAF80009FC;
                    dout_10 = 72'h00000000E8F1002CEF;
                    dout_11 = 72'h000000000FFA00FBFD;
                    dout_12 = 72'h00000000F60900FD01;
                    dout_13 = 72'h0000000013FE00FB02;
                    dout_14 = 72'h000000000A040008FE;
                    dout_15 = 72'h00000000EBFB00FDFE;
                end
                
                4'd11: begin
                    dout_0 = 72'h0000000015ED0006F5;
                    dout_1 = 72'h00000000292A00F61C;
                    dout_2 = 72'h00000000F00300F802;
                    dout_3 = 72'h000000001B300002FE;
                    dout_4 = 72'h00000000FEF40004FD;
                    dout_5 = 72'h00000000F3FD0009F1;
                    dout_6 = 72'h00000000D023000602;
                    dout_7 = 72'h00000000DB100006FA;
                    dout_8 = 72'h0000000077EA0000F8;
                    dout_9 = 72'h00000000E6220007FE;
                    dout_10 = 72'h00000000D31E002AF9;
                    dout_11 = 72'h000000001DE100F6FE;
                    dout_12 = 72'h0000000004FF0000FF;
                    dout_13 = 72'h0000000012FB00FA05;
                    dout_14 = 72'h0000000016F7000500;
                    dout_15 = 72'h00000000F5FA00FB00;
                end
                
                4'd12: begin
                    dout_0 = 72'h0000000AFC17FE29FA;
                    dout_1 = 72'h0000000F1FF8FA2BE9;
                    dout_2 = 72'h000000F40E05F9EAFE;
                    dout_3 = 72'h000000097FE80E01F0;
                    dout_4 = 72'h000000151804FFFB08;
                    dout_5 = 72'h000000FEEE0615F514;
                    dout_6 = 72'h000000F03DF4FFFAF1;
                    dout_7 = 72'h000000F8F6F50715FE;
                    dout_8 = 72'h0000001FE80207F914;
                    dout_9 = 72'h000000F74ACF01FCF7;
                    dout_10 = 72'h000000F9FEFB130105;
                    dout_11 = 72'h00000004CB0CFC030D;
                    dout_12 = 72'h000000FBFCFF05F503;
                    dout_13 = 72'h000000020C01FAF6FE;
                    dout_14 = 72'h0000000DF203FC07FF;
                    dout_15 = 72'h00000002F2FBFD2301;
                end
                
                4'd13: begin
                    dout_0 = 72'h000000001821002903;
                    dout_1 = 72'h0000000011EA000BF4;
                    dout_2 = 72'h0000000015FE00E3FF;
                    dout_3 = 72'h0000000067FE00F6FD;
                    dout_4 = 72'h0000000036FF000302;
                    dout_5 = 72'h00000000FB00002511;
                    dout_6 = 72'h000000003CEF00E9F6;
                    dout_7 = 72'h00000000DFF7001BFC;
                    dout_8 = 72'h000000000006000B04;
                    dout_9 = 72'h00000000FEDC0003EF;
                    dout_10 = 72'h000000000BE80027ED;
                    dout_11 = 72'h00000000D40D001007;
                    dout_12 = 72'h00000000EB04000007;
                    dout_13 = 72'h00000000120100EE00;
                    dout_14 = 72'h0000000004040004FF;
                    dout_15 = 72'h00000000F2FB001BFD;
                end
                
                4'd14: begin
                    dout_0 = 72'h00000000080D001A0E;
                    dout_1 = 72'h0000000027E900FD19;
                    dout_2 = 72'h0000000002F900E7FF;
                    dout_3 = 72'h0000000032160003FF;
                    dout_4 = 72'h000000002F060004FC;
                    dout_5 = 72'h00000000F7FF0031FF;
                    dout_6 = 72'h0000000014F900E502;
                    dout_7 = 72'h00000000DCF9001DFC;
                    dout_8 = 72'h0000000031010012EF;
                    dout_9 = 72'h00000000EF1E0003E4;
                    dout_10 = 72'h00000000F4FC0032E8;
                    dout_11 = 72'h00000000ED01000FFE;
                    dout_12 = 72'h00000000E908001004;
                    dout_13 = 72'h00000000130100ED01;
                    dout_14 = 72'h0000000019FF00FC00;
                    dout_15 = 72'h00000000FAF9000502;
                end
                
                4'd15: begin
                    dout_0 = 72'h000000000FD8000AFF;
                    dout_1 = 72'h000000002A0800F53A;
                    dout_2 = 72'h00000000EC0200EFF9;
                    dout_3 = 72'h000000001A2F0010EA;
                    dout_4 = 72'h00000000290E0003FD;
                    dout_5 = 72'h00000000F6FD0025F3;
                    dout_6 = 72'h00000000EC1700F002;
                    dout_7 = 72'h00000000E3FB001001;
                    dout_8 = 72'h000000004BF7001DF3;
                    dout_9 = 72'h00000000E75D0005E1;
                    dout_10 = 72'h00000000E823002F07;
                    dout_11 = 72'h0000000003E8000300;
                    dout_12 = 72'h00000000F3050012F9;
                    dout_13 = 72'h000000000D0400F4FF;
                    dout_14 = 72'h000000001DF500F804;
                    dout_15 = 72'h0000000001F500F811;
                end
                
                default: begin
                    dout_0 = 72'd0;
                    dout_1 = 72'd0;
                    dout_2 = 72'd0;
                    dout_3 = 72'd0;
                    dout_4 = 72'd0;
                    dout_5 = 72'd0;
                    dout_6 = 72'd0;
                    dout_7 = 72'd0;
                    dout_8 = 72'd0;
                    dout_9 = 72'd0;
                    dout_10 = 72'd0;
                    dout_11 = 72'd0;
                    dout_12 = 72'd0;
                    dout_13 = 72'd0;
                    dout_14 = 72'd0;
                    dout_15 = 72'd0;
                end
                
            endcase
        end
    end
endmodule
