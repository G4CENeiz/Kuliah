import java.util.Locale;

public class SoalLatihan {
    public static void main(String[] args) {
        String[] branch = {
            "Dieng",
            "Soehat",
            "Sengkaling"
        };
        String[] books = {
            "Novel",
            "Comic",
            "Text book",
            "Encyclopedia"
        };
        int[] price = {
            40_000, //Novel
            28_000, //Comic
            60_000, //Text book
            75_000  //Encyclopedia
        };
        int[][] sales = {
            //Novel, Comic, Text book, Encyclopedia
            {8, 9, 5 , 2},  //Dieng branch
            {7, 5, 10, 3},  //Soehat branch
            {4, 6, 6 , 5}   //Sengkaling branch
        };

        //branches sales
        int[] branchesSalesVolume   = new int[branch.length];
        int[] branchesSales         = new int[branch.length];
        
        for (int branchID = 0, rowLen = branch.length; branchID < rowLen; branchID++) {
            for (int salesID = 0, colLen = sales[branchID].length; salesID < colLen; salesID++) {
                branchesSalesVolume [branchID]  +=  sales[branchID][salesID];  
                branchesSales       [branchID]  +=  sales[branchID][salesID] * price[salesID];
            }
        }

        for (int branchID = 0, len = branch.length; branchID < len; branchID++) {
            System.out.printf(
                Locale.ITALY, 
                "The %-10s branch has sold %d copies, a total of Rp %,-8d in sales%n", 
                branch[branchID], branchesSalesVolume[branchID], branchesSales[branchID]
            );
        }
        //books sales
        int[] booksSalesVolume  = new int[books.length];
        int[] booksSales        = new int[books.length];

        for (int bookID = 0, rowLen = books.length; bookID < rowLen; bookID++) {
            for (int salesID = 0, colLen = sales.length; salesID < colLen; salesID++) {
                booksSalesVolume[bookID]    += sales[salesID][bookID];  
                booksSales      [bookID]    += sales[salesID][bookID] * price[salesID];
            }
        }

        for (int bookID = 0, rowLen = books.length; bookID < rowLen; bookID++) {
            System.out.printf(
                Locale.ITALY, 
                "%d copies of %-13s has been sold, a total of Rp %,-9d in sales%n", 
                booksSalesVolume[bookID], books[bookID], booksSales[bookID]
            );
        }
        //top branches sales
        int topBranchesSalesID  = 0;
        int topBranchesSales    = 0;

        for (int branchID = 0, len = branch.length; branchID < len; branchID++) {
            if (topBranchesSales < branchesSalesVolume[branchID]) {
                topBranchesSalesID  = branchID;
                topBranchesSales    = branchesSalesVolume[branchID];
            }
        }
        
        System.out.printf(
            "Branch with the most sales is the %s branch%n", 
            branch[topBranchesSalesID]
        );
        //best seller
        int bestSellerID    = 0;
        int bestSeller      = 0;

        for (int bookID = 0, len = books.length; bookID < len; bookID++) {
            if (bestSeller < booksSalesVolume[bookID]) {
                bestSellerID    = bookID;
                bestSeller      = booksSalesVolume[bookID];
            }
        }

        System.out.printf(
            "Best seller book is %s%n", 
            books[bestSellerID]
        );
    }
}
