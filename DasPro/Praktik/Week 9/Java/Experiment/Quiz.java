import java.util.Random;
import java.util.Scanner;

public class Quiz {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        Random rand = new Random();

        char menu = 'y';
        do {
            int number = rand.nextInt(10) + 1;
            boolean success = false;
            do {
                System.out.print("Guess the number (1-10): ");
                int answer = input.nextInt();
                input.nextLine();
                success = (answer == number);
                if (number > answer) {
                    System.out.println("The random number is bigger than the input number");
                } else if (number < answer) {
                    System.out.println("The random number is smaller than the input number");
                } else {
                    System.out.println("Correct!");
                }
            } while (!success);
            System.out.print("Do you want to repeat the game (Y/N)");
            menu = input.next().charAt(0);
            input.nextLine();
        } while (menu == 'Y' || menu == 'y');
        input.close();
    }
}



