import java.util.Scanner;

public class AssignmentFlowchart {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int age;
        System.out.print("Enter your age: ");
        age = input.nextInt();
        if (age >= 17) {
            System.out.println("Allowed to drive");
        } else {
            System.out.println("Not allowed to drive");
        }
        input.close();
    }
}

