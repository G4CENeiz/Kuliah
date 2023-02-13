public class AssignmentC {
    public static void main(String[] args) {
        int [][] cakes = {
            {10, 25, 20, 25},
            {15, 23, 15, 25},
            {12, 12, 19, 23},
            {13, 10, 28, 20}
        };
        int [] sum = new int[4];
        String [] building = {"A", "B", "C", "D"};
        //String [] typeOfCakes = {"Pancakes", "Pudding", "Rainbow Cake", "Steamed Buns"};
        int [] price = {3_000, 2_500, 4_000, 4_500};
        for (int i = 0; i < cakes.length; i++) {
            for (int j = 0; j < cakes[i].length; j++) {
                sum [i] += cakes[i][j] * price[j];
            }
        }
        for (int k = 0;k < sum.length; k++) {
            System.out.printf("Total profit if all the cakes in building %s are sold out: %d\n",building[k], sum[k] );
        }
    }
}
