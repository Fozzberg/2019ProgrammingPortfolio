void setup() {
  //Set the size of the window
  size(2000, 2000);
}

void draw() {
  drawZoog(mouseX, mouseY);
  drawZoog(100, 100);
  drawZoog(int(random(width)),int(random(height)));
}


void drawZoog(int x, int y) {
  ellipseMode (CENTER);
  rectMode(CENTER);


  //Draw Zoog's body
  stroke(0);
  fill(0,0,random(150,255));
  rect(x, y, 20, 100);


  //draw Zoog's head
  stroke(0);
  fill(0,random(150,255),random(150,255));
  ellipse(x, y-30, 60, 60);


  // Draw Zoog's eyes
  fill(random(150,255),random(150,255),0);
  ellipse(x-15, y-30, 16, 32);//left
  ellipse(x+15, y-30, 16, 32);//right


  //mouth
  line(x-5, y-20, x+5, y-20);


  //Draw Zoog's legs
  stroke(0);
  line(x-12, y+40, x-20, y+80);
  line(x+12, y+40, x+20, y+80);
}
