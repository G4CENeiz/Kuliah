import java.util.List;

public class Representative {
    // defining class fields
    private List<Student> students;
    private List<Subject> subjects;

    // field getter setter
    public void setStudents(List<Student> students) {
        this.students = students;
    }

    public List<Student> getStudents() {
        return students;
    }

    public void setSubjects(List<Subject> subjects) {
        this.subjects = subjects;
    }

    public List<Subject> getSubjects() {
        return subjects;
    }

    // define method to list student and subject
    public void displayStudentList() {
        System.out.println("Student and Subject List");
        for (int i = 0; i < getStudents().size(); i++) {
            String name = getStudents().get(i).getName();
            double nim = getStudents().get(i).getNim();
            double grade = getStudents().get(i).calcualteGPA();
            String subjectName = getSubjects().get(i).getSubjectName();
            double credit = getSubjects().get(i).getCredit();
            double weight = getSubjects().get(i).calculateWeight();

            System.out.printf("Student  : %s %n", name);
            System.out.printf("  NIM    : %.2f %n", nim);
            System.out.printf("  GPA    : %.2f %n", grade);
            System.out.printf("Subject  : %s %n", subjectName);
            System.out.printf("  Credit : %.2f %n", credit);
            System.out.printf("  Weight : %.2f %n", weight);
        }
    }
}
