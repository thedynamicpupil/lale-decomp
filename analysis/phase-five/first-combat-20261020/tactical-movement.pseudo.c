
void __cdecl16far FUN_4000_2d39(void)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  uint uVar8;
  undefined2 uVar9;
  undefined2 uVar10;
  undefined2 uVar11;
  undefined2 uVar12;
  int local_1e;
  int local_1c;
  int local_1a;
  int local_18;
  int local_16;
  
  FUN_1c7f_0204();
  if (DAT_3042_3fb6 != 0) {
    switch(DAT_3042_3fb6) {
    case 0x47:
      DAT_3042_3faa = -1;
      DAT_3042_3fa8 = -1;
      DAT_3042_3f3e = 2;
      FUN_1ac6_13f5(0,0x4d,7,0x4d,0xf8,0);
      FUN_1ac6_13f5(0,0x4f,8,0x57,0xf8,0);
      FUN_1ac6_13f5(8,0x4d,0x12,0x57,6,0);
      uVar12 = 0x57;
      uVar11 = 0x12;
      uVar10 = 0x57;
      uVar9 = 9;
      break;
    case 0x48:
      DAT_3042_3faa = 0;
      DAT_3042_3fa8 = -1;
      DAT_3042_3f3e = 1;
      FUN_1ac6_13f5(10,0x4d,0x16,0x4d,0xf8,0);
      FUN_1ac6_13f5(10,0x4d,0x13,0x56,0xf8,0);
      FUN_1ac6_13f5(0x14,0x57,0x21,0x57,6,0);
      uVar12 = 0x57;
      uVar11 = 0x21;
      uVar10 = 0x4d;
      uVar9 = 0x17;
      break;
    case 0x49:
      DAT_3042_3faa = 1;
      DAT_3042_3fa8 = -1;
      DAT_3042_3f3e = 4;
      FUN_1ac6_13f5(0x19,0x4d,0x23,0x4d,0xf8,0);
      FUN_1ac6_13f5(0x19,0x4d,0x22,0x56,0xf8,0);
      FUN_1ac6_13f5(0x23,0x57,0x2e,0x57,6,0);
      uVar12 = 0x57;
      uVar11 = 0x2e;
      uVar10 = 0x4d;
      uVar9 = 0x24;
      break;
    default:
      goto switchD_4000_2d64_caseD_4a;
    case 0x4b:
      DAT_3042_3faa = -1;
      DAT_3042_3fa8 = 0;
      DAT_3042_3f3e = 2;
      FUN_1ac6_13f5(10,0x59,0x14,0x59,0xf8,0);
      FUN_1ac6_13f5(10,0x59,0x14,99,0xf8,0);
      FUN_1ac6_13f5(0x15,100,0x20,100,6,0);
      uVar12 = 100;
      uVar11 = 0x20;
      uVar10 = 0x59;
      uVar9 = 0x15;
      break;
    case 0x4d:
      DAT_3042_3faa = 1;
      DAT_3042_3fa8 = 0;
      DAT_3042_3f3e = 4;
      FUN_1ac6_13f5(0x25,0x59,0x30,0x59,0xf8,0);
      FUN_1ac6_13f5(0x25,0x59,0x2f,99,0xf8,0);
      FUN_1ac6_13f5(0x30,100,0x3b,100,6,0);
      uVar12 = 100;
      uVar11 = 0x3b;
      uVar10 = 0x59;
      uVar9 = 0x30;
      break;
    case 0x4f:
      DAT_3042_3faa = -1;
      DAT_3042_3fa8 = 1;
      DAT_3042_3f3e = 2;
      FUN_1ac6_13f5(0x17,0x66,0x21,0x66,0xf8,0);
      FUN_1ac6_13f5(0x17,0x66,0x1f,0x6e,0xf8,0);
      FUN_1ac6_13f5(0x20,0x6f,0x2b,0x6f,6,0);
      uVar12 = 0x6f;
      uVar11 = 0x2b;
      uVar10 = 0x66;
      uVar9 = 0x22;
      break;
    case 0x50:
      DAT_3042_3faa = 0;
      DAT_3042_3fa8 = 1;
      DAT_3042_3f3e = 3;
      FUN_1ac6_13f5(0x24,0x66,0x30,0x66,0xf8,0);
      FUN_1ac6_13f5(0x24,0x66,0x2c,0x6e,0xf8,0);
      FUN_1ac6_13f5(0x2d,0x6f,0x3a,0x6f,6,0);
      uVar12 = 0x6f;
      uVar11 = 0x3a;
      uVar10 = 0x66;
      uVar9 = 0x31;
      break;
    case 0x51:
      DAT_3042_3faa = 1;
      DAT_3042_3fa8 = 1;
      DAT_3042_3f3e = 4;
      FUN_1ac6_13f5(0x33,0x66,0x3c,0x66,0xf8,0);
      FUN_1ac6_13f5(0x33,0x66,0x3b,0x6e,0xf8,0);
      FUN_1ac6_13f5(0x3c,0x6f,0x46,0x6f,6,0);
      uVar12 = 0x6f;
      uVar11 = 0x46;
      uVar10 = 0x66;
      uVar9 = 0x3d;
    }
    FUN_1ac6_13f5(uVar9,uVar10,uVar11,uVar12,6,0);
  }
