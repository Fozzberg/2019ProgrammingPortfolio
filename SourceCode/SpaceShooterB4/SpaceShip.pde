class SpaceShip {
  // Member Variables
  PImage ship;
  int x, y, r; 
  int health;
  boolean alive; 

  // Constructor 
  SpaceShip() {
    x=0;
    y=0;
    r=50;
    ship = loadImage("SHIP.png");
    health = 1000;
    //speed = 5;
    alive = true;
  }

  // Display Method
  void display (int x, int y) {
    this.x= x;
    this.y=y;
    image(ship, x, y);
  }



  //stroke(1);
  //// drawguns
  //fill(100, 0, 0);
  //rect(x-3, y-50, 5, 10);
  ////draw Wings
  //fill(100, 0, 0);
  //triangle(x, y+5, x+65, y+30, x, y-47);
  //triangle(x, y+5, x-65, y+30, x, y-47);
  //// Drawhull 
  //fill(0, 100, 100); 
  //ellipse(x, y, 30, 90);
  //// draw cockpit
  //fill(200);
  //ellipse(x, y-20, 20, 25);
  //// drawthrusters
}
