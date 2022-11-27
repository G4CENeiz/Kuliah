import java.util.Scanner;

public class Assignment1 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int[] a = new int[5];

        for (int i = 0; i < a.length; i++) {
            System.out.printf("Enter a value of element %d in array a: ", i + 1);
            a[i] = input.nextInt();
        }

        for (int i = a.length - 1; i >= 0; i--) {
            System.out.printf("Element %d: %d\n", (a.length - i), a[i]);
        }
        input.close();
    }
}
