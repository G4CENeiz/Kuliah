import java.util.Scanner;

public class Arr3 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int[][] number = new int[2][3];

        for (int i = 0; i < number.length; i++) {
            for (int j = 0; j < number[0].length; j++) {
                System.out.print("Enter a number [" + i + "] [" + j + "]: ");
                number[i][j] = input.nextInt();
            }
            System.out.println("--------------");
        }

        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 3; j++) {
                System.out.print(number[i][j] + " ");
            }
            System.out.println("");
        }
        input.close();
    }
}
