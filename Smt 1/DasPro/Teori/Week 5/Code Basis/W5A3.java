import java.util.Scanner;

public class W5A3 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int x, y, P, Q;
        System.out.print("input x:");
        x = sc.nextInt();
        System.out.print("input y:");
        y = sc.nextInt();
        P = x + y;
        if (P > 0){
            Q = x * y;
            System.out.println("Q is" + Q);
        } else {
            Q = x / y;
            System.out.println("Q is" + Q);
        }
    }
}