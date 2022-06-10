class Box
{
  int x; int y;
  PImage box;
  int stars;
  int n;
  
  Box (int xv, int yv, int no)
{
  x = xv; y = yv; stars = 0;
  n = no;
  
  box = loadImage("box.png");
  box.resize(195,195);
}

void display()
{
  image(box, x,y);
  fill(250);
  textSize(55);
  text(n, x,y);
}

Boolean detect(int xc, int yc)
{
  if ((abs(x - xc) < 100) && (abs(y - yc) < 100))
  {
return true;}

  return false;
}
}
