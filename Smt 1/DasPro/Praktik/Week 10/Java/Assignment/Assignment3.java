import java.util.Scanner;

public class Assignment3 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter the number of array elements: ");
        int element = input.nextInt();

        int[] array = new int[element];

        for (int i = 0; i < array.length; i++) {
            System.out.printf("Enter the value of element %d: ", (i + 1));
            array[i] = input.nextInt();
        }

        for (int i = 0;i < array.length;i++) {
            if (array[i] % 2 == 0) {
                System.out.printf("Even number: %d\n", array[i]);
            }
        }

        for (int i = 0;i < array.length;i++) {
            if (array[i] % 2 != 0) {
                System.out.printf("Odd number: %d\n", array[i]);
            }
        }

        input.close();
    }
}
