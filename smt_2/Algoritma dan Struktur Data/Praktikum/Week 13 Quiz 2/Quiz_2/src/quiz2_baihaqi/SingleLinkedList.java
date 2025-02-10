package quiz2_baihaqi;

public class SingleLinkedList {
    Node head, tail;
    int size;
    
    SingleLinkedList(){
        head = tail = null;
        size=0;
    }
    boolean isEmpty(){
        return size==0;
    }
    void addFirst(int data){
        Node nu = new Node(data);
        if(isEmpty()){
            head = tail = nu;
        }else{
            nu.n = head;
            head = nu;
        }
        size++;
    } 
    void deleteFirst(){
        Node tmp = head.n;
        head = head.n;
        tmp = null;
        size--;
    }
    void print(){
        Node tmp = head;
        while(tmp!=null){
            System.out.print(""+tmp.data+"-");
            tmp = tmp.n;
        }
        System.out.println("");
    } 
    //1.A. complete the missing code addLast
    /**
     * this method will add new node at the last
     */
    void addLast(int data){
        Node nu = new Node(data);
        if(isEmpty()){
            head = tail = nu;
        }else{
           //complete here

           /* Add tmp node for head reference */
           Node tmp = head;
           /* loop trough head to find tail */
           while (tmp.n != null) {
            tmp = tmp.n;
           }
           /* set the tmp.n and tail as nu */
           tmp.n = nu;
           tail = nu;
        }
        size++;
    }
    //1.B. complete the deleteLast
    /**
     * this method will remove tail
     */
    void deleteLast(){
        /* create tmp */
       Node tmp = head;
       /* check if empty */
       if (isEmpty()) {
        System.out.println("Linked list is empty. can't remove");
       } else if (head.n == null) {
            /* do as the delete first do */
            head = head.n;
            tmp = null;
            size--;
       } else {
           /* loop trough tmp to find second to last node */
           while (tmp.n.n != null) {
            tmp = tmp.n;
           }
           /* use the second to last node to delete the next/last node */
           tmp.n = null;
           tail = tmp;
           size--;
       }
    }
}
