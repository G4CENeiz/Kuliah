import java.util.List;

public class Student {
    // defining class fields
    private String name;
    private int nim;
    private List<Double> grades;

    // defining constructor
    public Student(String name, int nim, List<Double> grades) {
        this.name = name;
        this.nim = nim;
        this.grades = grades;
    }

    // field getter setter
    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setNim(int nim) {
        this.nim = nim;
    }

    public int getNim() {
        return nim;
    }

    public void setGrade(List<Double> grades) {
        this.grades = grades;
    }

    public List<Double> getGrade() {
        return grades;
    }

    // defining method to calculate GPA
    public double calcualteGPA() {
        double sum = 0;
        for (double grade : getGrade()) {
            sum += grade;
        }
        return sum/getGrade().size();
    }

    // overload method with new param
    public double calcualteGPA(List<Double> credits) {
        double sum = 0;
        for (int i = 0; i < getGrade().size(); i++) {
            sum += getGrade().get(i) * credits.get(i);
        }
        return sum/getGrade().size();
    }
}
