public class exercise {
    public static void main(String[] args) {
        for (int i = 1; i < 20; i++) {
            if (i % 2 == 0 || i == 11 || i == 17) continue;
            System.out.println(i);
        }
    }
}
