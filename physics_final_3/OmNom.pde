class OmNom
{
  int x; 
  int y;
  int size;
  color c;
  PImage omnom;
  PImage sad;
  PImage hap;

  PImage om;

  OmNom (int xv, int yv) {
    x = xv;
    y =yv;
    size = 100;
    c = color(100, 200, 100);

    omnom = loadImage("omnom.png");
    omnom.resize(2*size, 2*size);

    sad = loadImage("sadom.png");
    sad.resize(2*size, 2*size);
    
    hap = loadImage("hapom.png");
    hap.resize(2*size, 2*size);
    om = omnom;
  }

  void loss()
  {
    om = sad;
    println("oh no");
    counter = 40;
  }

  void display()
  {
    image(om, x, y);
  }

  void candy(OrbNodeCandy other, Star sg[], Box bs[][])
  {
    if (dist(this.x, this.y, other.position.x, other.position.y) < 80 && other.state <2)
    {
      println("yay");
      om = hap;
      scene = 4;
      counter = 5;

      int s = 0;

      for (int i = 0; i<3; i++)
      {
        if (sg[i].type !=1)
        {
          s ++;
        }
      }

      for (int i = 0; i< 3; i++)
      {
        for (int j = 0; j <3; j++)
        {
          if (bs[i][j].n == level)
          {
            bs[i][j].stars = s;
            bs[i][j].updates();
          }
        }
      }
      
    }
  }
}
