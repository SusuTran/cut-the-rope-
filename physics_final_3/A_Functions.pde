void loadbg(String s)
{
  bg = loadImage(s);
  bg.resize(width, height);
  image(bg, width/2, height/2);
}


void setuplevels()
{
  int no = 1;
  for (int i=0; i<3; i++) {
    for (int j = 0; j<3; j++) {
      boxes[i][j] = new Box(525 + 225*j, 195+240*i, no);
      no++;
    }
  }
}

void changelevel(int x, int y)
{
  int no = 1;
  for (int i=0; i<3; i++) {
    for (int j = 0; j<3; j++) {
      if (boxes[i][j].detect(x,y))
      {//scene = 3;
      level = no;
          println(level);

      break;
      }
      no++;
    }
  }
}
