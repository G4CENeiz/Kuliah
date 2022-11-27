public class AssignmentA {
    public static void main(String[] args) {
        int [][] cakes = {
            {10, 25, 20, 25},
            {15, 23, 15, 25},
            {12, 12, 19, 23},
            {13, 10, 28, 20}
        };
        int [] sum = new int[4];
        String [] building = {"A", "B", "C", "D"};
        for (int i = 0; i < cakes.length; i++) {
            for (int j = 0; j < cakes[i].length; j++) {
                sum [i] += cakes[i][j];
            }
        }
        for (int k = 0;k < sum.length; k++) {
            System.out.printf("number of cakes sold in building %s: %d \n", building[k], sum[k] );
        }
    }
}