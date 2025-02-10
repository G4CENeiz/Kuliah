package classrelationship.experiment3;

public class MainQuestion {
    public static void main(String[] args) {
        Employee conductor = new Employee("1234", "Spongebob Squarepants");
        Train train = new Train("New Style", "Bussiness", conductor);
        System.out.println(train.info());
    }
}
