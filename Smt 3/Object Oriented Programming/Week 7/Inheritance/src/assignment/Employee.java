package assignment;

public class Employee {
    private String nip;
    private String name;
    private String address;

    public Employee(String nip, String name, String address) {
        this.nip = nip;
        this.name = name;
        this.address = address;
    }

    public String getNip() {
        return nip;
    }

    public String getName() {
        return name;
    }

    public String getAddress() {
        return address;
    }

    public int getSalary() {
        return 0;
    }
}
