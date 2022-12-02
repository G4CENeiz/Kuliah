public class assignment2 {
    public static void main(String[] args) {
        int limit = 100;
        int start = 1;
        even(start, limit);
    }
    static void even(int start, int limit) {
        for(int i = start; i <= limit; i++) {
            if(i % 2 == 0) {
                System.out.println(i);
            }
        }
    }
}
