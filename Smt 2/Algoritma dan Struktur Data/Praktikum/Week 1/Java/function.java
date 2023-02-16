public class function {
    public static void main(String[] args) {
        int secondPrev = 0, prev = 1, cur, limit = 9;
        System.out.printf("%s, %s", secondPrev, prev);
        for (int i = 2; i < limit; ++i) {
            cur = secondPrev + prev;
            System.out.printf(", %s", cur);
            secondPrev = prev;
            prev = cur;
        }
    }
}