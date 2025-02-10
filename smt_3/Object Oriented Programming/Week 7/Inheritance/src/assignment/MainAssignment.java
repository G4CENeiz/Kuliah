package assignment;

public class MainAssignment {
    public static void main(String[] args) {
        SalaryList list = new SalaryList();
        Lecturer lecturer1 = new Lecturer(
            "230001",
            "Alpha",
            "Home"
        );
        lecturer1.setCreditCount(18);
        lecturer1.setCreditTariff(50_000);
        Lecturer lecturer2 = new Lecturer(
            "230002",
            "Beta",
            "Home"
        );
        lecturer2.setCreditCount(19);
        lecturer2.setCreditTariff(45_000);
        Lecturer lecturer3 = new Lecturer(
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
