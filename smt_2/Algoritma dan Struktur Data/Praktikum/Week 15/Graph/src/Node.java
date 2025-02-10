public class Node {
    int data;
    Node prev, next;

    public Node(Node prev, int data, Node next) {
        this.data = data;
        this.prev = prev;
        this.next = next;
    }
}