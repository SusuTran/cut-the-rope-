class OmNom
{
  int x; 
  int y;
  int size;
  color c;
  PImage omnom;

  OmNom (int xv, int yv) {
    x = xv;
    y =yv;
    size = 75;
    c = color(100, 200, 100);

    omnom = loadImage("omnom.png");
    omnom.resize(2*size, 2*size);
  }

void loss()
{
  omnom = loadImage("sadom.png");
      omnom.resize(2*size, 2*size);

}
  void display()
  {
    image(omnom, x-100, y-100);
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
      
      if (candy.state == 1 || candy.state ==0)
      {
      println("yay");
      c = color(100, 100, 200);
      other.state = 3;
    }
    }
    else if (candy.state == 5)
    {this.loss();
    }
  }
}
