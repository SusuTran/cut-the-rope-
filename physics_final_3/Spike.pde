class Spike
{
  int x; 
  int y;
  PImage spike;
  int w; 
  int l;


  Spike( int xv, int yv)
  {
    x = xv; 
    y = yv;
    spike = loadImage("spike.png");

    l = 200;
    w = 50;


    spike.resize(l, w);
  }

  void display()
  {
    image(spike, x, y);
  }

  void detect(OrbNodeCandy candy)
  {

    boolean x;
    x = (abs(candy.position.x - this.x) < (candy.osize + l)/2);

    boolean y;
    y = (abs(candy.position.y - this.y) < (candy.osize + w)/3);

    if (x && y)
    {
      candy.state = 1;
      candy.shatter();
    }
  }
}
