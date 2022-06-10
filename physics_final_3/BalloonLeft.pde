class BalloonLeft extends Balloon
{
  BalloonLeft(int xv, int yv)
  {
    super( xv, yv);
    direction = new PVector(-1, 0);
    b = loadImage("lbal1.png");
    b.resize(150, 150);
  }
  
   void display()
  {
    if (s != 0){
    s --;}
    if (s == 0)
    {    
      b = loadImage("lbal1.png");
       }
       
       else
       {
             b = loadImage("lbal2.png");
}
    b.resize(150, 150);

    image(b, x, y);
  } 
  
  void blow(OrbNodeCandy candy, int x, int y)
  {

    if (dist(x, y, this.x+75, this.y+75) < 75)
    {
      this.s = 5;
    
    
    float d = abs(dist(candy.position.x,candy.position.y, this.x,this.y));
    d = d/500;
    
    float f;
    f = pow(5.5,d);
    
    f = (-f);

    PVector force = new PVector(f, 0);
    
    if(abs(candy.position.y - this.y)<100){
    candy.applyForce(force);
    }
    }
  }
}
