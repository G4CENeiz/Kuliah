package assignment;

public class Lecturer extends Employee {
    private int creditCount;
    private int creditTariff;

    public Lecturer(String nip, String name, String address) {
        super(nip, name, address);
    }

    public void setCreditCount(int creditCount) {
        this.creditCount = creditCount;
    }

    public void setCreditTariff(int creditTariff) {
        this.creditTariff = creditTariff;
    }

    @Override
    public int getSalary() {
        return creditCount * creditTariff;
    }
}
