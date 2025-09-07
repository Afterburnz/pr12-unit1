color black = #000000;
color white = #ffffff;
color beige = #e6deb1;
color red = #f73636;
color grey = #919191;




void setup(){
   size(800,800);
}



void draw(){
  background(white);
  face(200,200,1);
  face(400,100,0.5);
}


void face(int x, int y, float s){
  pushMatrix();
  translate(x,y);
  scale(s);
  
  head();
  eye(100,150);
  eye(300,150);
  mouth();
  hair();
  
  
  
  
  
  popMatrix();


}



void head(){
  fill(beige);
  stroke(black);
  strokeWeight(3);
  rect(0,0,400,400);
}

void hair(){
  stroke(black);
  strokeWeight(20);
  int x = 0 ;
  while(x<=400) {
    line(x,-50,x,50);
    x = x + 10;
  }
  strokeWeight(3);
}


void eye(int x, int y){
  stroke(black);
  strokeWeight(3);
  fill(white);
  ellipse(x,y,100,50);
  
  fill(red);
  circle(x,y,50);
  
  fill(black);
  circle(x,y,15);
  
  
  
}

void mouth(){
  fill(black);
  rect(100,250,200,100,25);
  fill(white);
  stroke(grey);
  strokeWeight(2);
  triangle(150,250,175,350,200,250);
  triangle(200,250,225,350,250,250);

}
