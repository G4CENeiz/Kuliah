import java.util.Scanner;

public class Assignment2 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter the number N: ");
        int N = input.nextInt();

        if (N >= 5) {
            for (int i = 0; i <= N; i++) {
                for (int j = N - i; j > 0; j--) {
                    System.out.print("*");
                }
                System.out.println("");
            }
        } else {
            System.out.println("Integer N is outside the number range");
        }

        input.close();
    }
}






