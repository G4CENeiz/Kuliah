package Assignment4;

public class Student {
    String name;
    int nim;
    double gpa;

    public Student(String name, int NIM, double GPA) {
        this.name = name;
        this.nim = NIM;
        this.gpa = GPA;
    }

    public void print() {
        System.out.println("================================");
        System.out.printf("NIM  : %d\n", nim);
        System.out.printf("Name : %s\n", name);
        System.out.printf("GPA  : %.2f\n", gpa);
    }
}
