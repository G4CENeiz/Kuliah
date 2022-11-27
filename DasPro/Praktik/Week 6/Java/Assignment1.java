import java.util.Scanner;

public class Assignment1 {
    public static void main(String[] args) {
        int side1, side2, side3;
        Scanner input = new Scanner(System.in);
        System.out.print("Enter the first side: ");
        side1 = input.nextInt();
        System.out.print("Enter the second side: ");
        side2 = input.nextInt();
        System.out.print("Enter the third side: ");
        side3 = input.nextInt();
        input.close();

        if (side1 == side2 && side1 == side3) {
            System.out.println("It is an equilateral triangle");
        } else if (side1 == side2 || side1 == side3 || side2 == side3) {
            System.out.println("It is an isosceles triangle");
        } else {
            System.out.println("It is an arbitary triangle");
        }
    }    
}
