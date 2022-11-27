import java.util.Scanner;

public class triagle {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in) ;
        int base, height;
        float area;
        System.out.print("Insert base: ");
        base = sc.nextInt();
        System.out.print("Insert height: ");
        height = sc.nextInt();
        area = (float)base * (float)height / 2;
        System.out.println("Area of triangle is " + area);
        sc.close();
    }
}