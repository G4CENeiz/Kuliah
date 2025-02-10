package polymorphism.assignment;

public class WalkingZombie extends Zombie {
    public WalkingZombie(int health, int level) {
        this.health = health;
        this.level = level;
    }

    @Override
    public void heal() {
        if (level == 1) {
            health += health * 0.1;
        } else if (level == 2) {
            health += health * 0.3;
        } else if (level == 3) {
            health += health * 0.4;
        }
    }

    @Override
    public void destroyed() {
        health -= Math.floor(health * 0.2);
    }

    @Override
    public String getZombieInfo() {
        String info = "Walking Zombie Data = \n";
        info += String.format("Health = %d %n", health);
        info += String.format("Level = %d %n", level);
        return info;
    }
}
