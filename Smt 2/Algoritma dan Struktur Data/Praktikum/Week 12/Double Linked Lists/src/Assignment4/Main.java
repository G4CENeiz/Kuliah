package Assignment4;

import java.util.Scanner;

public class Main {
    static Scanner sc = new Scanner(System.in);
    static DoubleLinkedList dll = new DoubleLinkedList();

    public static void displayMenu() {
        System.out.println("=============================== ");
        System.out.println("Student Data Management System  ");
        System.out.println("=============================== ");
        System.out.println("1. Add data from head           ");
        System.out.println("2. Add data from Tail           ");
        System.out.println("3. Add data in specific index   ");
        System.out.println("4. Remove data from head        ");
        System.out.println("5. Remove data from Tail        ");
        System.out.println("6. Remove data in specific index");
        System.out.println("7. Print                        ");
        System.out.println("8. Search by NIM                ");
        System.out.println("9. Sort by GPA - Desc           ");
        System.out.println("10. Exit                        ");
        System.out.println("=============================== ");
    }

    public static Student newStudent() {
        System.out.print("NIM  : ");
        int NIM = sc.nextInt();
        System.out.print("Name : ");
        sc.nextLine();
        String name = sc.nextLine();
        System.out.print("GPA  : ");
        double GPA = sc.nextDouble();
        Student data = new Student(name, NIM, GPA);
        return data;
    }

    public static void addFirst() throws Exception {
        System.out.println("Insert NIM in head position");
        Student data = newStudent();
        dll.addFirst(data);
        pivot();
    }

    public static void addLast() throws Exception {
        System.out.println("Insert NIM in tail position");
        Student data = newStudent();
        dll.addLast(data);
        pivot();
    }

    public static void add() throws Exception {
        System.out.println("Insert student's data node");
        Student data = newStudent();
        System.out.print("In index : ");
        int index = sc.nextInt();
        dll.add(data, index);
        pivot();
    }

    public static void removeFirst() throws Exception {
        System.out.println("Insert NIM in head position");
        dll.removeFirst();
        pivot();
    }

    public static void removeLast() throws Exception {
        System.out.println("Insert NIM in tail position");
        dll.removeLast();
        pivot();
    }
    public static void remove() throws Exception {
        System.out.println("Insert student's data node");
        System.out.print("In index : ");
        int index = sc.nextInt();
        dll.remove(index);
        pivot();
    }

    public static void print() throws Exception {
        dll.print();
        pivot();
    }

    public static void search() throws Exception {
        System.out.print("Insert NIM to be searched : ");
        int key = sc.nextInt();
        System.out.printf("Data %d is in node - %d\n", key, dll.search(key));
        System.out.println("Identity : ");
        dll.get(dll.search(key)).print();
        pivot();
    }

    public static void sort() throws Exception {
        dll.sort();
        pivot();
    }

    public static void exit() {
        sc.close();
    }

    public static void pivot() throws Exception {
        displayMenu();
        int option = sc.nextInt();
        switch (option) {
            case 1  -> addFirst();
            case 2  -> addLast();
            case 3  -> add();
            case 4  -> removeFirst();
            case 5  -> removeLast();
            case 6  -> remove();
            case 7  -> print();
            case 8  -> search();
            case 9  -> sort();
            case 10 -> exit();
        }
    }

    public static void main(String[] args) throws Exception {
        pivot();
        sc.close();
    }
}
