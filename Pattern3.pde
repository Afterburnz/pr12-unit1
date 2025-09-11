void Pattern3() {
  background(black);
  

  int Y = 0;
  while(Y <= 1000){
    Pattern(0,Y);
    Y = Y+100;
  }

}

void Pattern(int x, int y){
  pushMatrix();
  translate(x,y);
  
  
  int pX = 0;
  int pY = 0;
  int count = 0;
  int d = 100;
  
  
  while(count <=10){
    fill(230, 80, 69);
    circle(pX,pY,d);
    fill(white);
    circle(pX - 20, pY -20, d);

    stroke(230, 80, 69);
    strokeWeight(20);
    line(pX+30,pY+30,pX-50,pY-50);
    pX = pX + 125;
    count++;
  
  }
  
  
  
  
  
  
  
  
  
  
  popMatrix();
  
  
  
}
