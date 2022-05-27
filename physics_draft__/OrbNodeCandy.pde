class OrbNodeCandy extends OrbNode 
{
  // 0 = attached, 1 = free fall, 3 = gone
  PImage candyi;


  OrbNodeCandy (int x, int y, color c )
  {
    super(x, y, c);
    osize = 50;
    state = 0;
  }

  void loadcandy()
  {
    candyi = loadImage("candy.png");
    candyi.resize(osize, osize);
    candyi.loadPixels();


    //image(c, 700,700);
  }

  void go()
  {

    if (state != 3)
    {
      this.applySpringForce();
      this.display();
      this.applyForce(g);
      this.run();
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
    println(state);


    if (state == 0)
    {
      super.display();
      image(candyi, this.position.x - osize/2, this.position.y-osize/2);
    } else
    {
      stroke(0);
      fill(c);
            image(candyi, this.position.x - osize/2, this.position.y-osize/2);

      //circle(position.x, position.y, osize);
    }
  }//display
}
