
class OrbNodeCandy extends OrbNode 
{
  // 0 = attached, 1 = free fall, 3 = broke, 4 = gone but bad, 5 = eaten
  PImage candyi;
  OrbNode nodes[];
  OrbNodeCandy (int x, int y, int n) {
    super(x, y);
    osize = 75;
    state = 0;

    candyi = loadImage("candy.png");
    candyi.resize(osize, osize);

    nodes = new OrbNode[n];
  }

  void go(OmNom om) {
    
    if (this.state == 4)
    {chooselevel();
    }
    if (this.state < 5)
    {

      this.applyForce(g);
      super.run();
      this.display();
      fall(om);

      if (state == 0)
      {
        this.applySpringForce();
      }
    }
  }

void fall(OmNom om)
{
  if (this.position.y > height && state ==1)
  {
    this.state = 4;
    om.loss();
    chooselevel();    
  }
}
  void display() {

    for (int i = 0; i < nodes.length; i++ ) {

      if (nodes[i] != null) {

        nodes[i].display();
      }//display
    } 
    image(candyi, this.position.x, this.position.y);
  }//display

  void shatter()
  {
    candyi = loadImage("candy2.png");
    candyi.resize(100, 80);
    
    for ( int i = 0; i< nodes.length; i++)
    {
      
        nodes[i].state = 1;
      }
  }

  void applySpringForce() {
    if (state == 0)
    {
      for (int i = 0; i < nodes.length; i++)
      {
        if (nodes[i].state ==0)
        {
          velocity.add(calculateSpringForce(nodes[i]));
        }
      }
    }
  }

  void cut(float x, float y)
  {
    for ( int i = 0; i< nodes.length; i++)
    {
      if (nodes[i].cut(this, x, y))
      {
        nodes[i].state = 1;
      }
    }
    
    boolean b = false;
    for ( int i = 0; i< nodes.length; i++)
    {
      if (nodes[i].state == 0)
      {
        b = true;
      }
  }
  
  if (!b)
  {
    this.state = 1;
  }
  }
}
