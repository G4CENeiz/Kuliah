/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quiz2_baihaqi;

public class Main {
    public static void main(String[] args){
        SingleLinkedList dll = new SingleLinkedList();
        dll.addFirst(45);
        dll.addFirst(10);
        dll.addFirst(10);
        dll.addFirst(15);
        dll.addFirst(150);
        dll.print();
        dll.deleteFirst();
        dll.print();
        //continue to call addLast, deleteLast, 
        dll.addLast(69);
        dll.print();
        dll.deleteLast();
        dll.print();
        //merge, split,
        split(dll);
        merge(dll, dll);
    } 
    //2.A.
    public static void merge(SingleLinkedList l1,
            SingleLinkedList l2){
        //complete this method
        SingleLinkedList join = new SingleLinkedList();

        Node temp = l1.head;
        while (temp != null) {
            join.addLast(temp.data);
            temp = temp.n;
        }
        temp = l2.head;
        while (temp != null) {
            join.addLast(temp.data);
            temp = temp.n;
        }
        join.print();
    }
    //2.B. this will split sll to be 2 sll
    public static void split(SingleLinkedList l){
        //ex: 2,3,4,34,2,3,45,4 (original list)
        //1-> 2,3,4,34
        //2-> 2,3,45,4

        /* Create list 1 and 2 */
        SingleLinkedList l1 = new SingleLinkedList();
        SingleLinkedList l2 = new SingleLinkedList();
        /* Create Temp to loop trough */
        Node temp = l.head;
        /* Loop trough half the list and add data using the add function */
        for (int i = 0; i < l.size/2; i++) {
            l1.addLast(temp.data);
            temp = temp.n;
        }
        /* Loop trough the rest of the list and add the the data using the add function */
        while (temp != null) {
            l2.addLast(temp.data);
            temp = temp.n;
        }
        /* Print the data */
        l1.print();
        l2.print();
    }
}
