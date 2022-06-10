void setup()
{
  size(1500, 900);
  imageMode(CENTER);
  rectMode(CENTER);
  textAlign(CENTER);
}

void draw()
{

  if (scene == 0)
  {
    entryscene();
  } else if (scene == 1)
  {
    levelscene();
  } else if (scene ==2)
  {
    options();
  }
}
