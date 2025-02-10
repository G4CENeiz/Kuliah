package Assignment1;

public class Stack {
    int size;
    int top;
    char data[];

    public Stack(int size) {
        this.size = size;
        data = new char[size];
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

    public void push(char dt) {
        if (!isFull()) {
            top++;
            data[top] = dt;
        } else {
            System.out.println("Stack is full");
        }
    }

    public void pop() {
        if (!isEmpty()) {
            char x = data[top];
            top--;
            System.out.println("Remove data : " + x);
        } else {
            System.out.println("Stack is empty");
        }
    }

    public void peek() {
        System.out.println("Top element : " + data[top]);
    }

    public void print() {
        System.out.println("Result: ");
        for (int i = top; i >= 0; i--) {
            System.out.print(data[i]);
        }
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
