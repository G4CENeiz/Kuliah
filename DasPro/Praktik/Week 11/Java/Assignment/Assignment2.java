import java.util.Scanner;

public class Assignment2 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter row size of the array: ");
        int rowSize     = input.nextInt();
        System.out.print("Enter column size of the array: ");
        int columnSize  = input.nextInt();
        int[][] custom  = new int[rowSize][columnSize];

        for (int rowSelector = 0; rowSelector < custom.length; rowSelector++) {
            for (int columnSelector = 0; columnSelector < custom[rowSelector].length; columnSelector++) {
                System.out.printf("Enter element [%d] [%d]: ", rowSelector, columnSelector);
                custom[rowSelector][columnSelector] = input.nextInt();
            }
        }

        System.out.print("""
            ----------------------MENU----------------------
            Enter 1 to Display min value from the array
            
            Enter 2 to display the min value from the array
            the amount of the min value and location of the
            min value in the array
            
            Enter 3 to display if there is a value of 50
            between the array elements

            Enter a menu:\t""");
        
        String menu = input.next();

        int minValue = custom[0][0], 
            minAmount = 0, 
            found = 0;

        String minLocation = String.format("min location: %n");

        switch (menu) {
            case ("1"):
                for (int rowSelector = 0; rowSelector < custom.length; rowSelector++) {
                    for (int columnSelector = 0; columnSelector < custom[rowSelector].length; columnSelector++) {
                        if (custom[rowSelector][columnSelector] < minValue) {
                            minValue = custom[rowSelector][columnSelector];
                        }
                    }
                }
                System.out.printf(
                    "min value : %d", 
                    minValue
                );
                break;
            case ("2"):
                for (int rowSelector = 0; rowSelector < custom.length; rowSelector++) {
                    for (int columnSelector = 0; columnSelector < custom[rowSelector].length; columnSelector++) {
                        if (custom[rowSelector][columnSelector] < minValue) {
                            minValue    = custom[rowSelector][columnSelector];
                            minAmount   = 1;
                            minLocation = String.format(
                                "min location: %n[%d] [%d]%n", 
                                rowSelector, columnSelector
                            );
                        } else if (custom[rowSelector][columnSelector] == minValue) {
                            minAmount   += 1;
                            minLocation += String.format(
                                "[%d] [%d]%n", 
                                rowSelector, columnSelector
                            );
                        }
                    }
                }
                System.out.printf(
                    "min value : %d%n", 
                    minValue
                );
                System.out.printf(
                    "min amount: %d%n",
                    minAmount
                );
                System.out.print(minLocation);
                break;
            case ("3"):
                for (int rowSelector = 0; rowSelector < custom.length; rowSelector++) {
                    for (int columnSelector = 0; columnSelector < custom[rowSelector].length; columnSelector++) {
                        if (custom[rowSelector][columnSelector] == 50) {
                            found += 1;
                        }
                    }
                }
                if (found > 0) {
                    System.out.println("FOUND");
                } else {
                    System.out.println("NOT FOUND");
                }
                break;
        }
        input.close();
    }
}
