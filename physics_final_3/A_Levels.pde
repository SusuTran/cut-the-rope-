
void levelscene()
{  

  for (int i=0; i<3; i++) {   
    for (int j = 0; j<3; j++) {
      boxes[i][j].display();
    }
  }
}


void l1()
{
  OmNom o = new OmNom(width/2, 750);
  OrbNodeCandy c1 = new OrbNodeCandy(width/2, 250, 1);
  omnom = o;
  candy =c1;

  for (int i = 0; i < 3; i++)
  {
    starg[i] = new Star( width/2, 350 + 125*i, 1);
  }

  OrbNode l1[] = new OrbNode[1];
  l1[0] = new OrbNode(width/2, 75, candy);
  candy.nodes = l1;
}

void l2()
{
  OmNom o = new OmNom(900, 750);
  OrbNodeCandy c1 = new OrbNodeCandy(500, 300, 1);

  omnom = o;
  candy = c1;

  starg[0] = new Star(550, 450, 1);
  starg[1] = new Star(800, 300, 1);
  starg[2] = new Star(300, 300, 1);


  OrbNode l2[] = new OrbNode[1];
  Balloon b[] = new Balloon[2];

  l2[0] = new OrbNode(600, 100, candy);
  b[0] = new Balloon(350, 450);
  b[1] = new BalloonLeft(750, 450);

  balloons = b;

  candy.nodes = l2;
}

void l3()
{
  OmNom o = new OmNom(750, 750);
  OrbNodeCandy c1 = new OrbNodeCandy(550, 400, 1);

  omnom = o;
  candy = c1;

  OrbNode l3[] = new OrbNode[2];

  l3[0] = new OrbNode(600, 200, candy);
  l3[1] = new OrbNode(800, 200, candy);

  candy.nodes = l3;

  Balloon b[] = new Balloon[2];
  b[0] = new Balloon(500, 450);
  b[1] = new BalloonLeft(950, 450);
  balloons = b;

  starg[0] = new Star(1150, 300, 1);
  starg[1] = new Star(1150, 600, 1);
  starg[2] = new Star(300, 300, 1);
}

void l4()
{
  OmNom o = new OmNom(750, 750);
  OrbNodeCandy c1 = new OrbNodeCandy(550, 200, 1);

  omnom = o;
  candy = c1;

  OrbNode l3[] = new OrbNode[2];

  l3[0] = new OrbNode(200, 100, candy,20);
  l3[1] = new OrbNode(1000, 100, candy,20);

  candy.nodes = l3;

  Spike s[] = new Spike[1];
  s[0] = new Spike(width/2, height/2);
  spikes = s;

  starg[0] = new Star(1150, 300, 1);
  starg[1] = new Star(1150, 600, 1);
  starg[2] = new Star(300, 300, 1);
}

void l5() {
  OmNom o = new OmNom(1300, 750);
  OrbNodeCandy c1 = new OrbNodeCandy(550, 200, 1);

  omnom = o;
  candy = c1;

  OrbNode l3[] = new OrbNode[2];

  l3[0] = new OrbNode(200, 100, candy,20);
  l3[1] = new OrbNode(700, 100, candy,20);

  candy.nodes = l3;

  starg[0] = new Star(860, 600, 1);
  starg[1] = new Star(1150, 600, 1);
  starg[2] = new Star(900, 350, 1);
  
  Bounce b2[] = new Bounce[2];
  b2[0] = new Bounce(880, 750);
  b2[1] = new Bounce(1000, 750);
  
  bounces = b2;
}

void l6() {
  OmNom o = new OmNom(700, 200);
  OrbNodeCandy c1 = new OrbNodeCandy(700, 400, 1);

  omnom = o;
  candy = c1;

  OrbNode l3[] = new OrbNode[3];

  l3[0] = new OrbNode(200, 300, candy,20);
  l3[1] = new OrbNode(1200, 300, candy,20);
  l3[2] = new OrbNode(700, 800, candy,20);

  candy.nodes = l3;

  starg[0] = new Star(700, 700, 1);
  starg[1] = new Star(700, 550, 1);
  starg[2] = new Star(700, 400, 1);
}

void l7() {
  OmNom o = new OmNom(1100, 300);
  OrbNodeCandy c1 = new OrbNodeCandy(700, 400, 1);

  omnom = o;
  candy = c1;

  OrbNode l3[] = new OrbNode[4];

  l3[0] = new OrbNode(200, 100, candy,20);
  l3[1] = new OrbNode(1200, 100, candy,20);
  l3[2] = new OrbNode(200, 800, candy,20);
  l3[3] = new OrbNode(1200, 800, candy,20);
  candy.nodes = l3;

  starg[0] = new Star(700, 700, 1);
  starg[1] = new Star(800, 500, 1);
  starg[2] = new Star(930, 300, 1);
  
  Spike s[] = new Spike[2];
  s[0] = new Spike(width/2, height/3);
  s[1] = new Spike(3*width/4 - 100, 2*height/3);
  spikes = s;
}

void l8() {
  OmNom o = new OmNom(1300, 750);
  OrbNodeCandy c1 = new OrbNodeCandy(400, 550, 1);

  omnom = o;
  candy = c1;

  starg[0] = new Star(840, 600, 1);
  starg[1] = new Star(1150, 650, 1);
  starg[2] = new Star(300, 300, 1);


  OrbNode l2[] = new OrbNode[1];
  Balloon b[] = new Balloon[1];
  Bounce b2[] = new Bounce[3];

  l2[0] = new OrbNode(400, 100, candy);
  b[0] = new Balloon(100, 450);
  b2[0] = new Bounce(900, 750);
  b2[1] = new Bounce(780, 750);
  b2[2] = new Bounce(1020, 750);
  
  Spike s[] = new Spike[1];
  s[0] = new Spike(3*width/5, 1*height/3);
  spikes = s;

  balloons = b;
  bounces = b2;

  candy.nodes = l2;
}

void l9() {
  OmNom o = new OmNom(200, 700);
  OrbNodeCandy c1 = new OrbNodeCandy(700, 400, 1);

  omnom = o;
  candy = c1;

  OrbNode l3[] = new OrbNode[2];

  l3[0] = new OrbNode(200, 100, candy,20);
  l3[1] = new OrbNode(1200, 100, candy,20);
  candy.nodes = l3;

  starg[0] = new Star(700, 700, 1);
  starg[1] = new Star(1200, 500, 1);
  starg[2] = new Star(930, 300, 1);
  
  Spike s[] = new Spike[2];
  s[0] = new Spike(width/3, height/2 - 150);
  s[1] = new Spike(width/2, height/2);
  spikes = s;
  
  Bounce b2[] = new Bounce[4];
  b2[0] = new Bounce(900, 900);
  b2[1] = new Bounce(780, 900);
  b2[2] = new Bounce(540, 900);
  b2[3] = new Bounce(660, 900);
  bounces = b2;
}
