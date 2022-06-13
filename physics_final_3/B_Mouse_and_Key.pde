
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
  } else if (scene == 1 )

  {
    if (dist(80, 825, mouseX, mouseY) < 100)
    {
      scene = 0;
    } else if (scene == 1)
    {
      changelevel(mouseX, mouseY);
    }
  } else if (scene == 2)
  {
    if (dist(80, 825, mouseX, mouseY) < 100)
    {
      scene = 0;
    }
  } else if (scene ==3)
  {
    if (dist(80, 825, mouseX, mouseY) < 100)
    {
      scene = 1;
    } else
    {
      candy.cut(mouseX, mouseY);

      if (candy.state == 0)
      {
        for (int i = 0; i<balloons.length; i++)
        {
          if (balloons[i] != null)
          {
            balloons[i].blow(candy, mouseX, mouseY);
          }
        }
      }
    }
  } else if (scene ==4)
  {
    if (abs(mouseY-690) <40)
    {
      if (abs(mouseX-760) < 120)
      {
        scene =1;
      } else if (abs(mouseX-480) < 120)
      {
        scene = 3;
        chooselevel();
      } else if (abs(mouseX-1040)<120)
      {

        scene = 3;
        level++;
        chooselevel();
      }
    }
  }
}
