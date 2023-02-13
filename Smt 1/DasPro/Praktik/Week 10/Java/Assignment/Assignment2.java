import java.util.Scanner;

public class Assignment2 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int large = 0;

        System.out.print("Enter the number of array elements: ");
        int element = input.nextInt();

        int[] array = new int[element];

        for (int i = 0; i < array.length; i++) {
            System.out.printf("Enter the value of element %d: ", (i + 1));
            array[i] = input.nextInt();
        }
        
        for (int i = 0; i < array.length; i++) {
            if (array[i] > large) {
                large = array[i];
            } else {
                continue;
            }
        }
        System.out.printf("The largest number is %d\n", large);
        input.close();
    }
}
