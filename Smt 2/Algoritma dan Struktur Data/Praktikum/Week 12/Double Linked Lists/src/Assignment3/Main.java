package Assignment3;

import java.util.Scanner;

public class Main {
    static Scanner sc = new Scanner(System.in);
    static DoubleLinkedList dll = new DoubleLinkedList();
    public static void displayMenu() {
        System.out.println("++++++++++++++++++++++++++");
        System.out.println("Extravaganza Vaccine Queue");
        System.out.println("++++++++++++++++++++++++++");
        System.out.println("1. Add vaccine queue");
        System.out.println("2. Remove vaccine queue");
        System.out.println("3. Display vaccine queue");
        System.out.println("4. Exit");
        System.out.println("++++++++++++++++++++++++++");
    }
    
    public static void add() throws Exception {
        System.out.println("Add vaccine queue");
        System.out.print("Queue number : ");
        int queueNumber = sc.nextInt();
        System.out.print("Name : ");
        sc.nextLine();
        String name = sc.nextLine();
        Person data = new Person(name, queueNumber);
        dll.addFirst(data);
        pivot();
    }
    
    public static void pop() throws Exception {
        System.out.printf("%s has been vaccinated !\n", dll.getFirst());
        dll.removeLast();
        pivot();
    }

    public static void print() throws Exception {
        System.out.println("current vaccine queue : ");
        dll.print();
        pivot();
    }

    public static void exit() {
        sc.close();
    }
    
    public static void pivot() throws Exception {
        displayMenu();
        int option = sc.nextInt();
        switch (option) {
            case 1 -> add();
            case 2 -> pop();
            case 3 -> print();
            case 4 -> exit();
        }
    }
    
    public static void main(String[] args) throws Exception {
        pivot();
        sc.close();
    }
}
