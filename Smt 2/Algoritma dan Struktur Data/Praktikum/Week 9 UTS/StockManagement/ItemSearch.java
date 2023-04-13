package StockManagement;

public class ItemSearch {
    Item[] listItems;

    public ItemSearch(Item[] listItems) {
        this.listItems = listItems;
    }

    /*
     * adding new item in the list
     * creating new list with +1 length and storing every item in that list
     * and then at last appending the new item using the parameter with the item contructor
     */
    public void addItem(int itemCode, String name, String category, int initialStock) {
        Item[] temp = new Item[listItems.length+1];
        for (int i = 0; i < listItems.length; i++) {
            temp[i] = listItems[i];
        }
        temp[temp.length-1] = new Item(itemCode, name, category, initialStock);
        listItems = temp;
    }

    /*
     * displaying all the item by using each item display() function
     */
    public void displayItem() {
        for (Item item : listItems) {
            item.display();
            System.out.println("----------------------------------------------------------------");
        }
    }

    public void sortAscendingByInitialStock() {
        Item[] temp = listItems;
        
        for (int i = 0; i < temp.length-1; i++) {
            for (int j = 0; j < temp.length-i; j++) {
                if (temp[j].initialStock > temp[j-1].initialStock) {
                    /*
                     * swap
                    */
                    Item itemTemp = temp[j];
                    temp[j] = temp[j-1];
                    temp[j-1] = itemTemp;
                }
            }
        }

        listItems = temp;
    }
    
    public void sortAscendingByItemCode() {
        Item[] temp = listItems;
        
        for (int i = 0; i < temp.length-1; i++) {
            for (int j = 0; j < temp.length-i; j++) {
                if (temp[j].itemCode > temp[j-1].itemCode) {
                    /*
                     * swap
                    */
                    Item itemTemp = temp[j];
                    temp[j] = temp[j-1];
                    temp[j-1] = itemTemp;
                }
            }
        }

        listItems = temp;
    }
    
    public void sortAscendingByName() {
        Item[] temp = listItems;
        
        for (int i = 0; i < temp.length-1; i++) {
            for (int j = 0; j < temp.length-i; j++) {
                if (temp[j].name.charAt(0) > temp[j-1].name.charAt(0)) {
                    /*
                     * swap
                    */
                    Item itemTemp = temp[j];
                    temp[j] = temp[j-1];
                    temp[j-1] = itemTemp;
                }
            }
        }

        listItems = temp;
    }
    
    public void sortAscendingByCategory() {
        Item[] temp = listItems;
        
        for (int i = 0; i < temp.length-1; i++) {
            for (int j = 0; j < temp.length-i; j++) {
                if (temp[j].category.charAt(0) > temp[j-1].category.charAt(0)) {
                    /*
                     * swap
                    */
                    Item itemTemp = temp[j];
                    temp[j] = temp[j-1];
                    temp[j-1] = itemTemp;
                }
            }
        }

        listItems = temp;
    }


}
