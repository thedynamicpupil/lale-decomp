
undefined2 __cdecl16far FUN_4000_1b6d(void)

{
  int iVar1;
  int iVar2;
  undefined2 uVar3;
  undefined2 uVar4;
  undefined2 uVar5;
  int local_4;
  
  uVar5 = 0x4000;
  DAT_26e0_6324 = 1;
  DAT_26e0_2634 = 0;
  DAT_26e0_2636 = 0;
  for (local_4 = 1; local_4 < 0x1d; local_4 = local_4 + 1) {
    if (0 < (int)((undefined2 *)&DAT_3042_0a6a)[local_4 * 0x14]) {
      *(undefined2 *)(((undefined2 *)&DAT_3042_0a78)[local_4 * 0x14] * 2 + 0x2632) = 1;
    }
  }
  if ((DAT_26e0_2634 != 0) && (DAT_26e0_2636 != 0)) {
    *(undefined2 *)(DAT_3042_3fbe * 0x28 + -0x5f52) = 0;
    uVar4 = uVar5;
    if (DAT_26e0_6322 != 0) goto LAB_4000_1c37;
    DAT_26e0_6322 = 1;
    do {
      FUN_4000_1e75();
      uVar4 = uVar5;
LAB_4000_1c37:
      while (DAT_26e0_6330 = DAT_26e0_6330 + 1, DAT_26e0_6330 < 0x1d) {
        DAT_3042_3fbe = *(int *)(DAT_26e0_6330 * 2 + -0x2b40);
        if (0 < (int)((undefined2 *)&DAT_3042_0a6a)[DAT_3042_3fbe * 0x14]) {
          if ((int)((undefined2 *)&DAT_3042_0a8c)[DAT_3042_3fbe * 0x14] < 1) {
            DAT_3042_3f54 = 1;
            DAT_3042_3f3a = 0;
            DAT_3042_3f2c =
                 *(int *)(((undefined2 *)&DAT_3042_0a70)[DAT_3042_3fbe * 0x14] * 0x2e + -0x60dc);
            DAT_3042_3f56 = DAT_3042_3fbe;
            iVar1 = FUN_4000_20e0(DAT_3042_3fbe,0x15);
            if (iVar1 != 0) {
              if (DAT_3042_3f2c + -3 < 3) {
                DAT_3042_3f2c = 3;
              }
              else {
                DAT_3042_3f2c = DAT_3042_3f2c + -3;
              }
            }
            iVar1 = FUN_4000_20e0(DAT_3042_3fbe,0x1c);
            uVar4 = DAT_3042_3f5a;
            uVar5 = DAT_3042_3f58;
            if (iVar1 != 0) {
              DAT_3042_3f2c = DAT_3042_3f2c * 2;
            }
            if (0x18 < DAT_3042_3fbe) {
              DAT_26e0_2898 = DAT_3042_3fbe + -0x18;
            }
            DAT_3042_3f5c = 1;
            DAT_3042_3f5a = ((undefined2 *)&DAT_3042_0a72)[DAT_3042_3fbe * 0x14];
            DAT_3042_3f58 = ((undefined2 *)&DAT_3042_0a74)[DAT_3042_3fbe * 0x14];
            if ((DAT_3042_3f60 != -0x138) && (DAT_3042_3f5e != -0x138)) {
              if (DAT_3042_3f5e + 3 < 0x14) {
                iVar1 = DAT_3042_3f5e + 3;
              }
              else {
                iVar1 = 0x14;
              }
              if (DAT_3042_3f60 + 3 < 0x14) {
                iVar2 = DAT_3042_3f60 + 3;
              }
              else {
                iVar2 = 0x14;
              }
              FUN_4000_14ea(DAT_3042_3f5a,DAT_3042_3f58,iVar2,iVar1);
            }
            FUN_4000_0c40(DAT_3042_3fbe);
            FUN_15dc_1d1b();
            if (((undefined2 *)&DAT_3042_0a78)[DAT_3042_3fbe * 0x14] == 1) {
              if (0x18 < DAT_3042_3fbe) {
                if (*(int *)(DAT_26e0_2898 * 0x5c + -0x6656) == 1) {
                  iVar1 = FUN_1000_1779(0x8000,0);
                  iVar1 = iVar1 >> 0xf;
                  uVar3 = FUN_1000_138d();
                  iVar1 = FUN_1000_12df(0x1000,uVar3,iVar1);
                  DAT_3042_3f46 = iVar1 + 0x19;
                }
                else {
                  iVar1 = FUN_1000_1779(0x8000,0);
                  iVar1 = iVar1 >> 0xf;
                  uVar3 = FUN_1000_138d();
                  iVar1 = FUN_1000_12df(0x1000,uVar3,iVar1);
                  DAT_3042_3f46 = iVar1 + 0x1d;
                }
              }
              FUN_4000_214e(DAT_3042_3f46);
            }
            FUN_4000_2721();
            FUN_15dc_1e5e(10);
            DAT_3042_3f5c = 0;
            DAT_3042_3f58 = uVar5;
            DAT_3042_3f5a = uVar4;
            thunk_FUN_1db7_01ea();
            return 0;
          }
          ((undefined2 *)&DAT_3042_0a8c)[DAT_3042_3fbe * 0x14] =
               ((undefined2 *)&DAT_3042_0a8c)[DAT_3042_3fbe * 0x14] + -1;
        }
      }
      DAT_26e0_6330 = 1;
      DAT_3042_3f2a = DAT_3042_3f2a + 1;
      uVar5 = 0x2670;
      FUN_2670_0048(uVar4,1);
      DAT_3042_3f30 = 0;
      DAT_3042_3f2e = 0;
    } while( true );
  }
  if (DAT_26e0_2636 == 0) {
    DAT_26e0_632e = 1;
  }
  else {
    DAT_26e0_632e = 2;
  }
  FUN_1c7f_0204();
  return 0xffff;
}

