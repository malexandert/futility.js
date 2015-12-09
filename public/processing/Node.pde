class Node {
	ArrayList neighbors = new ArrayList();
  int x;
  int y;
  int radius = 40; 

	Node(int x, int y) {
		this.x = x;
		this.y = y;
	}

  void addEdge(Node o) {
    if(!neighbors.contains(o)) {
      neighbors.add(o);
    }
  }

	void draw() {
		stroke(0);
    fill(255);
    // for(Node n: neighbors) {
    //   drawEdge(x,y,n.x,n.y);
    // }
    ellipse(x, y, radius, radius);
    fill(50, 50, 205);
	}

  void drawEdge(int x, int y, int ox, int oy) {
    // int dx = ox-x;
    // int dy = oy-y;
    // float angle = getDirection(dx,dy);
    // float vl = sqrt(dx*dx+dy*dy) - sqrt(radius*radius+radius*radius)*1.5;
    // int[] end = rotateCoordinate(vl, 0, angle);
    // line(x,y,x+end[0],y+end[1]);
    line(x, y, ox, oy);
  }
}