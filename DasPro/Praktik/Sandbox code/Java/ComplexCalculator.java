import java.util.Scanner;

public class ComplexCalculator {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        double result;
        String printResult  = "", finalPrintResult = "";
        final String plus     = "+";
        final String minus    = "-";
        final String mult     = "*";
        final String div      = "/";
        final String mod      = "%";

        int limitLoop = input.nextInt();

        for (int i = 0; i < limitLoop; i++) {

            String operator = input.next();
            double num1 = input.nextDouble();
            double num2 = input.nextDouble();

            switch (operator.toLowerCase()) {
                case ("tambah"):
                    result =  num1 + num2;
                    //System.out.printf("%.0f %s %.0f = %.2f\n", num1, plus, num2, result);
                    printResult = String.format("%.0f %s %.0f = %.2f\n", num1, plus, num2, result);
                    break;
                case ("kurang"):
                    result =  num1 - num2;
                    //System.out.printf("%.0f %s %.0f = %.2f\n", num1, minus, num2, result);
                    printResult = String.format("%.0f %s %.0f = %.2f\n", num1, minus, num2, result);
                    break;
                case ("kali"):
                    result =  num1 * num2;
                    //System.out.printf("%.0f %s %.0f = %.2f\n", num1, mult, num2, result);
                    printResult = String.format("%.0f %s %.0f = %.2f\n", num1, mult, num2, result);
                    break;
                case ("bagi"):
                    result =  num1 / num2;
                    //System.out.println(num1 + " " + div + " " + num2 + " = " + result);
                    //printResult = String.format("%.0f", num1) + " " + div + " " + String.format("%.0f", num2) + " = " + result + "\n";
                    printResult = String.format("%.0f %s %.0f = %.2f\n", num1, div, num2, result);
                    break;
                case ("mod"):
                    result =  num1 % num2;
                    //System.out.printf("%.0f %s %.0f = %.2f\n", num1, mod, num2, result);
                    printResult = String.format("%.0f %s %.0f = %.2f\n", num1, mod, num2, result);
                    break;  
                default:
                    System.out.println("Error the inputed operator doesn't exist");               
            }
            finalPrintResult = finalPrintResult + printResult;
        }
        finalPrintResult = "\n" + finalPrintResult;
        System.out.print(finalPrintResult);
        input.close();
    }  
}