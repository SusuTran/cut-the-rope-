void setup()
{
  size(1500, 900);
  imageMode(CENTER);
  rectMode(CENTER);
  textAlign(CENTER);
  noFill();

  setuplevels();
  stars();
  loadbg();

  omnom = new OmNom(100, 100);
  candy = new OrbNodeCandy(1, 1, 1);

  g = new PVector(0, .25);
}

void draw()
{
  if (counter !=0)
  {
    counter --;
  }

  backg = bg[scene];
  image(backg, width/2, height/2);

  if (scene == 1) {  
    levelscene();
  } else if (scene == 3)
  {  
    for (int i = 0; i<balloons.length; i++)
    {
      if (balloons[i] != null)
      {
        balloons[i].display();
      }
    }
    for (int i = 0; i<spikes.length; i++)
    { 
      if (spikes[i] != null)
      {
        spikes[i].display();
        spikes[i].detect(candy);
      }
    }
    for (int i = 0; i<bounces.length; i++)
    {
      if (bounces[i] != null)
      {
        bounces[i].display();
        bounces[i].detect(candy);
      }
    }

    omnom.display();
    runstars(starg, starp, candy);
    candy.go(omnom);
    omnom.candy(candy, starg, boxes);
  } else if (scene == 4)
  {
    //updatelevel();
  }

  if (counter > 0 && counter <10)
  {
    background(20);
  }
}
