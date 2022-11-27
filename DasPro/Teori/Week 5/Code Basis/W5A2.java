import java.util.Scanner;

public class W5A2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int purchase;
        System.out.print("Exnter total purchase: ");
        purchase = sc.nextInt();
        if (purchase > 500000) {
            System.out.println("you get an iron");
        }   else {
            System.out.println("you get an umbrella");
        }
    }
}