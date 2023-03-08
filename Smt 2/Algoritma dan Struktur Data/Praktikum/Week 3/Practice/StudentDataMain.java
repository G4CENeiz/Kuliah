package Practice;

import java.util.Scanner;

public class StudentDataMain {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int limit = 3;

        StudentData[] studentDatas = new StudentData[limit];
        for (int i = 0; i < limit; i++) {
            studentDatas[i] = new StudentData();
            System.out.printf("Insert %d student data\n", i+1);
            System.out.print("Insert name: ");
            studentDatas[i].name = input.next();
            input.nextLine();
            System.out.print("Insert NIM: ");
            studentDatas[i].NIM = input.next();
            input.nextLine();
            System.out.print("Insert gender: ");
            studentDatas[i].gender = input.next();
            input.nextLine();
            System.out.print("Insert IPK: ");
            studentDatas[i].IPK = input.nextDouble();
            System.out.println();
        }
        for (int i = 0; i < limit; i++) {
            System.out.printf("%d student data\n", i+1);
            System.out.printf("name: %s\n", studentDatas[i].name);
            System.out.printf("nim: %s\n", studentDatas[i].NIM);
            System.out.printf("gender: %s\n", studentDatas[i].gender);
            System.out.printf("IPK: %.1f\n", studentDatas[i].IPK);
            System.out.println();
        }
        double sumIPK = 0;
        for (int i = 0; i < limit; i++) {
            sumIPK += studentDatas[i].IPK;
        }
        System.out.printf("Average IPK of all students: %.6f", sumIPK/limit);
        input.close();
    }
}
