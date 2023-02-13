import java.util.Scanner;

public class Nested1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int value;
        System.out.print("Enter a value (0 - 100): ");
        value = sc.nextInt();
        sc.close();

        if (value >= 0 || value <= 100) {
            if (value >= 90 && value <= 100) {
                System.out.println("Grade A, EXCELLENT!");
            } else if (value >= 80 && value <= 89) {
                System.out.println("Grade B, keep up your achievements!");
            } else if (value >= 60 && value <= 79) {
                System.out.println("Grade C, increase your achievements!");
            } else if (value >= 50 && value <= 59) {
                System.out.println("Grade D, improve your study!");
            } else {
                System.out.println("Grade E, you don't pass!");
            }
        } else if (value < 0) {
            System.out.println("Value you entered is less than 0");
        } else {
            System.out.println("The value you entered is more than 100");
        }
    }
}



