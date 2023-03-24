package Faktorial;

import java.util.Scanner;

public class MainFaktorial {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
            System.out.println("================================================================");
            System.out.print("Input the number of elements you want to count : ");
            int elemen = sc.nextInt();
            Faktorial [] fk = new Faktorial[elemen];
            for (int i = 0; i < elemen; i++) {
                fk[i] = new Faktorial();
                System.out.print("Input the data value to-"+(i+1)+" : ");
                fk[i].num = sc.nextInt();
            }
            System.out.println("================================================================");
            System.out.println("Factorial Result with Brute Force");
            for (int i = 0; i < elemen; i++) {
                System.out.println("Factorial of value "+fk[i].num+" is : "+fk[i].faktorialBF(fk[i].num));
            }
            
            System.out.println("================================================================");
            for (int i = 0; i < elemen; i++) {
                System.out.println("Factorial of value "+fk[i].num+" is : "+fk[i].faktorialDC(fk[i].num));
            }
            System.out.println("================================================================");
    }
}