//package com.baihaqi.bankingcreditcli;

import java.util.Scanner;

/**
 *
 * @author G4CE-PC
 *         Muhammad Baihaqi Aulia Asy'ari
 *         2241720145 - TI 1I - 19
 */
public class test {
    final static Scanner input = new Scanner(System.in);
    static String[][] credential = new String[1][2];
    static String username;
    static double[][] creditMortgage = new double[1][4];
    static String[] creditMortgageDetail = new String[1];

    public static void main(String[] args) {
        credential[0][0] = "admin";
        credential[0][1] = "admin";
        loginMenu();
    }

    // region login
    static String usernameCheck() {
        while (true) {
            write("Username: ");
            String userInput = input.next();
            for (String[] strings : credential) {
                if (strings[0] == null)
                    continue;
                if (strings[0].equals(userInput))
                    return userInput;
                if (userInput.equalsIgnoreCase("register"))
                    return userInput;
            }
            printPromptSplit(
                    "The username you've entered doesn't exist in our system please re-enter your username correctly");
        }
    }

    static boolean passwordCheck() {
        int limit = 0;
        while (limit < 3) {
            write("Password: ");
            String userInput = input.next();
            for (String[] strings : credential) {
                if (strings[0].equals(username)) {
                    if (strings[1].equals(userInput)) {
                        return true;
                    }
                }
            }
            if (limit < 1)
                writeln("Wrong password");
            if (limit == 1)
                writeln("""
                        Wrong password, Last attempt
                        if you fail again, you would need to re-enter your username""");
            limit++;
        }
        return false;
    }

    static boolean attemptLogin() {
        username = usernameCheck();
        if (!username.equalsIgnoreCase("register")) {
            boolean password = passwordCheck();
            if (password) {
                mainMenu();
            } else {
                if (attemptLogin()) {
                    registerMenu();
                }
            }
            return false;
        }
        return true;
    }

