package experiment1;

public class Main {
    public static void main(String[] args) {
        Manager manager = new Manager();
        manager.name = "Anu";
        manager.address = "Home";
        manager.age = 101;
        manager.gender = "Fe male";
        manager.salary = 3_000_000;
        manager.bonus = 1_000_000;
        manager.showManagerData();
        
        Staff staff = new Staff();
        staff.name = "Itu";
        staff.address = "Alone";
        staff.age = 42;
        staff.gender = "Fe male";
        staff.salary = 2_000_000;
        staff.overtime = 500_000;
        staff.paycut = 250_000;
        staff.showStaffData();
    }
}

class Employee {
    public String name, address, gender;
    public int age, salary;

    public Employee() {
    }

    public Employee(String name, String address, String gender, int age, int salary) {
        this.name = name;
        this.address = address;
        this.gender = gender;
        this.age = age;
        this.salary = salary;
    }

    public void showEmployeeData() {
        System.out.println(String.format("Name          : %s", name));
        System.out.println(String.format("Address       : %s", address));
        System.out.println(String.format("Gender        : %s", gender));
        System.out.println(String.format("Age           : %d", age));
        System.out.println(String.format("Salary        : %,d", salary));
    }
}

class Manager extends Employee {
    public int bonus;

    public Manager() {
    }

    public void showManagerData() {
        super.showEmployeeData();
        System.out.println(String.format("Bonus         : %,d", bonus));
        System.out.println(String.format("Total Salary  : %,d", super.salary+bonus));
    }
}

class Staff extends Employee {
    public int overtime, paycut;
    
    public Staff() {
    }
    
    public Staff(String name, String address, String gender, int age, int salary, int overtime, int paycut) {
        super(name, address, gender, age, salary);
        this.overtime = overtime;
        this.paycut = paycut;
    }
    
    public void showStaffData() {
        super.showEmployeeData();
        System.out.println(String.format("Overtime      : %,d", overtime));
        System.out.println(String.format("Paycut        : %,d", paycut));
        System.out.println(String.format("Total Salary  : %,d", super.salary+overtime-paycut));
    }
}
