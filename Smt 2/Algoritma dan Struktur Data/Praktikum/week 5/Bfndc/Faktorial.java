package Bfndc;

public class Faktorial {
    public long num;
    public long faktorialBF(long n) {
        long fakto = 1;
        for (long i = 1; i <= n; i++) {
            fakto = fakto * i;
        }
        return fakto;
    }
    public long faktorialDC(long n) {
        if (n==1) {
            return 1;
        }
        else
        {
            long fakto = n * faktorialDC(n-1);
            return fakto;
        }
    }
    
}