package classrelationship.experiment2;

public class Driver {
    private String name;
    private int fee;

    public Driver() {
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setFee(int cost) {
        this.fee = cost;
    }

    public int getFee() {
        return fee;
    }

    public int calculateDriverFee(int day) {
        return fee * day;
    }
}
