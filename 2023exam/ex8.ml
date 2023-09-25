以下の関数をSSA変換せよ、Φ関数は phi(x, y) のように書くこと


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

int sumrange(int x0, int y0)
{
    int result0 = 0, result1, result2;

    int i0 = x0, i1, i2;
    while (result2=phi(result0, result1), i2=phi(i0, i1), i2 < y0) {
        result1 = result2 + i2;
        i1 = i2 + 1;
    }

    return result2;
}