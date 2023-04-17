package Assignment;

public class ArraySearch {
    private static void displayData(int[] data) {
        for (int i = 0; i < data.length; i++) {
            System.out.printf("%s ", data[i]);
        }
        System.out.println();
    }

    private static int[] sortAscending(int[] data) {
        for (int i = 1; i < data.length; i++) {
            int tmp = data[i];
            int j = i - 1;
                while (j >= 0 && data[j] > tmp) {
                    data[j + 1] = data[j];
                    j--;
                }
            data[j + 1] = tmp;
        }
        return data;
    }

    private static int[] sortDescending(int[] data) {
        for (int i = 1; i < data.length; i++) {
            int tmp = data[i];
            int j = i - 1;
                while (j >= 0 && data[j] < tmp) {
                data[j + 1] = data[j];
                j--;
                }
            data[j + 1] = tmp;
        }
        return data;
    }

    private static int[] findLargestValue(int[] data) {
        int largestPos = 0;
        int largest = data[largestPos];
        for (int i = 1; i < data.length; i++) {
            if (data[i] > largest) {
                largestPos = i;
                largest = data[largestPos];
            }
        }
        return new int[]{largestPos, largest};
    }

    private static void displayLargestValue(int[] data) {
        int[] sortedData = sortAscending(data);
        int[] largestValue = findLargestValue(sortedData);
        System.out.printf("Largest value position : %d\n", largestValue[0]);
        System.out.printf("Largest value : %d\n", largestValue[1]);
    }

    public static void main(String[] args) {
        int[] data = {5, 7, 4, 32, 6, 7, 89, 56, 3, 5, 7, 78, 3};
        System.out.println("Unsorted data: ");
        displayData(data);
        
        System.out.println("Sorted data (asc):");
        int[] sortedDataAscending = sortAscending(data);
        displayData(sortedDataAscending);

        System.out.println("Sorted data (desc):");
        int[] sortedDataDescending = sortDescending(data);
        displayData(sortedDataDescending);

        displayLargestValue(data);
    }
}
