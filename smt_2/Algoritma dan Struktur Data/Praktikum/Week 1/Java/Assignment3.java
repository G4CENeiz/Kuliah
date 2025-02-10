import java.util.Scanner;

public class Assignment3 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Input of n: ");
        int limit = input.nextInt();
        int currentNumber = 2;
        input.close();
        
        System.out.print("output: ");
        for (int i = 0; i < limit; i++) {
            if (currentNumber % 4 != 0) System.out.printf("%d, ", currentNumber); 
            else --i; 
            currentNumber += 2;
        }
    }
}