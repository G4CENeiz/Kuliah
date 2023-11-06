package experiment1;

public class Main {
    public static void main(String[] args) {
        Manager[] managers = new Manager[2];
        Staff[] managerOneStaffs = new Staff[2];
        Staff[] managerTwoStaffs = new Staff[3];

        // Managers Instatiation

        managers[0] = new Manager();
        managers[0].setName("Alpha");
        managers[0].setNip("230001");
        managers[0].setBracket("1");
        managers[0].setBonus(5_000_000);
        managers[0].setSection("Alpha Squad");

        managers[1] = new Manager();
        managers[1].setName("Delta");
        managers[1].setNip("230004");
        managers[1].setBracket("1");
        managers[1].setBonus(2_500_000);
        managers[1].setSection("Delta Squad");

        // Alpha Squad Member

        managerOneStaffs[0] = new Staff();
        managerOneStaffs[0].setName("Bravo");
        managerOneStaffs[0].setNip("230002");
        managerOneStaffs[0].setBracket("2");
        managerOneStaffs[0].setOvertime(10);
        managerOneStaffs[0].setOvertimePay(10_000);

        managerOneStaffs[1] = new Staff();
        managerOneStaffs[1].setName("Charlie");
        managerOneStaffs[1].setNip("230003");
        managerOneStaffs[1].setBracket("2");
        managerOneStaffs[1].setOvertime(10);
        managerOneStaffs[1].setOvertimePay(55_000);
        
        managers[0].setStaffs(managerOneStaffs);
        
        // Delta Squad Member
        
        managerTwoStaffs[0] = new Staff();
        managerTwoStaffs[0].setName("Echo");
        managerTwoStaffs[0].setNip("230005");
        managerTwoStaffs[0].setBracket("3");
        managerTwoStaffs[0].setOvertime(15);
        managerTwoStaffs[0].setOvertimePay(5_500);

        managerTwoStaffs[1] = new Staff();
        managerTwoStaffs[1].setName("Foxtrot");
        managerTwoStaffs[1].setNip("230006");
        managerTwoStaffs[1].setBracket("4");
        managerTwoStaffs[1].setOvertime(5);
        managerTwoStaffs[1].setOvertimePay(100_000);

        managerTwoStaffs[2] = new Staff();
        managerTwoStaffs[2].setName("Golf");
        managerTwoStaffs[2].setNip("230007");
        managerTwoStaffs[2].setBracket("3");
        managerTwoStaffs[2].setOvertime(6);
        managerTwoStaffs[2].setOvertimePay(20_000);

        managers[1].setStaffs(managerTwoStaffs);

        // Managers Info

        managers[0].showInfo();
        managers[1].showInfo();
    }
}

class Employee {
    private String name;
    private String nip;
    private String bracket;
    private double salary;

    public void setName(String name) {
        this.name = name;
    }

    public void setNip(String nip) {
        this.nip = nip;
    }

    public void setBracket(String bracket) {
        this.bracket = bracket;

        switch (bracket.charAt(0)) {
            case '1': 
                this.salary = 5_000_000;
                break;
            case '2': 
                this.salary = 3_000_000;
                break;
            case '3':
                this.salary = 2_000_000;
                break;
            case '4':
                this.salary = 1_000_000;
                break;
            case '5':
                this.salary = 750_000;
                break;
        }
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public String getName() {
        return name;
    }

    public String getNip() {
        return nip;
    }

    public String getBracket() {
        return bracket;
    }

    public double getSalary() {
        return salary;
    }
}

class Staff extends Employee {
    private int overtime;
    private double overtimePay;

    public void setOvertime(int overtime) {
        this.overtime = overtime;
    }

    public int getOvertime() {
        return overtime;
    }

    public void setOvertimePay(double overtimePay) {
        this.overtimePay = overtimePay;
    }

    public double getOvertimePay() {
        return overtimePay;
    }

    public double getSalary(int overtime, double overtimePay) {
        return super.getSalary() + overtime * overtimePay;
    }

    @Override
    public double getSalary() {
        return super.getSalary() + overtime * overtimePay;
    }

    public void showInfo() {
        System.out.printf("NIP          : %s%n", super.getNip());
        System.out.printf("Name         : %s%n", super.getName());
        System.out.printf("Bracket      : %s%n", super.getBracket());
        System.out.printf("Overtime     : %d%n", this.getOvertime());
        System.out.printf("Overtime Pay : %,.0f%n", this.getOvertimePay());
        System.out.printf("Salary       : %,.0f%n", this.getSalary());
    }
}

class Manager extends Employee {
    private double bonus;
    private String section;
    private Staff[] staffs;

    public void setBonus(double bonus) {
        this.bonus = bonus;
    }

    public double getBonus() {
        return bonus;
    }

    public void setSection(String section) {
        this.section = section;
    }

    public String getSection() {
        return section;
    }

    public void setStaffs(Staff[] staffs) {
        this.staffs = staffs;
    }

    public Staff[] getStaffs() {
        return staffs;
    }

    public void viewStaff() {
        System.out.println("--------------------------------");
        for (Staff staff : staffs) {
            staff.showInfo();
            System.out.println("--------------------------------");
        }
    }

    public void showInfo() {
        System.out.printf("Manager of   : %s%n", this.getSection());
        System.out.printf("NIP          : %s%n", this.getNip());
        System.out.printf("Name         : %s%n", this.getName());
        System.out.printf("Bracket      : %s%n", this.getBracket());
        System.out.printf("Bonus        : %,.0f%n", this.getBonus());
        System.out.printf("Salary       : %,.0f%n", this.getSalary());
        System.out.printf("Section      : %s%n", this.getSection());
        this.viewStaff();
    }

    @Override
    public double getSalary() {
        return super.getSalary() + bonus;
    }
}
