import java.util.Scanner;

public class SelectionAssignment {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int number1, number2;
        System.out.print("Input the first number\t: ");
        number1 = input.nextInt();
        System.out.print("Input the second number\t: ");
        number2 = input.nextInt();
        if (number1 > number2) {
            System.out.println(number1);
        } else if (number1 < number2){
            System.out.println(number2);
        } else {
            System.out.println("both number are equal");
        }
        input.close();
    }
}

