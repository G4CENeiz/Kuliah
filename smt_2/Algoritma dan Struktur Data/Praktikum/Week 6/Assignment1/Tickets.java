package Assignment1;

public class Tickets {
    String airlines, destination, origin;
    int price;

    public Tickets(String a, String dest, String origin, int price) {
        airlines = a;
        destination = dest;
        this.origin = origin;
        this.price = price;
    }
}
