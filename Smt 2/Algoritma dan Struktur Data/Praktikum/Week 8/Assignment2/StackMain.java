package Assignment2;

public class StackMain {
    public static void main(String[] args) {
        Stack stack = new Stack(8);

        int[] transactionIDs = {1, 2, 3, 4, 5, 6, 7, 8};
        String[] date = {" 7 February 2023", "14 February 2023", "21 February 2023", "28 February 2023", " 7 March 2023", "14 March 2023", "21 March 2023", "28 March 2023"};
        int[] quantity = {5, 7, 8, 6, 7, 7, 5, 6};
        double[] transactionTotal = {85_000, 115_000, 150_000, 100_000, 115_000, 115_000, 85_000, 100_000};

        for (int i = 0; i < stack.size; i++) {
            System.out.printf("%d %s %d %,.2f\n", transactionIDs[i], date[i], quantity[i], transactionTotal[i]);
        }

        System.out.println();

        for (int i = 0; i < stack.size; i++) {
            Receipts receipts = new Receipts(transactionIDs[i], date[i], quantity[i], transactionTotal[i]);
            stack.push(receipts);
        }

        int requestedReceipts = 5;
        stack.print(requestedReceipts);
    }
}
