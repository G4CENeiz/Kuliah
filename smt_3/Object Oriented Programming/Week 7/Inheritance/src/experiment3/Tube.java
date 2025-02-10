package experiment3;

public class Tube extends Circle {
    protected int t;
    
    public void setSuperPhi(double phi) {
        super.phi = phi;
    }
    
    public void setSuperR(int r) {
        super.r = r;
    }

    public void setT(int t) {
        this.t = t;
    }

    public void volume() {
        double volume = super.phi * super.r * super.r * this.t;
        String text = String.format("Volume Tabung adalah: %.1f", volume);
        System.out.println(text);
    }
}
