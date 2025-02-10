public class PacMan {
    int x, y, height, width;
    
    PacMan() {

    }

    PacMan(int x, int y, int height, int width) {
        this.x = x;
        this.y = y;
        this.width = width;
        this.height = height;
    }

    void moveLeft() {
        if (x > 0) x--;
    }

    void moveRight() {
        if (x < width) x++;
    }

    void moveDown() {
        if (y > 0) y--;
    }

    void moveUp() {
        if (y < height) y++;
    }

    void printCoordinate() {
        System.out.printf("x: %d y: %d", x, y);
    }
}
