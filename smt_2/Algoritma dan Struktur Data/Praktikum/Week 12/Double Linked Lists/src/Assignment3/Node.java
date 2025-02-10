package Assignment3;

public class Node {
    Person data;
    Node prev, next;

    public Node(Node prev, Person data, Node next) {
        this.data = data;
        this.prev = prev;
        this.next = next;
    }
}
