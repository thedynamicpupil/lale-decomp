
void __cdecl16far FUN_4000_0202(int *param_1,int param_2,int param_3,int param_4)

{
  *param_1 = *param_1 + param_2;
  if (*param_1 < param_3) {
    *param_1 = param_4;
  }
  if (param_4 < *param_1) {
    *param_1 = param_3;
  }
  return;
}


