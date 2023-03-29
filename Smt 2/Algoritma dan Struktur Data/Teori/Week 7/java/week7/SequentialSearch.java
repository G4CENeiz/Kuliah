package week7;

public class SequentialSearch {
    public int sequentialSearch(int[] data, int key) {
        for (int i = 0; i < data.length; i++) {
            if (data[i] == key) {
                return i;
            }
        }
        return -1;
    }    
}