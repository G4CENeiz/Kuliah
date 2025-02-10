import java.util.Scanner;

public class Assignment4 {
    static Scanner input = new Scanner(System.in);
    static void menu() {
        System.out.println("Choose a shape to calculate the area of");
        System.out.println("Type in the number");
        System.out.println("1. Calculate area of triangle");
        System.out.println("2. Calculate area of rectangle");
        System.out.println("3. Calculate area of circle");
        System.out.print("Menu: ");
        String menu = input.next();
        switch (menu) {
            case "1" -> calculateAreaOfTriangle();
            case "2" -> calculateAreaOfRectangle();
            case "3" -> calculateAreaOfCircle();
        }
    }
    static void calculateAreaOfTriangle() {
        System.out.print("Enter length of the side: ");
        double side = input.nextDouble();
        System.out.print("Enter length of the height: ");
        double height = input.nextDouble();


        double area = 0.5 * side * height;
        System.out.printf("The area of triangle with side of %.2f and height of %.2f is %.2f", side, height, area);
    }
    static void calculateAreaOfRectangle() {
        System.out.print("Enter length of the width: ");
        double width = input.nextDouble();
        System.out.print("Enter length of the length: ");
        double length = input.nextDouble();

        double area = width * length;
        System.out.printf("The area of rectangle with width of %.2f and length of %.2f is %.2f", width, length, area);
    }
    static void calculateAreaOfCircle() {
        double pi = Math.PI;
        System.out.print("Enter length of the radius: ");
        double radius = input.nextDouble();

        double area = pi * radius * radius;
        System.out.printf("The area of circle with radius of %.2f is %.2f", radius, area);
    }
    public static void main(String[] args) {
        menu();
    }
}
