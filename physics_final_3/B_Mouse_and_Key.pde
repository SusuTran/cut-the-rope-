
void mousePressed()
{
  if (scene == 0)
  {
    if ((abs(mouseX-750) < 400) && (abs(mouseY-615) < 80))
    {
      scene = 1;
    } else if ((abs(mouseX-750) < 400) && (abs(mouseY-740) < 80))
    {
      scene = 2;
    }
  }

  if (scene == 1 || scene == 2)

  {
    if (dist(80, 825, mouseX, mouseY) < 100)
    {
      scene = 0;
    }
  }
  
  if (scene == 1)
  {
    changelevel(mouseX, mouseY);
  }

}

void keyPressed()
{
}
