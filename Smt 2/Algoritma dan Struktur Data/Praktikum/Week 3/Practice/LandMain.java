package Practice;

import java.util.Scanner;

public class LandMain {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("How many lands: ");
        int unit = input.nextInt();
        System.out.println();

        Land[] lands = new Land[unit];
        for (int i = 0; i < lands.length; i++) {
            System.out.printf("Land %d\n", i+1);
            System.out.print("length: ");
            int l = input.nextInt();
            System.out.print("width : ");
            int w = input.nextInt();
            lands[i] = new Land(l, w);
            System.out.println();
        }
        for (int i = 0; i < lands.length; i++) {
            System.out.printf("Land Area %d: %,d\n", i+1, lands[i].area());
        }
        int wide = 0;
        int widest = 0;
        for (int i = 0; i < lands.length; i++) {
            if (lands[i].area() < wide) continue;
            wide = lands[i].area();
            widest = i + 1;
        }
        System.out.println();
        System.out.printf("The widest land is Land %d", widest);
        input.close();
    }
}