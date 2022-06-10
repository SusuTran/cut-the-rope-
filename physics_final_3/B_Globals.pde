OrbNodeCandy candy;
OmNom omnom;
Star starp[] = new Star[3];
Star starg[] = new Star[3];

Box boxes[][] = new Box[3][3];

Balloon balloons[] = new Balloon[1];
Bounce bounces[] = new Bounce[1];
OrbNode nodes[] = new OrbNode[1];
Spike spikes[] = new Spike[1];

PImage bg;

float GRAVITY = 0.25;
PVector g;

int counter = 0;
int scene = 0; /// 0 = entry scene, 1 = levels, 2 = options
int level = 0;
