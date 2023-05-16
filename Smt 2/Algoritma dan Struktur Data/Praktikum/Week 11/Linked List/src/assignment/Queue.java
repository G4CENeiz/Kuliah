package assignment;

public class Queue {
    private final SingleLinkedListCustomer list = new SingleLinkedListCustomer();

    public void enqueue(Customer data) {
        list.addLast(data);
    }

    public Customer dequeue() {
            Customer data = list.getData(0);
            list.removeFirst();
            return data;
    }

    public void print() {
        NodeCustomer temp = list.head;
        while (temp != null) {
            temp.data.print();
            temp = temp.next;
        }
    }
}
