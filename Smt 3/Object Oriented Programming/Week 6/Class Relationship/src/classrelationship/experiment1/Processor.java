package classrelationship.experiment1;

public class Processor {
    private String brand;
    private double cache;

    public Processor() {
    }

    public Processor(String brand, double cache) {
        this.brand = brand;
        this.cache = cache;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getBrand() {
        return brand;
    }

    public void setCache(double cache) {
        this.cache = cache;
    }

    public double getCache() {
        return cache;
    }

    public void info() {
        System.out.printf("Merk Processor = %s\n", brand);
        System.out.printf("Cache Memory = %.2f\n", cache);
    }
}
