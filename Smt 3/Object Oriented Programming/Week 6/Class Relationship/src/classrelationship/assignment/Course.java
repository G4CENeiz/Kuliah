package classrelationship.assignment;

public class Course {
    private String name;
    private String code;
    private Classroom classroom;
    private Lecturer lecturer;

    public Course(String name, String code, Classroom classroom, Lecturer lecturer) {
        this.name = name;
        this.code = code;
        this.classroom = classroom;
        this.lecturer = lecturer;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }

    public void setClassroom(Classroom classroom) {
        this.classroom = classroom;
    }

    public Classroom getClassroom() {
        return classroom;
    }

    public void setLecturer(Lecturer lecturer) {
        this.lecturer = lecturer;
    }

    public Lecturer getLecturer() {
        return lecturer;
    }

    public String info() {
        String info = "";
        info += String.format("Course Name: %s %n", name);
        info += String.format("Course Code: %s %n", code);
        info += String.format("Classroom  : %n%s", classroom.info());
        info += String.format("Lecturer   : %n%s", lecturer.info());
        return info;
    }
}
