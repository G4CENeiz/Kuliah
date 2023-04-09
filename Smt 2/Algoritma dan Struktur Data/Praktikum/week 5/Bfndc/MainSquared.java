package Bfndc;

import java.util.Scanner;

public class MainSquared {
    static Scanner sc = new Scanner(System.in);
    static int globalElemen;
    static Squared[] globalPng;

    static void callBF() {
        System.out.println("================================================");
        System.out.println("Results with Brute Force Squared");
        for (int i = 0; i < globalElemen; i++) {
            System.out.println("Value "+globalPng[i].num+" squared "+globalPng[i].squared+" is : "+globalPng[i].squaredBF(globalPng[i].num, globalPng[i].squared));
        }
        System.out.println("================================================");
    }

    static void callDC() {
        System.out.println("================================================");
        System.out.println("Results with Divide and Conquer Squared");
        for (int i = 0; i < globalElemen; i++) {
            System.out.println("Value "+globalPng[i].num+" squared "+globalPng[i].squared+" is : "+globalPng[i].squaredDC(globalPng[i].num, globalPng[i].squared));
        }
        System.out.println("================================================");
    }
    public static void main(String[] args) {
        System.out.println("================================================");
        System.out.print("Input the number of elements you want to count : ");
        int elemen = sc.nextInt();
        Squared[] png = new Squared[elemen];

        globalElemen = elemen;
        globalPng = png;
        
        
        for (int i = 0; i < elemen; i++) {
            System.out.print("Input the value to be squared to-"+(i+1)+" : ");
            int num = sc.nextInt();
            System.out.print("Input the squared value to-"+(i+1)+" : ");
            int squared = sc.nextInt();
            png[i] = new Squared(num, squared);
        }

        boolean choosen = false;
        System.out.println("Choose the algorithm");
        System.out.println("1. Brute Force");
        System.out.println("2. Divide and Conquer");
        while (!choosen) {
            System.out.print("Menu: ");
            sc.nextLine();
            char menu = sc.nextLine().charAt(0);

            switch (menu) {
                case '1':
                    choosen = true;
                    callBF();
                    break;

                case '2':
                    choosen = true;
                    callDC();
                    break;

                default:
                    System.out.println("Please enter the number available in the option");
                    break;
            }
        }


        sc.close();
    }
}
