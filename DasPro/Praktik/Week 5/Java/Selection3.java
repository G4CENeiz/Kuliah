import java.util.Scanner;

public class Selection3 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int age;
        System.out.print("Enter your age: ");
        age = input.nextInt();
        if (age > 65) {
            System.out.println("Elderly");
        } else if (age > 18) {
            System.out.println("Adults");
        } else if (age > 12) {
            System.out.println("Teens");
        } else if (age > 5) {
            System.out.println("Children");
        } else if (age > 0) {
            System.out.println("Toddler");
        } else {
            System.out.println("Sorry, the age you entered is wrong");
        }
        input.close();
    }
}

