int foo(int x, int y, int z)
{
 return sqrt(x * x + y * y + z * z);
}

上記の関数をK正規化

int foo(int x, int y, int z)
{
  int tmp1, tmp2, tmp3, tmp4, tmp5, tmp6;
  tmp1 = x * x;
  tmp2 = y * y;
  tmp3 = z * z;
  tmp4 = tmp1 + tmp2;
  tmp5 = tmp3 + tmp4;
  tmp6 = sqrt(tmp5);
  return tmp6;
}