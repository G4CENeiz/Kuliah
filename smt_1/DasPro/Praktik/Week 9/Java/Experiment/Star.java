import java.util.Scanner;

public class Star {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter the value of N: ");
        int N = sc.nextInt();

        for (int i = 1; i <= N; i++) {
            System.out.print("*");
        }
        sc.close();
    }
}


