package Assignment4;

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

    public void addFirst(Student item) {
        if (isEmpty()) {
            head = new Node(null, item, null);
        } else {
            Node newNode = new Node(null, item, head);
            head.prev = newNode;
            head = newNode;
        }
        size++;
    }

    public void addLast(Student item) {
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

    public void add(Student item, int index) throws Exception {
        if (isEmpty()) {
            addFirst(item);
        } else if (index < 0 || index > size) {
            throw new Exception("Index out of bound");
        } else if (index == size) {
            addLast(item);
        } else {
            Node current = head;
            int i = 0;
            while (i < index) {
                current = current.next;
                i++;
            }
            if (current.next == null) {
                Node newNode = new Node(null, item, current);
                current.prev = newNode;
                head = newNode;
            } else {
                Node newNode = new Node(current.prev, item, current);
                newNode.prev = current.prev;
                newNode.next = current;
                current.prev.next = newNode;
                current.prev = newNode;
            }
        }
        size++;
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
            while (temp != null) {
                temp.data.print();
                temp = temp.next;
            }
            System.out.println("\nAll data printed successfully");
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

    public void remove(int index) throws Exception {
        if (isEmpty() || index >= size) {
            throw new Exception("Index value is out of bound");
        } else if (size == 0) {
            removeFirst();
        } else {
            Node current = head;
            int i = 0;
            while (i < index) {
                current = current.next;
                i++;
            }
            if (current.next == null) {
                current.prev.next = null;
            } else if (current.prev == null) {
                current = current.next;
                current.prev = null;
                head = current;
            } else {
                current.prev.next = current.next;
                current.next.prev = current.prev;
            }
            size--;
        }
    }

    public Student getFirst() throws Exception {
        if (isEmpty()) {
            throw new Exception("Linked list still empty");
        }
        return head.data;
    }

    public Student getLast() throws Exception {
        if (isEmpty()) {
            throw new Exception("Linked list still empty");
        }
        Node temp = head;
        while (temp.next != null) {
            temp = temp.next;
        }
        return temp.data;
    }

    public Student get(int index) throws Exception {
        if (isEmpty()) {
            throw new Exception("Linked list still empty");
        }
        Node temp = head;
        for (int i = 0; i < index; i++) {
            temp = temp.next;
        }
        return temp.data;
    }
    public int search(int key) throws Exception {
        Node temp = head;
        int i = 0;
        while (i < size) {
            if (temp.data.nim == key) {
                return i;
            }
            i++;
            temp = temp.next;
        }
        throw new Exception("Key value doesn't exist");
    }

    public void sort() throws Exception {
        if (head == null || head.next == null) {
            return;
        }
        boolean swapped;
        Node current;
        Node last = null;
        do {
            swapped = false;
            current = head;
            while (current.next != last) {
                if (current.data.gpa < current.next.data.gpa) {
                    Student temp = current.data;
                    current.data = current.next.data;
                    current.next.data = temp;
                    swapped = true;
                }
                current = current.next;
            }
            last = current;
        } while (swapped);
    }
}
