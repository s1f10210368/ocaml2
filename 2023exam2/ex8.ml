int sumrange(int x, int y)
{
    int result = 0;

    int i = x;
    while (i < y) {
        result += i;
        i++;
    }

    return result;
}

上記の関数をSSA変換

int sumrange(int x0, int y0)
{
  int result0 = 0, result1, result2;

  int i0 = x0, i1, i2;

  while(i2 = phi(i0, i1), result2 = phi(result0, result1), i2 < y0){
    result1 = result2 + i2;
    i1 = i2 + 1;
  }
  return result2;
}