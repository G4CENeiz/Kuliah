package assignment;

public class StackMain {
    public static void main(String[] args) {
        Stack stack = new Stack();

        String[] data = {"Bahasa", "Android", "Komputer", "Basis Data", "Matematika", "Algoritma", "Statistika", "Multimedia"};

        for (int i = 0; i < data.length; i++) {
            stack.push(data[i]);
        }

        stack.print();
    }
}
