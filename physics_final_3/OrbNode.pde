class OrbNode {

  //static final float SPRING_LEN = 80;
  static final float SPRING_CONST = 0.005;
  static final float DAMPING = 0.995; //1 is no damping, lower numbers is more aggressive damping
  static final int PART_SIZE = 15;

  float SPRING_LEN = 80;

  PVector position;
  PVector velocity;
  PVector acceleration;
  int osize;
  float mass;
  PImage node;

  int state;

  OrbNode candy;

  OrbNode(int x, int y) {
    position = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }

  OrbNode(int x, int y, OrbNodeCandy c) {
    position = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    osize = PART_SIZE;
    node = loadImage("node.png");
    node.resize(osize*2, osize*2);
    candy = c;
    state = 0;
  }

  OrbNode(int x, int y, OrbNodeCandy c, int l) {
    position = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    osize = PART_SIZE;
    node = loadImage("node.png");
    node.resize(osize*2, osize*2);
    candy = c;
    state = 0;

    float SPRING_LEN = l;
  }

  void run() {
    acceleration.mult(osize/PART_SIZE);
    velocity.add(acceleration);
    velocity.mult(DAMPING);
    position.add(velocity);
    acceleration.mult(0);
  }//run

  void applyForce(PVector f) {
    acceleration.add(f);
  }//applyForce


  void display() {
    if (state ==0)
    {
      strokeWeight(5);
      fill(#987C72);
      line(position.x, position.y, candy.position.x, candy.position.y);
    }  
    image(node, position.x, position.y);
  }//candy

  void applySpringForce() {
    if (candy != null) {
      velocity.add(calculateSpringForce(candy));
    }
  }//applySpringForce

  PVector calculateSpringForce(OrbNode other) {
    float dist = position.dist(other.position);
    float displacement = dist - SPRING_LEN;
    float springForce = displacement * SPRING_CONST;

    float xDiff = other.position.x - position.x;
    float yDiff = other.position.y - position.y;
    float xForce = springForce * xDiff/dist;
    float yForce = springForce * yDiff/dist;

    return new PVector(xForce, yForce);
  }//calculateSpringForce

  boolean cut(OrbNodeCandy c, float x, float y)
  {
    float m = 10;

    boolean b = false;    
    float y1 = this.position.y-y;
    float x1 = this.position.x-x;

    float y2 = y - c.position.y;
    float x2 = x - c.position.x;

    if ((x < c.position.x +m && x>this.position.x - m) || (x > c.position.x -m && x < this.position.x +m) )
    {
      if ((y < c.position.y +m && y>this.position.y-m) || (y > c.position.y - m && y < this.position.y+m) )
      {

        b = true;
      }
    }
    return b;
  }
}//OrbNode
