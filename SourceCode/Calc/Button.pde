class Button {
  //Member Variable 
  int x, y, w, h, v;
  String op;
  color c;
  boolean hov, num;

  // Multiple Constructor
  Button(int x, int y, int w, int h, color c) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    // this.v = v
    this.c = c;
    hov = false;
  }

  Button asNumber(int v) {
    this.v =v;
    num  = true;
    return this;
  }
  Button asOperator(String op) {
    this.op = op;
    num = false;
    return this;
  }

  //Display Method
  void display() {
    if (num) {
      rectMode (CENTER);
      if (hov) {
        fill(128, 128, 128);
      } else {
        fill(196, 196, 196);
      }
      rect(x, y, w, h, 5);
      fill(0);
      textAlign(CENTER, CENTER);
      textSize(30);
      text(v, x, y);
    } else {
      rectMode(CENTER);
      if (hov) {
        fill(193, 95, 0);
      } else {
        fill(255, 152, 51);
      }
      rect(x, y, w, h, 5);
      fill(0);
      textAlign(CENTER, CENTER);
      textSize(30);
      text(op, x, y);
    }
  }


  // Hover Method
  void hover() {
    hov = mouseX > x-w/2&& mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2;
  }
}
