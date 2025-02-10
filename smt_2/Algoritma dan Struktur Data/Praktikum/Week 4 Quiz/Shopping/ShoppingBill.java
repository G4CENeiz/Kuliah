package Shopping;

public class ShoppingBill {
    String BillId;
    String CustomerId;
    String CustomerName;
    String date;
    double[] price = new double[4];
    String couponCode;
    int deliveryDistance;

    public int calcDiscount() {
        double total = 0;
        for (int i = 0; i < price.length; i++) {
            total += price[i];
        }
        double discount = 1;
        switch (couponCode) {
            case "GIFT10" -> discount = 0.90;
            case "GIFT15" -> discount = 0.85;
            case "GIFT17" -> discount = 0.83;
            default -> discount = 1;
        }
        total *= discount;
        return (int) total;
    }

    public int calcShippingCost() {
        int costPerKilo = 1_000;
        double discount = 1;
        for (int i = 0; i < price.length; i++) {
            if (price[i] > 75_000) {
                discount = 0.95;
            }
        }
        double ShippingCost = deliveryDistance * costPerKilo * discount;
        return (int) ShippingCost;
    }

    public int calcTotalPayment() {
        return calcDiscount() + calcShippingCost();
    }
}
