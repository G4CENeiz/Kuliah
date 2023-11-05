package assignment;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

class EmployeeMain {
    private String nip;
    private String name;
    private String address;

    public EmployeeMain(String nip, String name, String address) {
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

class LecturerMain extends EmployeeMain {
    private int creditCount;
    private int creditTariff;

    public LecturerMain(String nip, String name, String address) {
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

class SalaryListMain {
    public List<EmployeeMain> employeeList;

    public SalaryListMain() {
        this.employeeList = new ArrayList<EmployeeMain>();
    }

    public void addEmployee(EmployeeMain employee) {
        this.employeeList.add(employee);
    }

    public void printSalaryList() {
        System.out.println("Employee salary list:");
        for (EmployeeMain employee : this.employeeList) {
            System.out.println(String.format(Locale.ITALY,"%s: Rp %,d", employee.getName(), employee.getSalary()));
        }
    }
}

public class MainJoin {
    public static void main(String[] args) {
        SalaryListMain list = new SalaryListMain();
        LecturerMain lecturer1 = new LecturerMain(
            "230001",
            "Alpha",
            "Home"
        );
        lecturer1.setCreditCount(18);
        lecturer1.setCreditTariff(50_000);
        LecturerMain lecturer2 = new LecturerMain(
            "230002",
            "Beta",
            "Home"
        );
        lecturer2.setCreditCount(19);
        lecturer2.setCreditTariff(45_000);
        LecturerMain lecturer3 = new LecturerMain(
            "230003",
            "Charlie",
            "Home"
        );
        lecturer3.setCreditCount(22);
        lecturer3.setCreditTariff(47_500);
        list.addEmployee(lecturer1);
        list.addEmployee(lecturer2);
        list.addEmployee(lecturer3);
        list.printSalaryList();
    }
}
