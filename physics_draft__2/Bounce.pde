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
    x = ((this.cx - candy.osize/2 < candy.position.x) && (candy.position.x < this.cx + this.w + candy.osize/2));

    boolean y;
    y = (this.cy-candy.osize/2 < candy.position.y) && (candy.position.y < this.cy + this.h + candy.osize/2);
    
    if (x)
    {circle(300, 600,100);
   
    }
    
    if (y)
    {
      circle(500,600,100);
    }
    

    if (x && y)
    {
      circle(400,400,100);
      if ((candy.position.x + candy.osize/2 <= this.cx) || (candy.position.x - candy.osize/2 >= this.cx + this.w))
      {
        candy.velocity.x = -1*(candy.velocity.x);
      } else
      {
        candy.velocity.y = -1*(candy.velocity.y);
      }
    }
  }
}
