
void __cdecl16far FUN_4000_9668(void)

{
  int *piVar1;
  int iVar2;
  undefined2 uVar3;
  char *pcVar4;
  uint uVar5;
  int iVar6;
  uint uVar7;
  undefined2 uVar8;
  int local_44;
  int local_42;
  undefined2 local_40;
  int local_3e;
  int local_3c;
  int local_3a;
  int local_38;
  int local_36;
  int local_34;
  int local_32;
  undefined2 local_30;
  int local_2e;
  int local_2c;
  int local_2a;
  int local_28;
  int local_26;
  int local_24;
  int local_22;
  int local_20;
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
  
  local_4 = 0;
  local_6 = 0;
  local_8 = 0;
  local_a = 0;
  local_c = 0;
  if (DAT_3042_3f2e != 0) {
    for (local_1e = 1; local_1e < 0x1d; local_1e = local_1e + 1) {
      if (((undefined2 *)&DAT_3042_0a78)[local_1e * 0x14] == 2) {
        if ((int)((undefined2 *)&DAT_3042_0a6a)[local_1e * 0x14] < 0) {
          iVar6 = 0;
        }
        else {
          iVar6 = ((undefined2 *)&DAT_3042_0a6a)[local_1e * 0x14];
        }
        local_4 = local_4 + iVar6;
        if (-1 < *(int *)(((undefined2 *)&DAT_3042_0a70)[local_1e * 0x14] * 0x2e + -0x60d4)) {
          local_8 = ((undefined2 *)&DAT_3042_0a6c)[local_1e * 0x14];
        }
        if (0 < (int)((undefined2 *)&DAT_3042_0a6a)[local_1e * 0x14]) {
          local_c = local_c + 1;
        }
      }
      else {
        if ((int)((undefined2 *)&DAT_3042_0a6a)[local_1e * 0x14] < 0) {
          iVar6 = 0;
        }
        else {
          iVar6 = ((undefined2 *)&DAT_3042_0a6a)[local_1e * 0x14];
        }
        local_6 = local_6 + iVar6;
        local_a = local_a + ((undefined2 *)&DAT_3042_0a6c)[local_1e * 0x14];
      }
    }
    local_e = (local_6 - local_4) + (local_a / 10 - local_8 / 10);
    if (DAT_3042_3f2e != 0) {
      local_e = local_e + 10;
    }
    if (DAT_3042_3f30 != 0) {
      local_e = local_e + -10;
    }
    if (1 < DAT_3042_3f38 / local_c) {
      local_e = local_e + 0x14;
    }
    iVar2 = 0;
    FUN_1000_1779(0x8000);
    uVar8 = 0;
    uVar3 = FUN_1000_1242();
    uVar3 = FUN_1000_12df(0x1000,uVar3,uVar8);
    FUN_1000_1779(0x8000,0,uVar3);
    uVar8 = 0;
    uVar3 = FUN_1000_1242();
    iVar6 = FUN_1000_12df(0x1000,uVar3,uVar8);
    if ((((iVar2 + iVar6 + 2 <= local_e) &&
         (0 < *(int *)(((undefined2 *)&DAT_3042_0a70)[DAT_3042_3fbe * 0x14] * 0x2e + -0x60d4))) &&
        ((int)((undefined2 *)&DAT_26e0_5be0)[((DAT_3042_3fbe + -1) / 8) * 3] < 0x1e)) &&
       (((int)((undefined2 *)&DAT_26e0_5be0)[((DAT_3042_3fbe + -1) / 8) * 3] < 0x13 ||
        (0x17 < (int)((undefined2 *)&DAT_26e0_5be0)[((DAT_3042_3fbe + -1) / 8) * 3])))) {
      FUN_4000_2721();
      DAT_3042_3f62 = 1;
      DAT_26e0_631a = 0x1d;
      FUN_4000_16eb((char *)s_teslim__teslim__26e0_6834,(char *)s_ogret1_cmp_26e0_26dc + 4,
                    DAT_3042_3fbe);
      FUN_15dc_1e5e(10);
      FUN_4000_0c27(((undefined2 *)&DAT_3042_0a72)[DAT_3042_3fbe * 0x14],
                    ((undefined2 *)&DAT_3042_0a74)[DAT_3042_3fbe * 0x14],0);
      ((undefined2 *)&DAT_3042_0a6a)[DAT_3042_3fbe * 0x14] = 0;
      DAT_26e0_2636 = 0;
      DAT_26e0_2634 = 0;
      for (DAT_3042_2533 = 1; DAT_3042_2533 < 0x1d; DAT_3042_2533 = DAT_3042_2533 + 1) {
        if (0 < (int)((undefined2 *)&DAT_3042_0a6a)[DAT_3042_2533 * 0x14]) {
          *(undefined2 *)(((undefined2 *)&DAT_3042_0a78)[DAT_3042_2533 * 0x14] * 2 + 0x2632) = 1;
        }
      }
      if ((DAT_26e0_2634 != 0) && (DAT_26e0_2636 != 0)) {
        return;
      }
      DAT_26e0_632e = 1;
      return;
    }
  }
LAB_4000_998f:
  if (0 < DAT_3042_3f2c) {
    local_e = 0;
    local_10 = ((undefined2 *)&DAT_3042_0a72)[DAT_3042_3fbe * 0x14];
    local_12 = ((undefined2 *)&DAT_3042_0a74)[DAT_3042_3fbe * 0x14];
    local_14 = *(int *)(DAT_3042_3fbe * 0x28 + -0x5f6a);
    local_16 = 0;
    FUN_4000_0f86(DAT_3042_3fbe,((undefined2 *)&DAT_3042_0a72)[local_14 * 0x14],
                  ((undefined2 *)&DAT_3042_0a74)[local_14 * 0x14]);
    for (DAT_3042_3fa8 = -1; DAT_3042_3fa8 < 2; DAT_3042_3fa8 = DAT_3042_3fa8 + 1) {
      for (DAT_3042_3faa = -1; DAT_3042_3faa < 2; DAT_3042_3faa = DAT_3042_3faa + 1) {
        if ((((local_10 + DAT_3042_3faa < 0x1c) && (0 < local_10 + DAT_3042_3faa)) &&
            (local_12 + DAT_3042_3fa8 < 0x1c)) && (0 < local_12 + DAT_3042_3fa8)) {
          local_44 = ((undefined2 *)&DAT_3042_2cae)
                     [local_12 + DAT_3042_3fa8 + (local_10 + DAT_3042_3faa) * 0x1c];
        }
        else {
          local_44 = 0;
        }
        if (((0 < local_44) && (local_44 != DAT_3042_3fbe)) &&
           (((undefined2 *)&DAT_3042_0a78)[local_44 * 0x14] == 1)) {
          local_16 = local_16 + 1;
        }
      }
    }
    if (((int)((undefined2 *)&DAT_3042_0a6a)[local_14 * 0x14] < 1) ||
       (((undefined2 *)&DAT_3042_0a78)[local_14 * 0x14] == 2)) {
      local_e = 100;
    }
    else {
      uVar5 = local_10 - ((undefined2 *)&DAT_3042_0a72)[local_14 * 0x14];
      uVar7 = (int)uVar5 >> 0xf;
      if (((int)((uVar5 ^ uVar7) - uVar7) < 2) &&
         (uVar5 = local_12 - ((undefined2 *)&DAT_3042_0a74)[local_14 * 0x14],
         uVar7 = (int)uVar5 >> 0xf, (int)((uVar5 ^ uVar7) - uVar7) < 2)) {
        local_e = local_16 * 5;
      }
      else if (local_16 < 1) {
        if (local_16 == 0) {
          if (DAT_3042_3f40 == 0) {
            local_e = 0x32;
          }
          else {
            local_e = 5;
          }
        }
      }
      else if (DAT_3042_3f40 == 0) {
        local_e = 0x5a;
      }
      else {
        local_e = 0x46;
      }
    }
    if (*(int *)(DAT_3042_3fbe * 0x28 + -0x5f52) != 0) {
      local_e = local_e + 5;
    }
    local_18 = 0;
    for (local_1e = 1; local_1e < 0x1d; local_1e = local_1e + 1) {
      if ((((undefined2 *)&DAT_3042_0a78)[local_1e * 0x14] == 1) &&
         (0 < (int)((undefined2 *)&DAT_3042_0a6a)[local_1e * 0x14])) {
        local_18 = 1;
        break;
      }
    }
    if (local_18 == 1) {
      FUN_1000_1779(0x8000,0);
      uVar8 = 0;
      uVar3 = FUN_1000_1242();
      iVar6 = FUN_1000_12df(0x1000,uVar3,uVar8);
      if (iVar6 + 1 <= local_e) {
        if (local_16 != 0) {
          FUN_1000_1779(0x8000,0);
          uVar8 = 0;
          uVar3 = FUN_1000_1242();
          iVar6 = FUN_1000_12df(0x1000,uVar3,uVar8);
          if (iVar6 + 1 < local_16 * 10 + 0x46) {
            for (DAT_3042_3fa8 = -1; DAT_3042_3fa8 < 2; DAT_3042_3fa8 = DAT_3042_3fa8 + 1) {
              for (DAT_3042_3faa = -1; DAT_3042_3faa < 2; DAT_3042_3faa = DAT_3042_3faa + 1) {
                if (*(int *)(local_44 * 0x28 + -0x5f6a) == DAT_3042_3fbe) {
                  FUN_1000_1779(0x8000,0);
                  uVar8 = 0;
                  uVar3 = FUN_1000_1242();
                  iVar2 = FUN_1000_12df(0x1000,uVar3,uVar8);
                  iVar6 = local_44;
                  if (iVar2 + 1 < 0x50) goto LAB_4000_9e26;
                }
              }
            }
            if (local_16 < 2) {
              local_28 = 1;
            }
            else {
              FUN_1000_1779(0x8000,0);
              iVar6 = local_16 >> 0xf;
              uVar3 = FUN_1000_1242();
              local_28 = FUN_1000_12df(0x1000,uVar3,iVar6);
              local_28 = local_28 + 1;
            }
            DAT_3042_3fb6 = 0;
            for (DAT_3042_3fa8 = -1; DAT_3042_3fa8 < 2; DAT_3042_3fa8 = DAT_3042_3fa8 + 1) {
              for (DAT_3042_3faa = -1; DAT_3042_3faa < 2; DAT_3042_3faa = DAT_3042_3faa + 1) {
                if ((((0 < local_44) && (DAT_3042_3fbe < local_44)) &&
                    (((undefined2 *)&DAT_3042_0a78)[local_44 * 0x14] == 1)) &&
                   (DAT_3042_3fb6 = DAT_3042_3fb6 + 1, iVar6 = local_44, DAT_3042_3fb6 == local_28))
                goto LAB_4000_9e26;
              }
            }
            goto LAB_4000_9dc4;
          }
        }
        local_42 = 0;
        local_1c = 0;
        for (local_1e = 1; local_1e < 0x1d; local_1e = local_1e + 1) {
          if ((((undefined2 *)&DAT_3042_0a78)[local_1e * 0x14] == 1) &&
             (0 < (int)((undefined2 *)&DAT_3042_0a6a)[local_1e * 0x14])) {
            local_1c = local_1c + 1;
          }
        }
        FUN_1000_1779(0x8000,0);
        iVar6 = local_1c >> 0xf;
        uVar3 = FUN_1000_1242();
        local_1c = FUN_1000_12df(0x1000,uVar3,iVar6);
        local_1c = local_1c + 1;
        for (local_1e = 1; local_1e < 0x1d; local_1e = local_1e + 1) {
          if ((((undefined2 *)&DAT_3042_0a78)[local_1e * 0x14] == 1) &&
             (0 < (int)((undefined2 *)&DAT_3042_0a6a)[local_1e * 0x14])) {
            local_42 = local_42 + 1;
          }
          iVar6 = local_1e;
          if (local_42 == local_1c) goto LAB_4000_9e26;
        }
      }
    }
LAB_4000_9dc4:
    if (((int)((undefined2 *)&DAT_3042_0a6a)[local_14 * 0x14] < 1) ||
       (iVar6 = local_14, ((undefined2 *)&DAT_3042_0a78)[local_14 * 0x14] == 2)) {
      local_1e = 1;
      while ((iVar6 = local_14, local_1e < 0x1d &&
             ((((undefined2 *)&DAT_3042_0a78)[local_1e * 0x14] != 1 ||
              (iVar6 = local_1e, (int)((undefined2 *)&DAT_3042_0a6a)[local_1e * 0x14] < 1))))) {
        local_1e = local_1e + 1;
      }
    }
LAB_4000_9e26:
    local_14 = iVar6;
    DAT_3042_3f14 = DAT_3042_512a;
    *(int *)(DAT_3042_3fbe * 0x28 + -0x5f6a) = local_14;
    local_1a = ((undefined2 *)&DAT_3042_0a6c)[DAT_3042_3fbe * 0x14];
    local_20 = *(int *)(DAT_3042_3fbe * 0x28 + -0x5f64) * 0x32 + 0x1e;
    if (local_20 < local_1a) {
      local_22 = (local_1a / local_20) * 2 + 1;
      FUN_1000_1779(0x8000,0);
      iVar6 = local_1a + 1 >> 0xf;
      uVar3 = FUN_1000_1242();
      iVar6 = FUN_1000_12df(0x1000,uVar3,iVar6);
      if (iVar6 <= local_20 / local_22) goto LAB_4000_9f07;
LAB_4000_9eb6:
      local_24 = 1;
    }
    else {
      if (local_1a != 0) {
        local_22 = (local_20 / local_1a) * 2 + 1;
        FUN_1000_1779(0x8000,0);
        iVar6 = local_20 + 1 >> 0xf;
        uVar3 = FUN_1000_1242();
        iVar6 = FUN_1000_12df(0x1000,uVar3,iVar6);
        if (iVar6 <= local_1a / local_22) goto LAB_4000_9eb6;
      }
LAB_4000_9f07:
      local_24 = 0;
    }
    if (*(int *)(DAT_3042_3fbe * 0x28 + -0x5f52) != 0) {
      local_24 = 0;
    }
    local_26 = 0;
    DAT_3042_3f36 = ((undefined2 *)&DAT_3042_0a6c)[DAT_3042_3fbe * 0x14];
    FUN_4000_0f86(DAT_3042_3fbe,((undefined2 *)&DAT_3042_0a72)[local_14 * 0x14],
                  ((undefined2 *)&DAT_3042_0a74)[local_14 * 0x14]);
    DAT_3042_3f9e =
         *(int *)(((undefined2 *)&DAT_3042_0a70)[DAT_3042_3fbe * 0x14] * 0x2e + -0x60d6) / 0x32;
    DAT_3042_3fc0 = local_14;
    DAT_3042_3f9c = 0;
    if ((local_24 == 1) && (DAT_3042_3f40 == 0)) goto LAB_4000_a7fa;
    if (local_24 != 1) {
      if ((int)((undefined2 *)&DAT_3042_0a72)[local_14 * 0x14] <
          (int)((undefined2 *)&DAT_3042_0a72)[DAT_3042_3fbe * 0x14]) {
        ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3fbe * 0x14] = 2;
      }
      else if ((int)((undefined2 *)&DAT_3042_0a72)[DAT_3042_3fbe * 0x14] <
               (int)((undefined2 *)&DAT_3042_0a72)[local_14 * 0x14]) {
        ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3fbe * 0x14] = 4;
      }
      else if ((int)((undefined2 *)&DAT_3042_0a74)[local_14 * 0x14] <
               (int)((undefined2 *)&DAT_3042_0a74)[DAT_3042_3fbe * 0x14]) {
        ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3fbe * 0x14] = 1;
      }
      else {
        ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3fbe * 0x14] = 3;
      }
      uVar5 = local_10 - ((undefined2 *)&DAT_3042_0a72)[local_14 * 0x14];
      uVar7 = (int)uVar5 >> 0xf;
      if (((int)((uVar5 ^ uVar7) - uVar7) < 2) &&
         (uVar5 = local_12 - ((undefined2 *)&DAT_3042_0a74)[local_14 * 0x14],
         uVar7 = (int)uVar5 >> 0xf, (int)((uVar5 ^ uVar7) - uVar7) < 2)) {
        DAT_3042_3f4e = DAT_3042_3fbe;
        DAT_3042_3f4c = local_14;
        FUN_4000_3f5b();
        FUN_4000_2721();
        FUN_15dc_1e5e(10);
        FUN_4000_9490();
        return;
      }
      if (100 < *(int *)(((undefined2 *)&DAT_3042_0a70)[DAT_3042_3fbe * 0x14] * 0x2e + -0x60da)) {
        FUN_4000_0f86(DAT_3042_3fbe,((undefined2 *)&DAT_3042_0a72)[local_14 * 0x14],
                      ((undefined2 *)&DAT_3042_0a74)[local_14 * 0x14]);
        if (*(int *)(((undefined2 *)&DAT_3042_0a70)[DAT_3042_3fbe * 0x14] * 0x2e + -0x60c6) <
            DAT_3042_3f44) {
          return;
        }
        FUN_1000_1779(0x8000,0);
        uVar8 = 0;
        uVar3 = FUN_1000_1242();
        iVar6 = FUN_1000_12df(0x1000,uVar3,uVar8);
        if ((5 < iVar6 + 1) && (DAT_3042_3f40 != 0)) {
          DAT_3042_3f4e = DAT_3042_3fbe;
          DAT_3042_3f4c = local_14;
          FUN_4000_0c40(DAT_3042_3fbe);
          ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3f4e * 0x14] =
               ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3f4e * 0x14] + 4;
          FUN_4000_2721();
          FUN_4000_214e(8);
          FUN_15dc_1e5e(10);
          FUN_4000_0c40(DAT_3042_3f4c);
          ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3f4e * 0x14] =
               ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3f4e * 0x14] + -4;
          DAT_3042_3fa2 = 1;
          FUN_4000_3f5b();
          DAT_3042_3fa2 = 0;
          FUN_4000_0c40(DAT_3042_3fbe);
          return;
        }
      }
      goto LAB_4000_a7fa;
    }
    if (DAT_3042_3fbe < 0x19) {
      uVar3 = 0x23;
      pcVar4 = (char *)(*(int *)(((undefined2 *)&DAT_3042_0a70)[DAT_3042_3fbe * 0x14] * 6 + 0x5bc2)
                        * 0x23 + 0x195b);
    }
    else {
      uVar3 = 0x22;
      pcVar4 = (char *)s_T_ALTDUZEY_OSES_L_26e0_8eb4 + DAT_3042_3fbe * 0x94;
    }
    FUN_1000_4a23(0xa510,(char *)s_ogret1_cmp_26e0_26dc + 4,pcVar4,
                  (char *)s_ogret1_cmp_26e0_26dc + 4,uVar3);
    for (local_1e = 1; local_1e < 0x23; local_1e = local_1e + 1) {
      if (*(char *)(local_1e + -0x5af0) == '1') {
        DAT_3042_3f9c = *(int *)(local_1e * 2 + 0xc88);
        if (DAT_3042_3f36 < DAT_3042_3f9c) break;
        local_26 = local_26 + 1;
      }
    }
    if (local_26 == 0) goto LAB_4000_a7fa;
    if (local_26 < 2) {
      local_28 = 1;
    }
    else {
      FUN_1000_1779(0x8000,0);
      iVar6 = local_26 >> 0xf;
      uVar3 = FUN_1000_1242();
      local_28 = FUN_1000_12df(0x1000,uVar3,iVar6);
      local_28 = local_28 + 1;
    }
    local_26 = 0;
    DAT_3042_3fc2 = 1;
    while ((DAT_3042_3fc2 < 0x23 &&
           ((*(char *)(DAT_3042_3fc2 + -0x5af0) != '1' ||
            (local_26 = local_26 + 1, local_26 != local_28))))) {
      DAT_3042_3fc2 = DAT_3042_3fc2 + 1;
    }
    switch(DAT_3042_3fc2) {
    case 1:
    case 2:
    case 10:
    case 0xb:
    case 0xf:
    case 0x12:
    case 0x13:
    case 0x1f:
      local_2a = 2;
      break;
    case 3:
    case 4:
    case 5:
    case 6:
    case 0xe:
    case 0x10:
    case 0x1a:
    case 0x1c:
      local_2a = DAT_3042_3f9e / 3 + 4;
      break;
    case 7:
      local_2a = DAT_3042_3f9e * 10;
      break;
    case 8:
    case 9:
    case 0x11:
    case 0x16:
    case 0x18:
    case 0x1e:
    case 0x20:
    case 0x21:
      local_2a = DAT_3042_3f9e + 10;
      break;
    case 0xc:
    case 0x17:
    case 0x19:
    case 0x22:
      local_2a = 0;
      break;
    case 0xd:
    case 0x14:
    case 0x15:
      local_2a = DAT_3042_3f9e / 3 + 8;
      break;
    case 0x1b:
      local_2a = (DAT_3042_3f9e / 3) * 3;
      goto LAB_4000_a111;
    case 0x1d:
      local_2a = DAT_3042_3f9e;
LAB_4000_a111:
      local_2a = local_2a + 5;
      break;
    default:
      FUN_1000_48b4(0xbacc,(char *)s_ogret1_cmp_26e0_26dc + 4,0x6844,
                    (char *)s_ogret1_cmp_26e0_26dc + 4,DAT_3042_3fc2);
      FUN_26c1_002a((char *)s_T_CODE_ISOSYS_L_26e0_6870,(char *)s_ogret1_cmp_26e0_26dc + 4,0xb4c,
                    0xbacc,(char *)s_ogret1_cmp_26e0_26dc + 4,0xffff);
    }
    local_2c = 1;
    if (DAT_3042_3f44 <= local_2a) {
      for (DAT_3042_2533 = 1; DAT_3042_2533 < 0xb; DAT_3042_2533 = DAT_3042_2533 + 2) {
        local_2e = *(int *)(DAT_3042_2533 * 2 + 0xccc);
        local_30 = *(undefined2 *)(DAT_3042_2533 * 2 + 0xcce);
        if (local_2e == DAT_3042_3fc2) break;
      }
      if (local_2e == DAT_3042_3fc2) {
        DAT_3042_3faa = ((undefined2 *)&DAT_3042_0a72)[DAT_3042_3fbe * 0x14];
        DAT_3042_3fa8 = ((undefined2 *)&DAT_3042_0a74)[DAT_3042_3fbe * 0x14];
        local_6 = 0;
        local_4 = 0;
        local_a = 0;
        local_8 = 0;
        local_32 = 0;
        local_34 = 0;
        for (DAT_3042_2533 = DAT_3042_3fa8 - local_28; DAT_3042_2533 <= DAT_3042_3fa8 + local_28;
            DAT_3042_2533 = DAT_3042_2533 + 1) {
          for (local_1e = DAT_3042_3faa - local_28; local_1e <= DAT_3042_3faa + local_28;
              local_1e = local_1e + 1) {
            if ((((local_1e < 0x1c) && (0 < local_1e)) && (DAT_3042_2533 < 0x1c)) &&
               (0 < DAT_3042_2533)) {
              DAT_3042_3f16 = ((undefined2 *)&DAT_3042_2cae)[DAT_3042_2533 + local_1e * 0x1c];
            }
            else {
              DAT_3042_3f16 = 0;
            }
            if (((undefined2 *)&DAT_3042_0a78)[DAT_3042_3f16 * 0x14] == 1) {
              local_6 = local_6 + ((undefined2 *)&DAT_3042_0a6a)[DAT_3042_3f16 * 0x14];
              local_a = local_a + ((undefined2 *)&DAT_3042_0a6c)[DAT_3042_3f16 * 0x14];
              local_32 = local_32 + 1;
            }
            else {
              local_4 = local_4 + ((undefined2 *)&DAT_3042_0a6a)[DAT_3042_3f16 * 0x14];
              local_8 = local_8 + ((undefined2 *)&DAT_3042_0a6c)[DAT_3042_3f16 * 0x14];
              local_34 = local_34 + 1;
            }
          }
        }
        FUN_1000_1779(0x8000,0);
        uVar8 = 0;
        uVar3 = FUN_1000_1242();
        iVar6 = FUN_1000_12df(0x1000,uVar3,uVar8);
        if ((local_6 - local_4) + (local_a - local_8) / 10 + local_32 * 10 + local_34 * -5 <
            iVar6 + 1) {
          local_2c = 0;
        }
        else {
          local_2c = 1;
        }
      }
      if (local_2c != 0) {
        if ((int)((undefined2 *)&DAT_3042_0a72)[local_14 * 0x14] <
            (int)((undefined2 *)&DAT_3042_0a72)[DAT_3042_3fbe * 0x14]) {
          ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3fbe * 0x14] = 2;
        }
        else if ((int)((undefined2 *)&DAT_3042_0a72)[DAT_3042_3fbe * 0x14] <
                 (int)((undefined2 *)&DAT_3042_0a72)[local_14 * 0x14]) {
          ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3fbe * 0x14] = 4;
        }
        else if ((int)((undefined2 *)&DAT_3042_0a74)[local_14 * 0x14] <
                 (int)((undefined2 *)&DAT_3042_0a74)[DAT_3042_3fbe * 0x14]) {
          ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3fbe * 0x14] = 1;
        }
        else {
          ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3fbe * 0x14] = 3;
        }
        DAT_3042_3fc0 = local_14;
        DAT_3042_3f9c = *(undefined2 *)(DAT_3042_3fc2 * 2 + 0xc88);
        DAT_3042_3f3c =
             *(int *)(((undefined2 *)&DAT_3042_0a70)[local_14 * 0x14] * 0x2e + -0x60d4) / 0x32;
        iVar6 = FUN_4000_20e0(local_14,0xe);
        if (iVar6 != 0) {
          DAT_3042_3f3c = DAT_3042_3f3c + 1;
        }
        FUN_1000_49a3((undefined1 *)&DAT_3042_0f54,(char *)s_ogret1_cmp_26e0_26dc + 4,
                      DAT_3042_3fc2 * 0x1f + 0x361,(char *)s_ogret1_cmp_26e0_26dc + 4);
        FUN_4000_84e9();
        FUN_4000_0c40(DAT_3042_3fc0);
        FUN_4000_2721();
        FUN_15dc_1e5e(10);
        if ((int)((undefined2 *)&DAT_3042_0a70)[DAT_3042_3fc0 * 0x14] < 5) {
          iVar6 = FUN_4000_0238(*(undefined2 *)
                                 (((undefined2 *)&DAT_3042_0a70)[DAT_3042_3fc0 * 0x14] * 0x24 +
                                 -0x6480));
          if (iVar6 < 0) {
            iVar6 = 0;
          }
          else {
            iVar6 = FUN_4000_0238(*(undefined2 *)
                                   (((undefined2 *)&DAT_3042_0a70)[DAT_3042_3fc0 * 0x14] * 0x24 +
                                   -0x6480));
          }
          piVar1 = (int *)(((undefined2 *)&DAT_3042_0a70)[DAT_3042_3fc0 * 0x14] * 0x5c + -0x6646);
          *piVar1 = *piVar1 + iVar6 + 1;
          FUN_4000_aaae(((undefined2 *)&DAT_3042_0a70)[DAT_3042_3fc0 * 0x14]);
        }
        if ((int)((undefined2 *)&DAT_3042_0a6a)[DAT_3042_3fc0 * 0x14] < 1) {
          FUN_4000_0c27(((undefined2 *)&DAT_3042_0a72)[DAT_3042_3fc0 * 0x14],
                        ((undefined2 *)&DAT_3042_0a74)[DAT_3042_3fc0 * 0x14],0);
        }
        FUN_4000_0c40(DAT_3042_3fbe);
        DAT_3042_3f2c = 0;
        DAT_3042_3f54 = 1;
        DAT_3042_3f56 = DAT_3042_3fbe;
        return;
      }
    }
