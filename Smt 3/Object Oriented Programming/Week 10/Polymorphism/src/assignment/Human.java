package assignment;

public class Human {
    public void breath() {
        System.out.println("breath");
    }

    public void eat() {
        System.out.println("Om Nom Nom");
    }
}

class Lecturer extends Human {
    @Override
    public void eat() {
        System.out.println("Slurp");
    }

    public void overtime() {
        System.out.println("Doing overtime just like a horse");
    }
}

class Student extends Human {
    @Override
    public void eat() {
        System.out.println("Chomp Chomp Chomp");
    }

    public void sleep() {
        System.out.println("ZZZ - Atarashii Gakko No Leaders");
    }
}
