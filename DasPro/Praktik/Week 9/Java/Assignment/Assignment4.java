import java.util.Scanner;

public class Assignment4 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter the number N: ");
        int N = input.nextInt();

        if (N < 10) {
            if (N > 4) {
                for (int i = 0; i < N; i++) {
                    if (i % 2 == 0) {
                        for (int j = N; j > 0; j--) {
                            System.out.print(j);
                        }
                    } else {
                        for (int k = 0; k < N; k++) {
                            System.out.print(k + 1);
                        }
                    }
                    System.out.println();
                }            } else {
                System.out.println("Integer N is outside the number range");
            }
        } else if (N < 5) {
            System.out.println("Integer N is outside the number range");
        } else {
            System.out.println("Unfortunately my code doesn't work beyond single digit number");
        }

        input.close();
    }
}



