package question2;

public class SoalArray1 {
    public static void main(String[] args) {
        int[][] arrayInt = {{1, 1, 4}, {2, 1, 2}, {3, 2, 1}};
        // hitung jumlah elemen array 2 dimensi
        // gunakan perulangan
        int[] rowSum = new int[arrayInt.length];
        int sumAll = 0;

        for (int i = 0; i < arrayInt.length; i++) {
            for (int num : arrayInt[i]) {
                rowSum[i] += num;
            }
        }

        for (int row : rowSum) {
            sumAll += row;
        }

        for (int i = 0; i < rowSum.length; i++) {
            System.out.println(String.format("Row %d sum: %d", i, rowSum[i]));
        }

        System.out.println(String.format("Sum of all: %d", sumAll));
    }
}
