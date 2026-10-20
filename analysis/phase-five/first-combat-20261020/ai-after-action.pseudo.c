
void __cdecl16far FUN_4000_9490(void)

{
  int iVar1;
  int iVar2;
  
  iVar1 = 0;
  if (((DAT_3042_3f4a == 1) && (((undefined2 *)&DAT_3042_0a8c)[DAT_3042_3f4e * 0x14] == 0)) &&
     (0 < (int)((undefined2 *)&DAT_3042_0a6a)[DAT_3042_3f4c * 0x14])) {
    iVar1 = DAT_3042_3f7c;
    FUN_4000_1ace(DAT_3042_3f7c,DAT_3042_3f4c);
    FUN_4000_2721();
    DAT_26e0_631a = 0x2e;
    FUN_4000_16eb((char *)s_bi_korum_bir_de_yer_kor__26e0_6805,(char *)s_ogret1_cmp_26e0_26dc + 4,
                  DAT_3042_3f4e);
    DAT_3042_3f62 = 1;
    FUN_4000_214e(DAT_3042_3f46);
    FUN_15dc_1e5e(10);
    if ((int)((undefined2 *)&DAT_3042_0a6a)[DAT_3042_3f4c * 0x14] < 1) {
      FUN_4000_0c27(((undefined2 *)&DAT_3042_0a72)[DAT_3042_3f4c * 0x14],
                    ((undefined2 *)&DAT_3042_0a74)[DAT_3042_3f4c * 0x14],0);
      DAT_3042_3f2c = 0;
    }
    DAT_3042_3f56 = DAT_3042_3fbe;
    DAT_3042_3f54 = 1;
    FUN_4000_2721();
    FUN_15dc_1e5e(10);
    DAT_3042_3f4a = 0;
  }
  if (((DAT_3042_3f52 == 1) && (((undefined2 *)&DAT_3042_0a8c)[DAT_3042_3f4c * 0x14] == 0)) &&
     (0 < (int)((undefined2 *)&DAT_3042_0a6a)[DAT_3042_3f4c * 0x14])) {
    if (0 < iVar1) {
      DAT_3042_3f7c = iVar1;
    }
    iVar2 = DAT_3042_3f4c;
    FUN_4000_1ace(DAT_3042_3f7c,DAT_3042_3f4e,iVar1,DAT_3042_3f4c);
    FUN_4000_2721();
    DAT_26e0_631a = 0x2d;
    FUN_4000_16eb(0x681e,(char *)s_ogret1_cmp_26e0_26dc + 4,iVar2);
    DAT_3042_3f62 = 1;
    FUN_4000_214e(DAT_3042_3f46);
    FUN_15dc_1e5e(10);
    if ((int)((undefined2 *)&DAT_3042_0a6a)[DAT_3042_3f4e * 0x14] < 1) {
      FUN_4000_0c27(((undefined2 *)&DAT_3042_0a72)[DAT_3042_3f4e * 0x14],
                    ((undefined2 *)&DAT_3042_0a74)[DAT_3042_3f4e * 0x14],0);
      DAT_3042_3f2c = 0;
    }
    DAT_3042_3f56 = DAT_3042_3fbe;
    DAT_3042_3f54 = 1;
    FUN_4000_2721();
    FUN_15dc_1e5e(10);
    DAT_3042_3f52 = 0;
  }
  return;
}


