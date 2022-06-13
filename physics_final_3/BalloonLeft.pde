class BalloonLeft extends Balloon
{
  BalloonLeft(int xv, int yv)
  {
    super( xv, yv);
    direction = new PVector(-1, 0);
    b1 = loadImage("lbal1.png");
    b1.resize(150, 150);

    b2 = loadImage("lbal2.png");

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

    if (dist(x, y, this.x, this.y) < 75)
    {
      this.s = 5;


      float d = abs(dist(candy.position.x, candy.position.y, this.x, this.y));
      d = d/500;

      float f;
      f = pow(5.5, d);

      f = (-f);

      PVector force = new PVector(f, 0);

      if (abs(candy.position.y - this.y)<100) {
        candy.applyForce(force);
      }
    }
  }
}
