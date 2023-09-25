以下の関数をSSA変換せよ
Φ関数は phi(x, y) のように書くこと

int max(int x, int y)
{
    int max = x;
    if (y > max) {
        max = y;
    }
    return max;
}

int max(int x0, int y0)
{
  int max0 = x0;
  if (y0 > max0){
    max1 = y0;
  }
  int max2 = phi(max1, max0)
  return max2;
}