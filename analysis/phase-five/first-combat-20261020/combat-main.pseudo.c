
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_4000_b40a(void)

{
  int *piVar1;
  code *pcVar2;
  char cVar3;
  int iVar4;
  undefined2 uVar5;
  char *pcVar6;
  undefined2 unaff_SS;
  undefined4 uVar7;
  byte *pbVar8;
  undefined2 uVar9;
  undefined2 uVar10;
  undefined2 uVar11;
  undefined1 local_6e [72];
  int local_26;
  uint local_24;
  int local_22;
  uint local_20;
  int local_1e;
  int local_1c;
  int local_1a;
  int local_18;
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
  
  local_12 = 0;
  DAT_26e0_6322 = 0;
  FUN_1000_127a((undefined2 *)&DAT_3042_000c,(char *)s_ogret1_cmp_26e0_26dc + 4,local_6e,unaff_SS);
  FUN_1000_127a((undefined2 *)&DAT_3042_012c,(char *)s_ogret1_cmp_26e0_26dc + 4,
                (undefined2 *)&DAT_3042_000c,(char *)s_ogret1_cmp_26e0_26dc + 4);
  DAT_3042_3f5e = 0xfec8;
  DAT_3042_3f60 = 0xfec8;
  DAT_26e0_3d5e = 0;
  DAT_26e0_3d6e = 0;
  DAT_26e0_3d72 = 0;
  DAT_26e0_3d70 = 0;
  FUN_2670_0052(0x1000);
  func_0x00026b7a(0x2670,(char *)s_palbat_pal_26e0_6880,(char *)s_ogret1_cmp_26e0_26dc + 4,0,0x100);
  FUN_19d4_0a81(0xde26,(char *)s_ogret1_cmp_26e0_26dc + 4,0xc21,(char *)s_T_CODE_ISOSYS_L_26e0_688b,
                (char *)s_ogret1_cmp_26e0_26dc + 4);
  uVar11 = 0;
  uVar7 = FUN_2154_0688(0x7f80,0,0,*_DAT_3042_4f0f);
  FUN_1ac6_1a13(uVar7,uVar11);
  FUN_19d4_0b22(0xde26,(char *)s_ogret1_cmp_26e0_26dc + 4);
  if (DAT_26e0_7318 == 0) {
    DAT_26e0_3d70 = DAT_26e0_3d70 + DAT_26e0_731e;
    DAT_26e0_3d72 = DAT_26e0_7320;
  }
  if ((DAT_26e0_73d0 != '\0') && (local_22 = DAT_3042_252d, DAT_3042_2517 != '\0')) {
    iVar4 = FUN_1000_1779(0x8000,0,1,0);
    iVar4 = FUN_1000_12df(0x1000,iVar4 << 1,(iVar4 >> 0xf) << 1 | (uint)(iVar4 < 0));
    if (iVar4 == 0) {
      uVar11 = 0x10;
    }
    else {
      uVar11 = 0xc;
    }
    FUN_2682_0043(0x1000,uVar11);
    if (DAT_3042_2518 != '\0') {
      if (DAT_3042_252d == 0xc) {
        DAT_26e0_3d72 = DAT_26e0_3d72 + -0x1e;
      }
      else {
        DAT_26e0_3d72 = DAT_26e0_3d72 + -0x19;
      }
    }
    DAT_26e0_731a = DAT_26e0_731a + DAT_26e0_3d72;
    FUN_1ef6_1625(DAT_26e0_731a,DAT_26e0_731a >> 0xf,0xffff,0xffff);
  }
  local_20 = (uint)DAT_26e0_7324;
  DAT_26e0_632a = 1;
  DAT_26e0_632c = 2;
  DAT_3042_3f2a = 0;
  DAT_3042_3f38 = 0;
  DAT_3042_3f86 = 0;
  for (local_4 = 1; local_4 < 4; local_4 = local_4 + 1) {
    DAT_3042_3f38 = DAT_3042_3f38 + *(int *)(local_4 * 6 + 0x5bdc);
  }
  FUN_15dc_178e();
  FUN_4000_0570();
  FUN_4000_568c();
  FUN_1c7f_06b6();
  FUN_4000_6345();
  local_10 = 0;
  for (local_4 = 1; local_4 < 4; local_4 = local_4 + 1) {
    if (100 < *(int *)(local_4 * 6 + 0x5bda)) {
      piVar1 = (int *)(local_4 * 6 + 0x5bda);
      *piVar1 = *piVar1 + -100;
      local_10 = local_4;
    }
    if (*(int *)(local_4 * 6 + 0x5bda) < 1) {
      *(undefined2 *)(local_4 * 6 + 0x5bdc) = 0;
      for (local_6 = 1; local_6 < 0x14; local_6 = local_6 + 1) {
        *(undefined2 *)(local_4 * 0x2e + local_6 * 2 + -0x6030) = 0;
      }
    }
    else {
      *(int *)(local_4 * 0x2e + -0x602e) =
           *(int *)(*(int *)(local_4 * 6 + 0x5bda) * 0x2e + 0x1289) +
           (uint)DAT_3042_2519 * *(int *)(*(int *)(local_4 * 6 + 0x5bda) * 0x2e + 0x1287);
      for (local_6 = 2; local_6 < 0x14; local_6 = local_6 + 1) {
        *(undefined2 *)(local_4 * 0x2e + local_6 * 2 + -0x6030) =
             *(undefined2 *)(*(int *)(local_4 * 6 + 0x5bda) * 0x2e + local_6 * 2 + 0x1287);
      }
    }
    piVar1 = (int *)(local_4 * 0x2e + -0x602a);
    *piVar1 = *piVar1 + 1;
  }
  for (local_4 = 1; local_4 < 4; local_4 = local_4 + 1) {
    if (*(int *)(local_4 * 6 + 0x5bdc) != 0) {
      local_6 = (local_4 + -1) * 8;
      while (local_6 = local_6 + 1, local_6 <= (local_4 + -1) * 8 + *(int *)(local_4 * 6 + 0x5bdc))
      {
        ((undefined2 *)&DAT_3042_0a6a)[local_6 * 0x14] = *(undefined2 *)(local_4 * 0x2e + -0x602e);
        ((undefined2 *)&DAT_3042_0a6c)[local_6 * 0x14] = *(undefined2 *)(local_4 * 0x2e + -0x601e);
        ((undefined2 *)&DAT_3042_0a6e)[local_6 * 0x14] = 1;
        ((undefined2 *)&DAT_3042_0a70)[local_6 * 0x14] = local_4 + 4;
        if (local_10 == local_4) {
          ((undefined2 *)&DAT_3042_0a78)[local_6 * 0x14] = 1;
        }
        else {
          ((undefined2 *)&DAT_3042_0a78)[local_6 * 0x14] = 2;
        }
        *(undefined2 *)(local_6 * 0x28 + -0x5f64) = *(undefined2 *)(local_4 * 0x2e + -0x602a);
        *(undefined2 *)(local_6 * 0x28 + -0x5f62) = *(undefined2 *)(local_4 * 0x2e + -0x6028);
        *(undefined2 *)(local_6 * 0x28 + -0x5f60) = *(undefined2 *)(local_4 * 0x2e + -0x601a);
        *(undefined2 *)(local_6 * 0x28 + -0x5f5e) = *(undefined2 *)(local_4 * 0x2e + -0x6018);
        *(undefined2 *)(local_6 * 0x28 + -0x5f5c) = *(undefined2 *)(local_4 * 0x2e + -0x6016);
        *(undefined2 *)(local_6 * 0x28 + -0x5f5a) = *(undefined2 *)(local_4 * 0x2e + -0x6014);
        *(undefined2 *)(local_6 * 0x28 + -0x5f58) = *(undefined2 *)(local_4 * 0x2e + -0x6012);
        *(undefined2 *)(local_6 * 0x28 + -0x5f56) = *(undefined2 *)(local_4 * 0x2e + -0x6010);
      }
    }
  }
  for (DAT_3042_3faa = 0; DAT_3042_3faa < 0x1c; DAT_3042_3faa = DAT_3042_3faa + 1) {
    for (DAT_3042_3fa8 = 0; DAT_3042_3fa8 < 0x1c; DAT_3042_3fa8 = DAT_3042_3fa8 + 1) {
      ((undefined2 *)&DAT_3042_2cae)[DAT_3042_3fa8 + DAT_3042_3faa * 0x1c] = 0;
    }
  }
  DAT_3042_23d0 = DAT_3042_23d0 % 4;
  local_16 = DAT_3042_23d0 + 1;
  if (local_16 == 2) {
    local_16 = 4;
  }
  else if (local_16 == 4) {
    local_16 = 2;
  }
  FUN_19d4_0b22(0xbb3b,(char *)s_ogret1_cmp_26e0_26dc + 4);
  pbVar8 = (byte *)FUN_1000_1477(0x19d4);
  DAT_3042_3f1e = (uint)*pbVar8;
  pbVar8 = (byte *)FUN_1000_1477(0x1000);
  DAT_3042_3f26 = (uint)*pbVar8;
  pbVar8 = (byte *)FUN_1000_1477(0x1000);
  DAT_3042_3f1c = (uint)*pbVar8;
  pbVar8 = (byte *)FUN_1000_1477(0x1000);
  DAT_3042_3f24 = (uint)*pbVar8;
  pbVar8 = (byte *)FUN_1000_1477(0x1000);
  DAT_3042_3f1a = (uint)*pbVar8;
  pbVar8 = (byte *)FUN_1000_1477(0x1000);
  DAT_3042_3f22 = (uint)*pbVar8;
  pbVar8 = (byte *)FUN_1000_1477(0x1000);
  DAT_3042_3f18 = (uint)*pbVar8;
  pbVar8 = (byte *)FUN_1000_1477(0x1000);
  DAT_3042_3f20 = (uint)*pbVar8;
  if ((((DAT_3042_23d0 == 0) && (DAT_3042_3f26 != 1)) && ((int)DAT_3042_3f1e < 8)) &&
     (DAT_3042_3f26 != 3)) {
    local_1a = 0;
    local_18 = -1;
  }
  else {
    if (((DAT_3042_23d0 == 1) && (DAT_3042_3f24 != 1)) &&
       (((int)DAT_3042_3f1c < 8 && (DAT_3042_3f24 != 3)))) {
      local_1a = 1;
    }
    else {
      if (((DAT_3042_23d0 == 2) && (DAT_3042_3f22 != 1)) &&
         (((int)DAT_3042_3f1a < 8 && (DAT_3042_3f22 != 3)))) {
        local_1a = 0;
        local_18 = 1;
        goto LAB_4000_bd1e;
      }
      if ((((DAT_3042_23d0 == 3) && (DAT_3042_3f20 != 1)) && ((int)DAT_3042_3f18 < 8)) &&
         (DAT_3042_3f20 != 3)) {
        local_1a = -1;
      }
      else {
        local_1a = 0;
      }
    }
    local_18 = 0;
  }
LAB_4000_bd1e:
  for (local_6 = 1; local_6 < 0x1d; local_6 = local_6 + 1) {
    if (0 < (int)((undefined2 *)&DAT_3042_0a6a)[local_6 * 0x14]) {
      do {
        if (((undefined2 *)&DAT_3042_0a78)[local_6 * 0x14] == 1) {
          local_1c = DAT_3042_3f34;
          local_1e = DAT_3042_3f32;
          ((undefined2 *)&DAT_3042_0a6e)[local_6 * 0x14] = local_16;
        }
        else {
          local_1c = DAT_3042_3f34 + local_1a;
          local_1e = DAT_3042_3f32 + local_18;
          ((undefined2 *)&DAT_3042_0a6e)[local_6 * 0x14] = (local_16 + 1) % 4 + 1;
        }
        FUN_1000_1779(0x8000,0);
        uVar5 = 0;
        uVar11 = FUN_1000_1242();
        DAT_3042_3faa = FUN_1000_12df(0x1000,uVar11,uVar5);
        iVar4 = FUN_1000_1779(0x8000,0);
        iVar4 = iVar4 >> 0xf;
        uVar11 = FUN_1000_138d();
        iVar4 = FUN_1000_12df(0x1000,uVar11,iVar4);
        DAT_3042_3faa = DAT_3042_3faa + local_1c * 9;
        DAT_3042_3fa8 = iVar4 + local_1e * 9;
      } while (((((undefined2 *)&DAT_3042_2cae)[DAT_3042_3fa8 + DAT_3042_3faa * 0x1c] != 0) ||
               (9 < *(int *)(DAT_3042_3faa * 0x38 + DAT_3042_3fa8 * 2 + -0x3712))) ||
              ((*(int *)(DAT_3042_3faa * 0x38 + DAT_3042_3fa8 * 2 + -0x3712) == 8 ||
               (*(int *)(DAT_3042_3faa * 0x38 + DAT_3042_3fa8 * 2 + -0x3712) == 6))));
      ((undefined2 *)&DAT_3042_0a72)[local_6 * 0x14] = DAT_3042_3faa;
      ((undefined2 *)&DAT_3042_0a74)[local_6 * 0x14] = DAT_3042_3fa8;
      ((undefined2 *)&DAT_3042_2cae)
      [((undefined2 *)&DAT_3042_0a74)[local_6 * 0x14] +
       ((undefined2 *)&DAT_3042_0a72)[local_6 * 0x14] * 0x1c] = local_6;
    }
  }
  FUN_26ba_0048(0x1000,0,0);
  FUN_26ba_004d((char *)s_insan2_cmp_26e0_26b5 + 5,0,0,0x13f,199);
  _DAT_3042_4fc3 = 0x2d;
  FUN_1c7f_0069(0x262d);
  DAT_26e0_632e = 0;
  FUN_4000_1b6d();
  FUN_1c7f_073f(500,DAT_26e0_3d70,0);
  DAT_26e0_3d72 = 0;
  DAT_26e0_3d70 = 0;
  do {
    do {
      while (DAT_26e0_6324 != 0) {
        DAT_26e0_6324 = 0;
        if (((undefined2 *)&DAT_3042_0a78)[DAT_3042_3fbe * 0x14] != 2) {
          if (((undefined2 *)&DAT_3042_0a78)[DAT_3042_3fbe * 0x14] != 1) {
            ((undefined2 *)&DAT_3042_0a6a)[DAT_3042_3fbe * 0x14] = 0;
            ((undefined2 *)&DAT_3042_2cae)
            [((undefined2 *)&DAT_3042_0a74)[DAT_3042_3fbe * 0x14] +
             ((undefined2 *)&DAT_3042_0a72)[DAT_3042_3fbe * 0x14] * 0x1c] = 0;
          }
          DAT_26e0_7324 = (byte)local_20;
          FUN_1c7f_0069(CONCAT11(0x26,DAT_3042_4fc3));
          break;
        }
        pcVar6 = (char *)0x1c7f;
        FUN_1c7f_0204();
        DAT_26e0_7324 = 0;
        FUN_4000_9668();
        iVar4 = FUN_4000_1b6d();
        if ((iVar4 == -1) || (DAT_26e0_632e == 1)) goto LAB_4000_d62a;
      }
      do {
        DAT_3042_3fb6 = FUN_1000_1f3f(1);
        local_24 = DAT_3042_3fb6 & 0xff;
        pcVar6 = (char *)s_ogren2_cmp_26e0_26cf + 0xb;
        func_0x00026dca(0x1000,&local_24);
        if (DAT_3042_3fb6 == 0xffff) {
          thunk_FUN_1db7_01ea();
          pcVar2 = (code *)swi(0x1b);
          (*pcVar2)();
          pcVar6 = (char *)0x1000;
          FUN_1000_29d7();
        }
        DAT_3042_3fb6 = DAT_3042_3fb6 >> 8;
        if (DAT_3042_3fb6 != 0) {
          pcVar6 = (char *)0x1db7;
          thunk_FUN_1db7_01ea();
        }
        if (DAT_26e0_632e == 1) goto LAB_4000_d62a;
        local_8 = FUN_1c7f_0515();
        local_a = DAT_3042_4fc5;
        FUN_1c7f_026b(CONCAT11(0x26,DAT_3042_4fc3));
      } while ((DAT_3042_3fb6 == 0) && ((local_8 < 1 || (local_a < 1))));
    } while ((DAT_3042_3fb6 == 0) && ((DAT_3042_4fc5 == 0 || (iVar4 = FUN_1c7f_0515(), iVar4 == 0)))
            );
    local_8 = FUN_1c7f_0515();
    local_a = DAT_3042_4fc5;
    if (((((DAT_3042_3fb6 == 0x47) ||
          (((DAT_3042_3fb6 == 0x48 || (DAT_3042_3fb6 == 0x49)) || (DAT_3042_3fb6 == 0x4b)))) ||
         (((DAT_3042_3fb6 == 0x4d || (DAT_3042_3fb6 == 0x4f)) || (DAT_3042_3fb6 == 0x50)))) ||
        (DAT_3042_3fb6 == 0x51)) || (((0x14 < local_8 && (local_8 < 0x1d)) && (DAT_3042_4fc5 == 1)))
       ) {
      if (((0x14 < local_8) && (local_8 < 0x1d)) && (DAT_3042_4fc5 == 1)) {
        switch(local_8) {
        case 0x15:
          DAT_3042_3fb6 = 0x47;
          break;
        case 0x16:
          DAT_3042_3fb6 = 0x48;
          break;
        case 0x17:
          DAT_3042_3fb6 = 0x49;
          break;
        case 0x18:
          DAT_3042_3fb6 = 0x4b;
          break;
        case 0x19:
          DAT_3042_3fb6 = 0x4d;
          break;
        case 0x1a:
          DAT_3042_3fb6 = 0x4f;
          break;
        case 0x1b:
          DAT_3042_3fb6 = 0x50;
          break;
        case 0x1c:
          DAT_3042_3fb6 = 0x51;
        }
      }
      FUN_4000_2d39();
      FUN_4000_9490();
      if ((DAT_3042_3f7a == 1) && (0 < (int)((undefined2 *)&DAT_3042_0a6a)[DAT_3042_3f4c * 0x14])) {
        iVar4 = FUN_1000_1779(0x8000,0);
        iVar4 = FUN_1000_12df(0x1000,iVar4 << 1,(iVar4 >> 0xf) << 1 | (uint)(iVar4 < 0));
        ((undefined2 *)&DAT_3042_0a8c)[DAT_3042_3f4c * 0x14] = iVar4 + 2;
        DAT_3042_3f54 = 5;
        DAT_3042_3f56 = DAT_3042_3f4c;
        DAT_3042_3f46 = 8;
        FUN_4000_2721();
        FUN_4000_214e(DAT_3042_3f46);
        FUN_15dc_1e5e(10);
        DAT_3042_3f46 = 0;
        DAT_3042_3f54 = 1;
        DAT_3042_3f56 = DAT_3042_3fbe;
        FUN_4000_2721();
        FUN_4000_214e(DAT_3042_3f46);
        FUN_15dc_1e5e(10);
      }
      iVar4 = DAT_3042_3f4c;
      DAT_3042_3f7a = 0;
      if (DAT_3042_3f2c == 0) {
        if ((DAT_3042_3f48 == 1) && (0 < (int)((undefined2 *)&DAT_3042_0a6a)[DAT_3042_3f4c * 0x14]))
        {
          local_14 = DAT_3042_3f4c;
          DAT_3042_3f4c = DAT_3042_3f4e;
          DAT_3042_3f4e = iVar4;
          DAT_3042_3f84 = 1;
          FUN_4000_3f5b();
          DAT_3042_3f84 = 0;
          DAT_3042_3f48 = 0;
        }
        FUN_4000_2721();
        pcVar6 = (char *)0x15dc;
        FUN_15dc_1e5e(10);
        iVar4 = FUN_4000_1b6d();
        if (iVar4 == -1) {
LAB_4000_d62a:
          if ((((local_10 != 0) && (*(int *)(local_10 * 6 + 0x5bda) == 4)) &&
              (cVar3 = FUN_2689_002a(pcVar6,0x14), cVar3 != '\0')) &&
             ((int)((undefined2 *)&DAT_3042_0a6a)[local_10 * 0x14] < 0)) {
            DAT_3042_257e = 1;
          }
          FUN_4000_0000();
          DAT_26e0_7324 = (byte)local_20;
          for (local_4 = 1; local_4 < 0x1d; local_4 = local_4 + 1) {
            ((undefined2 *)&DAT_3042_0a72)[local_4 * 0x14] = 0;
            ((undefined2 *)&DAT_3042_0a74)[local_4 * 0x14] = 0;
            *(undefined2 *)(local_4 * 0x28 + -0x5f6a) = 0;
            ((undefined2 *)&DAT_3042_0a78)[local_4 * 0x14] = 0;
            *(undefined2 *)(local_4 * 0x28 + -0x5f66) = 0;
            ((undefined2 *)&DAT_3042_0a8c)[local_4 * 0x14] = 0;
          }
          FUN_4000_8111();
          FUN_1c7f_073f(1000,-DAT_26e0_7318,-DAT_26e0_731a);
          if ((DAT_26e0_73d0 != '\0') && (DAT_3042_2517 != '\0')) {
            if ((DAT_26e0_73d0 != '\0') &&
               (FUN_1ef6_1296(), DAT_3042_2555 != 0 || DAT_3042_2557 != 0)) {
              FUN_211b_0003(DAT_3042_2555,DAT_3042_2557);
              FUN_1e9e_00da(DAT_3042_2555,DAT_3042_2557);
              DAT_3042_2557 = 0;
              DAT_3042_2555 = 0;
            }
            DAT_3042_252d = local_22;
          }
          FUN_1000_127a(local_6e,unaff_SS,(undefined2 *)&DAT_3042_000c,
                        (char *)s_ogret1_cmp_26e0_26dc + 4);
          return;
        }
      }
      if ((DAT_3042_3fbe < 0x19) && (((undefined2 *)&DAT_3042_0a78)[DAT_3042_3fbe * 0x14] == 1)) {
        FUN_4000_2721();
        FUN_15dc_1e5e(10);
      }
    }
    if (((local_24 == 0x76) || ((local_a == 1 && (local_8 == 0x1e)))) &&
       ((((undefined2 *)&DAT_3042_0a6c)[DAT_3042_3fbe * 0x14] != 0 &&
        (*(int *)(DAT_3042_3fbe * 0x28 + -0x5f52) == 0)))) {
      FUN_1ac6_13f5(0xa9,0x92,0xcd,0x92,0xf8,6);
      FUN_1ac6_13f5(0xa9,0x92,0xb6,0x9f,0xf8,6);
      FUN_1ac6_13f5(0xb7,0xa0,0xdc,0xa0,6,6);
      FUN_1ac6_13f5(0xce,0x92,0xdc,0xa0,6,6);
      FUN_4000_0be1(6);
      do {
        FUN_1c7f_026b(CONCAT11(0x26,DAT_3042_4fc3));
      } while (DAT_3042_4fc5 != 0);
      DAT_3042_3fbc = 0;
      DAT_3042_3fb8 = 0;
      DAT_3042_3fc4 = 0;
      DAT_3042_3f46 = 0;
      DAT_3042_3f44 = 0;
      DAT_3042_3f40 = 0;
      FUN_4000_50bd();
      DAT_3042_3fc0 = -1;
      if ((0 < DAT_3042_3f42) && (DAT_3042_3fc2 != 0)) {
        FUN_4000_482d();
        FUN_4000_0f86(DAT_3042_3fbe,DAT_3042_3f5a,DAT_3042_3f58);
      }
      DAT_3042_3fb6 = 0;
      pcVar6 = (char *)0x1db7;
      thunk_FUN_1db7_01ea();
      if (DAT_3042_3f42 < DAT_3042_3f44) {
        FUN_4000_2721();
        DAT_3042_3f62 = 1;
        FUN_1000_49a3((undefined1 *)&DAT_3042_0f54,(char *)s_ogret1_cmp_26e0_26dc + 4,
                      (char *)s_desem_de_duyamaz_ki__26e0_689b,(char *)s_ogret1_cmp_26e0_26dc + 4);
        FUN_4000_16eb((undefined1 *)&DAT_3042_0f54,(char *)s_ogret1_cmp_26e0_26dc + 4,DAT_3042_3fbe)
        ;
        DAT_26e0_631a = 0x21;
joined_r0x0004c402:
        if (DAT_3042_3fbe < 0x19) {
          DAT_26e0_6320 =
               *(int *)(((undefined2 *)&DAT_3042_0a70)[DAT_3042_3fbe * 0x14] * 6 + 0x5bc2);
        }
        else {
          DAT_26e0_6320 = DAT_3042_3fbe + 0x28;
        }
        FUN_4000_235b(DAT_26e0_631a);
        DAT_26e0_631a = 0;
        FUN_15dc_1e5e(10);
        pcVar6 = (char *)0x15dc;
        FUN_15dc_1b6a(0x21,8);
      }
      else {
        if (((DAT_3042_3f40 < 1) || (DAT_3042_3f42 < DAT_3042_3f44)) || (DAT_3042_3fc0 == -1)) {
LAB_4000_c5b0:
          if ((DAT_3042_3f42 != 0) || (DAT_3042_3fc2 < 1)) {
            if (DAT_3042_3fc0 == 0) {
              FUN_4000_2721();
              DAT_3042_3f62 = 1;
              FUN_1000_49a3((undefined1 *)&DAT_3042_0f54,(char *)s_ogret1_cmp_26e0_26dc + 4,0x68b0,
                            (char *)s_ogret1_cmp_26e0_26dc + 4);
              FUN_4000_16eb((undefined1 *)&DAT_3042_0f54,(char *)s_ogret1_cmp_26e0_26dc + 4,
                            DAT_3042_3fbe);
              DAT_26e0_631a = 0x20;
              goto joined_r0x0004c402;
            }
            if (DAT_3042_3fc0 == -1) {
              DAT_3042_3fc0 = DAT_3042_3fbe;
            }
            goto LAB_4000_c645;
          }
          DAT_3042_3fc0 = DAT_3042_3fbe;
          FUN_4000_84e9();
          FUN_4000_2721();
          FUN_15dc_1e5e(10);
        }
        else {
          if ((DAT_3042_3fc0 == 0) && (DAT_3042_3fc2 != 0x1d)) {
            uVar11 = FUN_4000_8269(*(undefined2 *)(DAT_3042_3fc2 * 0x16 + 0x7e));
            iVar4 = FUN_4000_0255(6,uVar11);
            if (iVar4 != 0) goto LAB_4000_c5b0;
          }
          if (DAT_3042_3f5a < (int)((undefined2 *)&DAT_3042_0a72)[DAT_3042_3fbe * 0x14]) {
            DAT_3042_3f3e = 2;
          }
          else if ((int)((undefined2 *)&DAT_3042_0a72)[DAT_3042_3fbe * 0x14] < DAT_3042_3f5a) {
            DAT_3042_3f3e = 4;
          }
          else if (DAT_3042_3f58 < (int)((undefined2 *)&DAT_3042_0a74)[DAT_3042_3fbe * 0x14]) {
            DAT_3042_3f3e = 1;
          }
          else {
            DAT_3042_3f3e = 3;
          }
          ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3fbe * 0x14] = DAT_3042_3f3e;
          DAT_3042_3f3c =
               *(int *)(((undefined2 *)&DAT_3042_0a70)[DAT_3042_3fc0 * 0x14] * 0x2e + -0x60d4) /
               0x32;
          iVar4 = FUN_4000_20e0(DAT_3042_3fc0,0xe);
          if (iVar4 != 0) {
            DAT_3042_3f3c = DAT_3042_3f3c + 1;
          }
          FUN_4000_84e9();
          FUN_4000_2721();
          FUN_15dc_1e5e(10);
          if ((int)((undefined2 *)&DAT_3042_0a6a)[DAT_3042_3fc0 * 0x14] < 1) {
            FUN_4000_0c27(((undefined2 *)&DAT_3042_0a72)[DAT_3042_3fc0 * 0x14],
                          ((undefined2 *)&DAT_3042_0a74)[DAT_3042_3fc0 * 0x14],0);
          }
          FUN_4000_0c40(DAT_3042_3fbe);
        }
        pcVar6 = (char *)0x15dc;
        DAT_3042_3f56 = DAT_3042_3fbe;
        DAT_3042_3f54 = 1;
        DAT_3042_3f2c = 0;
      }
LAB_4000_c645:
      if ((DAT_3042_3f2c == 0) && (iVar4 = FUN_4000_1b6d(), iVar4 == -1)) goto LAB_4000_d62a;
      FUN_4000_2721();
      FUN_15dc_1e5e(10);
    }
    if (((DAT_3042_3fb6 == 0x1c) || ((local_a == 1 && ((local_8 == 0x1f || (local_8 == 0x22)))))) &&
       (*(int *)(((undefined2 *)&DAT_3042_0a70)[DAT_3042_3fbe * 0x14] * 0x2e + -0x60da) % 100 <=
        DAT_3042_3f2c)) {
      FUN_1c7f_0204();
      if (local_8 == 0x1f) {
        FUN_1ac6_13f5(0xd0,0x92,0xf4,0x92,0xf8,0);
        FUN_1ac6_13f5(0xd0,0x92,0xdd,0x9f,0xf8,0);
        FUN_1ac6_13f5(0xde,0xa0,0x103,0xa0,6,0);
        uVar10 = 0xa0;
        uVar9 = 0x103;
        uVar5 = 0x92;
        uVar11 = 0xf5;
      }
      else {
        FUN_1ac6_13f5(0x17,0x59,0x22,0x59,0xf8,0);
        FUN_1ac6_13f5(0x17,0x59,0x21,99,0xf8,0);
        FUN_1ac6_13f5(0x23,100,0x2d,100,6,0);
        uVar10 = 100;
        uVar9 = 0x2e;
        uVar5 = 0x59;
        uVar11 = 0x23;
      }
      FUN_1ac6_13f5(uVar11,uVar5,uVar9,uVar10,6,0);
      FUN_1c7f_0069(CONCAT11(0x26,DAT_3042_4fc3));
      do {
        FUN_1c7f_026b(CONCAT11(0x26,DAT_3042_4fc3));
      } while (DAT_3042_4fc5 != 0);
      pcVar6 = (char *)0x1db7;
      thunk_FUN_1db7_01ea();
      FUN_4000_482d();
      if (DAT_3042_3f5a < (int)((undefined2 *)&DAT_3042_0a72)[DAT_3042_3fbe * 0x14]) {
        DAT_3042_3f3e = 2;
      }
      else if ((int)((undefined2 *)&DAT_3042_0a72)[DAT_3042_3fbe * 0x14] < DAT_3042_3f5a) {
        DAT_3042_3f3e = 4;
      }
      else if (DAT_3042_3f58 < (int)((undefined2 *)&DAT_3042_0a74)[DAT_3042_3fbe * 0x14]) {
        DAT_3042_3f3e = 1;
      }
      else {
        DAT_3042_3f3e = 3;
      }
      ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3fbe * 0x14] = DAT_3042_3f3e;
      FUN_4000_4db8();
      if ((DAT_3042_3f2c == 0) && (iVar4 = FUN_4000_1b6d(), iVar4 == -1)) goto LAB_4000_d62a;
      FUN_4000_2721();
      FUN_15dc_1e5e(10);
    }
    if (((DAT_3042_3fb6 == 0xf) || ((local_8 == 0x1d && (local_a == 1)))) && (DAT_3042_3f5c == 0)) {
      FUN_1c7f_0204();
      FUN_1ac6_13f5(0x82,0x92,0xa6,0x92,0xf8,0);
      FUN_1ac6_13f5(0x82,0x92,0x8f,0x9f,0xf8,0);
      FUN_1ac6_13f5(0x90,0xa0,0xb5,0xa0,6,0);
      FUN_1ac6_13f5(0xa7,0x92,0xb5,0xa0,6,0);
      FUN_1c7f_0069(CONCAT11(0x26,DAT_3042_4fc3));
      do {
        pcVar6 = (char *)0x1c7f;
        FUN_1c7f_026b(CONCAT11(0x26,DAT_3042_4fc3));
      } while (DAT_3042_4fc5 != 0);
      iVar4 = FUN_4000_1b6d();
      if (iVar4 == -1) goto LAB_4000_d62a;
      DAT_3042_3f62 = 1;
      FUN_4000_2721();
      FUN_15dc_1e5e(10);
    }
    if ((0x18 < DAT_3042_3fbe) && (((undefined2 *)&DAT_3042_0a78)[DAT_3042_3fbe * 0x14] == 1)) {
      if (((10 < local_8) &&
          (((local_8 < 0xe && (*(int *)(DAT_26e0_2898 * 0x5c + local_8 * 2 + -0x6634) != 0)) &&
           (local_a == 1)))) ||
         (((0xf < DAT_3042_3fb6 && (DAT_3042_3fb6 < 0x13)) &&
          (*(int *)(DAT_26e0_2898 * 0x5c + (DAT_3042_3fb6 + 0xe) * 2 + -0x665a) != 0)))) {
        DAT_3042_3f8e = 1;
        if (DAT_3042_3fb6 != 0) {
          local_8 = DAT_3042_3fb6 - 5;
        }
        DAT_3042_2533 = *(int *)(DAT_26e0_2898 * 0x5c + local_8 * 2 + -0x6634) + -0x22;
        *(undefined2 *)(DAT_26e0_2898 * 0x5c + local_8 * 2 + -0x6634) = 0;
        if (local_8 == 0xb) {
          local_c = 0;
        }
        else if (local_8 == 0xc) {
          local_e = 0;
        }
        FUN_4000_6e95(DAT_3042_0044,DAT_3042_2533);
        FUN_1c7f_026b(0x2d);
        FUN_1c7f_0714();
      }
      if (((local_a != 0) && (local_8 < 0xf)) || ((local_24 == 0x69 || (local_24 == 0xff8d)))) {
        if (DAT_3042_3fb6 != 0) {
          local_12 = DAT_26e0_7324 + 1;
          FUN_1c7f_0204();
          DAT_26e0_7324 = 0;
        }
        if ((local_8 < 0xb) && (local_a == 2)) {
          DAT_3042_3f8e = 1;
          DAT_3042_3fc6 = *(int *)(DAT_26e0_2898 * 0x5c + local_8 * 2 + -0x6616) / 100;
          DAT_3042_3fca = *(int *)(DAT_26e0_2898 * 0x5c + local_8 * 2 + -0x6616) % 100;
          if ((0x20 < DAT_3042_3fca) && (DAT_3042_3fca < 0x2c)) {
            FUN_4000_7a03();
            *(undefined2 *)(DAT_26e0_2898 * 0x5c + local_8 * 2 + -0x6616) = 0;
            FUN_4000_7574();
            FUN_1c7f_026b(0x2d);
          }
        }
      }
      if ((((local_8 < 0xb) && (local_a == 1)) || (local_24 == 0x69)) || (local_24 == 0xff8d)) {
        DAT_3042_3f8e = 1;
        if ((local_24 == 0x69) || (local_24 == 0xff8d)) {
          for (DAT_3042_2533 = 1; DAT_3042_2533 < 0xb; DAT_3042_2533 = DAT_3042_2533 + 1) {
            if (*(int *)(DAT_26e0_2898 * 0x5c + DAT_3042_2533 * 2 + -0x6616) != 0) {
              local_8 = DAT_3042_2533;
              break;
            }
          }
        }
        if (*(int *)(DAT_26e0_2898 * 0x5c + local_8 * 2 + -0x6616) != 0) {
          DAT_3042_3fc6 = *(int *)(DAT_26e0_2898 * 0x5c + local_8 * 2 + -0x6616) / 100;
          DAT_3042_3fca = *(int *)(DAT_26e0_2898 * 0x5c + local_8 * 2 + -0x6616) % 100;
          FUN_4000_7f80();
          FUN_4000_6e95(DAT_3042_0044,local_8);
          if (DAT_3042_3fca == 0x2b) {
            DAT_3042_3fca = 0x22;
          }
          else if (0x20 < DAT_3042_3fca) {
            DAT_3042_3fca = DAT_3042_3fca + 2;
          }
          FUN_1c7f_026b((char)DAT_3042_3fca + -1);
          FUN_1ac6_0908(0x18,0x9d,0x55,6,6,CONCAT11(0x26,DAT_3042_0046));
          FUN_4000_0b80(2,0x18,0x9e,0xa510,(char *)s_ogret1_cmp_26e0_26dc + 4,0);
          FUN_4000_0b80(2,0x18,0x9d,0xa510,(char *)s_ogret1_cmp_26e0_26dc + 4,DAT_3042_0045);
          FUN_4000_0be1(6);
          do {
            if (DAT_3042_3fb6 == 0) {
              DAT_3042_3fcc = FUN_1c7f_0515();
            }
            FUN_1c7f_026b(CONCAT11(0x26,DAT_3042_4fc3));
            if ((local_24 == 0x69) || (local_24 == 0xff8d)) {
              do {
                do {
                  local_26 = FUN_1000_1f3f(1);
                  local_26 = local_26 >> 8;
                  FUN_1c7f_026b(CONCAT11(0x26,DAT_3042_4fc3));
                } while (local_26 == 0);
                thunk_FUN_1db7_01ea();
                FUN_4000_6e95(0,local_8);
                if ((local_26 != 0x4d) && (local_26 != 0x4b)) {
                  if ((local_26 == 0x48) || (local_26 == 0x50)) {
                    local_8 = (local_8 + 4) % 10 + 1;
                    goto LAB_4000_cd78;
                  }
                  if (local_26 != 1) goto LAB_4000_cd78;
LAB_4000_cd6c:
                  local_8 = 0;
                  FUN_4000_7574();
                  goto LAB_4000_d5db;
                }
                FUN_4000_0202(&local_8);
LAB_4000_cd78:
                if (local_26 != 0) {
                  DAT_3042_3fc6 = *(int *)(DAT_26e0_2898 * 0x5c + local_8 * 2 + -0x6616) / 100;
                  DAT_3042_3fca = *(int *)(DAT_26e0_2898 * 0x5c + local_8 * 2 + -0x6616) % 100;
                  if (((local_26 == 0x39) && (0x20 < DAT_3042_3fca)) && (DAT_3042_3fca < 0x2c)) {
                    FUN_4000_7a03();
                    *(undefined2 *)(DAT_26e0_2898 * 0x5c + local_8 * 2 + -0x6616) = 0;
                    goto LAB_4000_cd6c;
                  }
                  FUN_4000_7f80();
                  FUN_4000_6e95(DAT_3042_0044,local_8);
                  if (DAT_3042_3fca == 0x2b) {
                    DAT_3042_3fca = 0x22;
                  }
                  else if (0x20 < DAT_3042_3fca) {
                    DAT_3042_3fca = DAT_3042_3fca + 2;
                  }
                  if (DAT_3042_3fca != 0) {
                    FUN_1c7f_026b((char)DAT_3042_3fca + -1);
                  }
                  FUN_1ac6_0908(0x18,0x9d,0x55,6,6,CONCAT11(0x26,DAT_3042_0046));
                  FUN_4000_0b80(2,0x18,0x9e,0xa510,(char *)s_ogret1_cmp_26e0_26dc + 4,0);
                  FUN_4000_0b80(2,0x18,0x9d,0xa510,(char *)s_ogret1_cmp_26e0_26dc + 4,DAT_3042_0045)
                  ;
                  FUN_4000_0be1(6);
                }
              } while (local_26 != 0x1c);
              DAT_3042_3fcc = 0xb;
              for (DAT_3042_2533 = 1; DAT_3042_2533 < 0xb; DAT_3042_2533 = DAT_3042_2533 + 1) {
                FUN_4000_b04d(DAT_3042_2533,DAT_26e0_2898,1);
              }
              FUN_1ac6_0b99((DAT_3042_3fcc + -0xb) * 0x11 + 0x3b,0xa5,0xe,0xe,6,DAT_3042_0044);
              FUN_4000_0be1(6);
              do {
                do {
                  local_26 = FUN_1000_1f3f(1);
                  local_26 = local_26 >> 8;
                  FUN_1c7f_026b(CONCAT11(0x26,DAT_3042_4fc3));
                } while (local_26 == 0);
                thunk_FUN_1db7_01ea();
                for (DAT_3042_2533 = 1; DAT_3042_2533 < 4; DAT_3042_2533 = DAT_3042_2533 + 1) {
                  FUN_4000_b22f(DAT_3042_2533,DAT_26e0_2898,1);
                }
                if (local_26 == 0x4d) {
                  uVar11 = 1;
LAB_4000_cfac:
                  FUN_4000_0202((undefined2 *)&DAT_3042_3fcc,(char *)s_ogret1_cmp_26e0_26dc + 4,
                                uVar11,0xb,0xe);
                }
                else {
                  if (local_26 == 0x4b) {
                    uVar11 = 0xffff;
                    goto LAB_4000_cfac;
                  }
                  if (local_26 == 1) {
                    local_8 = 0;
                    goto LAB_4000_d5db;
                  }
                }
                if (local_26 != 0) {
                  for (DAT_3042_2533 = 1; DAT_3042_2533 < 4; DAT_3042_2533 = DAT_3042_2533 + 1) {
                    FUN_4000_b22f(DAT_3042_2533,DAT_26e0_2898,1);
                  }
                  FUN_4000_0be1(6);
                  FUN_1ac6_0b99((DAT_3042_3fcc + -0xb) * 0x11 + 0x3b,0xa5,0xe,0xe,0,DAT_3042_0044);
                }
              } while (local_26 != 0x1c);
              if (DAT_3042_3fcc != 0) {
                FUN_4000_b22f(DAT_3042_3fcc + -0xb,DAT_26e0_2898,0);
              }
              DAT_3042_3fc6 = *(int *)(DAT_26e0_2898 * 0x5c + local_8 * 2 + -0x6616) / 100;
              DAT_3042_3fca = *(int *)(DAT_26e0_2898 * 0x5c + local_8 * 2 + -0x6616) % 100;
            }
            if (((DAT_3042_3fcc < 0xb) && (DAT_3042_4fc5 == 1)) &&
               ((DAT_3042_3fcc != local_8 && (DAT_3042_3fcc != 0)))) {
              FUN_4000_6e95(0,local_8);
              local_8 = DAT_3042_3fcc;
              FUN_4000_6e95(DAT_3042_0044,DAT_3042_3fcc);
              DAT_3042_3fc6 = *(int *)(DAT_26e0_2898 * 0x5c + local_8 * 2 + -0x6616) / 100;
              DAT_3042_3fca = *(int *)(DAT_26e0_2898 * 0x5c + local_8 * 2 + -0x6616) % 100;
              FUN_4000_7f80();
              if (DAT_3042_3fca == 0x2b) {
                DAT_3042_3fca = 0x22;
              }
              else if (0x20 < DAT_3042_3fca) {
                DAT_3042_3fca = DAT_3042_3fca + 2;
              }
              FUN_1c7f_026b((char)DAT_3042_3fca + -1);
              FUN_1ac6_0908(0x18,0x9d,0x55,6,6,CONCAT11(0x26,DAT_3042_0046));
              FUN_4000_0b80(2,0x18,0x9e,0xa510,(char *)s_ogret1_cmp_26e0_26dc + 4,0);
              FUN_4000_0b80(2,0x18,0x9d,0xa510,(char *)s_ogret1_cmp_26e0_26dc + 4,DAT_3042_0045);
              FUN_4000_0be1(6);
            }
            if ((((DAT_3042_3fcc == 0xb) && ((DAT_3042_3fca < 0x1a || (DAT_3042_3fca == 0x2b)))) &&
                ((DAT_3042_4fc5 == 1 || (local_26 == 0x1c)))) && (DAT_3042_3fca != 0)) {
              local_4 = DAT_3042_3fca;
              if (DAT_3042_3fca == 0x2b) {
                local_4 = 0x1a;
              }
              local_c = *(int *)(local_4 * 0xe + 0xe81);
              if (((*(int *)(DAT_26e0_2898 * 0x5c + -0x661c) != local_8 + 0x22) &&
                  (*(int *)(DAT_26e0_2898 * 0x5c + -0x661e) != local_8 + 0x22)) &&
                 ((local_c != 2 || (*(int *)(DAT_26e0_2898 * 0x5c + -0x661c) == 0)))) {
                *(int *)(DAT_26e0_2898 * 0x5c + -0x661e) = local_8 + 0x22;
LAB_4000_d5b8:
                FUN_4000_7574();
                FUN_1c7f_026b(0x2d);
              }
              break;
            }
            if ((((DAT_3042_3fcc == 0xc) && ((DAT_3042_4fc5 == 1 || (local_26 == 0x1c)))) &&
                ((DAT_3042_3fca < 0x1b || (DAT_3042_3fca == 0x22)))) && (DAT_3042_3fca != 0)) {
              if ((*(int *)(DAT_26e0_2898 * 0x5c + -0x661e) == local_8 + 0x22) ||
                 (*(int *)(DAT_26e0_2898 * 0x5c + -0x661c) == local_8 + 0x22)) break;
              local_4 = *(int *)(DAT_26e0_2898 * 0x5c + *(int *)(DAT_26e0_2898 * 0x5c + -0x661e) * 2
                                + -0x665a) % 100;
              if (local_4 == 0x2b) {
                local_4 = 0x1a;
              }
              if (*(int *)(DAT_26e0_2898 * 0x5c + -0x661e) != 0) {
                local_c = *(int *)(local_4 * 0xe + 0xe81);
              }
              if ((DAT_3042_3fca < 0x1a) || (DAT_3042_3fca == 0x22)) {
                local_4 = DAT_3042_3fca;
                if (DAT_3042_3fca == 0x22) {
                  local_4 = 0x1a;
                }
                local_e = *(int *)(local_4 * 0xe + 0xe81);
                if (((0x19 < *(int *)(DAT_26e0_2898 * 0x5c +
                                      *(int *)(DAT_26e0_2898 * 0x5c + -0x661e) * 2 + -0x665a) % 100)
                    || (local_e != 1)) || (local_c != 1)) break;
              }
              else if (local_c == 2) goto LAB_4000_d5c6;
              *(int *)(DAT_26e0_2898 * 0x5c + -0x661c) = local_8 + 0x22;
              goto LAB_4000_d5b8;
            }
            if ((((DAT_3042_3fcc == 0xd) && ((DAT_3042_4fc5 == 1 || (local_26 == 0x1c)))) &&
                (0x1a < DAT_3042_3fca)) && (DAT_3042_3fca < 0x21)) {
              *(int *)(DAT_26e0_2898 * 0x5c + -0x661a) = local_8 + 0x22;
              goto LAB_4000_d5b8;
            }
            if (((DAT_3042_3fcc == 0xe) && ((DAT_3042_4fc5 == 1 || (local_26 == 0x1c)))) &&
               ((*(int *)(DAT_26e0_2898 * 0x5c + -0x661e) != local_8 + 0x22 &&
                ((*(int *)(DAT_26e0_2898 * 0x5c + -0x661c) != local_8 + 0x22 &&
                 (*(int *)(DAT_26e0_2898 * 0x5c + -0x661a) != local_8 + 0x22)))))) {
              *(undefined2 *)(DAT_26e0_2898 * 0x5c + local_8 * 2 + -0x6616) = 0;
              *(undefined2 *)(local_8 * 8 + -0x1a05) = 0;
              *(undefined2 *)(local_8 * 8 + -0x1a07) = 0;
              *(undefined2 *)(local_8 * 8 + -0x1a09) = 0;
              *(undefined2 *)(local_8 * 8 + -0x1a0b) = 0;
              goto LAB_4000_d5b8;
            }
LAB_4000_d5c6:
            local_26 = 0;
          } while (DAT_3042_4fc5 != 2);
LAB_4000_d5db:
          FUN_4000_7574();
          if (local_12 != 0) {
            DAT_26e0_7324 = (char)local_12 - 1;
            local_12 = 0;
          }
          FUN_1c7f_026b(0x2d);
          FUN_1c7f_0714();
        }
      }
      if (DAT_3042_3f8e == 0) {
        FUN_4000_2721();
        FUN_15dc_1e5e(10);
      }
      DAT_3042_3f8e = 0;
      FUN_4000_2721();
    }
  } while( true );
}

