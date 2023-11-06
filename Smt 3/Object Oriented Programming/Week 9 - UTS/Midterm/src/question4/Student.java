package question4;

public class Student {
    String nim, name, address;
    char gender;

    public Student() {
    }

    // item a.
    public Student(String nim, String name, String address, char gender) {
        this.nim = nim;
        this.name = name;
        this.address = address;
        this.gender = gender;
    }

    public static void main(String[] args) {
        // item b.
        Student student = new Student("220001", "Alpha", "Home", 'M');
        System.out.println(student);
    }
}
