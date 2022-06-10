
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
}

void l6() {
}

void l7() {
}

void l8() {
}

void l9() {
}
