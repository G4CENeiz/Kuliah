package LabActivities;

public class DoubleLinkedListMain {
    public static void main(String[] args) throws Exception {
        DoubleLinkedList dll = new DoubleLinkedList();

        //* Lab Activities 1 */
        // dll.print();
        // System.out.println("Size: " + dll.size);
        // System.out.println("================================================");
        // dll.addFirst(3);
        // dll.addLast(4);
        // dll.addFirst(7);
        // dll.print();
        // System.out.println("Size: " + dll.size);
        // System.out.println("================================================");
        // dll.add(40, 1);
        // dll.print();
        // System.out.println("Size: " + dll.size);
        // System.out.println("================================================");
        // dll.clear();
        // dll.print();
        // System.out.println("Size: " + dll.size);
        
        //* Lab Activities 2 */
        // dll.addLast(50);
        // dll.addLast(40);
        // dll.addLast(10);
        // dll.addLast(20);
        // dll.print();
        // System.out.println("Size: " + dll.size);
        // System.out.println("================================================");
        // dll.removeFirst();
        // dll.print();
        // System.out.println("Size: " + dll.size);
        // System.out.println("================================================");
        // dll.removeLast();
        // dll.print();
        // System.out.println("Size: " + dll.size);
        // System.out.println("================================================");
        // dll.remove(1);
        // dll.print();
        // System.out.println("Size: " + dll.size);
        
        //* Lab Activities 3 */
        dll.print();
        System.out.println("Size: " + dll.size);
        System.out.println("================================================");
        dll.addFirst(3);
        dll.addLast(4);
        dll.addFirst(7);
        dll.print();
        System.out.println("Size: " + dll.size);
        System.out.println("================================================");

        dll.add(40,1);
        dll.print();

        System.out.println("Size: " + dll.size);
        System.out.println("================================================");
        System.out.println("Data in the head of the linked list is : " + dll.getFirst());
        System.out.println("Data in the tail of the linked list is : " + dll.getLast());
        System.out.println("Data in the 1st index of the linked list is : " + dll.get(1));
    }
}
