public class Arr2 {
    public static void main(String[] args) {
        int[][] number = new int[2][3];

        number[0][0] = 12;
        number[0][1] = 14;
        number[0][2] = 34;
        number[1][0] = 20;
        number[1][1] = 24;
        number[1][2] = 67;

        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 3; j++) {
                System.out.print(number[i][j] + " ");
            }
            System.out.println("");
        }
    }
}
