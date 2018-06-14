int x=0;
int y=0;
int aimX, aimY;
boolean L, R, U, D;
boolean staticL, staticR, staticU, staticD;

void setup() {
  background(255);
  size(700, 700);

  L=false;
  R=false;
  U=false;
  D=false;

  staticL=false;
  staticR=false;
  staticU=false;
  staticD=false;
}

void draw() {
  int speed=4;
  background(255);
  translate(0,0);
  strokeWeight(1);

  if (x<0) {
    staticL=true;
    x=0;
  }
  if (x>width) {
    staticR=true;
    x=width;
  }
  if (y<0) {
    staticU=true;
    y=0;
  }
  if (y>height) {
    staticD=true;
    y=height;
  }

  if (L==true && staticL==false) {
    x-=speed;
  }
  if (R==true && staticR==false) {
    x+=speed;
  }
  if (U==true && staticU==false) {
    y-=speed;
  }
  if (D==true && staticD==false) {
    y+=speed;
  }

  ellipse(x, y, 50, 50);

  aimX=mouseX;
  aimY=mouseY;


  ellipse(aimX, aimY, 10, 10);

  float r=50.0;
  int S=round(sqrt( pow(aimX-x, 2) + pow(aimY-y, 2)));

  translate(x,y);
  scale(r/S);
  strokeWeight(S/r);
  line( 0, 0, aimX-x, aimY-y );
  
  staticL=false;
  staticR=false;
  staticU=false;
  staticD=false;
}

void keyPressed() {
  if (key=='a') {
    L=true;
  }
  if (key=='d') {
    R=true;
  }
  if (key=='w') {
    U=true;
  }
  if (key=='s') {
    D=true;
  }
}
void keyReleased() {
  int count=0;
  switch(key) {
  case 'a':
    L=false;
    break;
  case 'd':
    R=false;
    break;
  case 'w':
    U=false;
    break;
  case 's':
    D=false;
    break;
  default:
    count++;
    if (count>2) {
      L=false;
      R=false;
      U=false;
      D=false;
      count=0;
    }
    break;
  }
}
