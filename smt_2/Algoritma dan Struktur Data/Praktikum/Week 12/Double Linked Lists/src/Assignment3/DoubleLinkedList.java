package Assignment3;

public class DoubleLinkedList {
    Node head;
    int size;

    public DoubleLinkedList() {
        head = null;
        size = 0;
    }

    public boolean isEmpty() {
        return head == null;
    }

    public void addFirst(Person item) {
        if (isEmpty()) {
            head = new Node(null, item, null);
        } else {
            Node newNode = new Node(null, item, head);
            head.prev = newNode;
            head = newNode;
        }
        size++;
    }

    public void addLast(Person item) {
        if (isEmpty()) {
            addFirst(item);
        } else {
            Node current = head;
            while (current.next != null) {
                current = current.next;
            }
            Node newNode = new Node(current, item, null);
            current.next = newNode;
            size++;
        }
    }

    public int size() {
        return size;
    }

    public void clear() {
        head = null;
        size = 0;
    }

    public void print() {
        if (!isEmpty()) {
            Node temp = head;
            int count = 0;
            System.out.println("|No.   |Name    |");
            while (temp != null) {
                System.out.printf("|%-6d|%-8s|\n", temp.data.queue, temp.data.name);
                count++;
                temp = temp.next;
            }
            System.out.printf("Queue left : %d\n", count);
        } else {
            System.out.println("Linked list is empty");
        }
    }

    public void removeFirst() throws Exception {
        if (isEmpty()) {
            throw new Exception("Linked list is still empty, cannot remove data");
        } else if (size == 1) {
            removeLast();
        } else {
            head = head.next;
            head.prev = null;
            size--;
        }
    }

    public void removeLast() throws Exception {
        if (isEmpty()) {
            throw new Exception("Linked list is still empty, cannot remove data");
        } else if (head.next == null) {
            head = null;
            size--;
            return;
        } 
        Node current = head;
        while (current.next.next != null) {
            current = current.next;
        }
        current.next = null;
        size--;
    }

    public String getFirst() throws Exception {
        if (isEmpty()) {
            throw new Exception("Linked list still empty");
        }
        return head.data.name;
    }
}
