
void __cdecl16far FUN_4000_1e75(void)

{
  bool bVar1;
  undefined2 uVar2;
  int iVar3;
  undefined2 uVar4;
  int local_4;
  
  DAT_26e0_6330 = 0;
  DAT_3042_3f2e = 0;
  DAT_3042_3f30 = 0;
  for (local_4 = 1; local_4 < 0x1d; local_4 = local_4 + 1) {
    *(int *)(local_4 * 2 + -0x2b40) = local_4;
    FUN_1000_1779(0x8000,0);
    uVar4 = 0;
    uVar2 = FUN_1000_1242();
    iVar3 = FUN_1000_12df(0x1000,uVar2,uVar4);
    if (iVar3 + *(int *)(((undefined2 *)&DAT_3042_0a70)[local_4 * 0x14] * 0x2e + -0x60da) + 10 <
        *(int *)(((undefined2 *)&DAT_3042_0a70)[local_4 * 0x14] * 0x2e + -0x60e0)) {
      iVar3 = 0;
    }
    else {
      FUN_1000_1779(0x8000,0);
      uVar4 = 0;
      uVar2 = FUN_1000_1242();
      iVar3 = FUN_1000_12df(0x1000,uVar2,uVar4);
      iVar3 = (iVar3 + *(int *)(((undefined2 *)&DAT_3042_0a70)[local_4 * 0x14] * 0x2e + -0x60da) +
              10) - *(int *)(((undefined2 *)&DAT_3042_0a70)[local_4 * 0x14] * 0x2e + -0x60e0);
    }
    *(int *)(local_4 * 2 + -0x2b06) = iVar3;
  }
  do {
    bVar1 = false;
    for (local_4 = 1; local_4 < 0x1c; local_4 = local_4 + 1) {
      iVar3 = *(int *)(local_4 * 2 + -0x2b06);
      uVar2 = *(undefined2 *)(local_4 * 2 + -0x2b40);
      uVar4 = ((undefined2 *)&DAT_3042_3ea2)[local_4];
      if ((int)((undefined2 *)&DAT_3042_3edc)[local_4] < iVar3) {
        *(int *)(local_4 * 2 + -0x2b06) = ((undefined2 *)&DAT_3042_3edc)[local_4];
        ((undefined2 *)&DAT_3042_3edc)[local_4] = iVar3;
        *(undefined2 *)(local_4 * 2 + -0x2b40) = uVar4;
        ((undefined2 *)&DAT_3042_3ea2)[local_4] = uVar2;
        bVar1 = true;
      }
    }
  } while (bVar1);
  return;
}


