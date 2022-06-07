OrbNode node1;
OrbNode node2;
OrbNodeCandy candy;

OmNom omnom;

Balloon balloon;
Spike spike;
Bounce bounce;

PImage bg;

float GRAVITY = 0.2;
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

  balloon = new Balloon(100, 600, 3);
  spike = new Spike(500, 400);
  bounce = new Bounce(800, 700);

  node2.next = candy;
  candy.previous = node2;
}

void draw()
{

  image(bg, 0, 0);


  node1.display();
  node2.display();

 

  balloon.display();
  bounce.display();
  spike.display();

 omnom.display();
  candy.go(omnom);
  omnom.candy(candy);
  spike.detect(candy);
  bounce.detect(candy);
}

PImage rotateflip(PImage image)
{
  PImage tmp = new PImage(image.width, image.height);

  for ( int i = 0; i < image.pixels.length; i++)
  {

    int x = i % image.width;
    int y = (i - x)/image.width;

    x -= image.width/2; 
    y -= image.height/2;
    int x1 = -y; 
    int y1 = x;     
    x1 += image.width/2; 
    y1 += image.height/2;    
    int j = (y1*image.width) + x1;

    if (j <image.pixels.length )
    {
      if (image.pixels[j] != 0)

        tmp.pixels[i] = image.pixels[j];
    }
  }
  return tmp;
}

void keyPressed()
{
  if (key == 's')
  {
    balloon.s = 1;
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
}
