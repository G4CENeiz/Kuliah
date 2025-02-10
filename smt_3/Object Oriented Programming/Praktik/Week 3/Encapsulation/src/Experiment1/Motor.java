package Experiment1;

public class Motor {
    public int velocity = 0;
    public boolean ignitionOn = false;

    public void printStatus() {
        if (ignitionOn == true) {
            System.out.println("Ignition On");
        } else {
            System.out.println("Ignition Off");
        }
        System.out.println("Velocity " + velocity + "\n");
    }
}
