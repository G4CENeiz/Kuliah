package assignment;

public class Queue {
    int max,
    front,
    rear,
    size;
    Student[] stdQueue;

    public Queue(int max) {
        this.max = max;
    }

    public void create() {
        stdQueue = new Student[max];
        size = 0;
        front = rear = -1;
    }

    public boolean isEmpty() {
        if (size == 0) {
            return true;
        } else {
            return false;
        }
    }

    public boolean isFull() {
        if (size == max) {
            return true;
        } else {
            return false;
        }
    }

    public void peek() {
        if (!isEmpty()) {
            System.out.println("The first element : " + stdQueue[front].name + " " + stdQueue[front].nim + " " + stdQueue[front].classNumber + " " + stdQueue[front].gpa);
        } else {
            System.out.println("Queue is still empty");
        }
    }

    public void peekRear() {
        if (!isEmpty()) {
            System.out.println("The last element : " + stdQueue[front].name + " " + stdQueue[front].nim + " " + stdQueue[front].classNumber + " " + stdQueue[front].gpa);
        } else {
            System.out.println("Queue is still empty");
        }
    }

    public void peekPosition(String nim) {
        boolean found = false;
        for (int i = front; i < max; i = (i + 1) % max) {
            if (stdQueue[i].nim == nim) {
                System.out.printf("student %s is in postion %d\n", nim, i);
                found = true;
            }
        }
        if (!found) {
            System.out.println("Student not found in queue");
        }
    }

    public void print() {
        if (isEmpty()) {
            System.out.println("Queue is still empty");
        } else {
            int i = front;
            while (i != rear) {
                System.out.println("The first element : " + stdQueue[front].name + " " + stdQueue[front].nim + " " + stdQueue[front].classNumber + " " + stdQueue[front].gpa);
                i = (i+1) % max;
            }
            System.out.println(stdQueue[front].name + " " + stdQueue[front].nim + " " + stdQueue[front].classNumber + " " + stdQueue[front].gpa);
            System.out.println("Element amount : " + size);
        }
    }

    public void printStudents(int position) {
        for (int i = front; i < max; i = (i + 1) % max) {
            if (i == position) {
                System.out.println("student in position #" + position+ " : " + stdQueue[front].name + " " + stdQueue[front].nim + " " + stdQueue[front].classNumber + " " + stdQueue[front].gpa);
            }
        }
    }

    public void enqueue(Student data) {
        if (isFull()) {
            System.out.println("Queue is already full");
        } else {
            if (isEmpty()) {
                front = rear = 0;
            } else {
                if (rear == max - 1) {
                    rear = 0;
                } else {
                    rear++;
                }
            }
            stdQueue[rear] = data;
            size++;
        }
    }

    public Student dequeue() {
        Student data = new Student("", "", 0, 0);
        if (isEmpty()) {
            System.out.println("Queue is still empty");
        } else {
            data = stdQueue[front];
            size--;
            if (isEmpty()) {
                front = rear = -1;
            } else {
                if (front == max - 1) {
                    front = 0;
                } else {
                    front++;
                }
            }
        }
        return data;
    }
}