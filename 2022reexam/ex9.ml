int baz(int a, int b, int c)
{
 int tmp1 = a * b;
 int tmp2 = tmp1 * c;
 int tmp3 = abs(tmp2);
 return tmp3;
}

上記の関数をレジスタ変換

int baz(int %edi, int %esi, int %edx)
{
  int %edi = %edi * %esi;
  int %edi = %edi * %edx;
  Save(x, %eax);
  int %eax = abs(%eax);
  Restore(x, %eax);
  return %eax;
}