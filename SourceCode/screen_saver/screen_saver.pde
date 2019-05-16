//strokeWeight(5);
//point(width/2,height/2);

Lines[] myLines = new Lines [25];

void setup() {
  background(0);
  fullScreen();
  frameRate(60);
  for (int i=0; i<myLines.length; i++) {
    myLines[i] = new Lines(random(width), random(height), random(1, 5), random(10, 20));
  }
}

void draw() {
  if (frameCount >3000) {
    background(0);
    frameCount = 0;
  } else {
    for (int i=0; i<myLines.length; i++) {
      Lines iLines = myLines[i];
      iLines.display();
    }
  }
}
