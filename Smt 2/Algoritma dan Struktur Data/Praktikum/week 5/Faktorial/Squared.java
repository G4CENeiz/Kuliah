package Faktorial;

public class Squared {
    public int num, squared;

    public int squaredBF(int a, int n) {
        int result = 1;
        for (int i = 0; i < n; i++) {
            result = result * a;
        }
        return result;
    }

    public int squaredDC(int a, int n) {
        if (n == 0) {
            return 1;
        } else {
            if (n % 2 == 1) {
                return (squaredDC(a, n/2) * squaredDC(a, n/2) * a);
            } else {
                return (squaredDC(a, n/2) * squaredDC(a, n/2));
            }
        }
    }
}
