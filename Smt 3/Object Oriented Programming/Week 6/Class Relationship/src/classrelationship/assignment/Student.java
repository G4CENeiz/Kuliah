package classrelationship.assignment;

public class Student {
    private String name;
    private String NIM;

    public Student(String name, String NIM) {
        this.name = name;
        this.NIM = NIM;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setNIM(String NIM) {
        this.NIM = NIM;
    }

    public String getNIM() {
        return NIM;
    }

    public String info() {
        String info = "";
        info += String.format("Name: %s %n", name);
        info += String.format("NIM : %s %n", NIM);
        return info;
    }
}
