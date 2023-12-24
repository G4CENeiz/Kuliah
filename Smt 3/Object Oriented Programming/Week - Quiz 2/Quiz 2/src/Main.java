import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        // define grades
        List<Double> grades1 = new ArrayList<Double>();
        grades1.add(90.0);
        grades1.add(87.0);
        grades1.add(80.0);
        List<Double> grades2 = new ArrayList<Double>();
        grades2.add(80.0);
        grades2.add(90.0);
        grades2.add(87.0);

        // define students
        Student student1 = new Student("student 1", 0001, grades1);
        Student student2 = new Student("student 2", 0002, grades2);

        // add students to list
        List<Student> students = new ArrayList<Student>();
        students.add(student1);
        students.add(student2);

        // define subjects
        Subject subject1 = new Subject("subject 1", 0.5, grades1);
        Subject subject2 = new Subject("subject 2", 0.6, grades2);

        // add subjects to list
        List<Subject> subjects = new ArrayList<Subject>();
        subjects.add(subject1);
        subjects.add(subject2);

        // add students and subjects list to representative
        Representative representative = new Representative();
        representative.setStudents(students);
        representative.setSubjects(subjects);

        // display student list
        representative.displayStudentList();
    }
}
