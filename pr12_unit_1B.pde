//Calvin Yang
//Sept 5, 2025
float sunY = -50;
float moonY = 950;
float r = 50;
float g = 127;
float b = 250;
void setup() {
  size(800, 800);

}

void draw() {
   background(r, g, b);
  //sun
  stroke(74, 110, 202);
  strokeWeight(10);
  fill(180, 12, 99);
  circle(150, sunY, 200);
   //moon
  stroke(227, 98, 104);
  strokeWeight(10);
  fill(240, 173, 175);
  circle(150, moonY, 200);
  //grass
  stroke(1, 138, 35);
  strokeWeight(5);
  fill(11, 212, 60);
  rect(0, 500, 800, 300);

  
  //walls
  stroke(255, 229, 112);
  strokeWeight(5);
  fill(247, 218, 87);
  square(200, 200, 400);

  //roof
  stroke(255, 71, 71);
  strokeWeight(5);
  fill(242, 31, 31);
  triangle(200, 200, 600, 200, 400, 0);

  //door
  stroke(163, 105, 47);
  strokeWeight(5);
  fill(99, 62, 27);
  rect(250, 450, 100, 150);
  ellipse(270, 525, 20, 20);

  //square window
  stroke(0, 178, 227);
  strokeWeight(5);
  fill(115, 225, 255);
  square(425, 475, 100);
  line(425, 525, 525, 525);
  line(475, 475, 475, 575);

  //circle windows
  stroke(0, 178, 227);
  strokeWeight(5);
  fill(115, 225, 255);
  circle(300, 300, 100);
  line(250, 300, 350, 300);
  line(300, 250, 300, 350);

  circle(500, 300, 100);
  line(450, 300, 550, 300);
  line(500, 250, 500, 350);

  //bush
  stroke(3, 87, 24);
  strokeWeight(5);
  fill(29, 130, 53);
  ellipse(200, 700, 150, 100);

  ellipse(700, 675, 150, 100);
  

  if (sunY >=900){
    r=0;
    g=0;
    b=0;
  } else {
    r = 50;
    g=127;
    b=250;
    
  }
  
  sunY = sunY+3;
  if (sunY >=1900){
    sunY = -100;
  }
  moonY = moonY+3;
  if (moonY >=1900){
    moonY = -100;
  }
  
}