LAB_4000_a7fa:
    if (DAT_3042_3f2c != 0) {
      local_36 = ((undefined2 *)&DAT_3042_0a72)[DAT_3042_3fbe * 0x14];
      local_38 = ((undefined2 *)&DAT_3042_0a74)[DAT_3042_3fbe * 0x14];
      DAT_3042_3fb6 = 0;
      local_3a = 0;
      local_3c = ((undefined2 *)&DAT_3042_0a72)[local_14 * 0x14];
      local_3e = ((undefined2 *)&DAT_3042_0a74)[local_14 * 0x14];
      DAT_3042_3faa = FUN_4000_0238(local_3c - local_36);
      DAT_3042_3fa8 = FUN_4000_0238(local_3e - local_38);
      do {
        if (local_3a == 0) {
          if ((DAT_3042_3faa == 0) && (DAT_3042_3fa8 == -1)) {
            local_40 = 1;
          }
          if ((DAT_3042_3faa == 1) && (DAT_3042_3fa8 == -1)) {
            local_40 = 2;
          }
          if ((DAT_3042_3faa == 1) && (DAT_3042_3fa8 == 0)) {
            local_40 = 3;
          }
          if ((DAT_3042_3faa == 1) && (DAT_3042_3fa8 == 1)) {
            local_40 = 4;
          }
          if ((DAT_3042_3faa == 0) && (DAT_3042_3fa8 == 1)) {
            local_40 = 5;
          }
          if ((DAT_3042_3faa == -1) && (DAT_3042_3fa8 == 1)) {
            local_40 = 6;
          }
          if ((DAT_3042_3faa == -1) && (DAT_3042_3fa8 == 0)) {
            local_40 = 7;
          }
          if ((DAT_3042_3faa == -1) && (DAT_3042_3fa8 == -1)) {
            local_40 = 8;
          }
        }
        else {
          FUN_4000_0202(&local_40);
        }
        local_3a = local_3a + 1;
        switch(local_40) {
        case 1:
          DAT_3042_3faa = 0;
          DAT_3042_3fa8 = -1;
          DAT_3042_3f3e = 1;
          break;
        case 2:
          DAT_3042_3fa8 = -1;
          goto LAB_4000_a992;
        case 3:
          DAT_3042_3fa8 = 0;
          goto LAB_4000_a992;
        case 4:
          DAT_3042_3fa8 = 1;
LAB_4000_a992:
          DAT_3042_3faa = 1;
          DAT_3042_3f3e = 4;
          break;
        case 5:
          DAT_3042_3faa = 0;
          DAT_3042_3fa8 = 1;
          DAT_3042_3f3e = 3;
          break;
        case 6:
          DAT_3042_3fa8 = 1;
          goto LAB_4000_a9d6;
        case 7:
          DAT_3042_3fa8 = 0;
          goto LAB_4000_a9d6;
        case 8:
          DAT_3042_3fa8 = -1;
LAB_4000_a9d6:
          DAT_3042_3faa = -1;
          DAT_3042_3f3e = 2;
        }
        FUN_4000_2d39();
        FUN_4000_2721();
        FUN_15dc_1e5e(10);
        FUN_4000_9490();
        if (DAT_3042_3f98 != 0) goto LAB_4000_998f;
        if (2 < local_3a) {
          return;
        }
      } while( true );
    }
  }
  return;
}

