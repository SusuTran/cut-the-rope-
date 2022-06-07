class Balloon
{
  PVector direction;
  int x; 
  int y;

  int s;

  static final int up = 0;
  static final int down = 1;
  static final int left = 2;
  static final int right = 3;

  PImage b;

  Balloon(int xv, int yv, int type) {
    s = 0;

    x = xv; 
    y = yv;

    int xd=0;
    int yd=0;

    if (type == up)
    {
      yd = -1;
    } else if (type == down)

    {
      yd = 1;
    } else if (type == right)
    {
      xd = 1;
    } else if (type ==left)
    {
      xd = -1;
    }

    direction = new PVector(xd, yd);

    b = loadImage("rbal1.png");
    b.resize(150, 150);
  }

  void display()
  {
    if (s != 0){
    s --;}
    if (s == 0)
    {    
      b = loadImage("rbal1.png");
    } else
    {
      b = loadImage("rbal2.png");
    }
    b.resize(150, 150);

    image(b, x, y);
  }

  void blow(OrbNodeCandy candy, int x, int y)
  {

    if (dist(x, y, this.x+75, this.y+75) < 75)
    {
      this.s = 5;
    } 
    
    float d = dist(candy.position.x,candy.position.y, this.x,this.y);
    d = d/500;
    
    float f;
    f = pow(5.5,d);
    PVector force = new PVector(direction.x * d, 0);
    
    if(abs(candy.position.y - this.y)<100){
    candy.applyForce(force);
    }
  }
}
