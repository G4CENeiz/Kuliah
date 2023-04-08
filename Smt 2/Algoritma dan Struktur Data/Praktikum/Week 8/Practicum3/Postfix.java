package Practicum3;

public class Postfix {
    int n, top;
    char[] stack;
    
    public Postfix(int total) {
        n = total;
        top = -1;
        stack = new char[n];
        push('(');
    }

    public void push(char c) {
        top++;
        stack[top] = c;
    }

    public char pop() {
        char item = stack[top];
        top--;
        return item;
    }

    public boolean isOperand(char c) {
        if ((c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z') || (c >= '0' && c <= '9') || c == ' ' || c == '.') {
            return true;
        } else {
            return false;
        }
    }

    public boolean isOperator(char c) {
        if (c == '^' || c == '%' || c == '/' || c == '*' || c == '-' || c == '+') {
            return true;
        } else {
            return false;
        }
    }

    public int degree(char c) {
        switch (c) {
            case '^':
                return 3; 
            case '%':
                return 2; 
            case '/':
                return 2; 
            case '*':
                return 2; 
            case '+':
                return 1; 
            case '-':
                return 1; 
            default:
                return 0;
        }
    }

    public String convert(String Q) {
        String p = "";
        char c;
        for (int i = 0; i < n; i++) {
            c = Q.charAt(i);
            if (isOperand(c)) {
                p = p + c;
            }
            if (c == '(') {
                push(c);
            }
            if (c == ')') {
                while (stack[top] != '(') {
                    p = p + pop();
                }
                pop();
            }
            if (isOperator(c)) {
                while (degree(stack[top]) > degree(c)) {
                    p = p + pop();
                }
                push(c);
            }
        }
        return p;
    }
}
