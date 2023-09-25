以下の関数をK正規化せよ

int foo(int x, int y, int z)
{
    return x * y * z;
}

int foo(int x, int y, int z)
{
  int tmp1, tmp2;
  tmp1 = x * y;
  tmp2 = tmp1 * z;
  return tmp2;
}