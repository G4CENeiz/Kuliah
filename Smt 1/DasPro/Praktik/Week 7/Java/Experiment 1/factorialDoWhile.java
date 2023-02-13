import java.util.Scanner;

public class factorialDoWhile {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int number, factorial, i;
        System.out.print("Enter a number: ");
        number = input.nextInt();
        input.close();
        factorial = 1;
        i = 1;
        do {
            factorial = factorial * i;
            i++;
        } while (i <= number);
        System.out.printf("The factorial of %d is %d\n", number, factorial);
    }
}
