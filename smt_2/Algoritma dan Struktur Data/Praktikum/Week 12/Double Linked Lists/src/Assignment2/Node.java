package Assignment2;

public class Node {
    String data;
    Node prev, next;

    public Node(Node prev, String data, Node next) {
        this.data = data;
        this.prev = prev;
        this.next = next;
    }
}
