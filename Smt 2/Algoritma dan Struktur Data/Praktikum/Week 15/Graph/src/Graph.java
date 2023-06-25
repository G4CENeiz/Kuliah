import java.util.Scanner;

public class Graph {
    int vertex;
    LinkedList[] list;

    public Graph(int vertex) {
        this.vertex = vertex;
        list = new LinkedList[vertex];
        for (int i = 0; i < vertex; i++) {
            list[i] = new LinkedList();
        }
    }

    public void addEdge(int source, int destination) {
        list[source].addFirst(destination);
        list[destination].addFirst(source);
    }

    public void degree(int source) throws Exception {
        System.out.println("degree vertex " + source + " : " + list[source].size());

        int k = 0, totalIn = 0, totalOut = 0;
        for (int i = 0; i < vertex; i++) {
            for (int j = 0; j < list[i].size(); j++) {
                if (list[i].get(j) == source) {
                    ++totalIn;
                }
            }
            for (int j = 0; j < list[source].size(); j++) {
                list[source].get(j);
                k = j;
            }
            totalOut = k;
        }

        System.out.println("Indegree dari vertex " + source + " : " + totalIn);
        System.out.println("Outdegree dari vertex " + source + " : " + totalOut);
        System.out.println("degree vertex " + source + " : " + (totalIn + totalOut));
    }

    public void removeEdge(int source, int destination) throws Exception {
        // for (int i = 0; i < vertex; i++) {
        //     if (i == destination) {
        //         list[source].remove(destination);
        //     }
        // }

        int sourceIndex = list[destination].search(source);
        int destinationIndex = list[source].search(destination);
        list[source].remove(destinationIndex);
        list[destination].remove(sourceIndex);
    }

    public void removeAllEdge() {
        for (int i = 0; i < vertex; i++) {
            list[i].clear();
        }
        System.out.println("Graph Successfully Cleared");
    }

    public void printGraph() throws Exception {
        for (int i = 0; i < vertex; i++) {
            if (list[i].size() > 0) {
                System.out.print("Vertex " + i + " terhubung dengan: ");
                for (int j = 0; j < list[i].size(); j++) {
                    System.out.print(list[i].get(j) + " ");
                }
                System.out.println();
            }
        }
        System.out.println();
    }

    public boolean graphType() throws Exception {
        int totalIn = 0, totalOut = 0;
        for (int i = 0; i < vertex; i++) {
            for (int j = 0; j < vertex; j++) {
                for (int k = 0; k < list[j].size(); k++) {
                    if (list[j].get(k) == i) {
                        totalIn++;
                    }
                }
                for (int k = 0; k < list[i].size(); k++) {
                    if (list[i].get(k) == j) {
                        totalOut++;
                    }
                }
            }
        }
        return (totalIn != totalOut);
    }

    public static void main(String[] args) throws Exception {
        // Graph graph = new Graph(6);
        // graph.addEdge(0, 1);
        // graph.addEdge(0, 4);
        // graph.addEdge(1, 2);
        // graph.addEdge(1, 3);
        // graph.addEdge(1, 4);
        // graph.addEdge(2, 3);
        // graph.addEdge(3, 4);
        // graph.addEdge(3, 0);
        // graph.printGraph();
        // graph.degree(2);
        
        // graph.removeEdge(1, 2);
        // graph.printGraph();
        
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Insert vertex amount: ");
        int vertexCount = sc.nextInt();
        
        Graph graph = new Graph(vertexCount);
        
        System.out.println("Insert vertex: <to> <from>");
        for (int i = 0; i < vertexCount; i++) {
            graph.addEdge(sc.nextInt(), sc.nextInt());
        }
        graph.printGraph();
        graph.degree(2);

        sc.close();
    }
}