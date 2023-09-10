import java.util.Scanner;

public class Selection {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        int number;
        System.out.print("Enter a number: ");
        number = input.nextInt();

        // if (number % 2 == 0) {
        //     System.out.println("Even number");
        // } else {
        //     System.out.println("Odd number");
        // }

        String output = (number % 2 == 0) ? "Even number" : "Odd number";
        System.out.println(output);
    }
}
