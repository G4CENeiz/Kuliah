package classrelationship.experiment2;

public class MainExperiment2 {
    public static void main(String[] args) {
        Car car = new Car();
        car.setBrand("Avanza");
        car.setCost(350_000);

        Driver driver = new Driver();
        driver.setName("John Doe");
        driver.setFee(200_000);

        User user = new User();
        user.setName("Jane Doe");
        user.setCar(car);
        user.setDriver(driver);
        user.setDay(2);

        System.out.println("Total Cost = " + user.calulateTotalCost());
    }
}
