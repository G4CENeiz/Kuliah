package assignment;

public class Triangle {
    private int angle;

    public int sumAngle(int angleA) {
        return 180 - angleA;
    }

    public int sumAngle(int angleA, int angleB) {
        return 180 - angleA - angleB;
    }

    public int circumference(int sideA, int sideB, int sideC) {
        return sideA + sideB + sideC;
    }

    public double circumference(int sideA, int sideB) {
        return sideA + sideB + Math.sqrt((sideA * sideA) + (sideB * sideB));
    }

    public void setAngle(int angle) {
        this.angle = angle;
    }

    public int getAngle() {
        return angle;
    }
}
