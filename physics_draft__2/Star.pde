class Star 
{
  int x; 
  int y;
  PImage star;
  int cx; 
  int cy;
  int w; 
  int l;


  Star( int xv, int yv)
  {
    x = xv; 
    y = yv;
    star = loadImage("star.png");

    l = 400;
    w = 80;

    cx = x + l/2;
    cy = y + w/2;

    star.resize(l, w);
  }
}
