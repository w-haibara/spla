int[] a=new int[2];
int[] b={100, 100};
int[] c=new int[2];
int[] d=new int[2];

void setup() {
  background(255);
  size(500, 500);
}

void draw() {
  background(255);

  a[0]=mouseX;
  a[1]=mouseY;

  d = cVector(a, 2);
  stroke(255,0,0);
  drawVector(d);

  stroke(0,255,0);
  drawVector(a);
  stroke(0);
  drawVector(b);

  stroke(70);
  c = vectorAdd(a, b);
  drawVector(c);
}

void drawVector(int[] a) {
  if (a.length==2) {
    line(0, 0, a[0], a[1]);
  } else {
    fill(0);
    textSize(100);
    text("error", 100, 100);
  }
}

int[] vectorAdd(int a[], int b[]) {
  int[] add = new int[2];
  if (a.length==b.length && a.length==2) {
    for (int i=0; i<2; i++) {
      add[i] = a[i] + b[i];
    }
  } else {
    fill(0);
    textSize(100);
    text("error", 100, 100);
  }
  return add;
}


int[] cVector(int[] a, int C) {
  int[] CM = new int[2];
  stroke(0);
  if (a.length==2) {
    for (int i=0; i<2; i++) {
      CM[i] = a[i]*C;
    }
  } else {
    fill(0);
    textSize(100);
    text("error", 100, 100);
  }
  return CM;
}
