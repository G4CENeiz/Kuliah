package week7;

public class SearchStudent {
    Students[] listStd;
    int idx;

    public SearchStudent(int amount) {
        listStd = new Students[amount];
    }

    public void add(Students std) {
        if (idx < listStd.length) {
            listStd[idx] = std;
            idx++;
        } else {
            System.out.println("Data is already full");
        }
    }

    public void display() {
        for (Students students : listStd) {
            students.display();
            System.out.println("--------------------------------");
        }
    }

    public int findSeqSearch(String search) {
        int potition = -1;
        for (int i = 0; i < listStd.length; i++) {
            if (listStd[i].name == search) {
                potition = i;
                break;
            }
        }
        return potition;
    }

    public void showPotition(int x, int pos) {
        if (pos != -1) {
            System.out.println("Data : " + x + " is found in index-" + pos);
        } else {
            System.out.println("Data : " + x + " is not found");
        }
    }

    public void showData(int x, int pos) {
        if (pos != -1) {
            System.out.println("NIM \t : " + x);
            System.out.println("Name \t : " + listStd[pos].name);
            System.out.println("Age \t : " + listStd[pos].age);
            System.out.println("IPK \t : " + listStd[pos].gpa);
        } else {
            System.out.println("Data " + x + " is not found");
        }
    }

    public int findBinarySearch(int find, int left, int right) {
        sort();
        int mid;
        if (right >= left) {
            mid = (left + right) / 2;
            if (find == listStd[mid].nim) {
                if (mid == listStd.length - 1 || listStd[mid + 1].nim > find) {
                    return mid;
                } else {
                    return findBinarySearch(find, mid + 1, right);
                }
            } else if (listStd[mid].nim > find) {
                return findBinarySearch(find, left, mid - 1);
            } else {
                return findBinarySearch(find, mid + 1, right);
            }
        }
        return -1;
    }

    private void sort() {
        for (int i = 0; i < listStd.length - 1; i++) {
            for (int j = 0; j < listStd.length - i - 1; j++) {
                if (listStd[j].nim > listStd[j+1].nim) {
                    Students temp = listStd[j];
                    listStd[j] = listStd[j+1];
                    listStd[j+1] = temp;
                }
            }
        }
    }

    public int[] findInArr2D(int search, int[][] arr2d) {
        for (int i = 0; i < arr2d.length; i++) {
            for (int j = 0; j < arr2d[i].length; j++) {
                if (arr2d[i][j] == search) return new int[]{i, j};
             }
        }
        return null;
    }
}
