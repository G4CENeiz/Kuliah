import java.util.Scanner;

public class loopBreak {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int number, b;
        for (b = 0; true;) {
            System.out.print("Enter a number: ");
            number = input.nextInt();
            b += number;
            if (b > 50) {
                break;
            }
        }
        System.out.printf("The numbers stop at the sum of the numbers %d\n",b);
    }
}
