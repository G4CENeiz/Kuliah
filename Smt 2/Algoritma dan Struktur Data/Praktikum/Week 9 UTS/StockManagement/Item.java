package StockManagement;

public class Item {
    int itemCode;
    String name;
    String category;
    int initialStock;

    //Item class parametric constructor
    public Item(int itemCode, String name, String category, int initialStock) {
        this.itemCode = itemCode;
        this.name = name;
        this.category = category;
        this.initialStock = initialStock;
    }

    //Display item attributes
    public void display() {
        System.out.printf("Item Code    : %d \n", itemCode);
        System.out.printf("Name         : %s \n", name);
        System.out.printf("Category     : %s \n", category);
        System.out.printf("Initial Stock: %,d\n", initialStock);
    }
}
