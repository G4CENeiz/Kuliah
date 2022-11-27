import java.util.Scanner;

public class W5A1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int copies;
        System.out.print("Exnter copies of file: ");
        copies = sc.nextInt();
        if (copies > 100) {
            System.out.println("price per sheet is Rp 100");
        }   else {
            System.out.println("price per sheet is Rp 150");
        }
    }
}