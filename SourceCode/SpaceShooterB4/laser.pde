class Laser {
  // Member Variables
  int x, y, w, h;
  color c1;
  float speed;
boolean active;
  // Constructor
  Laser(int x, int y, color c1) {
    this.x = x;
    this.y = y;
    w = 5;
    h = 10;
    speed = 15;
    c1 = color(255,0,0);
    active = true;
  }
  // Disply Method
  void display () {
    fill(c1);
    noStroke();
    rect (x+41, y, w, h);
  }

  void fire() {
    y -= speed;
  }

  boolean reachedTop() {
    if (y<0+h) {
      return true;
    } else {
      return false;
    }
  }
}
