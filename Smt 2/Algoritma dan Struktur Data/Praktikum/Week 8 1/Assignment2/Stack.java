package Assignment2;

public class Stack {
    int size, top;
    Receipts data[];

    public Stack(int size) {
        this.size = size;
        data = new Receipts[size];
        top = -1;
    }

    public boolean isEmpty() {
        if (top == 1) {
            return true;
        } else {
            return false;
        }
    }

    public boolean isFull() {
        if (top == size - 1) {
            return true;
        } else {
            return false;
        }
    }

    public void push(Receipts dt) {
        if (!isFull()) {
            top++;
            data[top] = dt;
        } else {
            System.out.println("Stack is full");
        }
    }

    public void pop() {
        if (!isEmpty()) {
            Receipts x = data[top];
            top--;
            System.out.println("Remove data : " + x.transactionID + " " + x.date + " " + x.quantity + " " + x.transactionTotal);
        } else {
            System.out.println("Stack is empty");
        }
    }

    public void peek() {
        System.out.println("Top element : " + data[top]);
    }

    public void print(int limit) {
        System.out.printf("last %d data: \n", limit);
        for (int i = top; i >= (size - limit); i--) {
            System.out.println(data[i].transactionID + " " + data[i].date + " " + data[i].quantity + " " + data[i].transactionTotal);
        }
        System.out.println("");
    }

    public void clear() {
        if (!isEmpty()) {
            for (int i = top; i >= 0; i--) {
                top--;
            }
            System.out.println("Stack is now empty");
        } else {
            System.out.println("Failed ! Stack is still empty");
        }
    }
}