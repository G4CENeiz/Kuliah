package assignment;

public class NodeCustomer {
    Customer data;
    NodeCustomer next;

    public NodeCustomer(Customer data, NodeCustomer next) {
        this.data = data;
        this.next = next;
    }
}
