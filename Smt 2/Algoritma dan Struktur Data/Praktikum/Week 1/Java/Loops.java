import java.util.Scanner;

public class Loops {
    final static Scanner input = new Scanner(System.in);
    public static void main(String[] args) {
        String[] days = {"Monday ", "Tuesday ", "Wednesday ", "Thursday ", "Friday ", "Saturday ", "Sunday "};
        
        String NIM = getNIM();
        int last2digits = Integer.parseInt(String.format("%c%c", NIM.charAt(NIM.length() - 2), NIM.charAt(NIM.length() - 1)));

        int limit = last2digits < 10 ? last2digits + 10 : last2digits;

        for (int i = 0; i < limit; i++) {
            System.out.print(days[i % days.length]);
        }
    }
    static String getNIM() {
        while (true) {
            System.out.print("Enter NIM: ");
            String userInput = input.next();
            if (validateNIM(userInput)) {
                return userInput;
            }
            System.out.println("Please enter a 10 digit number");
        }
    }
    static boolean validateNIM(String numbers) {
        int length = numbers.length();
        if (length != 10)
            return false;
        for (int i = 0; i < length; i++) {
            switch (numbers.charAt(i)) {
                case '1', '2', '3', '4', '5', '6', '7', '8', '9', '0' -> {
                }
                default -> {
                    return false;
                }
            }
        }
        return true;
    }
}