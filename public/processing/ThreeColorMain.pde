Graph g = null;
int numNodes = 30;
ArrayList edgeArray = new ArrayList();

void setup() {
  size(1000, 700);
  frameRate(24);
  for (int i = 0; i < numNodes; i++) {
    for (int j = i; j < numNodes; j++) {
      if (j != i) {
        edgeArray.add([i,j]);
      } 
    }
  }
  makeGraph();
}

void draw() {
  background(255);
  g.draw();
}

void makeGraph() {
  g = new Graph();

  for (int i = 0; i < numNodes; i++) {
    g.addNode(new Node(int(random(20, width-20)), int(random(20, height-20))));
  }
  // int numEdges = 40;
  // for (int j = 0; j < numEdges; j++) {
  //   int seed = (int[]) edgeArray.get(int(random(edgeArray.size())));
  //   g.addEdge((Node) g.nodes.get(seed[0]), (Node) g.nodes.get(seed[1]));
  // }

  for (int[] e: edgeArray) {
    int coinFlip = int(random(8));
    if (coinFlip == 7) {
      g.addEdge((Node) g.nodes.get(e[0]), (Node) g.nodes.get(e[1]));
    }
  }
}