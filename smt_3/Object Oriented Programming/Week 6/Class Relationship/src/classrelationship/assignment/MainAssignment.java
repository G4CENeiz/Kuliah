package classrelationship.assignment;

public class MainAssignment {
    public static void main(String[] args) {
        ClassGroup internationalClassGroup = new ClassGroup(2, 'I');
        internationalClassGroup.setStudent(new Student("Alpha", "2241720001"));
        internationalClassGroup.setStudent(new Student("Beta", "2241720002"));
        internationalClassGroup.setStudent(new Student("Charlie", "2241720003"));
        internationalClassGroup.setStudent(new Student("Delta", "2241720004"));
        internationalClassGroup.setStudent(new Student("Echo", "2241720005"));
        internationalClassGroup.setStudent(new Student("Foxtrot", "2241720006"));

        Lecturer lecturer = new Lecturer("Vipkas Al Hadid Firdaus, S.T., M.T.", "0005059104");
        Classroom LSI2 = new Classroom("LSI2_6T", 8, 11);
        Course OOP = new Course("Object Oriented Programming", "RTI223007", LSI2, lecturer);
        internationalClassGroup.setCourse(OOP);

        Classroom LERP = new Classroom("LERP_7T", 8, 11);
        Course PracticumOOP = new Course("Practicum Object Oriented Programming", "RTI223008", LERP, lecturer);
        internationalClassGroup.setCourse(PracticumOOP);

        System.out.println(internationalClassGroup.info());
    }
}
