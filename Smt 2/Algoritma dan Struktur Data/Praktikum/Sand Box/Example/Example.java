package Example;

public class Example {
    String name;
    int id;
    String[] data;

    public Example(String name, int id, String[] data) {
        this.name = name;
        this.id = id;
        this.data = data;
    }

    public void print() {
        System.out.printf("%s %d: ", name, id);
        for (int i = 0; i < data.length; i++) {
            System.out.printf("%s", data[i]);
        }
    }
}
