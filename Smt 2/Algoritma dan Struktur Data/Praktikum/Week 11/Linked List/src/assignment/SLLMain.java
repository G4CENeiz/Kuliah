package assignment;

public class SLLMain {
    public static void main(String[] args) {
        SingleLinkedList singLL = new SingleLinkedList();
    
        singLL.addFirst("a");
        singLL.addLast("e");
        singLL.insertAt(1, "b");
        singLL.insertAfter("b", "c");
        singLL.insertAfter("c", "d");
        singLL.print();
    }
}
