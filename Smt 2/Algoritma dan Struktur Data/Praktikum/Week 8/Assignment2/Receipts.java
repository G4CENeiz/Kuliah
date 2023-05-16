package Assignment2;

public class Receipts {
    int transactionID, quantity;
    String date;
    double transactionTotal;

    public Receipts(int transactionID, String date, int quantity, double transactionTotal) {
        this.transactionID = transactionID;
        this.date = date;
        this.quantity = quantity;
        this.transactionTotal = transactionTotal;
    }
}
