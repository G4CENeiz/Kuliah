import java.util.List;

public class Subject {
    // defining class fields
    private String subjectName;
    private double credit;
    private List<Double> studentsGrade;

    // defining constructor
    public Subject(String subjectName, double credit, List<Double> studentsGrade) {
        this.subjectName = subjectName;
        this.credit = credit;
        this.studentsGrade = studentsGrade;
    }

    // field getter setter
    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
    }

    public String getSubjectName() {
        return subjectName;
    }

    public void setCredit(double credit) {
        this.credit = credit;
    }

    public double getCredit() {
        return credit;
    }

    public void setStudentsGrade(List<Double> studentsGrade) {
        this.studentsGrade = studentsGrade;
    }

    public List<Double> getStudentsGrade() {
        return studentsGrade;
    }

    // defining method to calculate weight
    public double calculateWeight() {
        double sum = 0;
        for (int i = 0; i < studentsGrade.size(); i++) {
            sum += studentsGrade.get(i);
        }
        return sum/studentsGrade.size();
    }
    // overload method with new param
    public double calculateWeight(List<Double> studentsWeight) {
        double sum = 0;
        for (int i = 0; i < studentsGrade.size(); i++) {
            sum += studentsGrade.get(i) * studentsWeight.get(i);
        }
        return sum/studentsGrade.size();
    }
}
