package experiment2;

public class Main {
    public static void main(String[] args) {
        PermanentStaff permanentStaff = new PermanentStaff("Anu", "Home", "Fe Male", 34, 2_000_000, 250_000, 200_000, "2A", 100_000);
        permanentStaff.showPermanentStaffData();

        DailyStaff dailyStaff = new DailyStaff("Itu", "Alone", "Fe Male", 1738, 10_000, 100_000, 50_000, 100);
        dailyStaff.showDailyStaffData();
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
        System.out.println(String.format("Name              : %s", name));
        System.out.println(String.format("Address           : %s", address));
        System.out.println(String.format("Gender            : %s", gender));
        System.out.println(String.format("Age               : %d", age));
        System.out.println(String.format("Salary            : %,d", salary));
    }
}

class Manager extends Employee {
    public int bonus;

    public Manager() {
    }

    public void showManagerData() {
        super.showEmployeeData();
        System.out.println(String.format("Bonus             : %,d", bonus));
        System.out.println(String.format("Total Salary      : %,d", super.salary+bonus));
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
        System.out.println(String.format("Overtime          : %,d", overtime));
        System.out.println(String.format("Paycut            : %,d", paycut));
        System.out.println(String.format("Total Salary      : %,d", super.salary+overtime-paycut));
    }
}

class PermanentStaff extends Staff {
    public String bracket;
    public int insurance;
    
    public PermanentStaff() {
    }
    
    public PermanentStaff(String name, String address, String gender, int age, int salary, int overtime, int paycut, String bracket, int insurance) {
        super(name, address, gender, age, salary, overtime, paycut);
        this.bracket = bracket;
        this.insurance = insurance;
    }
    
    public void showPermanentStaffData() {
        String bar = "================================";
        String template = String.format("%%%ds%%-%ds%%%ds", 16,"Permanent Staff Data".length(), 16);
        System.out.println(String.format(template, bar,"Permanent Staff Data", bar));
        super.showStaffData();
        System.out.println(String.format("Bracket           : %s", bracket));
        System.out.println(String.format("Insurance         : %,d", insurance));
        System.out.println(String.format("Net Salary        : %,d", super.salary+overtime-paycut-insurance));
    }
}

class DailyStaff extends Staff {
    public int totalWorkHours;

    public DailyStaff() {
    }

    public DailyStaff(String name, String address, String gender, int age, int salary, int overtime, int paycut, int totalWorkHours) {
        super(name, address, gender, age, salary, overtime, paycut);
        this.totalWorkHours = totalWorkHours;
    }
    public void showDailyStaffData() {
        String bar = "================================";
        String template = String.format("%%%ds%%-%ds%%%ds", 16,"Daily Staff Data".length(), 16);
        System.out.println(String.format(template, bar,"Daily Staff Data", bar));
        super.showStaffData();
        System.out.println(String.format("Total Work Hours  : %d", totalWorkHours));
        System.out.println(String.format("Net Salary        : %,d", super.salary*totalWorkHours+overtime-paycut));
    }
}
