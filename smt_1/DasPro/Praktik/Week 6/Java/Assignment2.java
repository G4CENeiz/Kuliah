import java.util.Scanner;

public class Assignment2 {
    public static void main(String[] args) {
        String foodname, choice;
        int price, ShippingCost = 0, total;
        Scanner input = new Scanner(System.in);
        System.out.print("Enter a food name: ");
        foodname = input.nextLine();
        System.out.print("Enter a food price: IDR ");
        price = input.nextInt();
        System.out.print("Do you want express delivery (0 = no, 1 = yes)? ");
        choice = input.next();
        input.close();

        if (choice.equals("1") || choice.equals("yes")) {
            if (price < 100_000) {
                ShippingCost = 25_000 + 20_000;
            } else {
                ShippingCost = 25_000 + 30_000;
            }
            total = price + ShippingCost;
            System.out.println("RECEIPT");
            System.out.println(foodname + "\tIDR " + price);
            System.out.println("Shipping costs \tRp " + ShippingCost);
            System.out.println("TOTAL \t\tRp " + total);
        } else if (choice.equals("0") || choice.equals("no")){
            if (price < 100_000) {
                ShippingCost = 20_000;
            } else {
                ShippingCost = 30_000;
            }
            total = price + ShippingCost;
            System.out.println("RECEIPT");
            System.out.println(foodname + "\tIDR " + price);
            System.out.println("Shipping costs \tRp " + ShippingCost);
            System.out.println("TOTAL \t\tRp " + total);
        } else {
            System.out.println("Invalid Input");
        }
    }
}