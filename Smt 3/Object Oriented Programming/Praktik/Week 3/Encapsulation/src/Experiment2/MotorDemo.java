package Experiment2;

public class MotorDemo {
    public static void main(String[] args) {
        Motor motor = new Motor();
        motor.printStatus();
        motor.increaseSpeed();

        motor.turnIgnitionOn();
        motor.printStatus();

        motor.increaseSpeed();
        motor.printStatus();

        motor.increaseSpeed();
        motor.printStatus();

        motor.increaseSpeed();
        motor.printStatus();

        motor.turnIgnitionOff();
        motor.printStatus();
    }
}
