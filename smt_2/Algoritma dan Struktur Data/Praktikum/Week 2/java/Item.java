public class Item {
    String name;
    int unitPrice, qty;

    Item() {

    }

    Item(String name, int unitPrice, int qty) {
        this.name = name;
        this.unitPrice = unitPrice;
        this.qty = qty;
    }

    int calculateTotalPrice() {
        return qty * unitPrice;
    }

    int calculateDiscount() {
        int totalPrice = calculateTotalPrice();
        if (totalPrice > 100_000) return (int) 0.9;
        if (totalPrice > 50_000) return (int) 0.95;
        return 1;
    }

    int calculateFinalPrice() {
        int totalPrice = calculateTotalPrice();
        int discount = calculateDiscount();
        return totalPrice * discount;
    }
}
