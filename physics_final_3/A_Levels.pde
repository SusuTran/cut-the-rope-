void entryscene()
{
  loadbg("bg1.png");
  rectMode(CENTER);
}

void levelscene()
{  
  loadbg("bg2.png");
  setuplevels();

  for (int i=0; i<3; i++) {   
    for (int j = 0; j<3; j++) {
      boxes[i][j].display();
    }
  }
}

void options()
{
  loadbg("options.png");
}
