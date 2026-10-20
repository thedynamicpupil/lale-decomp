
void __cdecl16far FUN_4000_3f5b(void)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  bool bVar4;
  int iVar5;
  undefined2 uVar6;
  int iVar7;
  int iVar8;
  undefined2 uVar9;
  int local_1a;
  int local_10;
  int local_e;
  int local_c;
  int local_8;
  
  if ((0 < DAT_3042_3f4e) && (0 < DAT_3042_3f4c)) {
    DAT_3042_3f52 = 0;
    DAT_3042_3f4a = 0;
    iVar2 = ((undefined2 *)&DAT_3042_0a70)[DAT_3042_3f4e * 0x14];
    iVar3 = ((undefined2 *)&DAT_3042_0a70)[DAT_3042_3f4c * 0x14];
    DAT_3042_3f7c = 0;
    for (DAT_3042_3f96 = 1; DAT_3042_3f96 < 3; DAT_3042_3f96 = DAT_3042_3f96 + 1) {
      local_8 = *(int *)(iVar2 * 0x2e + DAT_3042_3f96 * 2 + -0x60dc);
      if (100 < local_8) {
        local_8 = local_8 + -100;
      }
      if ((DAT_3042_3f96 == 1) && (local_8 == 0)) {
        local_8 = 1;
      }
      bVar4 = DAT_3042_3f84 != 0 || local_8 <= DAT_3042_3f2c;
      if (((DAT_3042_3f96 != 2) || (bVar4)) || (DAT_3042_3f3a != 1)) {
        if (((bVar4) && (0 < local_8)) &&
           (0 < (int)((undefined2 *)&DAT_3042_0a6a)[DAT_3042_3f4c * 0x14])) {
          DAT_3042_3f56 = DAT_3042_3f4c;
          DAT_3042_3f54 = 3;
          DAT_3042_3f50 = 0;
          DAT_3042_3f7e = 0;
          DAT_3042_3f80 = 0;
          if (((iVar2 < 5) && (iVar2 != 0)) && (4 < iVar3)) {
            if ((*(int *)(iVar2 * 0x5c + DAT_3042_3f96 * 2 + -0x6620) < 0x1a) &&
               (0 < *(int *)(iVar2 * 0x5c + DAT_3042_3f96 * 2 + -0x6620))) {
              local_c = *(int *)(iVar2 * 0x5c + DAT_3042_3f96 * 2 + -0x6620);
              if (local_c == 0x2b) {
                local_c = 0x1a;
              }
              if (((undefined2 *)&DAT_26e0_5be0)[((DAT_3042_3f4c + -1) / 8) * 3] ==
                  *(int *)(local_c * 0xe + 0xe7f)) {
                DAT_3042_3f80 = 1;
                DAT_3042_3f7e = 2;
              }
            }
            if (*(int *)(iVar2 * 0x24 + -0x646e) ==
                ((undefined2 *)&DAT_26e0_5be0)[((DAT_3042_3f4c + -1) / 8) * 3]) {
              DAT_3042_3f80 = DAT_3042_3f80 + 2;
              DAT_3042_3f7e = DAT_3042_3f7e + 3;
            }
            if (*(int *)(iVar2 * 0x24 + -0x646c) ==
                ((undefined2 *)&DAT_26e0_5be0)[((DAT_3042_3f4c + -1) / 8) * 3]) {
              DAT_3042_3f80 = DAT_3042_3f80 + -1;
              DAT_3042_3f7e = DAT_3042_3f7e + -2;
            }
          }
          DAT_3042_3f28 = *(int *)(DAT_3042_3f4c * 0x28 + -0x5f62);
          iVar7 = *(int *)(iVar3 * 0x2e + -0x60de);
          DAT_3042_3fba = (*(int *)(DAT_3042_3fbe * 0x28 + -0x5f64) - DAT_3042_3fa2) + DAT_3042_3f80
          ;
          iVar5 = *(int *)(iVar2 * 0x2e + -0x60e4) / 100;
          FUN_1000_1779(0x8000,0);
          iVar8 = iVar5 + 1 >> 0xf;
          uVar6 = FUN_1000_1242();
          iVar8 = FUN_1000_12df(0x1000,uVar6,iVar8);
          local_e = iVar8 + *(int *)(iVar2 * 0x2e + -0x60e4) + iVar5 * -100 + DAT_3042_3f7e;
          if (0 < (int)((undefined2 *)&DAT_3042_0a8c)[DAT_3042_3f4c * 0x14]) {
            local_e = ((undefined2 *)&DAT_3042_0a6a)[DAT_3042_3f4c * 0x14] + iVar7;
          }
          if ((DAT_3042_3f96 == 2) && (FUN_4000_2721(), 0x18 < DAT_3042_3f4e)) {
            FUN_4000_6828();
            iVar5 = DAT_3042_3f8a / 100;
            FUN_1000_1779(0x8000,0);
            iVar5 = iVar5 + 1 >> 0xf;
            uVar6 = FUN_1000_1242();
            iVar5 = FUN_1000_12df(0x1000,uVar6,iVar5);
            local_e = iVar5 + DAT_3042_3f88 + DAT_3042_3f7e;
          }
          if (DAT_3042_3f84 == 0) {
            if (DAT_3042_3f2c < local_8) {
              DAT_3042_3f2c = 0;
            }
            else {
              DAT_3042_3f2c = DAT_3042_3f2c - local_8;
            }
          }
          FUN_1000_1779(0x8000,0);
          iVar5 = DAT_3042_3f28 + 5 >> 0xf;
          uVar6 = FUN_1000_1242();
          local_10 = FUN_1000_12df(0x1000,uVar6,iVar5);
          *(int *)(DAT_3042_3f4e * 0x28 + -0x5f6a) = DAT_3042_3f4c;
          if (0 < (int)((undefined2 *)&DAT_3042_0a8c)[DAT_3042_3f4c * 0x14]) {
            local_10 = 0;
          }
          if (DAT_3042_3fba < local_10) {
            if (((DAT_3042_3f96 == 2) && (DAT_3042_3f3a == 1)) ||
               (*(int *)(iVar2 * 0x2e + -0x60d8) == 0)) goto LAB_4000_45c7;
            goto LAB_4000_4602;
          }
          if (local_e < iVar7) {
            DAT_3042_3f50 = 0;
          }
          else {
            DAT_3042_3f50 = local_e - iVar7;
          }
          DAT_3042_3f3a = 0;
          if (DAT_3042_3f50 < 1) {
            DAT_3042_3f46 = 4;
          }
          else {
            *(undefined2 *)(DAT_3042_3f4c * 0x28 + -0x5f52) = 1;
            iVar7 = FUN_4000_20e0(DAT_3042_3f4c,0xf);
            if ((iVar7 != 0) && (DAT_3042_3fa2 == 0)) {
              DAT_3042_3f52 = 1;
            }
            iVar7 = FUN_4000_20e0(DAT_3042_3f4e,0x13);
            if ((iVar7 != 0) && (DAT_3042_3fa2 == 0)) {
              DAT_3042_3f4a = 1;
            }
            if ((((0x18 < DAT_3042_3f4e) &&
                 (*(int *)(iVar2 * 0x5c + *(int *)(iVar2 * 0x5c + -0x661e) * 2 + -0x665a) % 100 ==
                  0x19)) && (*(int *)(iVar3 * 0x2e + -0x60d6) < 10)) &&
               (*(int *)(iVar3 * 0x2e + -0x60d4) < 0)) {
              FUN_1000_1779(0x8000,0);
              uVar9 = 0;
              uVar6 = FUN_1000_1242();
              iVar7 = FUN_1000_12df(0x1000,uVar6,uVar9);
              if (iVar7 + 1 < 0x50) {
                DAT_3042_3f7a = 1;
              }
            }
            DAT_3042_3f62 = 1;
            DAT_3042_3f46 = 3;
            DAT_3042_3f7c = DAT_3042_3f7c + DAT_3042_3f50;
          }
          ((undefined2 *)&DAT_3042_0a6a)[DAT_3042_3f4c * 0x14] =
               ((undefined2 *)&DAT_3042_0a6a)[DAT_3042_3f4c * 0x14] - DAT_3042_3f50;
          FUN_4000_aa60(DAT_3042_3f4e,1);
          if ((int)((undefined2 *)&DAT_3042_0a6a)[DAT_3042_3f4c * 0x14] < 1) {
            iVar7 = ((undefined2 *)&DAT_3042_0a70)[DAT_3042_3f4c * 0x14];
            iVar5 = FUN_4000_0238(*(undefined2 *)(iVar7 * 0x2e + -0x60c8));
            iVar5 = *(int *)(iVar7 * 0x2e + -0x60e6) + *(int *)(iVar7 * 0x2e + -0x60d6) / 10 +
                    iVar5 * 5 + *(int *)(iVar7 * 0x2e + -0x60e2);
            iVar7 = FUN_4000_0238(*(undefined2 *)(iVar7 * 0x2e + -0x60d2));
            iVar5 = iVar5 + iVar7 * 3;
            DAT_3042_3f54 = 2;
            DAT_3042_3f46 = 2;
            FUN_4000_aa60(DAT_3042_3f4e,10);
            if ((int)((undefined2 *)&DAT_3042_0a70)[DAT_3042_3f4c * 0x14] < 5) {
              piVar1 = (int *)(((undefined2 *)&DAT_3042_0a70)[DAT_3042_3f4c * 0x14] * 0x5c + -0x6654
                              );
              *piVar1 = *piVar1 + 10;
              FUN_4000_aaae(((undefined2 *)&DAT_3042_0a70)[DAT_3042_3f4c * 0x14]);
            }
            for (local_1a = 0x19; local_1a < 0x1d; local_1a = local_1a + 1) {
              if (0 < (int)((undefined2 *)&DAT_3042_0a6a)[local_1a * 0x14]) {
                if (iVar5 / 10 < 1) {
                  iVar7 = 1;
                }
                else {
                  iVar7 = iVar5 / 10;
                }
                FUN_4000_aa60(local_1a,iVar7);
              }
            }
          }
          goto LAB_4000_460e;
        }
      }
      else {
LAB_4000_45c7:
        if (DAT_3042_3f84 == 0) {
          DAT_3042_3f2c = 0;
        }
        if (((DAT_3042_3fba < local_10 + -5) && (DAT_3042_3f48 == 0)) &&
           ((DAT_3042_3f94 == 0 && ((DAT_3042_3f92 == 1 && (DAT_3042_3fa2 == 0)))))) {
          DAT_3042_3f48 = 1;
        }
LAB_4000_4602:
        DAT_3042_3f46 = 5;
        DAT_3042_3f3a = 1;
LAB_4000_460e:
        if ((DAT_3042_3f94 == 0) &&
           (((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3f4c * 0x14] =
                 (((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3f4e * 0x14] + 2) % 4,
           ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3f4c * 0x14] == 0)) {
          ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3f4c * 0x14] = 4;
        }
        ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3f4e * 0x14] =
             ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3f4e * 0x14] + 4;
        FUN_4000_2721();
        uVar6 = DAT_3042_3fc0;
        iVar7 = DAT_3042_3fbe;
        if (((0 < DAT_3042_3f50) && (*(int *)(DAT_3042_3f4e * 0x28 + -0x5f56) != 0)) &&
           (0 < (int)((undefined2 *)&DAT_3042_0a6a)[DAT_3042_3f4c * 0x14])) {
          DAT_3042_3f82 = 1;
          DAT_3042_3fbe = DAT_3042_3f4e;
          DAT_3042_3fc0 = DAT_3042_3f4c;
          DAT_3042_3fc2 = *(undefined2 *)(DAT_3042_3f4e * 0x28 + -0x5f56);
          FUN_4000_84e9();
          if ((DAT_3042_3f54 != 6) &&
             ((int)((undefined2 *)&DAT_3042_0a6a)[DAT_3042_3f4c * 0x14] < 1)) {
            FUN_4000_2721();
            FUN_4000_214e(DAT_3042_3f46);
            FUN_15dc_1e5e(10);
          }
          DAT_3042_3f56 = iVar7;
          DAT_3042_3f54 = 1;
          DAT_3042_3f46 = 0;
        }
        DAT_3042_3f82 = 0;
        DAT_3042_3fbe = iVar7;
        DAT_3042_3fc0 = uVar6;
        if ((int)((undefined2 *)&DAT_3042_0a6a)[DAT_3042_3f4c * 0x14] < 1) {
          FUN_4000_0c27(((undefined2 *)&DAT_3042_0a72)[DAT_3042_3f4c * 0x14],
                        ((undefined2 *)&DAT_3042_0a74)[DAT_3042_3f4c * 0x14],0);
        }
        FUN_15dc_1e5e(10);
        DAT_3042_3f56 = DAT_3042_3f4e;
        DAT_3042_3f54 = 1;
        ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3f4e * 0x14] =
             ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3f4e * 0x14] + -4;
      }
    }
    DAT_26e0_2636 = 0;
    DAT_26e0_2634 = 0;
    for (local_1a = 1; local_1a < 0x1d; local_1a = local_1a + 1) {
      if (0 < (int)((undefined2 *)&DAT_3042_0a6a)[local_1a * 0x14]) {
        *(undefined2 *)(((undefined2 *)&DAT_3042_0a78)[local_1a * 0x14] * 2 + 0x2632) = 1;
      }
    }
    if ((DAT_26e0_2634 == 0) || (DAT_26e0_2636 == 0)) {
      DAT_26e0_632e = 1;
    }
  }
  return;
}


