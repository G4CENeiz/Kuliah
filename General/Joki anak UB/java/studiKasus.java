import java.util.Scanner;

public class studiKasus {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String[] destinationCity = {"Surabaya", "Bandung", "DKI Jakarta"};
        String[] tariffType = {
            "<150", 
            "150 <= x <= 250", 
            ">250"
        };
        int[][] sendingTariff = {
            {350_000, 450_000, 500_000}, 
            {425_000, 520_000, 570_000}, 
            {550_000, 610_000, 650_000}
        };
        String[] estimatedTimeArrived = {"2 Hari", "4 Hari", "5 Hari"};
        int[] ETA = {2, 4, 5};
        String[][] credential = {{"admin"}, {"adminpass"}};
        String[] monthName = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};
        int[] dateInMonth = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
        String[] daysInWeek = {"Saturday", "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"};

        // region attempt login
        boolean loginPass = true;
        while (loginPass) {
            boolean not_correct = true;
            while(not_correct) {
                System.out.print("Enter username: ");
                String inputUsername = input.next();
                input.nextLine();
                for (int i = 0; i < credential[0].length; i++) {
                    if (credential[0][i].equals(inputUsername)) {
                        not_correct = false;
                    }
                }
                if (not_correct == true) System.out.println("User does not exist");
            }
            int attempt = 0;
            int attemptMax = 3;
            while(attempt < attemptMax) {
                 System.out.print("Enter Password: ");
                 String inputPassword = input.next();
                 input.nextLine();
                 for (String credPass : credential[1]) {
                    if(credPass.equals(inputPassword)) {
                        loginPass = false;
                        attempt = 3;
                    }
                 }
                 if(attempt < 3) System.out.println("Wrong Password"); 
                 attempt++;
            }
            if (loginPass == true) System.out.println("Terminated");
        }
        System.out.println("Login Success");
        // endregion

        // region Tabel Tarif
        int maxChar = 20;
        System.out.printf("|%-"+maxChar+"s|","");
        for (int i = 0; i < destinationCity.length; i++) {
            int padding = (maxChar - (destinationCity[i].length() %- 2 == 0 ? destinationCity[i].length() : destinationCity[i].length() + 1))/2;
            int paddingContent = destinationCity[i].length() %- 2 == 0 ? destinationCity[i].length() : destinationCity[i].length() + 1;
            System.err.printf("|%-"+padding+"s%-"+paddingContent+"s%-"+padding+"s|", "", destinationCity[i], "");
        }
        System.out.println();
        for (int i = 0; i < sendingTariff.length; i++) {
            int paddingTariffType = (maxChar - (tariffType[i].length() %- 2 == 0 ? tariffType[i].length() : tariffType[i].length() + 1))/2;
            int paddingTariffTypeContent = tariffType[i].length() %- 2 == 0 ? tariffType[i].length() : tariffType[i].length() + 1;
            System.out.printf("|%-"+paddingTariffType+"s%-"+paddingTariffTypeContent+"s%-"+paddingTariffType+"s|","", tariffType[i], "");
            for (int j = 0; j < sendingTariff[i].length; j++) {
                int paddingSendingTariff = (maxChar - (String.format("Rp %,d", sendingTariff[i][j]).length() %- 2 == 0 ? String.format("Rp %,d", sendingTariff[i][j]).length()  : String.format("Rp %,d", sendingTariff[i][j]).length() + 1))/2;
                int paddingSendingTariffContent = String.format("Rp %,d", sendingTariff[i][j]).length() %- 2 == 0 ? String.format("Rp %,d", sendingTariff[i][j]).length()  : String.format("Rp %,d", sendingTariff[i][j]).length() + 1;
                System.out.printf("|%-"+paddingSendingTariff+"s%-"+paddingSendingTariffContent+"s%-"+paddingSendingTariff+"s|", "", String.format("Rp %,d", sendingTariff[i][j]), "");
            }
            System.out.println();
        }
        System.out.printf("|%-8s%-4s%-8s|", "", "ETA", "");
        for (int i = 0; i < estimatedTimeArrived.length; i++) {
            int padding = (maxChar - (estimatedTimeArrived[i].length() %- 2 == 0 ? estimatedTimeArrived[i].length() : estimatedTimeArrived[i].length() + 1))/2;
            int paddingContent = estimatedTimeArrived[i].length() %- 2 == 0 ? estimatedTimeArrived[i].length() : estimatedTimeArrived[i].length() + 1;
            System.err.printf("|%-"+padding+"s%-"+paddingContent+"s%-"+padding+"s|", "", estimatedTimeArrived[i], "");
        }
        // endregion

        // region customer data
        System.out.println();
        System.out.print("Enter sender name: ");
        String senderName = input.next();
        input.nextLine();

        System.out.print("Enter sender NIK: ");
        String senderNIK = input.next();
        input.nextLine();

        System.out.print("Enter cargo load: ");
        int cargoLoad = input.nextInt();

        String[] vehicleIdentity = new String[cargoLoad];
        int[] engineCapacity = new int[cargoLoad];
        String[] destiantion = new String[cargoLoad];
        int[][] cargoSentDate = new int[cargoLoad][3];
        String[] addons = new String[cargoLoad];
        int[] tariff = new int[cargoLoad];
        int[] addonsCost = new int[cargoLoad];
        String[] sentDayComplete = new String[cargoLoad];
        String[] ETADayComplete = new String[cargoLoad];

        for (int i = 0; i < cargoLoad; i++) {
            System.out.println();
            System.out.printf("Enter load #%d data\n", i+1);

            System.out.print("Enter vehicle identity: ");
            vehicleIdentity[i] = input.next();
            input.nextLine();

            System.out.print("Enter engine capacity: ");
            engineCapacity[i] = input.nextInt();

            Boolean not_choosen = true;
            while (not_choosen) {
                System.out.println("Choose a destination");
                System.out.println("1. Surabaya");
                System.out.println("2. Bandung");
                System.out.println("3. DKI Jakarta");
                System.out.print("Choose: ");
                String menu = input.next();
                input.nextLine();
                switch (menu) {
                    case "1" :
                        destiantion[i] = destinationCity[Integer.parseInt(menu)-1];
                        not_choosen = false;
                        break;
                    case "2" :
                        destiantion[i] = destinationCity[Integer.parseInt(menu)-1];
                        not_choosen = false;
                        break;
                    case "3" :
                        destiantion[i] = destinationCity[Integer.parseInt(menu)-1];
                        not_choosen = false;
                        break;
                }
            }
            
            if (engineCapacity[i] < 150) {
                if (destiantion[i].equals(destinationCity[0])) {
                    tariff[i] = sendingTariff[0][0];
                } else if (destiantion[i].equals(destinationCity[1])) {
                    tariff[i] = sendingTariff[0][1];
                } else if (destiantion[i].equals(destinationCity[2])) {
                    tariff[i] = sendingTariff[0][2];
                }
            } else if (engineCapacity[i] < 250) {
                if (destiantion[i].equals(destinationCity[0])) {
                    tariff[i] = sendingTariff[1][0];
                } else if (destiantion[i].equals(destinationCity[1])) {
                    tariff[i] = sendingTariff[1][1];
                } else if (destiantion[i].equals(destinationCity[2])) {
                    tariff[i] = sendingTariff[1][2];
                }
            } else if (engineCapacity[i] >= 250) {
                if (destiantion[i].equals(destinationCity[0])) {
                    tariff[i] = sendingTariff[2][0];
                } else if (destiantion[i].equals(destinationCity[1])) {
                    tariff[i] = sendingTariff[2][1];
                } else if (destiantion[i].equals(destinationCity[2])) {
                    tariff[i] = sendingTariff[2][2];
                }
            }
                
            System.out.print("Enter sending date: ");
            cargoSentDate[i][0] = input.nextInt();
            System.out.print("Enter sending month: ");
            cargoSentDate[i][1] = input.nextInt();
            System.out.print("Enter sending year: ");
            cargoSentDate[i][2] = input.nextInt();

            boolean leapYear = false;
            int sentYear = cargoSentDate[i][2];
            if (sentYear % 4 == 0) {
                if (sentYear % 100 == 0) {
                    if (sentYear % 400 == 0) {
                        leapYear = true;
                    }
                    leapYear = false;
                }
                leapYear = true;
            }

            int sentYearComp = Integer.parseInt(String.format("%c%c", String.format("%d", sentYear).charAt(String.format("%d", sentYear).length()-2), String.format("%d", sentYear).charAt(String.format("%d", sentYear).length()-1)));
            int sentQuarterComp = (int) sentYearComp/4;
            int sentDateComp = cargoSentDate[i][0];
            int sentMonthComp =  cargoSentDate[i][1];
            int keyMonthComp = 0;
            switch (sentMonthComp) {
                case 1 -> keyMonthComp = leapYear ? 0 : 1;
                case 2 -> keyMonthComp = leapYear ? 3 : 4;
                case 3 -> keyMonthComp = 4;
                case 4 -> keyMonthComp = 0;
                case 5 -> keyMonthComp = 2;
                case 6 -> keyMonthComp = 5;
                case 7 -> keyMonthComp = 0;
                case 8 -> keyMonthComp = 3;
                case 9 -> keyMonthComp = 6;
                case 10 -> keyMonthComp = 1;
                case 11 -> keyMonthComp = 4;
                case 12 -> keyMonthComp = 6;
            }
            int rangeComp = sentYear < 1800 ? 4 : sentYear < 1900 ? 2 : -1;
            int dayGuesser = ((sentYearComp + sentQuarterComp + sentDateComp + keyMonthComp + rangeComp) % 7);
            String sentDay = daysInWeek[dayGuesser];
            sentDayComplete[i] = String.format("%s , %d %s %d", sentDay, sentDateComp, monthName[sentMonthComp-1], sentYear);

            int dayAdded = 0;

            if (destiantion[i].equals(destinationCity[0])) {
                dayAdded = ETA[0];
            } else if (destiantion[i].equals(destinationCity[1])) {
                dayAdded = ETA[1];
            } else if (destiantion[i].equals(destinationCity[2])) {
                dayAdded = ETA[2];
            }

            int ETADate = sentDateComp + dayAdded;
            int ETAMonth = sentMonthComp;
            int ETAYear = sentYear;
            dateInMonth[1] = leapYear ? 29 : 28;

            if (ETADate > dateInMonth[ETAMonth-1]) {
                if ((ETADate-dateInMonth[ETAMonth-1]) == 0) {
                    ETADate = 1;
                } else {
                    ETADate -= dateInMonth[ETAMonth-1];
                }
                ETAMonth++;
                if (ETAMonth > 12) {
                    ETAYear++;
                    ETAMonth = 1;
                }
            }

            leapYear = false;
            if (ETAYear % 4 == 0) {
                if (ETAYear % 100 == 0) {
                    if (ETAYear % 400 == 0) {
                        leapYear = true;
                    }
                    leapYear = false;
                }
                leapYear = true;
            }

            int ETAYearComp = Integer.parseInt(String.format("%c%c", String.format("%d", ETAYear).charAt(String.format("%d", ETAYear).length()-2), String.format("%d", ETAYear).charAt(String.format("%d", ETAYear).length()-1)));
            int ETAQuarterComp = (int) ETAYearComp/4;
            int ETADateComp = ETADate;
            int ETAMonthComp =  ETAMonth;
            keyMonthComp = 0;
            switch (ETAMonthComp) {
                case 1 -> keyMonthComp = leapYear ? 0 : 1;
                case 2 -> keyMonthComp = leapYear ? 3 : 4;
                case 3 -> keyMonthComp = 4;
                case 4 -> keyMonthComp = 0;
                case 5 -> keyMonthComp = 2;
                case 6 -> keyMonthComp = 5;
                case 7 -> keyMonthComp = 0;
                case 8 -> keyMonthComp = 3;
                case 9 -> keyMonthComp = 6;
                case 10 -> keyMonthComp = 1;
                case 11 -> keyMonthComp = 4;
                case 12 -> keyMonthComp = 6;
            }
            int ETARangeComp = ETAYear < 1800 ? 4 : ETAYear < 1900 ? 2 : -1;
            int ETADayGuesser = ((ETAYearComp + ETAQuarterComp + ETADateComp + keyMonthComp + ETARangeComp) % 7);
            String ETADay = daysInWeek[ETADayGuesser];
            ETADayComplete[i] = String.format("%s , %d %s %d", ETADay, ETADateComp, monthName[ETAMonthComp-1], ETAYear);
            
            System.out.println  ("|==================================|");
            System.out.println  ("|     Addons     ||     Price      |");
            System.out.println  ("|==================================|");
            System.out.println  ("|    Asuransi    ||   Rp 50,000    |");
            System.out.println  ("|   Drain Tank   ||   Rp 25,000    |");
            System.out.println  ("|==================================|");

            System.out.println("Would you like to add addons?");
            System.out.print("(y/N) -> ");
            String addonsOption = input.next();
            input.nextLine();

            if (addonsOption.equals("y") || addonsOption.equals("Y")) {
                System.out.println("What kind of addon would you like?");
                System.out.println("1. Insurance");
                System.out.println("2. Drain Gas Tank");
                System.out.println("3. Both");
                System.out.print("Choose: ");
                String addonsMenu = input.next();
                input.nextLine();
                if (addonsMenu.equals("1")) {
                    addons[i] = "Insurance";
                    addonsCost[i] = 50_000;
                } else if (addonsMenu.equals("2")) {
                    addons[i] = "Drain";
                    addonsCost[i] = 25_000;
                } else if (addonsMenu.equals("3")) {
                    addons[i] = "Insurance & Drain";
                    addonsCost[i] = 75_000;
                }
            } else {
                addons[i] = "No addons";
                addonsCost[i] = 0;
            }
        }
        // endregion

        // region order details
        System.out.println("================================================================");
        System.out.println("||                       Order Details                        ||");
        System.out.println("================================================================");
        System.out.printf("%-16s: %s\n", "Sender name", senderName);
        System.out.printf("%-16s: %s\n", "Sender NIK", senderNIK);
        System.out.printf("%-16s: %d\n", "Cargo load", cargoLoad);

        for (int i = 0; i < cargoLoad; i++) {
            System.out.println();
            System.out.printf("Cargo Load #%d\n", i+1);
            System.out.printf("%-16s: %s\n", "Vehicle identity", vehicleIdentity[i]);
            System.out.printf("%-16s: %d\n", "Engine capacity", engineCapacity[i]);
            System.out.printf("%-16s: %s\n", "Destination", destiantion[i]);
            System.out.printf("%-16s: %s\n", "Tariff", String.format("Rp %,d", tariff[i]));
            System.out.printf("%-16s: %s\n", "Sent Day", sentDayComplete[i]);
            System.out.printf("%-16s: %s\n", "Cargo ETA", ETADayComplete[i]);
            System.out.printf("%-16s: %s\n", "Addons", addons[i]);
            System.out.printf("%-16s: %s\n", "Addons cost", String.format("Rp %,d", addonsCost[i]));
        }
        int totalCost = 0;
        for (int i = 0; i < cargoLoad; i++) {
            totalCost += tariff[i];
            totalCost += addonsCost[i];
        }
        System.out.println();
        System.out.printf("%-16s: %s\n", "Total Cost", String.format("Rp %,d", totalCost));
        // endregion

        // region transaction details
        int totalPaid = totalCost;
        int change = 0;
        System.out.println("What kind of payment merthods would you like?");
        System.out.println("1. Bank transfer");
        System.out.println("2. Cash");
        System.out.print("Choose: ");
        String paymentMenu = input.next();
        input.nextLine();
        if (paymentMenu.equals("2")) {
            boolean placeHolder = true;
            while (placeHolder) {
                System.out.print("Enter total paid in cash: ");
                totalPaid = input.nextInt();
                if (totalPaid >= totalCost) placeHolder = false; else System.out.println("Enter amount bigger or equal to the total cost");
            }
            change = totalPaid - totalCost;
        }
        System.out.println();
        System.out.println("================================================================");
        System.out.println("||                    Transaction Details                     ||");
        System.out.println("================================================================");
        System.out.printf("%-11s: %s\n", "Sender name", senderName);
        System.out.printf("%-11s: %s\n", "Sender NIK", senderNIK);
        System.out.printf("%-11s: %d\n", "Cargo load", cargoLoad);
        System.out.printf("%-11s: %s\n", "Total Cost", String.format("Rp %,d", totalCost));
        System.out.printf("%-11s: %s\n", "Total Paid", String.format("Rp %,d", totalPaid));
        System.out.printf("%-11s: %s\n", "Change", String.format("Rp %,d", change));
        System.out.println();
        System.out.println("================================================================");
        System.out.println("||                   Transaction Successful                   ||");
        System.out.println("================================================================");
        // endregion
        input.close();
    }
}