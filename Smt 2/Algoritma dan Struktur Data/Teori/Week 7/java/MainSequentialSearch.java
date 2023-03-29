import week7.SequentialSearch;

public class MainSequentialSearch {
    public static void main(String[] args) {
        int[] list = {3, 45, 34, 2, 76, 345, 23, 6, 12};
        int key = 6;

        SequentialSearch ss = new SequentialSearch();
        int potition = ss.sequentialSearch(list, key);
        if (potition==1) {
            System.out.println("The key is not found");
        } else {
            System.out.println("The key is found at index "+potition);
        }
    }
}
