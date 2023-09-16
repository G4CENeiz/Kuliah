package Experiment1;

public class MotorDemo {
    public static void main(String[] args) {
        Motor motor = new Motor();
        motor.printStatus();
        motor.velocity = 50;
        motor.printStatus();
    }
}