switchD_4000_2d64_caseD_4a:
  FUN_1c7f_0069(CONCAT11(0x26,DAT_3042_4fc3));
  FUN_1c7f_0714();
  if (DAT_3042_3f5c == 1) {
    if (DAT_3042_3f5a + DAT_3042_3faa < 0x1a) {
      iVar2 = DAT_3042_3f5a + DAT_3042_3faa;
    }
    else {
      iVar2 = 0x1a;
    }
    if (iVar2 < 0) {
      DAT_3042_3f5a = 0;
    }
    else if (DAT_3042_3f5a + DAT_3042_3faa < 0x1a) {
      DAT_3042_3f5a = DAT_3042_3f5a + DAT_3042_3faa;
    }
    else {
      DAT_3042_3f5a = 0x1a;
    }
    if (DAT_3042_3f58 + DAT_3042_3fa8 < 0x1a) {
      iVar2 = DAT_3042_3f58 + DAT_3042_3fa8;
    }
    else {
      iVar2 = 0x1a;
    }
    if (iVar2 < 0) {
      DAT_3042_3f58 = 0;
    }
    else if (DAT_3042_3f58 + DAT_3042_3fa8 < 0x1a) {
      DAT_3042_3f58 = DAT_3042_3f58 + DAT_3042_3fa8;
    }
    else {
      DAT_3042_3f58 = 0x1a;
    }
    if (DAT_3042_3f60 + 4 < DAT_3042_3f5a) {
      if (DAT_3042_3f60 + 3 < 0x15) {
        DAT_3042_3f60 = DAT_3042_3f60 + 3;
      }
      else {
        DAT_3042_3f60 = 0x14;
      }
    }
    if (DAT_3042_3f5a < DAT_3042_3f60 + 2) {
      if (DAT_3042_3f60 < 3) {
        DAT_3042_3f60 = 0;
      }
      else {
        DAT_3042_3f60 = DAT_3042_3f60 + -3;
      }
    }
    if (DAT_3042_3f5e + 4 < DAT_3042_3f58) {
      if (DAT_3042_3f5e + 3 < 0x15) {
        DAT_3042_3f5e = DAT_3042_3f5e + 3;
      }
      else {
        DAT_3042_3f5e = 0x14;
      }
    }
    if (DAT_3042_3f58 < DAT_3042_3f5e + 2) {
      if (DAT_3042_3f5e < 3) {
        DAT_3042_3f5e = 0;
      }
      else {
        DAT_3042_3f5e = DAT_3042_3f5e + -3;
      }
    }
  }
  else {
    DAT_3042_3f4c = 0;
    DAT_3042_3f92 = 1;
    DAT_3042_3f94 = 0;
    iVar2 = ((undefined2 *)&DAT_3042_0a72)[DAT_3042_3fbe * 0x14];
    iVar1 = ((undefined2 *)&DAT_3042_0a74)[DAT_3042_3fbe * 0x14];
    ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3fbe * 0x14] = DAT_3042_3f3e;
    if (iVar2 + DAT_3042_3faa < 0x1a) {
      iVar3 = iVar2 + DAT_3042_3faa;
    }
    else {
      iVar3 = 0x1a;
    }
    if (iVar3 < 0) {
      iVar3 = 0;
    }
    else if (iVar2 + DAT_3042_3faa < 0x1a) {
      iVar3 = iVar2 + DAT_3042_3faa;
    }
    else {
      iVar3 = 0x1a;
    }
    if (iVar1 + DAT_3042_3fa8 < 0x1a) {
      iVar4 = iVar1 + DAT_3042_3fa8;
    }
    else {
      iVar4 = 0x1a;
    }
    if (iVar4 < 0) {
      iVar4 = 0;
    }
    else if (iVar1 + DAT_3042_3fa8 < 0x1a) {
      iVar4 = iVar1 + DAT_3042_3fa8;
    }
    else {
      iVar4 = 0x1a;
    }
    iVar3 = *(int *)(iVar3 * 0x38 + iVar4 * 2 + -0x3712);
    if (iVar2 + DAT_3042_3faa < 0x1a) {
      iVar4 = iVar2 + DAT_3042_3faa;
    }
    else {
      iVar4 = 0x1a;
    }
    if (iVar4 < 0) {
      iVar4 = 0;
    }
    else if (iVar2 + DAT_3042_3faa < 0x1a) {
      iVar4 = iVar2 + DAT_3042_3faa;
    }
    else {
      iVar4 = 0x1a;
    }
    if (iVar1 + DAT_3042_3fa8 < 0x1a) {
      iVar5 = iVar1 + DAT_3042_3fa8;
    }
    else {
      iVar5 = 0x1a;
    }
    if (iVar5 < 0) {
      iVar5 = 0;
    }
    else if (iVar1 + DAT_3042_3fa8 < 0x1a) {
      iVar5 = iVar1 + DAT_3042_3fa8;
    }
    else {
      iVar5 = 0x1a;
    }
    iVar4 = ((undefined2 *)&DAT_3042_2cae)[iVar5 + iVar4 * 0x1c];
    if ((((iVar3 < 10) && (iVar3 != 6)) && (iVar3 != 8)) && (iVar4 == 0)) {
      DAT_3042_3f98 = 1;
    }
    else {
      DAT_3042_3f98 = 0;
    }
    if ((iVar4 < 1) ||
       (((undefined2 *)&DAT_3042_0a78)[iVar4 * 0x14] ==
        ((undefined2 *)&DAT_3042_0a78)[DAT_3042_3fbe * 0x14])) {
      DAT_3042_3f56 = DAT_3042_3fbe;
      DAT_3042_3f54 = 1;
    }
    else if (((undefined2 *)&DAT_3042_0a78)[DAT_3042_3fbe * 0x14] == 1) {
      DAT_3042_3f4e = DAT_3042_3fbe;
      DAT_3042_3f4c = iVar4;
      FUN_4000_3f5b();
      DAT_3042_3f3e = 0;
      DAT_3042_3fa8 = 0;
      DAT_3042_3faa = 0;
      return;
    }
    if (DAT_3042_3f98 != 0) {
      DAT_3042_3f2c = DAT_3042_3f2c + -1;
      if (iVar2 + DAT_3042_3faa < 0x1a) {
        iVar3 = iVar2 + DAT_3042_3faa;
      }
      else {
        iVar3 = 0x1a;
      }
      if (iVar3 < 0) {
        iVar3 = 0;
      }
      else if (iVar2 + DAT_3042_3faa < 0x1a) {
        iVar3 = iVar2 + DAT_3042_3faa;
      }
      else {
        iVar3 = 0x1a;
      }
      if (iVar1 + DAT_3042_3fa8 < 0x1a) {
        iVar4 = iVar1 + DAT_3042_3fa8;
      }
      else {
        iVar4 = 0x1a;
      }
      if (iVar4 < 0) {
        iVar4 = 0;
      }
      else if (iVar1 + DAT_3042_3fa8 < 0x1a) {
        iVar4 = iVar1 + DAT_3042_3fa8;
      }
      else {
        iVar4 = 0x1a;
      }
      for (local_16 = -1; local_16 < 2; local_16 = local_16 + 1) {
        for (local_18 = -1; local_18 < 2; local_18 = local_18 + 1) {
          DAT_3042_3f94 = 0;
          if (((iVar2 + local_18 < 0x1c) && (0 < iVar2 + local_18)) &&
             ((0 < iVar1 + local_16 && (iVar1 + local_16 < 0x1c)))) {
            if (SCARRY2(iVar2,local_18) == iVar2 + local_18 < 0) {
              iVar5 = iVar2 + local_18;
            }
            else {
              iVar5 = 0;
            }
            if (SCARRY2(iVar1,local_16) == iVar1 + local_16 < 0) {
              iVar6 = iVar1 + local_16;
            }
            else {
              iVar6 = 0;
            }
            DAT_3042_3f16 = ((undefined2 *)&DAT_3042_2cae)[iVar6 + iVar5 * 0x1c];
          }
          else {
            DAT_3042_3f16 = 0;
          }
          if (((0 < DAT_3042_3f16) && (DAT_3042_3f16 != DAT_3042_3fbe)) &&
             (((undefined2 *)&DAT_3042_0a8c)[DAT_3042_3f16 * 0x14] == 0)) {
            iVar5 = ((undefined2 *)&DAT_3042_0a72)[DAT_3042_3f16 * 0x14];
            if ((((undefined2 *)&DAT_3042_0a78)[DAT_3042_3fbe * 0x14] !=
                 ((undefined2 *)&DAT_3042_0a78)[DAT_3042_3f16 * 0x14]) &&
               ((uVar7 = iVar5 - iVar3 >> 0xf, 1 < (int)((iVar5 - iVar3 ^ uVar7) - uVar7) ||
                (uVar7 = ((undefined2 *)&DAT_3042_0a74)[DAT_3042_3f16 * 0x14] - iVar4,
                uVar8 = (int)uVar7 >> 0xf, 1 < (int)((uVar7 ^ uVar8) - uVar8))))) {
              DAT_3042_3f4e = DAT_3042_3f16;
              DAT_3042_3f4c = DAT_3042_3fbe;
              DAT_3042_3f84 = 1;
              DAT_3042_3f94 = 1;
              if (iVar2 < iVar5) {
                ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3f16 * 0x14] = 2;
              }
              else if (iVar5 < iVar2) {
                ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3f16 * 0x14] = 4;
              }
              else if (iVar1 < (int)((undefined2 *)&DAT_3042_0a74)[DAT_3042_3f16 * 0x14]) {
                ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3f16 * 0x14] = 1;
              }
              else {
                ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3f16 * 0x14] = 3;
              }
              FUN_4000_3f5b();
              DAT_3042_3f56 = DAT_3042_3f4c;
              FUN_4000_2721();
              DAT_3042_3f84 = 0;
            }
          }
        }
      }
      if ((int)((undefined2 *)&DAT_3042_0a6a)[DAT_3042_3fbe * 0x14] < 1) {
        DAT_3042_3f2c = 0;
      }
      else {
        FUN_4000_0c27(iVar2,iVar1,0);
        FUN_4000_0c27(iVar3,iVar4,DAT_3042_3fbe);
        if (DAT_3042_3f60 + 4 < iVar3) {
          if (DAT_3042_3f60 + 3 < 0x15) {
            DAT_3042_3f60 = DAT_3042_3f60 + 3;
          }
          else {
            DAT_3042_3f60 = 0x14;
          }
        }
        if (iVar3 < DAT_3042_3f60 + 2) {
          if (DAT_3042_3f60 < 3) {
            DAT_3042_3f60 = 0;
          }
          else {
            DAT_3042_3f60 = DAT_3042_3f60 + -3;
          }
        }
        if (DAT_3042_3f5e + 4 < iVar4) {
          if (DAT_3042_3f5e + 3 < 0x15) {
            DAT_3042_3f5e = DAT_3042_3f5e + 3;
          }
          else {
            DAT_3042_3f5e = 0x14;
          }
        }
        if (iVar4 < DAT_3042_3f5e + 2) {
          if (DAT_3042_3f5e < 3) {
            DAT_3042_3f5e = 0;
          }
          else {
            DAT_3042_3f5e = DAT_3042_3f5e + -3;
          }
        }
        ((undefined2 *)&DAT_3042_0a72)[DAT_3042_3fbe * 0x14] = iVar3;
        ((undefined2 *)&DAT_3042_0a74)[DAT_3042_3fbe * 0x14] = iVar4;
        DAT_3042_3f46 = FUN_4000_2c7b(*(undefined2 *)(iVar3 * 0x38 + iVar4 * 2 + -0x3712));
        for (local_16 = -1; local_16 < 2; local_16 = local_16 + 1) {
          for (local_18 = -1; local_18 < 2; local_18 = local_18 + 1) {
            DAT_3042_3f92 = 1;
            if (((iVar3 + local_18 < 0x1c) && (0 < iVar3 + local_18)) &&
               ((0 < iVar4 + local_16 && (iVar4 + local_16 < 0x1c)))) {
              DAT_3042_3f16 =
                   ((undefined2 *)&DAT_3042_2cae)[iVar4 + local_16 + (iVar3 + local_18) * 0x1c];
            }
            else {
              DAT_3042_3f16 = 0;
            }
            if (((0 < DAT_3042_3f16) && (DAT_3042_3f16 != DAT_3042_3fbe)) &&
               (((undefined2 *)&DAT_3042_0a8c)[DAT_3042_3f16 * 0x14] == 0)) {
              iVar5 = ((undefined2 *)&DAT_3042_0a72)[DAT_3042_3f16 * 0x14];
              iVar6 = ((undefined2 *)&DAT_3042_0a74)[DAT_3042_3f16 * 0x14];
              if ((((undefined2 *)&DAT_3042_0a78)[DAT_3042_3fbe * 0x14] !=
                   ((undefined2 *)&DAT_3042_0a78)[DAT_3042_3f16 * 0x14]) &&
                 ((uVar7 = iVar5 - iVar2 >> 0xf, 1 < (int)((iVar5 - iVar2 ^ uVar7) - uVar7) ||
                  (uVar7 = iVar6 - iVar1 >> 0xf, 1 < (int)((iVar6 - iVar1 ^ uVar7) - uVar7))))) {
                for (local_1a = -1; local_1a < 2; local_1a = local_1a + 1) {
                  for (local_1c = -1; local_1c < 2; local_1c = local_1c + 1) {
                    if (((iVar5 + local_1c < 0x1c) && (0 < iVar5 + local_1c)) &&
                       ((0 < iVar6 + local_1a && (iVar6 + local_1a < 0x1c)))) {
                      local_1e = ((undefined2 *)&DAT_3042_2cae)
                                 [iVar6 + local_1a + (iVar5 + local_1c) * 0x1c];
                    }
                    else {
                      local_1e = 0;
                    }
                    if ((((0 < local_1e) && (local_1e != DAT_3042_3f16)) &&
                        (local_1e != DAT_3042_3fbe)) &&
                       (((undefined2 *)&DAT_3042_0a78)[DAT_3042_3f16 * 0x14] !=
                        ((undefined2 *)&DAT_3042_0a78)[local_1e * 0x14])) {
                      DAT_3042_3f92 = 0;
                      goto LAB_4000_3867;
                    }
                  }
                }
LAB_4000_3867:
                if (DAT_3042_3f92 != 0) {
                  DAT_3042_3f4e = DAT_3042_3f16;
                  DAT_3042_3f4c = DAT_3042_3fbe;
                  DAT_3042_3f84 = 1;
                  if (iVar3 < iVar5) {
                    ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3f16 * 0x14] = 2;
                  }
                  else if (iVar5 < iVar3) {
                    ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3f16 * 0x14] = 4;
                  }
                  else if (iVar4 < iVar6) {
                    ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3f16 * 0x14] = 1;
                  }
                  else {
                    ((undefined2 *)&DAT_3042_0a6e)[DAT_3042_3f16 * 0x14] = 3;
                  }
                  FUN_4000_3f5b();
                  DAT_3042_3f84 = 0;
                  if ((int)((undefined2 *)&DAT_3042_0a6a)[DAT_3042_3fbe * 0x14] < 1) {
                    DAT_3042_3f2c = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  DAT_3042_3f3e = 0;
  DAT_3042_3fa8 = 0;
  DAT_3042_3faa = 0;
  return;
}


