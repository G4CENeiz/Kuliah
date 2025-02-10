import java.util.Scanner;

public class Assignment3 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter the number N: ");
        int N = input.nextInt();

        if (N < 10) {
            if (N > 2) {
                for(int i = 1; i <= N; i++) {
                    if (i == 1 || i == N) {
                        for (int j = 1; j <= N; j++) {
                            System.out.print(N + " ");
                        }
                        System.out.println();
                    } else {
                        for (int k = 1; k <= N; k++) {
                            if (k == 1 || k == N) {
                                System.out.print(N + " ");
                            } else {
                                System.out.print("  ");
                            }
                        }
                        System.out.println();
                    }
                }        
            } else {
                System.out.println("Integer N is outside the number range");
            }
        } else if (N < 3) {
            System.out.println("Integer N is outside the number range");
        } else {
            System.out.println("Unfortunately my code doesn't work beyond single digit number");
        }
        input.close();
    }
}



