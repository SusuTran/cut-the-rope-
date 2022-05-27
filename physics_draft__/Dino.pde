class Dino
{
  int x; 
  int y;
  int size;
  color c;
  PImage dino;

  Dino (int xv, int yv) {
    x = xv;
    y =yv;
    size = 50;
    c = color(100, 200, 100);
        dino = loadImage("omnom.png");

  }

  void display()
  {
    fill(c);
    //circle(x, y, size*2);
       image(dino, x-100,y-100);
  }
  
  void loaddino()
  {
       image(dino, x,y);
dino.resize(200,200);
    dino.loadPixels();
  }

  boolean detect(OrbNodeCandy other) {
    float d = dist(this.x, this.y, other.position.x, other.position.y);
    d = d - (this.size + other.osize/2);
    return d < 0;
  } 


  void candy(OrbNodeCandy other)
  {
    if (this.detect(other))
    {
      println("yay");
      c = color(100, 100, 200);
      other.state = 3;
    } else
    {
      c = color(100, 200, 100);
    }
  }
}
