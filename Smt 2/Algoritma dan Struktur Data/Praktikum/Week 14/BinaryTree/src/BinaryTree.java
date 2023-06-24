public class BinaryTree {
    Node root;

    public BinaryTree() {
        root = null;
    }

    boolean isEmpty() {
        return root==null;
    }

    void add(int data) {
        if (isEmpty()) {
            root = new Node(data);
        } else {
            Node current = root;
            while (true) {
                if (data < current.data) {
                    if (current.left != null) {
                        current = current.left;
                    } else {
                        current.left = new Node(data);
                        break;
                    }
                } else if (data > current.data) {
                    if (current.right != null) {
                        current = current.right;
                    } else {
                        current.right = new Node(data);
                        break;
                    }
                } else {
                    break;
                }
            }
        }
    }
    
    boolean find(int data) {
        boolean result = false;
        Node current = root;
        while (current != null) {
            if (current.data == data) {
                result = true;
                break;
            } else if (data < current.data) {
                current = current.left;
            } else {
                current = current.right;
            }
        }
        return result;
    }
    
    void traversePreOrder(Node node) {
        if (node != null) {
            System.out.print(" " + node.data);
            traversePreOrder(node.left);
            traversePreOrder(node.right);
        }
    }
    
    void traversePostOrder(Node node) {
        if (node != null) {
            traversePostOrder(node.left);
            traversePostOrder(node.right);
            System.out.print(" " + node.data);
        }
    }
    
    void traverseInOrder(Node node) {
        if (node != null) {
            traverseInOrder(node.left);
            System.out.print(" " + node.data);
            traverseInOrder(node.right);
        }
    }
    
    Node getSuccessor(Node del) {
        Node successor = del.right;
        Node successorParent = del;
        while (successor.left != null) {
            successorParent = successor;
            successor = successor.left;
        }
        if (successor != del.right) {
            successorParent.left = successor.right;
            successor.right = del.right;
        }
        return successor;
    }
    
    void delete(int data) {
        if (isEmpty()) {
            System.out.println("Tree is empty");
            return;
        }

        Node parent = root;
        Node current = root;
        boolean isLeftChild = false;
        while (current != null) {
            if (current.data == data) {
                break;
            } else if (data < current.data) {
                parent = current;
                current = current.left;
                isLeftChild = true;
            } else if (data > current.data) {
                parent = current;
                current = current.right;
                isLeftChild = false;
            }
        }
        
        if (current == null) {
            System.out.println("Couldn't find data");
            return;
        } else {
            if (current.left == null && current.right == null) {
                if (current == root) {
                    root = null;
                } else {
                    if (isLeftChild) {
                        parent.left = null;
                    } else {
                        parent.right = null;
                    }
                }
            } else if (current.left == null) {
                if (current == root) {
                    root = current.right;
                } else {
                    if (isLeftChild) {
                        parent.left = current.right;
                    } else {
                        parent.right = current.right;
                    }
                }
            } else if (current.right == null) {
                if (current == root) {
                    root = current.left;
                } else {
                    if (isLeftChild) {
                        parent.left = current.left;
                    } else {
                        parent.right = current.left;
                    }
                }
            } else {
                Node successor = getSuccessor(current);
                if (current == root) {
                    root = successor;
                } else {
                    if (isLeftChild) {
                        parent.left = successor;
                    } else {
                        parent.right = successor;
                    }
                }
                successor.left = current.left;
            }
        }
    }
    
    void addRecursive(int data) {
        if (isEmpty()) {
            root = new Node(data);
        } else {
            Node current = root;
            addRecursiveNotNull(data, current);
        }
    }

    private void addRecursiveNotNull(int data, Node current) {
        if (data < current.data) {
            addTraverseLeftBranch(data, current);
        }
        if (data > current.data) {
            addTraverseRightBranch(data, current);
        }
    }

    private void addTraverseLeftBranch(int data, Node current) {
        if (current.left != null) {
            current = current.left;
            addRecursiveNotNull(data, current);
        } else {
            current.left = new Node(data);
        }
    }

    private void addTraverseRightBranch(int data, Node current) {
        if (current.right != null) {
            current = current.right;
            addRecursiveNotNull(data, current);
        } else {
            current.right = new Node(data);
        }
    }

    void printLargeAndSmall() {
        Node current = root;
        if (current.left == null && current.right == null) {
            System.out.printf("%s: %d \n", "Smallest and Largest", current.data);
        } else if (current.left == null) {
            System.out.printf("%s: %d \n", "Smallest", current.data);
            System.out.printf("%s: %d \n", "Largest", current.right.data);
        } else if (current.right == null) {
            System.out.printf("%s: %d \n", "Smallest", current.left.data);
            System.out.printf("%s: %d \n", "Largest", current.data);
        } else {
            printSearch(current.left, true);
            printSearch(current.right, false);
        }
    }

    private void printSearch(Node current, boolean isLeft) {
        if (isLeft && current.left != null) {
            current = current.left;
            printSearch(current, isLeft);
        } else if (!isLeft && current.right != null) {
            current = current.right;
            printSearch(current, isLeft);
        } else {
            System.out.printf("%s: %d \n", isLeft ? "Smallest" : "Largest", current.data);
        }
    }

    void printLeaf() {
        Node current = root;
        if (isEmpty()) {
            System.out.println("is empty");
        } else {
            printLeafNotNull(current);
        }
    }

    private void printLeafNotNull(Node current) {
        if(current.left != null) printLeafNotNull(current.left);
        if(current.right != null) printLeafNotNull(current.right);
        if (current.left == null && current.right == null) System.out.print(current.data + ", ");
    }

    int countLeaf() {
        Node current = root;
        if (isEmpty()) {
            System.out.println("is empty");
        } else {
            return countLeafNotNull(current);
        }
        return 0;
    }

    private int countLeafNotNull(Node current) {
        int left = current.left != null ? countLeafNotNull(current.left) : 0;
        int right = current.right != null ? countLeafNotNull(current.right) : 0;
        int currentData = current.left == null && current.right == null ? 1 : 0;
        return left + right + currentData;
    }
}