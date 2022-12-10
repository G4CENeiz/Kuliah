import java.util.Scanner;

public class test {
    static Scanner input = new Scanner(System.in);
    public static void main(String[] args) {
        
    }
    static void mortgageApplicationDetail(int debt, int tenor, int downPaymentPercentage, int downPayment, int creditFacilities, int buildingArea, double interest, double installment) {
        String prompt = "Mortgage Application";
        String[] varPrint = {
            String.format("House price: %d", debt),
            String.format("Down payment %d%s: %d", downPaymentPercentage, "%", debt),
            String.format("Debt principal: %d", (debt - downPayment)),
            String.format("Tenor: %d", tenor),
            String.format("Build area: %d", buildingArea),
            String.format("Interest: %.2f%s", interest, "%"),
            String.format("installment: %,.2f", installment),
            String.format("Minimum income: %,.2f", (installment * 2))
        };

        int heading;
        String barTop = "", side = "||", barBot = "";
        if (prompt.length() % 2 == 0) {
            heading = 64;
        } else {
            heading = 65;
        }
        for (int i = 0; i < heading; i++) {
            barTop += "=";
        }
        barBot += side;
        for (int i = 0; i < heading - (2 * side.length()); i++) {
            barBot += "=";
        }
        barBot += side;
        System.out.println(barTop);
        System.out.printf("%s%" + ((heading - (2 * side.length()) - prompt.length()) / 2) + "s%s%" + ((heading - (2 * side.length()) - prompt.length()) / 2)
                + "s%s\n", side, " ", prompt, " ", side);
        System.out.println(barBot);

        for (int i = 0; i < varPrint.length; i++) {
            System.out.println();
            System.out.printf("%s%" + ((heading - (2 * side.length()) - varPrint[i].length()) / 2) + "s%s%" + ((heading - (2 * side.length()) - varPrint[i].length()) / 2) + "s%s", side, " ", varPrint[i], " ", side);
        }
    }

    static void mortgageLoanApplication() {
        int buildingArea;
        int creditFacilities;
        int downPayment;
        int downPaymentPercentage = 10;
        int tenor;
        int debt;
        double installment;
        double interest = 7.25;
        printHeading("MORTGAGE LOAN");
        System.out.println("""
                Purpose of Credit
                1. Buying a house
                2. Renovating""");
        String s = menuInput();
        if (s.equals("1")) {
            System.out.println("""
                    Collateral Type
                    1. House
                    2. Apartment
                    3. Shop""");
            String collateralType = menuInput();
            if (collateralType.equals("1") || collateralType.equals("2")) {
                System.out.print("Building Area (m2): ");
                buildingArea = input.nextInt();
                if (buildingArea > 70)
                    downPaymentPercentage += 5;
            }
        } else if (s.equals("2")) {
            downPaymentPercentage += 20;
        }
        System.out.println("How many Credit Facilities do you have");
        boolean i = true;
        do {
            System.out.print("Credit Facility: ");
            creditFacilities = input.nextInt();
            if (creditFacilities < 1) {
                System.out.println("Please enter a positive value!");
            } else {
                i = false;
            }
        } while (i);
        if (creditFacilities > 2)
            downPaymentPercentage += 10;
        System.out.print("House price: ");
        debt = input.nextInt();
        System.out.printf("Minimum down payment amount: %,d\n", (debt / 100) * downPaymentPercentage);
        i = true;
        do {
            System.out.print("Down payment: ");
            downPayment = input.nextInt();
            if (downPayment < (debt / 100) * downPaymentPercentage) {
                System.out.println("Please enter a value bigger than the minimum!");
            } else {
                i = false;
            }
        } while (i);
        System.out.println("Maximum 20 years tenor");
        i = true;
        do {
            System.out.print("Tenor: ");
            tenor = input.nextInt();
            if (tenor < 1 || tenor > 20) {
                System.out.println("Please enter a value between 1 to 20");
            } else {
                i = false;
            }
        } while (i);
        double debtInterest = (debt - downPayment) * ((interest / 100) / 12);
        double interestPowerBase = (1 + ((interest / 100) / 12));
        int tenorMonth = tenor * 12;
        double inverseReturnOfPoweredInterest = 1 - (1 / powerDouble(interestPowerBase, tenorMonth));

        installment = debtInterest / inverseReturnOfPoweredInterest;
        System.out.printf("%14s IDR %,d\n", "Installment", (long) installment);
        System.out.printf("%14s IDR %,d\n", "Debt principal", (debt - downPayment));
        System.out.printf("%14s IDR %,d\n", "Minimum Income", (long) installment * 2);
    }

    static String menuInput() {
        System.out.print("menu: ");
        return input.next();
    }

    static void printHeading(String prompt) {
        int heading;
        String bar = "", side = "||";
        if (prompt.length() % 2 == 0) {
            heading = 64;
        } else {
            heading = 65;
        }
        for (int i = 0; i < heading; i++) {
            bar += "=";
        }
        System.out.println(bar);
        System.out.printf("%s%" + ((heading - 4 - prompt.length()) / 2) + "s%s%" + ((heading - 4 - prompt.length()) / 2)
                + "s%s\n", side, " ", prompt, " ", side);
        System.out.println(bar);
    }

    static double powerDouble(double base, int exponent) {
        if (exponent == 0) {
            return 1;
        } else {
            return base * powerDouble(base, exponent - 1);
        }
    }

}
