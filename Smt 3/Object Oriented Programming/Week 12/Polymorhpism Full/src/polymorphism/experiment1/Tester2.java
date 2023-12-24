package polymorphism.experiment1;

public class Tester2 {
    public static void main(String[] args) {
        PermanentEmployee pEmp = new PermanentEmployee("Alpha", 420);
        Employee e;
        e = pEmp;
        System.out.println("" + e.getEmployeeInfo());
        System.out.println("------------------");
        System.out.println("" + pEmp.getEmployeeInfo());
    }
}
