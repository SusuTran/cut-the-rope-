class Balloon
{
  PVector direction;
  int x; 
  int y;
  int s;

  PImage b1;
  PImage b2;
  PImage b;

  Balloon(int xv, int yv) {
    s = 0;

    x = xv; 
    y = yv;

    direction = new PVector(1, 0);

    b1 = loadImage("rbal1.png");
    b1.resize(150, 150);
    
    b2 = loadImage("rbal2.png");
        b2.resize(150, 150);
        
        b = b1;

  }

  void display()
  {
    if (s != 0) {
      s --;
    }
    if (s == 0)
    {    
      b = b1;
    } else
    {
      b = b2;
    }
    b.resize(150, 150);

    image(b, x, y);
  }

  void blow(OrbNodeCandy candy, int x, int y)
  {

    if (((dist(x, y, this.x, this.y) < 75) &&   (abs(candy.position.y - this.y)<100)) && (this.s ==0))
    {
      this.s = 10;
      float d = dist(candy.position.x, candy.position.y, this.x, this.y);
      d = d/500;
      float f;
      f = pow(5.5, d);
      PVector force = new PVector(direction.x * f, 0);
      candy.applyForce(force);
    }
  }
}
