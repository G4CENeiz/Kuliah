/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quiz2_baihaqi;

public class Node {
    int data;
    Node n;
    Node p;
    
    Node(){
        data=0;
        n = p = null;
    }
    
    Node(int data){
        this.data = data;
        n = p = null;
    }
    
    Node(Node prev, int data, Node next){
        this.data = data;
        this.n = next;
        this.p = prev;
    }
    
}
