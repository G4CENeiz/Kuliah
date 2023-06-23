package Assignment4;

public class Node {
    Student data;
    Node prev, next;

    public Node(Node prev, Student data, Node next) {
        this.data = data;
        this.prev = prev;
        this.next = next;
    }
}
