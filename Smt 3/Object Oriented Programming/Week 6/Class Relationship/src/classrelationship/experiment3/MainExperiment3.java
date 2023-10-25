package classrelationship.experiment3;

public class MainExperiment3 {
    public static void main(String[] args) {
        Employee conductor = new Employee("1234", "Spongebob Squarepants");
        Employee assistant = new Employee("4567", "Patrick Star");
        Train train = new Train("New Style", "Bussiness", conductor, assistant);
        System.out.println(train.info());
    }
}
