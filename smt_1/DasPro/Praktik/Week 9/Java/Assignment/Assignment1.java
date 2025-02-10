import java.util.Scanner;

public class Assignment1 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter the number N: ");
        int N = input.nextInt();

        if (N >= 3) {
            for (int i = 1; i <= N; i++) {
                for (int j = N-i; j >= 1; j--) {
                    System.out.print(" ");
                }
                for (int k = 0; k < i; k++) {
                    System.out.print(k+1);
                }
                System.out.println();
            }
        } else {
            System.out.println("Integer N is outside the number range");
        }
        input.close();
    }
}



