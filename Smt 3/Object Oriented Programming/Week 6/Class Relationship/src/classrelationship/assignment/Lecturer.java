package classrelationship.assignment;

public class Lecturer {
    private String name;
    private String NIDN;

    public Lecturer(String name, String NIDN) {
        this.name = name;
        this.NIDN = NIDN;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setNIDN(String NIDN) {
        this.NIDN = NIDN;
    }

    public String getNIDN() {
        return NIDN;
    }

    public String info() {
        String info = "";
        info += String.format("Name: %s %n", getName());
        info += String.format("NIDN: %s %n", getNIDN());
        return info;
    }
}
