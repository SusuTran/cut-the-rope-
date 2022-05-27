class Brick
{
  int cx, cy;///coordinates of brick
  int w, l;///width and length of brick
  color c;///fill color

  Brick(int x, int y, int wv, int lv, color f)
  {
    cx = x; 
    cy = y;
    w = wv; 
    l = lv;
    c = f;
  }

  Brick(int x, int y, int wv)
  {
    l = 60;
    w = wv;
    cx = x * w; 
    cy = y * l;
    c = color(200, 0, 200);
  }
  
    Brick(int x, int y)
  {
    l = 60;
    w = 100;
    cx = x; 
    cy = y;
    c = color(200, 0, 200);
  }

  void display()
  {
      fill(200);
      stroke(0);
      rect(cx, cy, w, l);
          
  }

  void detect(OrbNodeCandy candy)
  {
    
      boolean x;
      x = ((this.cx - candy.osize/2 < candy.position.x) && (candy.position.x < this.cx + this.w + candy.osize/2));

      boolean y;
      y = (this.cy-candy.osize/2 < candy.position.y) && (candy.position.y < this.cy + this.l + candy.osize/2);

      if (x && y)
      {
        if ((candy.position.x + candy.osize/2 <= this.cx) || (candy.position.x - candy.osize/2 >= this.cx + this.w))
        {
          candy.velocity.x = -1*(candy.velocity.x);
        } else
        {
          candy.velocity.y = -1*(candy.velocity.y);
        }
      }
    }
  }
