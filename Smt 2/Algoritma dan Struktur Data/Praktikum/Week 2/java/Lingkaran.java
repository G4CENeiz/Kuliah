/* */
public class Lingkaran {
    double phi = Math.PI, r;
    Lingkaran() {

    }
    Lingkaran(double r) {
        this.r = r;
    }
    double hitungLuas() {
        return phi * r * r;
    }
    double hitungKeliling() {
        return 2 * r * phi;
    }
}
