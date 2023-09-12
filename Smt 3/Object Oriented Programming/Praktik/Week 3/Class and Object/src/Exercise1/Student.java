package Exercise1;

import java.util.List;

public class Student {
    public String name;
    public int studentId;
    public List<Subject> subjects;

    public void displayGrade() {
        System.out.println("Name        : " + name);
        System.out.println("Student ID  : " + studentId);
        for (int i = 0; i < subjects.size(); i++) {
            subjects.get(i).displayGrade();
        }
    }

    public void addSubject(Subject Grade) {
        subjects.add(Grade);
    }
}
