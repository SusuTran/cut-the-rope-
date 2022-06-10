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
    size = 100;
    c = color(100, 200, 100);

    omnom = loadImage("omnom.png");
    omnom.resize(2*size, 2*size);
  }

  void loss()
  {
    omnom = loadImage("sadom.png");
    println("oh no");
    omnom.resize(2*size, 2*size);
    counter = 40;  }
  
  void display()
  {
    image(omnom, x, y);
  }

  void candy(OrbNodeCandy other)
  {
    if (dist(this.x, this.y, other.position.x, other.position.y) < 80 && other.state <2)
    {
        println("yay");
        scene = 4;
        counter = 5;
      }
    
  }
}
