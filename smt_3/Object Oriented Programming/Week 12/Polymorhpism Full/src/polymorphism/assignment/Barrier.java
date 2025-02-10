package polymorphism.assignment;

public class Barrier implements Destroyable {
    private int strength;

    public Barrier(int strength) {
        this.strength = strength;
    }

    public void setStrength(int strength) {
        this.strength = strength;
    }

    public int getStrength() {
        return strength;
    }

    @Override
    public void destroyed() {
        strength -= 9;
    }

    public String getBarrierInfo() {
        return String.format("Barrier Strength = %d%n", strength);
    }
}
