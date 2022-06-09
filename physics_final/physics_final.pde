OrbNode node1;
OrbNode node2;
OrbNodeCandy candy;

OmNom omnom;

Balloon balloon;
BalloonLeft balloon2;
Spike spike;
Bounce bounce;
Star star;
Star star2;

PImage bg;

float GRAVITY = 0.25;
PVector g;

int gamestate = 0;  // 0 running, 1 win, 2 lost

void setup()
{


  size(1500, 1000);

  bg = loadImage("background.jpg");
  bg.resize(width, height);

  g = new PVector(0, GRAVITY);

  omnom = new OmNom(1200, 800);

  node1 = new OrbNode();
  node2 = new OrbNode(300, 200);

  candy = new OrbNodeCandy(300, 400);

  balloon = new Balloon(100, 400);
    balloon2 = new BalloonLeft(300, 400);

  spike = new Spike(400, 600);
  bounce = new Bounce(300, 900);
  star = new Star(800,500,0);
  star2 = new Star(850,500,1);

  node2.next = candy;
  candy.previous = node2;
}

void draw()
{

  image(bg, 0, 0);


  node1.display();
  node2.display();

 
balloon2.display();
  balloon.display();
  bounce.display();
  spike.display();
  star.display();
  star2.display();

 omnom.display();
  candy.go(omnom);
  omnom.candy(candy);
  spike.detect(candy);
  bounce.detect(candy);
}

void keyPressed()
{
  if (key == 's')
  {
    candy.state = 1;
  } else
  {
    balloon.s = 0;
  }

  if (key == 'd') {
    if (candy.state == 0)
    {
      candy.velocity.x += 10;
    }
  }
  if (key == 'a') {
    if (candy.state == 0)
    {
      candy.velocity.x -= 10;
    }
  }
}

void mousePressed()
{
  balloon.blow(candy, mouseX, mouseY);
  balloon2.blow(candy, mouseX, mouseY);
}
