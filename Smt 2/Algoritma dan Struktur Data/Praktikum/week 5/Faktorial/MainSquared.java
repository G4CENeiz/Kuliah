package Faktorial;

import java.util.Scanner;

public class MainSquared {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("================================================");
        System.out.print("Input the number of elements you want to count : ");
        int elemen = sc.nextInt();
        
        Squared[] png = new Squared[elemen];
        
        for (int i = 0; i < elemen; i++) {
            png[i] = new Squared();
            System.out.print("Input the value to be squared to-"+(i+1)+" : ");
            png[i].num = sc.nextInt();
            System.out.print("Input the squared value to-"+(i+1)+" : ");
            png[i].squared = sc.nextInt();
        }

        System.out.println("================================================");
        System.out.println("Results with Brute Force Squared");
        for (int i = 0; i < elemen; i++) {
            System.out.println("Value "+png[i].num+" squared "+png[i].squared+" is : "+png[i].squaredBF(png[i].num, png[i].squared));
        }
        System.out.println("================================================");
        System.out.println("Results with Divide and Conquer Squared");
        for (int i = 0; i < elemen; i++) {
            System.out.println("Value "+png[i].num+" squared "+png[i].squared+" is : "+png[i].squaredDC(png[i].num, png[i].squared));
        }
        System.out.println("================================================");

        sc.close();
    }
}
