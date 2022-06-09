class OrbNodeCandy extends OrbNode 
{
  // 0 = attached, 1 = free fall, 3 = gone, 4 = gone but bad, 5 = broken
  PImage candyi;


  OrbNodeCandy (int x, int y)
  {
    super(x, y);
    osize = 75;
    state = 0;
    
    candyi = loadImage("candy.png");
    candyi.resize(osize, osize);
  }


  void go(OmNom om)
  {

    if (state != 3)
    {
      this.applySpringForce();
      this.display();
      this.applyForce(g);
      this.run(om);
    }
    
    if (state == 5)
    {
      println("oh no");
    }
  }


  void applySpringForce()
  {
    if (state == 0)
    {
      super.applySpringForce();
    } else
    {
    }
  }


  void display() {
    if (state == 0)
    {
      super.display();
      image(candyi, this.position.x - osize/2, this.position.y-osize/2);
    } else
    {
      stroke(0);
      fill(c);
            image(candyi, this.position.x - osize/2, this.position.y-osize/2);
    }
  }//display
  
  void shatter()
  {
    candyi = loadImage("candy2.png");
    candyi.resize(100,80);
  }
  
}
