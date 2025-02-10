package polymorphism.assignment;

public class JumpingZombie extends Zombie {
    public JumpingZombie(int health, int level) {
        this.health = health;
        this.level = level;
    }

    @Override
    public void heal() {
        if (level == 1) {
            health += health * 0.3;
        } else if (level == 2) {
            health += health * 0.4;
        } else if (level == 3) {
            health += health * 0.5;
        }
    }

    @Override
    public void destroyed() {
        health -= Math.floor(health * 0.1);
    }

    @Override
    public String getZombieInfo() {
        String info = "Jumping Zombie Data = \n";
        info += String.format("Health = %d %n", health);
        info += String.format("Level = %d %n", level);
        return info;
    }
}
