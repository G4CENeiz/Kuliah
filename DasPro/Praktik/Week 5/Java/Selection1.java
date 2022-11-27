import java.util.Scanner;

public class Selection1 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int number;
        System.out.print("Enter a number: ");
        number = input.nextInt();
        /*
        if (number % 2 == 0) {
            System.out.println("Even Number");
        } else {
            System.out.println("Odd Number");
        }
         */
        String output = (number % 2 ==0) ? "Even Number!" : "Odd Number!";
        System.out.println(output);
        input.close();
    }
}

