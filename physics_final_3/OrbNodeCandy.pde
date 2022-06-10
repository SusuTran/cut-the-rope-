
class OrbNodeCandy extends OrbNode 
{
  // 0 = attached, 1 = free fall, 3 = gone, 4 = gone but bad, 5 = broken
  PImage candyi;
  
  OrbNode nodes[];


  OrbNodeCandy (int x, int y, int n)
  {
    super(x, y);
    osize = 75;
    state = 0;
    
    candyi = loadImage("candy.png");
    candyi.resize(osize, osize);
    
    nodes = new OrbNode[n];
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

  void display() {
    if (state == 0)
    {
      //super.display();
       for (int i = 0; i < nodes.length; i++ ){

      if (nodes[i] != null) {
        
          stroke(40, 200, 190);
          line(position.x, position.y, nodes[i].position.x, nodes[i].position.y);
        
      }

      stroke(0);
      fill(c);
      circle(position.x, position.y, osize);
    
  }//display
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
  
   void applySpringForce() {
if (state == 0)
    {
     
    
    for (int i = 0; i < nodes.length; i++)
    {
      if (nodes[i] != null)
      {
        velocity.add(calculateSpringForce(nodes[i]));
      }
    }
    
    }
  }//applySpringForce
  
}
