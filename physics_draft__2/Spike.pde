class Spike
{
  int x; 
  int y;
  PImage spike;
  int cx; 
  int cy;
  int w; 
  int l;


  Spike( int xv, int yv)
  {
    x = xv; 
    y = yv;
    spike = loadImage("spike.png");

    l = 400;
    w = 80;

    cx = x + l/2;
    cy = y + w/2;

    spike.resize(l, w);
  }

  void display()
  {
    image(spike, x, y);
  }

  void detect(OrbNodeCandy candy)
  {

    boolean x;
    x = ((this.cx - candy.osize/2 < candy.position.x) && (candy.position.x < this.cx + this.w + candy.osize/2));

    boolean y;
    y = (this.cy-candy.osize/2 < candy.position.y) && (candy.position.y < this.cy + this.l + candy.osize/2);

    if (x && y)
    {
      candy.state = 5;
    }
  }
}
