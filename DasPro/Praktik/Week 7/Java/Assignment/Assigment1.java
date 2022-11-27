import java.util.Scanner;

public class Assigment1 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int i, number;
        System.out.print("Enter a number: ");
        number = input.nextInt();
        input.close();
        for (i=1;i<=number;i++) {
            if (i % 5 != 0) {
                System.out.println(i);
            }
        }
    }
}
