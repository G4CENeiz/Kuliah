import java.util.Scanner;

public class Assignment2 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int [] array;
        array = new int[5];

        for (int i = array.length; i > 0; i--) {
            System.out.print("Enter a number: ");
            array[i - 1] = input.nextInt();
        }
        input.close();
        for (int i = 0; i < array.length; i++) {
            System.out.printf("Array of elements %d is valued %d\n", i, array[i]);
        }
    }    
}
