以下の関数をK正規化せよ

double heron(double s, double a, double b, double c)
{
    return sqrt(s * (s-a) * (s-b) * (s-c));
}

double heron(double s, double a, double b, double c)
{
  double tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
  tmp1 = s - a;
  tmp2 = s - b;
  tmp3 = s - c;
  tmp4 = s * tmp1;
  tmp5 = tmp2 * tmp4;
  tmp6 = tmp3 * tmp5;
  tmp7 = sqrt(tmp6);
  return tmp7;
}