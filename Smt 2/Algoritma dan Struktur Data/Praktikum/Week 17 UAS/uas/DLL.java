

public class DLL {
    Node2P head;

    public DLL() {
        head = null;
    }
    
    //soal 1
    int[] toArray(){
        int dataCount = 0;
       Node2P current = head;
       if (isEmpty()) {
        dataCount = 0;
        System.out.println("list is empty");
        } else {
            dataCount = 1;
            do {
                dataCount++;
                current = current.next;
            } while (current.next != null);
        }
        int[] data = new int[dataCount];
        for (int i = 0; i < dataCount; i++) {
            data[i] = get(i);
        }
        return data;
    }

    //soal 2
    DLL sublist(int start, int end){
        Node2P current = head;
        DLL data = new DLL();
        for (int i = 0; i <= end; i++) {
            if (i >= start) {
                data.addLast(get(i));
            }
            current = current.next;
        }
        return data;
    }

    //soal 3
    void addAll(DLL list){
        Node2P currentList = list.head;
        if (isEmpty()) {
            System.out.println("List is empty");
        } else {
            do {
                addLast(currentList.data);
                currentList = currentList.next;
            } while (currentList != null);
        }
    }

    //soal 4
    boolean containsAll(DLL list){
        int[] thisList = toArray();
        int[] inputList = list.toArray();
        boolean bool3 = false;
        boolean[] bool2 = new boolean[inputList.length];
        for (int i = 0; i < inputList.length; i++) {
            boolean[] bool = new boolean[thisList.length];
            for (int j = 0; j < thisList.length; j++) {
                bool[j] = thisList[j] == inputList[i];
            }
            for (int j = 0; j < bool2.length; j++) { 
                for (boolean b : bool) {
                    if (b) {
                        bool2[j] = b;
                    }
                }
            }
        }
        for (boolean b : bool2) {
            if (b) {
                bool3 = b;
            }
        }
        return bool3;
    }

    //soal 5
    void removeAll(DLL list){
       Node2P currentList = list.head;
       if (isEmpty()) {
        System.out.println("list is empty");
       } else {
        do {
            deleteByData(currentList.data);
            currentList = currentList.next;
        } while (currentList != null);
       }
    }

    int get(int idx){
        if(idx<0||idx>=size()){
            System.out.println("Idx invalid!");
            return -1;
        }else{
            Node2P tmp = head;
            for(int i=0;i<idx;i++){
                tmp=tmp.next;
            }
            return tmp.data;
        }
    }

    void deleteByData(int data){
        Node2P tmp = head;
        while(tmp!=null){
            if(tmp.data == data){
                if(tmp.prev == null){
                    deleteFirst();
                }else if(tmp.next == null){
                    deleteLast();
                }else{
                    tmp.prev.next = tmp.next;
                    tmp.next.prev = tmp.prev;
                }
            }
            tmp = tmp.next;
        }
    }

    boolean isEmpty(){
        return head==null? true:false;
    }
    int size(){
        int n = 0;
        Node2P tmp = head;
        while (tmp!=null){
            n++;
            tmp = tmp.next;
        }
        return n;
    }
    
       void addLast(int in){
        Node2P newNode = new Node2P(in);
        if(isEmpty()){
            head = newNode;
        }else{
            Node2P tmp = head;
            while(tmp.next!=null){
                tmp = tmp.next;
            }
            tmp.next = newNode;
            newNode.prev = tmp;
        }     
    }
    
    void deleteFirst(){
        if(isEmpty()){
            System.out.println("Data kosong! operasi deleteFirst gagal!");
        }else if(size()==1){
            head=null;
        }else{
            Node2P del = head;
            head.next.prev = null;
            head = head.next;
            del = null;
        }
    }
    void deleteLast(){
        if(isEmpty()){
            System.out.println("Data kosong! Operasi deleteLast gagal!");
        }else if(size()==1){
            head=null;
        }else{
            Node2P tmp = head;
            while(tmp.next!=null){
                tmp=tmp.next;
            }
            tmp.prev.next = null;
            tmp.prev = null;
            tmp = null;
        }
    }
    
    void print(){
        if(isEmpty()){
            System.out.println("Data kosong! Operasi print gagal");
        }else{
            Node2P tmp = head;
            while(tmp!=null){
                System.out.print(""+tmp.data);
                if(tmp.next!=null)
                    System.out.print("-");
                tmp=tmp.next;
            }
            System.out.println("");
        }
    }
}
