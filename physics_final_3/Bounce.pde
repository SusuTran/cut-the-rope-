class Bounce
{
  int x; 
  int y;
  PImage bounce;
  int cx; 
  int cy;
  int w; 
  int h;
  

  Bounce( int xv, int yv)
  {
    w = 120;
    h = 90;
    x = xv-(w/2); 
    y = yv-(h/2);
    bounce = loadImage("bounce.png");

    cx = x + w/2;
    cy = y + h/2;

    bounce.resize(w, h);
  }

  void display()
  {
    image(bounce, x, y);
  }

  void detect(OrbNodeCandy candy)
  {

    boolean x;
    x = (abs(candy.position.x - this.cx) < (candy.osize + w)/3);

    boolean y;
    y = (abs(candy.position.y - this.cy) < (candy.osize + h)/2.5);
    
    

    if (x && y)
    {
      if (candy.state == 1)
      {
      if (candy.position.y < this.cy)
      {
        candy.velocity.y = abs(candy.velocity.y) * -1;
      }
      
      else if (candy.position.y > this.cy)
      {
        candy.velocity.y = abs(candy.velocity.y);
      }
      }
    }
  }
}
