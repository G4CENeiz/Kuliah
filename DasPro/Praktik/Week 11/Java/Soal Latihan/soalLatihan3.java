import java.util.Scanner;

public class soalLatihan3 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter the amount of book kind: ");
        int bookKindcount = input.nextInt();

        String[] bookKind = new String[bookKindcount];
        for (int bookID = 0; bookID < bookKindcount; bookID++) {
            System.out.printf("Enter book %d book kind: ", bookID + 1);
            bookKind[bookID] = input.next();
        }

        int[][] branchStock = new int[bookKindcount][3];
        for (int bookID = 0; bookID < bookKindcount; bookID++) {
            System.out.printf("Enter the branch stocks\n");
            for (int stockID = 0; stockID < 3; stockID++) {
                switch (stockID) {
                    case 0:
                        System.out.printf("Enter the stock of %s: ", bookKind[bookID]);
                        branchStock[bookID][0] = input.nextInt();
                        break;
                    case 1:
                        System.out.println();
                
                    default:
                        break;
                }
            }
        }
        input.close();
    }
}
