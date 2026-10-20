
void __cdecl16far FUN_4000_0f86(int param_1,int param_2,int param_3)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  uint local_e;
  uint local_c;
  
  iVar1 = ((undefined2 *)&DAT_3042_0a72)[param_1 * 0x14];
  iVar2 = ((undefined2 *)&DAT_3042_0a74)[param_1 * 0x14];
  DAT_3042_3f40 = 1;
  DAT_3042_3f44 = 1;
  if ((iVar1 == param_2) && (iVar2 == param_3)) {
    DAT_3042_3f40 = 1;
    DAT_3042_3f44 = 1;
    return;
  }
  local_c = param_2 - iVar1;
  local_e = param_3 - iVar2;
  if ((int)((local_c ^ (int)local_c >> 0xf) - ((int)local_c >> 0xf)) <
      (int)((local_e ^ (int)local_e >> 0xf) - ((int)local_e >> 0xf))) {
    iVar3 = (int)(local_c * 100) / (int)local_e;
    if ((int)local_e < 1) {
      iVar4 = -1;
    }
    else {
      iVar4 = 1;
    }
    local_c = local_c * 100;
    for (; local_e != 0; local_e = local_e - iVar4) {
      iVar5 = iVar1 + (int)local_c / 100;
      DAT_3042_3f44 = DAT_3042_3f44 + 1;
      if ((9 < *(int *)(iVar5 * 0x38 + (local_e + iVar2) * 2 + -0x3712)) &&
         (*(int *)(iVar5 * 0x38 + (local_e + iVar2) * 2 + -0x3712) < 0xe)) goto LAB_4000_106f;
      local_c = local_c - iVar3 * iVar4;
    }
  }
  else {
    iVar3 = (int)(local_e * 100) / (int)local_c;
    if ((int)local_c < 1) {
      iVar4 = -1;
    }
    else {
      iVar4 = 1;
    }
    local_e = local_e * 100;
    for (; local_c != 0; local_c = local_c - iVar4) {
      iVar5 = (int)local_e / 100 + iVar2;
      DAT_3042_3f44 = DAT_3042_3f44 + 1;
      if ((9 < *(int *)((iVar1 + local_c) * 0x38 + iVar5 * 2 + -0x3712)) &&
         (*(int *)((iVar1 + local_c) * 0x38 + iVar5 * 2 + -0x3712) < 0xe)) goto LAB_4000_106f;
      local_e = local_e - iVar3 * iVar4;
    }
  }
LAB_4000_111d:
  if (*(int *)(param_2 * 0x38 + param_3 * 2 + -0x3712) == 0) {
    DAT_3042_3f40 = 0;
  }
  return;
LAB_4000_106f:
  DAT_3042_3f40 = 0;
  goto LAB_4000_111d;
}


