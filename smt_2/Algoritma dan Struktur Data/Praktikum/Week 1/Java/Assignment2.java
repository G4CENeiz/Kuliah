public class Assignment2 {
    public static void main(String[] args) {
        double balance = 1_000_000;
        double target = 1_500_000;
        int month = 0;
        System.out.printf("Initial balance: %,.2f\n", balance);
        while (balance < target) {
            balance *= 1.02;
            month++;
            System.out.printf("%d month balance: %,.2f\n", month, balance);
        }
        System.out.printf("It takes %d month to reach the target of %,.0f\n", month, target);
    }
}