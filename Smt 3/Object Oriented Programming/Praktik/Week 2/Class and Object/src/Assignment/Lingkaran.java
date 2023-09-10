package Assignment;

public class Lingkaran {
    public double phi = 3.141592;
    public double r;

    public double hitungLuas() {
        return phi * r * r;
    }

    public double hitungKeliling() {
        return 2 * phi * r;
    }
}
