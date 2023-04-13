package week7;

import java.util.Scanner;

public class StudentsMain {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        Scanner sl = new Scanner(System.in);

        SearchStudent data = new SearchStudent();
        int amountStudent = 5;

        System.out.println("--------------------------------");
        System.out.println("Input student data accordingly from samllest NIM");
        for (int i = 0; i < amountStudent; i++) {
            System.out.println("----------------");
            System.out.print("NIM\t: ");
            int nim = s.nextInt();
            System.out.print("Name\t: ");
            String name = sl.nextLine();
            System.out.print("Age\t: ");
            int age = s.nextInt();
            System.out.print("GPA\t: ");
            double gpa = s.nextDouble();

            Students std = new Students(nim, age, name, gpa);
            data.add(std);
        }

        System.out.println("--------------------------------");
        System.out.println("Entire Student Data");
        data.display();

        System.out.println("________________________");
        System.out.println("________________________");
        System.out.print("Search student by NIM: ");
        int search = s.nextInt();
        System.out.println("Using Sequential Search");
        int potition = data.findSeqSearch(search);

        data.showPotition(search, potition);

        data.showData(search, potition);
        
        System.out.println("========================");
        System.out.println("Using binary search");
        int potition1 = data.findBinarySearch(search, 0, amountStudent - 1);
        
        data.showPotition(search, potition1);
        
        data.showData(search, potition1);
        
        s.close();
        sl.close();
    }
}
