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
        for (int col = 0; col < stockKind.length; col++) {
            System.out.printf("%-15s", stockKind[col]);
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
        for (int stockAvailableID = 0; stockAvailableID < stockName.length; stockAvailableID++) {
            stockAvailable[stockAvailableID] = stock[stockAvailableID][0] - stock[stockAvailableID][1];
            System.out.printf("    available %-8s to be borrowed: %2d\n", stockName[stockAvailableID], stock[stockAvailableID][0] - stock[stockAvailableID][1]);
        }
        int stockAvailableSum = 0;
        for (int stockAvailableID = 0; stockAvailableID < stockAvailable.length; stockAvailableID++) {
            stockAvailableSum += stockAvailable[stockAvailableID];
        }
        System.out.printf("Total available item to be borrowed: %d\n", stockAvailableSum);

        System.out.println("[C]");
        System.out.println("Total turn over for each item");
        int totalTurnOver = 0;
        for (int stockNameID = 0; stockNameID < stockName.length; stockNameID++) {
            System.out.printf("    %-8s turn over: Rp %,d\n", stockName[stockNameID], stockAvailable[stockNameID] * price[stockNameID]);
            totalTurnOver += stockAvailable[stockNameID] * price[stockNameID];
        }
        System.out.printf("Total turn over for every item: Rp %,d\n", totalTurnOver);

        System.out.println("[D]");
        int stockAvailableMost = 0;
        int stockAvailableMostID = 0;
        for (int stockAvailableID = 0; stockAvailableID < stockAvailable.length; stockAvailableID++) {
            if (stockAvailableMost < stockAvailable[stockAvailableID]) {
                stockAvailableMost = stockAvailable[stockAvailableID];
                stockAvailableMostID = stockAvailableID;
            }
        }
        System.out.printf("Item with the most stock that can be borrowed is %s", stockName[stockAvailableMostID]);
        input.close();
    }
}
