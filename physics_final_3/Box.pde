class Box
{
  int x; 
  int y;
  PImage s;
  //PImage star[];
  int stars;
  int n;

  Box (int xv, int yv, int no)
  {
    x = xv; 
    y = yv; 
    stars = 0;
    n = no;

    //PImage star[] = new PImage[4];

    //star[0] = loadImage("s0.png");
    //star[1] = loadImage("s1.png");
    //star[2] = loadImage("s2.png");
    //star[3] = loadImage("s3.png");

    //s = star[0];

    s = loadImage("s0.png");
    s.resize(195, 195);


    //for (int i = 0; i < 4; i++)
    //{
    //star[i].resize(195, 195);
    //}
  }

  void updates()
  {
    if (stars == 0)
    {
      s = loadImage("s0.png");
    }

    if (stars == 1)
    {     
      s = loadImage("s1.png");
    } 
    if (stars == 2)
    {     
      s = loadImage("s2.png");
    } 
    if (stars == 3)
    {     
      s = loadImage("s3.png");
    }

    s.resize(195, 195);
  }

  void display()
  {
    image(s, x, y);
    fill(250);
    textSize(55);
    text(n, x, y);
  }

  Boolean detect(int xc, int yc)
  {
    if ((abs(x - xc) < 100) && (abs(y - yc) < 100))
    {
      return true;
    }

    return false;
  }
}
