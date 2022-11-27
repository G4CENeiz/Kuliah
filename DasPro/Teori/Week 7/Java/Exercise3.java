import java.util.Scanner;

public class Exercise3 {
    public static void main(String[] args) {
        int x, y, z, i;
        Scanner input = new Scanner(System.in);
        System.out.print("x input: ");
        x = input.nextInt();
        System.out.print("y input: ");
        y = input.nextInt();
        input.close();

        for (i=1, z=1;i<=y;i++) {
            z *= x;
            System.out.println(z);
        }
    }
}