    // endregion
    // region print
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
        int gap = ((heading - (side.length() * 2) - prompt.length()) / 2);
        writeln(bar);
        write(String.format("%s%" + gap + "s%s%" + gap + "s%s\n", side, " ", prompt, " ", side));
        writeln(bar);
    }

    static void printPromptSplit(String prompt) {
        String[] promptSplit = prompt.split("\\s");
        int i = 0;
        while (i < promptSplit.length) {
            int limit = 0;
            while (limit < 65 && i < promptSplit.length && (limit + promptSplit[i].length()) < 65) {
                write(String.format("%s ", promptSplit[i]));
                limit = limit + (promptSplit[i].length() + 1);
                i++;
            }
            writeln("");
        }
    }

    static void mortgageApplicationDetail(double... detail) {
        int id = getUserID();
        String prompt = "Mortgage Application";
        String ordinal;
        switch (String.valueOf(detail[3]).charAt(String.valueOf(detail[3]).length()-1)) {
            case '1' -> ordinal = "st";
            case '2' -> ordinal = "nd";
            case '3' -> ordinal = "rd";
            default -> ordinal = "th";
        }
        
        String[] varValue = {
            String.format(": %d%s", detail[3], ordinal),
            String.format(": IDR %,d", detail[0]),
            String.format(": IDR %,d", detail[2]),
            String.format(": IDR %,d", (detail[0] - detail[2])),
            String.format(": %d", detail[1]),
            String.format(": %.2f%s", detail[4], "%"),
            String.format(": IDR %,.2f", detail[5]),
            String.format(": IDR %,.2f", (detail[5] * 2))
        };
        
        double downPaymentPercentageByDebt = (detail[2] / detail[0]) * 100;

        String[] varName = {
                "Credit facility ",
                "House price ",
                String.format("Down payment %.2f%s ", downPaymentPercentageByDebt, "%"),
                "Debt principal ",
                "Tenor ",
                "Interest ",
                "installment ",
                "Minimum income "
        };
        int heading;
        String barTop = "", side = "||", barBot = "";
        heading = 64;
        for (int i = 0; i < heading; i++) {
            barTop += "=";
        }
        barBot += side;
        for (int i = 0; i < heading - (2 * side.length()); i++) {
            barBot += "=";
        }
        barBot += side;
        insertMortgageDetail(barTop);
        int headingSpacing = (heading - (2 * side.length()) - prompt.length()) / 2;
        insertMortgageDetail(String.format("%s%" + headingSpacing + "s%s%" + headingSpacing + "s%s", side, " ", prompt, " ", side));
        insertMortgageDetail(barBot);

        String contentSpacing = String.format("%s%"+ (heading - (2 * side.length())) +"s%s", side, " ", side);
        insertMortgageDetail(contentSpacing);

        int fit = 0;
        for (String s : varName) {
            if (fit < s.length()) {
                fit = s.length();
            }
        }

        for (int i = 0; i < varName.length; i++) {
            int paddingLeft = ((heading / 2) - side.length() - fit);
            int paddingRight = ((heading / 2) - side.length() - varValue[i].length());
            insertMortgageDetail(String.format("%s%" + paddingLeft + "s%-"+ fit +"s%s%" + paddingRight + "s%s", side, " ", varName[i], varValue[i], " ", side));
            insertMortgageDetail(contentSpacing);
        }
        insertMortgageDetail(barBot);

        if (confirm()) {
            creditMortgage[id][0] = detail[0];
            creditMortgage[id][1] = detail[1];
            creditMortgage[id][2] = detail[2];
            creditMortgage[id][3] = detail[5];
        }
        newLoanMenu();
    }

    static void write(String x) {System.out.print(x);}

    static void writeln(String x) {System.out.println(x);}
    // endregion
    // region etc
    static void newStringArray(String[][] data) {
        String[][] old = data;
        data = new String[old.length + 1][old[0].length];
        for (int row = 0; row < old.length; row++) {
            for (int col = 0; col < old[row].length; col++) {
                data[row][col] = old[row][col];
            }
        }
    }

    static void newString(String[] data) {
        String[] old = data;
        data = new String[data.length + 1];
        for (int i = 0; i < old.length; i++) {
            data[i] = old[i];
        }
    }

    static void newDoubleArray(double[][] data) {
        double[][] old = data;
        data = new double[data.length+1][data[0].length];
        for (int row = 0; row < data.length; row++) {
            for (int col = 0; col < data[row].length; col++) {
                data[row][col] = old[row][col];
            }
        }
    }

    static String promptedTextInput(String prompt) {
        write(prompt);
        return input.next();
    }

    static double powerDouble(double base, int exponent) {
        if (exponent == 0) {
            return 1;
        } else {
            return base * powerDouble(base, exponent - 1);
        }
    }

    static void notFound() {
        writeln("""
                 _  _    ___  _  _  \s
                | || |  / _ \\| || | \s
                | || |_| | | | || |_\s
                |__   _| | | |__   _|
                   | | | |_| |  | | \s
                   |_|  \\___/   |_| \s
                                    \s
                                    \s
                  _  _       _      __                      _\s
                 | \\| | ___ | |_   / _| ___  _  _  _ _   __| |
                 | .` |/ _ \\|  _| |  _|/ _ \\| || || ' \\ / _` |
                 |_|\\_|\\___/ \\__| |_|  \\___/ \\_,_||_||_|\\__,_|
                                                             \s""");
    }

    static boolean confirm() {
        while (true){
            write("Are you sure (y/n): ");
            String userInput = input.next();
            if (userInput.equalsIgnoreCase("y")) {
                return true;
            } else if (userInput.equalsIgnoreCase("n")) {
                return false;
            }
            writeln("Please enter a valid input!");
        }
    }

    static int getUserID() {
        int i = 0;
        if (!credential[i][0].equals(username)) {
            do {
                i++;
            } while (!credential[i][0].equals(username));
        }
        return i;
    }

    static void insertMortgageDetail(String s) {
        write(s + "\n");
        creditMortgageDetail[getUserID()] += s + "\n";
    }
    // endregion
    // region menu
    static void loginMenu() {
        printHeading("LOGIN");
        printPromptSplit("If you don't already have an account please type \"register\" in the username input");
        if (attemptLogin()) {
            registerMenu();
        }
    }

    static void registerMenu() {
        printHeading("REGISTER");
        newStringArray(credential);
        newDoubleArray(creditMortgage);
        newString(creditMortgageDetail);
        creditMortgageDetail[creditMortgageDetail.length - 1] = "";
        credential[credential.length - 1][0] = promptedTextInput("Enter your username: ");
        credential[credential.length - 1][1] = promptedTextInput("Enter your password: ");
        loginMenu();
    }

    static void mainMenu() {
        printHeading("MENU");
        writeln("""
                1. Credit card menu
                2. Loan menu
                3. Account information
                4. Log out
                5. Quit the program""");
        switch (promptedTextInput("menu: ")) {
            case "1" -> creditCardMenu();
            case "2" -> loanMenu();
            case "3" -> accountInfoMenu();
            case "4" -> loginMenu();
            case "5" -> quitMenu();
        }
    }

    // region mainMenu
    static void creditCardMenu() {
        printHeading("CREDIT CARD");
        writeln("""
                1. Apply for a credit card
                2. Owned Credit card
                3. Back to main menu""");
        switch (promptedTextInput("menu: ")) {
            case "1" -> newCreditCard();
            case "2" -> ownedCreditCard();
            case "3" -> mainMenu();
        }
    }

    // region creditCardMenu
    static void newCreditCard() {
        printHeading("APPLY FOR A CREDIT CARD");
        writeln("""
                1. General purpose
                2. Travel
                3. Lifestyle
                4. Priority
                5. Back to credit card menu""");
        switch (promptedTextInput("menu: ")) {
            case "1" -> generalPurposeCreditCardApplication();
            case "2" -> travelCreditCardApplication();
            case "3" -> lifestyleCreditCardApplication();
            case "4" -> priorityCreditCardApplication();
            case "5" -> creditCardMenu();
        }
    }

    // region newCreditCard
    static void generalPurposeCreditCardApplication() {
        printHeading("GENERAL PURPOSE CREDIT CARD APPLICATION");
        notFound();
        newCreditCard();
    }

    static void travelCreditCardApplication() {
        printHeading("TRAVEL CREDIT CARD APPLICATION");
        notFound();
        newCreditCard();
    }

    static void lifestyleCreditCardApplication() {
        printHeading("LIFESTYLE CREDIT CARD APPLICATION");
        notFound();
        newCreditCard();
    }

    static void priorityCreditCardApplication() {
        printHeading("PRIORITY CREDIT CARD APPLICATION");
        notFound();
        newCreditCard();
    }

    // endregion
    static void ownedCreditCard() {
        printHeading("OWNED CREDIT CARD");
        notFound();
        creditCardMenu();
    }

    // endregion
    static void loanMenu() {
        printHeading("LOAN");
        writeln("""
                1. Apply for a loan
                2. Current loan status
                3. Back to main menu""");
        switch (promptedTextInput("menu: ")) {
            case "1" -> newLoanMenu();
            case "2" -> accountLoanInfo();
            case "3" -> mainMenu();
        }
    }

    // region loanMenu
    static void newLoanMenu() {
        printHeading("APPLY FOR A LOAN");
        writeln("""
                1. Personal
                2. Auto
                3. Mortgage
                4. Refinancing
                5. Back to loan menu""");
        switch (promptedTextInput("menu: ")) {
            case "1" -> personalLoanApplication();
            case "2" -> autoLoanApplication();
            case "3" -> mortgageLoanApplication();
            case "4" -> refinancingLoanApplication();
            case "5" -> loanMenu();
        }
    }

    // region newLoanMenu
    static void personalLoanApplication() {
        printHeading("PERSONAL LOAN");
        notFound();
        newLoanMenu();
    }

    static void autoLoanApplication() {
        printHeading("AUTO LOAN");
        notFound();
        newLoanMenu();
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
        writeln("""
                Purpose of Credit
                1. Buying a house
                2. Renovating""");
        String s = promptedTextInput("menu: ");
        if (s.equals("1")) {
            writeln("""
                    Collateral Type
                    1. House
                    2. Apartment
                    3. Shop""");
            String collateralType = promptedTextInput("menu: ");
            if (collateralType.equals("1") || collateralType.equals("2")) {
                write("Building Area (m2): ");
                buildingArea = input.nextInt();
                if (buildingArea > 70)
                    downPaymentPercentage += 5;
            }
        } else if (s.equals("2")) {
            downPaymentPercentage += 20;
        }
        writeln("How many Credit Facilities do you have");
        boolean i = true;
        do {
            write("Credit Facility: ");
            creditFacilities = input.nextInt();
            if (creditFacilities < 1) {
                writeln("Please enter a positive value!");
            } else {
                i = false;
            }
        } while (i);
        if (creditFacilities > 2)
            downPaymentPercentage += 10;
        write("House price: ");
        debt = input.nextInt();
        write(String.format("Minimum down payment amount: %,d\n", (debt / 100) * downPaymentPercentage));
        i = true;
        do {
            write("Down payment: ");
            downPayment = input.nextInt();
            if (downPayment < (debt / 100) * downPaymentPercentage) {
                writeln("Please enter a value bigger than the minimum!");
            } else {
                i = false;
            }
        } while (i);
        writeln("Maximum 20 years tenor");
        i = true;
        do {
            write("Tenor: ");
            tenor = input.nextInt();
            if (tenor < 1 || tenor > 20) {
                writeln("Please enter a value between 1 to 20");
            } else {
                i = false;
            }
        } while (i);
        double debtInterest = (debt - downPayment) * ((interest / 100) / 12);
        double interestPowerBase = (1 + ((interest / 100) / 12));
        int tenorMonth = tenor * 12;
        double inverseReturnOfPoweredInterest = 1 - (1 / powerDouble(interestPowerBase, tenorMonth));

        installment = debtInterest / inverseReturnOfPoweredInterest;
        write(String.format("%14s IDR %,d\n", "Installment", (long) installment));
        write(String.format("%14s IDR %,d\n", "Debt principal", (debt - downPayment)));
        write(String.format("%14s IDR %,d\n", "Minimum Income", (long) installment * 2));

        mortgageApplicationDetail(debt, tenor, downPayment, creditFacilities, interest, installment);
    }

    static void refinancingLoanApplication() {
        printHeading("REFINANCING LOAN");
        notFound();
        newLoanMenu();
    }

    // endregion
    static void accountLoanInfo() {
        printHeading("LOAN STATUS");
        if (creditMortgage[getUserID()][0] == 0) {
            notFound();
        } else {
            write(creditMortgageDetail[getUserID()]);
        }
        write("Exit?");
        if (confirm()){
            loanMenu();
        }
        accountLoanInfo();
    }

    // endregion
    static void accountInfoMenu() {
        printHeading("ACCOUNT INFO");
        notFound();
        mainMenu();
    }

    static void quitMenu() {
        //lol its just a blank
    }
    // endregion
    // endregion
}
