package assignment;

public class SingleLinkedList {
    Node head;
    Node tail;

    public boolean isEmpty() {
        return head == null;
    }

    public void print() {
        if (!isEmpty()) {
            Node tmp = head;
            System.out.print("Linked list content: \t");
            while (tmp != null) {
                System.out.print(tmp.data + "\t");
                tmp = tmp.next;
            }
            System.out.println("");
        } else {
            System.out.println("Linked list is empty");
        }
    }

    public void addFirst(String input) {
        Node ndInput = new Node(input, null);
        if (isEmpty()) {
            head = ndInput;
            tail = ndInput;
        } else {
            ndInput.next = head;
            head = ndInput;
        }
    }

    public void addLast(String input) {
        Node ndInput = new Node(input, null);
        if (isEmpty()) {
            head = ndInput;
            tail = ndInput;
        } else {
            tail.next = ndInput;
            tail = ndInput;
        }
    }

    public void insertAfter(String key, String input) {
        Node ndInput = new Node(input, null);
        Node temp = head;
        do {
            if (temp.data.equals(key)) {
                ndInput.next = temp.next;
                temp.next = ndInput;
                if (ndInput.next.equals(null)) tail = ndInput;
                break;
            }
            temp = temp.next;
        } while (!temp.equals(null));
    }

    public void insertAt(int index, String input) {
        if (index < 0) {
            System.out.println("Wrong index");
        } else if (index == 0) {
            addFirst(input);
        } else {
            Node temp = head;
            for (int i = 0; i < index - 1; i++) {
                temp = temp.next;
            }
            temp.next = new Node(input, temp.next);
            if (temp.next.next.equals(null)) tail = temp.next;
        }
    }

    public String getData(int index) {
        Node temp = head;
        for (int i = 0; i < index; i++) {
            temp = temp.next;
        }
        return temp.data;
    }

    public int indexOf(String key) {
        Node temp = head;
        int index = 0;
        while (!temp.equals(null) && !temp.data.equals(key)) {
            temp = temp.next;
            index++;
        }
        if (temp.equals(null)) {
            return -1;
        } else {
            return index;
        }
    }

    public void removeFirst() {
        if (isEmpty()) {
            System.out.println("Linked list is empty. Can not remove data");
        } else if (head.equals(tail)) {
            head = tail = null;
        } else {
            head = head.next;
        }
    }

    public void removeLast() {
        if (isEmpty()) {
            System.out.println("Linked list is empty. Can not remove data");
        } else if (head.equals(tail)) {
            head = tail = null;
        } else {
            Node temp = head;
            while (!temp.next.equals(tail)) {
                temp = temp.next;
            }
            temp.next = null;
            tail = temp;
        }
    }

    public void remove(String key) {
        if (isEmpty()) {
            System.out.println("Linked list is empty. Can not remove data");
        } else {
            Node temp = head;
            while (!temp.equals(null)) {
                if (temp.data.equals(key) && temp.equals(head)) {
                    this.removeFirst();
                    break;
                } else if (temp.next.data.equals(key)) {
                    temp.next = temp.next.next;
                    if (temp.next == null) {
                        tail = temp;
                    }
                    break;
                }
                temp = temp.next;
            }
        }
    }

    public void removeAt(int index) {
        if (index == 0) {
            removeFirst();
        } else {
            Node temp = head;
            for (int i = 0; i < index; i++) {
                temp = temp.next;
            }
            temp.next = temp.next.next;
            if (temp.next.equals(null)) {
                tail = temp;
            }
        }
    }

    public void insertBefore(String key, String input) {
        Node ndInput = new Node(input, null);
        if (isEmpty()) {
            head = tail = ndInput;
        } else if (head.equals(tail)) {
            ndInput.next = head;
            head = ndInput;
        } else {
            Node temp = head;
            while (!temp.next.equals(null)) {
                if (temp.next.data.equals(key)) {
                    temp.next = new Node(input, temp.next);
                }
                temp = temp.next;
            }
        }
    }
}