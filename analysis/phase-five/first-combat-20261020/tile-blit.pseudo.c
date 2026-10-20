
void __cdecl16far
FUN_4000_0b80(int param_1,int param_2,int param_3,undefined2 param_4,undefined2 param_5,
             undefined2 param_6)

{
  if (param_2 < 0) {
    param_2 = 0;
  }
  if (param_3 < 0) {
    param_3 = 0;
  }
  if (param_1 == 1) {
    FUN_26da_0034(0x4000,6,param_2,param_3,param_4,param_5,param_6,5);
  }
  else {
    FUN_26da_0039(0x4000,6,param_2,param_3,param_4,param_5,param_6);
  }
  return;
}


