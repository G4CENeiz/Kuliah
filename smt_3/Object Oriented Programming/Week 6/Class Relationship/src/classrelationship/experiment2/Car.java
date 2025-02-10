package classrelationship.experiment2;

public class Car {
    private String brand;
    private int cost;

    public Car() {
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getBrand() {
        return brand;
    }

    public void setCost(int cost) {
        this.cost = cost;
    }

    public int getCost() {
        return cost;
    }

    public int calculateCarCost(int day) {
        return cost * day;
    }
}
