OrbNodeCandy candy ;
OmNom omnom;
Star starp[] = new Star[3];
Star starg[] = new Star[3];

Box boxes[][] = new Box[3][3];

Balloon balloons[] = new Balloon[1];
Bounce bounces[] = new Bounce[1];
OrbNode nodes[] = new OrbNode[1];
Spike spikes[] = new Spike[1];

PImage bg[] = new PImage[5];
PImage backg;

float GRAVITY = 0.25;
PVector g;

int counter = 0;
int scene = 0; /// 0 = entry scene, 1 = levels, 2 = options, 3 = game, 4 = win;
int level = 0;


void loadbg()
{
  bg[0] = loadImage("bg1.png");
  bg[1] = loadImage("bg2.png");
  bg[2] = loadImage("options.png");
  bg[3] = loadImage("bggame.png");
  bg[4] = loadImage("yay.png");

  for (int i = 0; i < bg.length; i++)
  {
    bg[i].resize(width, height);
  }
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
      if (boxes[i][j].detect(x, y))
      {
        scene = 3;
        level = no;
        println(level);
        break;
      }
      no++;
    }
  }

  chooselevel();
}

void chooselevel()
{
 resetall(); 
  if (counter ==0) {
    for (int i = 0; i < 3; i++)
    {
      starp[i].star = starp[i].star1;
    }

    if (level == 1)
    {   
      l1();
    } else if (level == 2)
    {
      l2();
    }
    
    else if (level == 3)
    {l3();
    }
    
    else if (level == 4)
    {l4();
    }
    
    else if (level == 5)
    {l5();
    }
    
    else if (level == 6)
    {l6();
    }
    
    else if (level == 7)
    {l7();
    }
    
    else if (level == 8)
    {l8();
    }
    
    else if (level == 9)
    {l9();
    }
  }
}

void resetall()
{ Balloon b[] = new Balloon[1];
Bounce b2[] = new Bounce[1];
OrbNode n[] = new OrbNode[1];
Spike s[] = new Spike[1];

balloons = b;
bounces = b2;
nodes = n;
spikes = s;}

void stars()
{
  for (int i = 0; i < 3; i++)
  {
    starp[i] = new Star(1250 + 75*i, 80, 0);
  }
}

void runstars(Star[] starg, Star[] starp, OrbNodeCandy c)
{
  for (int i = 0; i < 3; i++)
  {
    if (starg[i] != null)
    {
    starg[i].display();
    starp[i].display();
    starg[i].detect(c);

    if (starg[i].type ==3)
    {
      starp[i].star = starp[i].star2;
    }
    }
  }
}
