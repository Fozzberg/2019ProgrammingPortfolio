//class Rock {
//  // Member Variables 
//  int x, y, r; 
//  int health;
//  int speed, dir; 
//  color c;
//  boolean isPU; 

//  // Constructor 
//  Rock (int x, int y, int r) {
//    this.r = r;
//    this.x = x;
//    this.y = y;
//    speed = 10;
//    c = 255; //color(random(111), random(122), 111);
//    health = r;
//  }

//  void move() {
//    y += speed;
//  }

//  boolean reachedBottom() {
//    if (y> height +r*4) {
//      return true;
//    } else {
//      return false;
//    }
//  }
//  // Display Method
//  void display() {
//    fill(c);
//    ellipse(x, y, r, r);
//    textSize(6);
//    fill(0);
//  }
//}

class Rock {
  int x, y; 
  int speed; 
  color c;
  int r; 
  int health;
  boolean isPU;

  Rock(int x, int y, boolean isPU) {
    r = int(random(15,55)); 
    this.x = x;
    this.y = y;
    this.isPU = isPU;
    speed = int(random(1, 3));    
    c = color(random(111), random(122), 111); 
    health = r;
  }

  void move() {
    y += speed;
  }

  boolean reachedBottom() {
    if (y > height + r*4) { 
      return true;
    } else {
      return false;
    }
  }

  void display() {
    if(isPU) {
      fill(255,33,33);
    } else {
      if(health<10) {
        fill(255,255,0);
      }else {
        fill(c-health);
      }
    }
    
    noStroke();
    ellipse(x,y,health,health);
    fill(255);
    textSize(9);
    textAlign(CENTER);
    if(isPU){
      text("PU",x,y+5);
    } else {
      text(health,x,y+5);
    }
    
  }
}
