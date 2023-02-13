import java.util.Scanner;

public class Assignment2 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int number, sum, i, j;
        float avg;
        System.out.print("Enter a number range: ");
        number = input.nextInt();
        input.close();
        i = 0; 
        j = 0;
        while (i < number){
            if (i % 2 == 0) {
                i++;
                j++;
            } else {
                i++;
            }
        }
        System.out.printf("The number of even numbers from 1 to %d is %d\n", number, j);
        sum = 0;
        for (i=1, j=0; i <= number; i++) {
            if (i % 2 != 0) {
                continue;
            } else {
                j++;
                sum += i;
                System.out.printf("Even number %d is %d\n", j, i);
            }
        }
        avg = sum / j;
        System.out.printf("The sum of the even numbers from 1 to %d is %d\n", number, sum);
        System.out.printf("The average of the even numbers from 1 to %d is %.2f\n", number, avg);
    }
}
