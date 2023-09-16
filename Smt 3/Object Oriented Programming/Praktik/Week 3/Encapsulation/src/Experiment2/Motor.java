package Experiment2;

public class Motor {
    private int velocity = 0;
    private boolean ignitionOn = false;

    public void turnIgnitionOn() {
        ignitionOn = true;
    }

    public void turnIgnitionOff() {
        ignitionOn = false;
        velocity = 0;
    }

    public void increaseSpeed() {
        if (ignitionOn == true) {
            if (velocity == 100) {
                System.out.println("Maximum velocity has been reached");
            } else {
                velocity += 5;
            }
        } else {
            System.out.println("Can't increase the velocity because the ignition is off\n");
        }
    }

    public void decreaseSpeed() {
        if (ignitionOn == true) {
            velocity -= 5;
        } else {
            System.out.println("Can't decrease the velocity because the ignition is off\n");
        }
    }

    public void printStatus() {
        if (ignitionOn == true) {
            System.out.println("Ignition On");
        } else {
            System.out.println("Ignition Off");
        }
        System.out.println("Velocity " + velocity + "\n");
    }
}
