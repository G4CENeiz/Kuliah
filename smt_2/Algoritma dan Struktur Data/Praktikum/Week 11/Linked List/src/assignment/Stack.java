package assignment;

public class Stack {
    private final SingleLinkedList singLL = new SingleLinkedList();

    public void push(String data) {
        singLL.addFirst(data);
    }

    public String pop() {
        String data = singLL.getData(0);
        singLL.removeFirst();
        return data;
    }

    public void print() {
        singLL.print();
    }
}
