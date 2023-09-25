int fmasqrt(int a, int b, int c)
{
    int tmp1 = b * c;
    int tmp2 = a + tmp1;
    int tmp3 = sqrt(tmp2);
    return tmp3;
}

int fmasqrt(int %edi, int %esi, int %edx)
{
  %esi = %esi * %edx;
  %edi = %edi + %esi;
  Save(tmp2, %edi);
  %edi = sqrt(%edi);
  Restore(tmp2, %edi);
  return %edi;
}