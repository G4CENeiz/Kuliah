import java.util.Scanner;
public class Quiz2Hawa {
    public static void main (String[] args) {
        
        Scanner sc = new Scanner(System.in);
        String[] stocks = {
            "Book", 
            "Pencil", 
            "Computer"
        };
        int[] price = {
            20_000,
            5_000, 
            5_000_000
        };
        String[] stockKind = {
            "total stock",
            "damaged stock"
        };
        
        int[][] stock = new int[stocks.length][stockKind.length];
        for (int i = 0; i < stocks.length; i++) {
            System.out.printf("Enter the stock for item %s\n", stock[i]);
            for (int j = 0; j < stockKind.length; j++) {
                System.out.printf("Enter the %13s: ", stockKind[j]);
                stock[i][j] = sc.nextInt();
            }
        }

        //A
        System.out.println();
        System.out.printf("%s", " ");
        for (int i = 0; i < stockKind.length; i++ ) {
            System.out.printf("%s", stockKind[i]);
        }
        System.out.println();
        for (int i = 0; i < stock.length; i++) {
            System.out.printf("%s", stock[i]);
            for (int j = 0; j < stockKind.length; j++) {
            }
            System.out.println();
        }

        //B
        int[] stockAvailable = new int [stock.length];
        System.out.println("Goods that can be borrow");
        for (int i = 0; i < stock.length; i++) {
            stockAvailable[i] = stock[i][0] - stock[i][1];
            System.out.printf("Available %s to be borrow: %d", stock[i], stock[i][0] - stock[i][1]);
        }
        int stockAvailableSum = 0;
        for (int i = 0; i < stockAvailable.length; i++) {
            stockAvailableSum += stockAvailable[i];
        }
        System.out.printf("Total available item to be borrow: %d", stockAvailableSum);

        //C
        System.out.println("Total turn over for each item");
        for (int i = 0; i < stock.length; i++) {
            System.out.printf("%s turn over: %d", stock[i], stockAvailable[i] * price[i]);
        }

        //D
        int itemmostborrow = 0;
        for (int i = 0; i < stockAvailable.length; i++) {
            if (itemmostborrow < stockAvailable[i]) {
                itemmostborrow = i;
            }
        }
        System.out.printf("Item with the most stock that can be borrow is %s", stock[itemmostborrow]);
        sc.close(); // this line is not the OG,this fucking thing is bugging me 
    }
}