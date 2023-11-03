package classrelationship.assignment;

import java.util.ArrayList;
import java.util.List;

public class ClassGroup {
    private int grade;
    private char letterName;
    private List<Student> students = new ArrayList<Student>();
    private List<Course> courses = new ArrayList<Course>();

    public ClassGroup(int grade, char letterName) {
        this.grade = grade;
        this.letterName = letterName;
    }

    public void setGrade(int grade) {
        this.grade = grade;
    }

    public int getGrade() {
        return grade;
    }

    public void setLetterName(char letterName) {
        this.letterName = letterName;
    }

    public char getLetterName() {
        return letterName;
    }

    public void setStudent(Student students) {
        this.students.add(students);
    }

    public List<Student> getStudents() {
        return students;
    }

    public void setCourse(Course course) {
        this.courses.add(course);
    }

    public List<Course> getCourses() {
        return courses;
    }

    public String info() {
        String info = "";
        info += String.format("Class       : %d%c %n", grade, letterName);
        info += String.format("Student List: %n");
        for (Student student : students) {
            info += student.info();
        }
        info += String.format("Course List : %n");
        for (Course course : courses) {
            info += course.info();
        }
        return info;
    }
}
