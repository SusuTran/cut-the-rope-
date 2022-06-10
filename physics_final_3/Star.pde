class Star 
{
  int x; 
  int y;
  PImage star1;
  PImage star2;
  PImage star;
  int cx; 
  int cy;
  int s;

  int type;


  Star( int xv, int yv, int t)
  {
    x = xv; 
    y = yv;

    s = 60;

    cx = x + s/2;
    cy = y + s/2;    
    type = t;


    star1 = loadImage("star.png");
    star2 = loadImage("star2.png");
    star1.resize(s, s);
    star2.resize(s, s);
    
    if (type == 0)
    {
      star = star1;
    }
    else if ( type ==1)
    {star = star2;}
  }

  void display()
  {
    if (type != 3)
    {
      image(star, x, y);
    }
  }

  void detect(OrbNodeCandy c) {
    float d = dist(this.x, this.y, c.position.x, c.position.y);
    d = d - (this.s + c.osize/2);

    if (d<0)
    {
      this.type=3;
    }
  }
}
