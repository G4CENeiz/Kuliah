package StockManagement;

public class ItemMain {
    public static void main(String[] args) {
        Item[] listItems = new Item[9];
        listItems[0] = new Item(16030927, "Indomilk", "drink", 100);
        listItems[1] = new Item(16100617, "Sprite", "drink", 70);
        listItems[2] = new Item(16240401, "Yakult", "drink", 500);
        listItems[3] = new Item(16270525, "Indomie", "food", 250);
        listItems[4] = new Item(16971204, "Oreo", "food", 320);
        listItems[5] = new Item(16100727, "Chocochips", "food", 120);
        listItems[6] = new Item(16460329, "Ballpoint", "stationary", 75);
        listItems[7] = new Item(16320421, "Pencil", "stationary", 110);
        listItems[8] = new Item(16180729, "Book", "stationary", 57);
        ItemSearch itemSearch = new ItemSearch(listItems);
    }
}
