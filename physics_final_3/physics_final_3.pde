void setup()
{
  size(1500, 900);
  imageMode(CENTER);
  rectMode(CENTER);
  textAlign(CENTER);
  noFill();


  setuplevels();
  stars();

  omnom = new OmNom(100, 100);
  candy = new OrbNodeCandy(1, 1, 1);

  g = new PVector(0, .25);
  loadbg();
}

void draw()
{
  if (counter !=0)
  {counter --;
  println(counter);
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
    
    omnom.display();
    runstars(starg, starp, candy);
    candy.go(omnom);
    omnom.candy(candy);

  } else if (scene ==4)
  {
  }
  
  if (counter > 0 && counter <10)
  {background(20);}
}
