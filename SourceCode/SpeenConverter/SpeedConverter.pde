//Speed Converter
//by Alex Forsberg
//Oct. 4,2018

PImage img;
PImage photo;

void setup() {
  size (800, 250);
  img = loadImage("ccar.png");
  photo = loadImage("dcar.png");
}

void draw() {
  background (255);
  drawRef();
  textSize(18);
  fill(100);
  text("km : " + mouseX, 10, 15);
  text("mi : " + kmConverter(mouseX), 10, 30);
  rect(0, 70, width, 70);
  fill(255, 255, 0);
  rect(0, 70, width, 6);
  rect(0, 77, width, 6);
  image(img, mouseX -210, 89, 100, 50);
  image(photo, mouseX -100, 89, 100,50);
  textSize(15);
  fill(50);
  text("by Alex Forsberg \n4A \nOct. 4, 2018", 660 ,15);
  text("To convert kilometer into miles just move your mouse horizontally acoss the screen and look at the top left \ncorner to see the conversion.", 5, 210);
  textSize(20);
  text("Distance converter", 250, 20);
}
  //println(fConverter(33.3));
  //println(cConverter(33.3));
  //noLoop();


void drawRef () {
  // draw a reference line with tick marks
  fill(255);
  line(0, 161, width, 161);
  for (int i = 0; i<width; i+=20) {
    textSize(8);
    fill(0, 50, 255);
    text(i, i, 155);
    line(i, 166, i, 156);
   
  }
}

float miConverter(float mi) {
  mi = (mi * 1.60934);
  return mi;
}

float kmConverter(float km) {
  km = km / 1.60934;
  return km;
}
