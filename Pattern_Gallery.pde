color white= #ffffff;
color black= #000000;

int mode =0;
final int Pattern1 =0;
final int Pattern2 = 1;
final int Pattern3 = 2;
int [] r = new int[100];
int [] g = new int[100];
int [] b = new int[100];
int rCount = 0;
int gCount = 0;
int bCount = 0;


void setup() {
  size(1000, 1000);
  rectMode(CENTER);


  while (rCount < r.length) {
    r[rCount] = int(random(0, 255));
    rCount++;
  }

  while (gCount < g.length) {
    g[gCount] = int(random(0, 255));
    gCount++;
  }
  while (bCount < b.length) {
    b[bCount] = int(random(0, 255));
    bCount++;
  }
}

void draw() {
  if (mode==Pattern1) {
    Pattern1();
  } else if (mode==Pattern2) {
    Pattern2();
  } else {
    Pattern3();
  }

  if (dist(75, 500, mouseX, mouseY) < 50) {
    stroke(black);
    strokeWeight(5);
    fill(237, 92, 201);
  } else {
    stroke(black);
    strokeWeight(5);
    fill(white);
  }
  circle(75, 500, 100);
  
  fill(black);
  triangle(80,475,80,525,55,500);
  

  if (dist(925, 500, mouseX, mouseY) < 50) {
    stroke(black);
    strokeWeight(5);
    fill(237, 92, 201);
  } else {
    stroke(black);
    strokeWeight(5);
    fill(white);
  }
  circle(925, 500, 100);
  fill(black);
  triangle(920,475,920,525,945,500);
}

void mouseClicked() {
  if (dist(75, 500, mouseX, mouseY)<50) {
    mode = mode-1;
    if (mode<0) {
      mode = 2;
    }
  }

  if (dist(925, 500, mouseX, mouseY)<50) {
    mode = mode+1;
    if (mode>2) {
      mode = 0;
    }
  }
}
