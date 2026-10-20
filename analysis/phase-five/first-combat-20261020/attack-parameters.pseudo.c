
void __cdecl16far FUN_4000_6828(void)

{
  int iVar1;
  int iVar2;
  undefined2 local_4;
  
  if (DAT_3042_3f96 == 2) {
    iVar2 = *(int *)(DAT_26e0_2898 * 0x5c + -0x661c);
  }
  else {
    iVar2 = *(int *)(DAT_26e0_2898 * 0x5c + -0x661e);
  }
  local_4 = *(int *)(DAT_26e0_2898 * 0x5c + iVar2 * 2 + -0x665a) % 100;
  if (local_4 == 0x2b) {
    local_4 = 0x1a;
  }
  if (*(int *)(DAT_26e0_2898 * 0x5c + iVar2 * 2 + -0x665a) == 0) {
    DAT_3042_3f8a = 200;
  }
  else {
    DAT_3042_3f8a = *(int *)(local_4 * 0xe + 0xe79);
  }
  if (*(int *)(DAT_26e0_2898 * 0x5c + -0x664a) / 100 < 0) {
    iVar1 = 0;
  }
  else {
    iVar1 = *(int *)(DAT_26e0_2898 * 0x5c + -0x664a) / 100;
  }
  DAT_3042_3f88 =
       DAT_3042_3f8a % 100 + iVar1 + *(int *)(DAT_26e0_2898 * 0x5c + iVar2 * 2 + -0x665a) / 100;
  if (*(int *)(DAT_26e0_2898 * 0x5c + *(int *)(DAT_26e0_2898 * 0x5c + -0x661e) * 2 + -0x665a) % 100
      == *(int *)(DAT_26e0_2898 * 0x5c + -0x662e)) {
    DAT_3042_3f88 = DAT_3042_3f88 + 1;
  }
  DAT_3042_3fba = *(int *)(DAT_26e0_2898 * 0x5c + -0x6646) / 300 + DAT_3042_3f88;
  if (500 < *(int *)(DAT_26e0_2898 * 0x5c + -0x6630)) {
    if (DAT_3042_3fba < 2) {
      DAT_3042_3fba = 0;
    }
    else {
      DAT_3042_3fba = DAT_3042_3fba + -2;
    }
  }
  iVar2 = FUN_4000_20e0(DAT_26e0_2898 + 0x18,10);
  if (iVar2 != 0) {
    DAT_3042_3fba = DAT_3042_3fba + 1;
  }
  iVar2 = FUN_4000_20e0(DAT_26e0_2898 + 0x18,0x14);
  if (iVar2 != 0) {
    if (DAT_3042_3fba < 2) {
      DAT_3042_3fba = 0;
    }
    else {
      DAT_3042_3fba = DAT_3042_3fba + -2;
    }
  }
  if (DAT_3042_3fba < *(int *)(DAT_26e0_2898 * 0x5c + -0x6630) / 300) {
    DAT_3042_3fba = 0;
  }
  else {
    DAT_3042_3fba = DAT_3042_3fba - *(int *)(DAT_26e0_2898 * 0x5c + -0x6630) / 300;
  }
  iVar2 = FUN_4000_20e0(DAT_26e0_2898 + 0x18,0x15);
  if (iVar2 != 0) {
    DAT_3042_3fba = 0;
  }
  return;
}


