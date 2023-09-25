int max(int x, int y, int z)
{
 int max = x;
 if (y > max) {
 max = y;
 }
 if (z > max) {
 max = z;
 }
 return max;
}

上記の関数をSSA変換

int max(int x0, int y0, int z0)
{
  int max0 = x0;
  if (y0 > max0){
    max1 = y0;
  }
  int max2 = phi(max1, max0);
  if (z0 > max0){
    max3 = z0;
  }
  int max4 = phi(max3, max2);
  return max4;
}