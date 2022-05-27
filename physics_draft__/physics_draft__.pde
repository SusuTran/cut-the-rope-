
OrbNode node1;
OrbNode node2;

OrbNodeCandy candy;
Dino dino;

Brick brick;

Boolean mode;

PImage omnom;

float GRAVITY = 0.2;
PVector g;

void setup()
{
  
  mode = false; 
  
  g = new PVector(0, GRAVITY);
  dino = new Dino(600, 700);
  omnom = loadImage("omnom.png");

  brick = new Brick(400, 100);

  image(omnom, 700, 700);
  omnom.loadPixels();
  omnom.resize(100, 100);

  node1 = new OrbNode();


  size(800, 800);
  background(150, 150, 100);

  node2 = new OrbNode(100, 100, color(250));
  candy = new OrbNodeCandy(100, 400, color(200, 100, 100));

  node2.next = candy;
  candy.previous = node2;
  candy.loadcandy();
  dino.loaddino();
}

void draw()
{
  if (mode ==true)
  {
    candy.position.x = mouseX;
  candy.position.y = mouseY;
  }
  
  background(150, 150, 100);

  node1.display();
  node2.display();

  dino.display();
  candy.go();
  dino.candy(candy);
  
  brick.detect(candy);
  brick.display();
}

void keyPressed()
{
  if (key == 's')
  {
    candy.state = 1;
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

//void mousePressed()
//{
//  node1 = node2;
//  node2 = new OrbNode(mouseX, mouseY, color(250));

//  candy.previous = node2;
//  candy.next = node1;
//}

void mousePressed()
{
  mode = !mode;

}
