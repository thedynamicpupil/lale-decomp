
void __cdecl16far FUN_4000_2721(void)

{
  char *pcVar1;
  int iVar2;
  uint uVar3;
  char *pcVar4;
  undefined2 uVar5;
  int iVar6;
  undefined2 uVar7;
  undefined1 local_20 [6];
  undefined2 local_1a;
  undefined2 local_18;
  int local_16;
  int local_14;
  int local_12;
  int local_10;
  int local_e;
  int local_c;
  int local_a;
  int local_8;
  int local_6;
  int local_4;
  
  pcVar4 = (char *)s_ogret1_cmp_26e0_26dc + 4;
  if (DAT_3042_0052 == DAT_3042_0172) {
    FUN_19d4_068a(DAT_3042_4c87,DAT_3042_4c89,DAT_3042_4caf,DAT_3042_4cb1);
    for (DAT_3042_3fa8 = DAT_3042_3f5e; DAT_3042_3fa8 <= DAT_3042_3f5e + 6;
        DAT_3042_3fa8 = DAT_3042_3fa8 + 1) {
      for (DAT_3042_3faa = DAT_3042_3f60 + 6; DAT_3042_3f60 <= DAT_3042_3faa;
          DAT_3042_3faa = DAT_3042_3faa + -1) {
        local_4 = *(int *)(DAT_3042_3faa * 0x38 + DAT_3042_3fa8 * 2 + -0x3712);
        DAT_3042_3fac = ((undefined2 *)&DAT_3042_2cae)[DAT_3042_3fa8 + DAT_3042_3faa * 0x1c];
        local_6 = DAT_3042_3fa8;
        local_8 = *(int *)(DAT_3042_3faa * 0x38 + DAT_3042_3fa8 * 2 + -0x3cfa);
        local_a = *(int *)(DAT_3042_3faa * 0x38 + DAT_3042_3fa8 * 2 + -0x3cfc);
        local_c = *(int *)(DAT_3042_3faa * 0x38 + DAT_3042_3fa8 * 2 + -0x3d34);
        local_e = *(int *)(DAT_3042_3faa * 0x38 + DAT_3042_3fa8 * 2 + -0x3cfe);
        local_10 = *(int *)(DAT_3042_3faa * 0x38 + DAT_3042_3fa8 * 2 + -0x3d00);
        pcVar4 = (char *)((((undefined2 *)&DAT_3042_0a70)[DAT_3042_3fac * 0x14] + -1) * 8);
        if (SCARRY2(((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3fac * 0x14],(int)pcVar4) ==
            (int)(pcVar4 + ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3fac * 0x14]) < 0) {
          pcVar4 = (char *)((((undefined2 *)&DAT_3042_0a70)[DAT_3042_3fac * 0x14] + -1) * 8);
          pcVar1 = pcVar4 + ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3fac * 0x14];
        }
        else {
          pcVar1 = (char *)0x0;
        }
        DAT_3042_3fa4 = pcVar1 + 0x11;
        if (local_4 == 0) {
          if (((DAT_3042_3f5c == 1) && (DAT_3042_3f5a == DAT_3042_3faa)) &&
             (DAT_3042_3f58 == DAT_3042_3fa8)) {
            pcVar4 = (char *)((DAT_3042_3fa8 - DAT_3042_3f5e) * 0xe);
            FUN_4000_02d1(pcVar4 + (DAT_3042_3faa - DAT_3042_3f60) * 0x1e + 10,
                          (DAT_3042_3fa8 - DAT_3042_3f5e) * 0xe + 0x17,10);
          }
          if (0 < DAT_3042_3fac) {
            uVar5 = 0x14;
code_r0x00042af8:
            FUN_4000_3955(uVar5);
          }
        }
        else {
          if (local_4 < 10) {
            pcVar4 = (char *)((DAT_3042_3fa8 - DAT_3042_3f5e) * 0xe);
            FUN_4000_02d1(pcVar4 + (DAT_3042_3faa - DAT_3042_3f60) * 0x1e + 10,
                          (DAT_3042_3fa8 - DAT_3042_3f5e) * 0xe + 0x18,local_4);
            if (((DAT_3042_3f5c == 1) && (DAT_3042_3f5a == DAT_3042_3faa)) &&
               (DAT_3042_3f58 == DAT_3042_3fa8)) {
              iVar6 = 10;
              iVar2 = (DAT_3042_3fa8 - DAT_3042_3f5e) * 0xe + 0x17;
              pcVar4 = (char *)((DAT_3042_3fa8 - DAT_3042_3f5e) * 0xe);
              pcVar1 = pcVar4 + (DAT_3042_3faa - DAT_3042_3f60) * 0x1e + 10;
              goto LAB_4000_2ae6;
            }
          }
          else {
            FUN_4000_02d1((DAT_3042_3faa - DAT_3042_3f60) * 0x1e +
                          (DAT_3042_3fa8 - DAT_3042_3f5e) * 0xe + 10,
                          (DAT_3042_3fa8 - DAT_3042_3f5e) * 0xe + 0x18,
                          *(undefined2 *)(local_4 * 2 + 0x2616));
            if (((DAT_3042_3f5c == 1) && (DAT_3042_3f5a == DAT_3042_3faa)) &&
               (DAT_3042_3f58 == DAT_3042_3fa8)) {
              FUN_4000_02d1((DAT_3042_3faa - DAT_3042_3f60) * 0x1e +
                            (DAT_3042_3fa8 - DAT_3042_3f5e) * 0xe + 10,
                            (DAT_3042_3fa8 - DAT_3042_3f5e) * 0xe + 0x17,10);
            }
            if ((((local_8 == DAT_3042_3f56) || (local_a == DAT_3042_3f56)) ||
                ((local_c == DAT_3042_3f56 ||
                 ((local_e == DAT_3042_3f56 || (local_10 == DAT_3042_3f56)))))) &&
               (0 < DAT_3042_3f56)) {
              local_14 = 1;
            }
            else {
              local_14 = 0;
            }
            if (((((DAT_3042_3faa + 1 == DAT_3042_3f5a) && (DAT_3042_3fa8 == DAT_3042_3f58)) ||
                 (((DAT_3042_3faa + 1 == DAT_3042_3f5a && (DAT_3042_3fa8 + -1 == DAT_3042_3f58)) ||
                  ((DAT_3042_3faa == DAT_3042_3f5a && (DAT_3042_3fa8 + -1 == DAT_3042_3f58)))))) ||
                ((DAT_3042_3faa + 1 == DAT_3042_3f5a && (DAT_3042_3fa8 + -2 == DAT_3042_3f58)))) ||
               (((DAT_3042_3faa + 1 == DAT_3042_3f5a && (DAT_3042_3fa8 + -3 == DAT_3042_3f58)) ||
                ((DAT_3042_3faa == DAT_3042_3f5a && (DAT_3042_3fa8 == DAT_3042_3f58)))))) {
              local_16 = 1;
            }
            else {
              local_16 = 0;
            }
            if ((local_14 == 0) && ((local_16 == 0 || (DAT_3042_3f5c != 1)))) {
              iVar6 = local_4 + 6;
            }
            else {
              iVar6 = 0xf;
            }
            iVar2 = (DAT_3042_3fa8 - DAT_3042_3f5e) * 0xe + -0xc;
            pcVar4 = (char *)((DAT_3042_3fa8 - DAT_3042_3f5e) * 0xe);
            pcVar1 = pcVar4 + (DAT_3042_3faa - DAT_3042_3f60) * 0x1e + 7;
LAB_4000_2ae6:
            FUN_4000_02d1(pcVar1,iVar2,iVar6);
          }
          if (0 < DAT_3042_3fac) {
            uVar5 = 0;
            goto code_r0x00042af8;
          }
        }
      }
    }
    local_12 = DAT_3042_3fbe;
    if (DAT_3042_3f5c != 0) {
      local_12 = ((undefined2 *)&DAT_3042_2cae)[DAT_3042_3f58 + DAT_3042_3f5a * 0x1c];
    }
    DAT_3042_3fa4 = (char *)((((undefined2 *)&DAT_3042_0a70)[local_12 * 0x14] + -1) * 8 + 0x14);
    if (local_12 != 0) {
      local_18 = 0x4b;
      local_1a = 0x8e;
      FUN_4000_0387(&local_18);
    }
    FUN_4000_0d1b();
    if (DAT_3042_3fbe < 0x19) {
      if (DAT_3042_3fbe < 0x18) {
        FUN_4000_7470();
      }
    }
    else {
      FUN_4000_7574();
    }
    if (DAT_3042_3f46 != 8) {
      FUN_4000_214e(DAT_3042_3f46);
    }
    if (DAT_26e0_631c == 1) {
      DAT_26e0_631c = 0;
      uVar7 = 0;
      uVar5 = FUN_1000_3f58(DAT_3042_3f50,local_20);
      FUN_4000_0b80(2,DAT_3042_3fb2 + 0xc,DAT_3042_3fb0 + 10,uVar5,pcVar4,uVar7);
      uVar3 = (uint)DAT_3042_0045;
      uVar5 = FUN_1000_3f58(DAT_3042_3f50,local_20);
      FUN_4000_0b80(2,DAT_3042_3fb2 + 0xc,DAT_3042_3fb0 + 10,uVar5,pcVar4,uVar3);
      DAT_3042_3fa6 = 0;
    }
    if (DAT_26e0_631e == 1) {
      DAT_26e0_631e = 0;
      FUN_4000_16eb(0xa510,(char *)s_ogret1_cmp_26e0_26dc + 4,DAT_3042_3fae);
      DAT_26e0_631a = 0;
    }
    FUN_4000_0be1(6);
    if (DAT_26e0_6318 == 1) {
      FUN_15dc_1e5e(10);
      DAT_26e0_6318 = 0;
    }
  }
  return;
}


