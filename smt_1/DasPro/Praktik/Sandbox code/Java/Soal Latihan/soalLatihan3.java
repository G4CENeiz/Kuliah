import java.util.Scanner;

public class soalLatihan3 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter the amount of book kind: ");
        int bookKindCount = input.nextInt();

        String[] bookKind = new String[bookKindCount];
        for (int bookID = 0; bookID < bookKindCount; bookID++) {
            System.out.printf("    Enter the book genre #%d : ", bookID + 1);
            bookKind[bookID] = input.next();
        }

        System.out.print("Enter the amount of book status: ");
        int bookStatusCount = input.nextInt();

        String[] bookStatus = new String[bookStatusCount];
        for (int statusID = 0; statusID < bookStatusCount; statusID++) {
            System.out.printf("    Enter the status name #%d: ", statusID + 1);
            bookStatus[statusID] = input.next();
        }

        int[][] bookStock = new int[bookKindCount][bookStatusCount];
        for (int bookID = 0; bookID < bookKindCount; bookID++) {
            System.out.printf("Enter the stocks of %s\n", bookKind[bookID]);
            for (int statusID = 0; statusID < bookStatusCount; statusID++) {
                System.out.printf("    Enter the %-"+ getLongestStringLength(bookStatus) +"s stock of %s: ", bookStatus[statusID], bookKind[bookID]);
                bookStock[bookID][statusID] = input.nextInt();
            }
        }
        int[] statusSum = new int[bookStatusCount];
        int[] bookSum = new int[bookKindCount];

        for (int bookID = 0; bookID < bookKindCount; bookID++) {
            for (int statusID = 0; statusID < bookStatusCount; statusID++) {
                bookSum[bookID] += bookStock[bookID][statusID];
                statusSum[statusID] += bookStock[bookID][statusID];
            }
        }

        String printfBlock = "--------------------Output--------------------\n";
        for (int statusID = 0; statusID < bookStatusCount; statusID++) {
            printfBlock += String.format("There are %-" + getLongestIntLength(statusSum) + "d %-" + getLongestStringLength(bookStatus) + "s books\n", statusSum[statusID], bookStatus[statusID]);
        }

        printfBlock += "\n";

        for (int bookID = 0; bookID < bookKindCount; bookID++) {
            printfBlock += String.format("The library owned %-" + getLongestIntLength(bookSum) + "d of %s books\n", bookSum[bookID], bookKind[bookID]);
        }

        printfBlock += "\n";

        for (int bookID = 0; bookID < bookKindCount; bookID++) {
            printfBlock += String.format("Book status for %s\n", bookKind[bookID]);
            for (int statusID = 0; statusID < bookStatusCount; statusID++) {
                printfBlock += String.format("    There are %-" + getLongestIntArrayLength(bookStock) + "d %-" + getLongestStringLength(bookStatus) + "s %s\n", bookStock[bookID][statusID], bookStatus[statusID], bookKind[bookID]);
            }
            if (bookID < bookKindCount - 1) printfBlock += "\n";
        }
        System.out.print(printfBlock);
        input.close();
    }
    static int getLongestStringLength(String[] thing) {
        int compare = 0;
        for (int i = 0; i < thing.length; i++) {
            if (thing[i].length() > compare) {
                compare = thing[i].length();
            }
        }
        return compare;
    }
    static int getLongestIntArrayLength(int[][] thing) {
        int compare = 0;
        for (int i = 0; i < thing.length; i++) {
            for (int j = 0; j < thing[i].length; j++) {
                if (String.valueOf(thing[i][j]).length() > compare) {
                    compare = String.valueOf(thing[i][j]).length();
                }
            }
        }
        return compare;
    }
    static int getLongestIntLength(int[] thing) {
        int compare = 0;
        for (int i = 0; i < thing.length; i++) {
            if (String.valueOf(thing[i]).length() > compare) {
                compare = String.valueOf(thing[i]).length();
            }
        }
        return compare;
    }
}
