class Star 
{
  int x; 
  int y;
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

if (type == 0)
{
    star = loadImage("star.png");
}

else
  {    star = loadImage("star2.png");
}
    star.resize(s, s);

  }

  void display()
  {
    if (type != 3)
    {
      image(star, x, y);
    }
  }
}
