package Experiment4;

public class Member {
    private String name;
    private String address;
    private float balance;

    Member(String name, String address) {
        this.name = name;
        this.address = address;
        this.balance = 0;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getName() {
        return name;
    }

    public String getAddress() {
        return address;
    }

    public float getBalance() {
        return balance;
    }

    public void deposit(float cash) {
        balance += cash;
    }

    public void withdraw(float cash) {
        balance -= cash;
    }
}
