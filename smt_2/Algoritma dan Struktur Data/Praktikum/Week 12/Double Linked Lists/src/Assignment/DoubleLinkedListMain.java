package Assignment;

import java.util.Scanner;

public class DoubleLinkedListMain {
    public static void displayMenu() {
        System.out.println("=========================================");
        System.out.println("Data manipulation with Double Linked List");
        System.out.println("=========================================");
        System.out.println("1. Add First");
        System.out.println("2. Add Tail");
        System.out.println("3. Add Data in the nth index");
        System.out.println("4. Remove First");
        System.out.println("5. Remove Tail");
        System.out.println("6. Remove Data in the nth index");
        System.out.println("7. Print");
        System.out.println("8. Search Data");
        System.out.println("9. Sort Data");
        System.out.println("10. Exit");
        System.out.println("=========================================");
    }

    public static void main(String[] args) throws Exception {
        Scanner sc = new Scanner(System.in);
        DoubleLinkedList dll = new DoubleLinkedList();
        
        boolean exit = false;
        while (!exit) {
            int option;
            displayMenu();
            option = sc.nextInt();
            int dataAdd;
            int posAdd;
            int posDel;
            int search;

            switch (option) {
                case 1:
                    System.out.println("Insert data in head position");
                    dataAdd = sc.nextInt();
                    dll.addFirst(dataAdd);
                    break;
                case 2:
                    System.out.println("Insert data in last position");
                    dataAdd = sc.nextInt();
                    dll.addLast(dataAdd);
                    break;
                case 3:
                    System.out.println("Insert Data");
                    System.out.print("Data node: ");
                    dataAdd = sc.nextInt();
                    System.out.print("In index: ");
                    posAdd = sc.nextInt();
                    dll.add(dataAdd, posAdd);
                    break;
                case 4:
                    System.out.println("First Data deleted");
                    System.out.println(dll.getFirst());
                    dll.removeFirst();
                    break;
                case 5:
                    System.out.println("Last Data deleted");
                    System.out.println(dll.getLast());
                    dll.removeLast();
                    break;
                case 6:
                    System.out.println("Remove Data");
                    System.out.println("In index: ");
                    posDel = sc.nextInt();
                    System.out.println("Data " + posDel + " deleted");
                    System.out.println(dll.get(posDel));
                    dll.remove(posDel);
                    break;
                case 7:
                    System.out.println("Print Data :");
                    dll.print();
                    break;
                case 8:
                    System.out.print("Search Data :");
                    search = sc.nextInt();
                    System.out.printf("Data %d is in index-%d\n", search, dll.search(search));
                    break;
                case 9:
                    dll.sort();
                    break;
                case 10:
                    exit = true;
                    break;
            }
        }
        
        sc.close();
    }
}
