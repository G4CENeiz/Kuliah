import java.util.Scanner;

public class Quiz2A {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        String[] stockName = {"Book", "Pencil", "Computer"};
        int[] price = {20_000, 5_000, 5_000_000};
        String[] stockKind= {"total stock", "damaged stock"};

        int[][] stock = new int[stockName.length][stockKind.length];
        for (int stockNameID = 0; stockNameID < stockName.length; stockNameID++) {
            System.out.printf("Enter the stock for item %s\n", stockName[stockNameID]);
            for (int stockKindID = 0; stockKindID < stockKind.length; stockKindID++) {
                System.out.printf("    Enter the %13s: ", stockKind[stockKindID]);
                stock[stockNameID][stockKindID] = input.nextInt();
            }
        }

        System.out.println("[A]");
        System.out.printf("%-10s"," ");
        for (int i = 0; i < stockKind.length; i++) {
            System.out.printf("%-15s", stockKind[i]);
        }
        System.out.println();
        for (int stockNameID = 0; stockNameID < stockName.length; stockNameID++) {
            System.out.printf("%-10s", stockName[stockNameID]);
            for (int stockKindID = 0; stockKindID < stockKind.length; stockKindID++) {
                System.out.printf("%-15d", stock[stockNameID][stockKindID]);
            }
            System.out.println();
        }
        
        System.out.println("[B]");
        int[] stockAvailable = new int[stockName.length];
        System.out.println("Goods that can be borrowed");
        for (int i = 0; i < stockName.length; i++) {
            stockAvailable[i] = stock[i][0] - stock[i][1];
            System.out.printf("    available %-8s to be borrowed: %2d\n", stockName[i], stock[i][0] - stock[i][1]);
        }
        int stockAvailableSum = 0;
        for (int i = 0; i < stockAvailable.length; i++) {
            stockAvailableSum += stockAvailable[i];
        }
        System.out.printf("Total available item to be borrowed: %d\n", stockAvailableSum);

        System.out.println("[C]");
        System.out.println("Total turn over for each item");
        int totalTurnOver = 0;
        for (int i = 0; i < stockName.length; i++) {
            System.out.printf("%-8s turn over: Rp %,d\n", stockName[i], stockAvailable[i] * price[i]);
            totalTurnOver += stockAvailable[i] * price[i];
        }
        System.out.printf("Total turn over for every item: Rp %,d\n", totalTurnOver);

        System.out.println("[D]");
        int compare = 0;
        for (int i = 0; i < stockAvailable.length; i++) {
            if (compare < stockAvailable[i]) {
                compare = i;
            }
        }
        System.out.printf("Item with the most stock that can be borrowed is %s", stockName[compare]);
        input.close();
    }
}
