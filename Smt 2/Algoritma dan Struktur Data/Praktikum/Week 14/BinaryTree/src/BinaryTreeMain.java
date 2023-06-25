import java.util.Scanner;

public class BinaryTreeMain {
    static Scanner sc = new Scanner(System.in);
    static BinaryTree btTree = new BinaryTree();

    static void displayMenu() {
        System.out.println("======================");
        System.out.println("   Binary Tree Menu   ");
        System.out.println("======================");
        System.out.println("1. Add                ");
        System.out.println("2. Delete             ");
        System.out.println("3. Find               ");
        System.out.println("4. Traverse inOrder   ");
        System.out.println("5. Traverse preOrder  ");
        System.out.println("6. Traverse postOrder ");
        System.out.println("7. Exit               ");
    }

    static int getData() {
        System.out.print("data(int): ");
        return sc.nextInt();
    }

    static void add() {
        System.out.println("add data to tree");
        btTree.add(getData());
    }

    static void delete() {
        System.out.println("delete data in tree by data");
        btTree.delete(getData());
    }

    static void find() {
        System.out.println("find data in tree");
        btTree.find(getData());
    }

    static void traverseInOrder() {
        System.out.println("traverse the tree in-order method");
        btTree.traverseInOrder(btTree.root);
    }
    
    static void traversePreOrder() {
        System.out.println("traverse the tree in-order method");
        btTree.traversePreOrder(btTree.root);
    }
    
    static void traversePostOrder() {
        System.out.println("traverse the tree in-order method");
        btTree.traversePostOrder(btTree.root);
    }

    static void exit() {
        sc.close();
    }

    static void pivot() {
        displayMenu();
        int option = sc.nextInt();
        switch (option) {
            case 1 -> add();
            case 2 -> delete();
            case 3 -> find();
            case 4 -> traverseInOrder();
            case 5 -> traversePreOrder();
            case 6 -> traversePostOrder();
            case 7 -> exit();
        }
    }
    
    public static void main(String[] args) {
        BinaryTree bt = new BinaryTree();

        bt.add(6);
        bt.add(4);
        bt.add(8);
        bt.add(3);
        bt.add(5);
        bt.add(7);
        bt.add(9);
        bt.add(10);
        bt.add(15);

        bt.traversePreOrder(bt.root);
        System.out.println();
        bt.traverseInOrder(bt.root);
        System.out.println();
        bt.traversePostOrder(bt.root);
        System.out.println();
        System.out.println("Find " + bt.find(5));
        bt.delete(8);
        bt.traversePreOrder(bt.root);
        System.out.println();

        pivot();
        sc.close();
    }
}