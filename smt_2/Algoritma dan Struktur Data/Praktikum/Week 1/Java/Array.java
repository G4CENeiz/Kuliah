public class Array {
    public static void main(String[] args) {
        int[][] stock = {
            {10, 5, 15, 7},
            {6, 11, 9, 12},
            {2, 10, 10, 5},
            {5, 7, 12, 9}
        };
        String[] flowerName = {"Aglaonema", "Taro", "Alocasia", "Rose"};
        int[] flowerStock = new int[stock[0].length];
        int[] flowerPrice = {75_000, 50_000, 60_000, 10_000};
        int[] withered = {1, 2, 0, 5};

        for (int flowerID = 0; flowerID < stock[0].length; flowerID++) {
            for (int branchID = 0; branchID < stock.length; branchID++) {
                flowerStock[flowerID] += stock[branchID][flowerID];
            }
        }
        for (int i = 0; i < flowerName.length; i++) {
            System.out.printf("%-10s: %d\n", flowerName[i], flowerStock[i]);
        }
        int branchProfit = 0;
        for (int flowerID = 0; flowerID < flowerName.length; flowerID++) {
            branchProfit += (stock[0][flowerID]-withered[flowerID]) * flowerPrice[flowerID];
        }
        System.out.printf("Branch 1 income: %,d", branchProfit);
    }
}
