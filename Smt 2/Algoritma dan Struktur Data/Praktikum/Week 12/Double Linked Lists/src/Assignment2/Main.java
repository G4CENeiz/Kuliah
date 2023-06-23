package Assignment2;

import java.util.Scanner;

public class Main {
    static Scanner sc = new Scanner(System.in);
    static DoubleLinkedList dll = new DoubleLinkedList();
    public static void displayMenu() {
        System.out.println("****************");
        System.out.println("Library Data Book");
        System.out.println("****************");
        System.out.println("1. Add new book");
        System.out.println("2. Get book from top");
        System.out.println("3. Peek book title from top");
        System.out.println("4. Info all books");
        System.out.println("5. Exit");
        System.out.println("****************");
    }
    
    public static void add() throws Exception {
        System.out.println("------------------------");
        System.out.println("Insert new book title");
        System.out.println("------------------------");
        sc.nextLine();
        String data = sc.nextLine();
        dll.addFirst(data);
        pivot();
    }
    
    public static void pop() throws Exception {
        System.out.println("------------------------");
        System.out.println("Book on top has been removed");
        System.out.println("------------------------");
        dll.removeFirst();
        pivot();
    }

    public static void peek() throws Exception {
        System.out.println("------------------------");
        System.out.println("Peek book title from top");
        System.out.println("------------------------");
        System.out.println(dll.getFirst());
        pivot();
    }

    public static void print() throws Exception {
        System.out.println("------------------------");
        System.out.println("info all books");
        System.out.println("------------------------");
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
            case 3 -> peek();
            case 4 -> print();
            case 5 -> exit();
        }
    }
    
    public static void main(String[] args) throws Exception {
        pivot();
        sc.close();
    }
}
