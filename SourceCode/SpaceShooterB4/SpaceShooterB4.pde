// SpaceShooter
// by Alex Forsberg
// 2018
// TODO: 
ArrayList <Rock> rocks;
ArrayList <Laser> lasers;
Timer timer;
int rockRate = 1000;
boolean play = false;
int score = 0; // This will be used for user score
import processing.sound.*;
SoundFile laser;
SpaceShip s1; 
Rock r1;

void setup() {
  size (1000, 1000);
  laser = new SoundFile(this, "lsaer.wav");
  rocks = new ArrayList <Rock> ();
  lasers = new ArrayList <Laser> ();
  timer = new Timer(rockRate);
  timer.start();
  s1= new SpaceShip();
  r1 = new Rock(100, 0, 20);
}

void draw() {
  background(128);
  noCursor();
  r1.move();
  r1.display();

  // if (timer.isFinished()) {
  //  rocks.add(new Rock(int(random(width)), -20, 10));
  //  timer.start();
  //}

  //for (int i = 0; i<lasers.size(); i++ ) {
  //  lasers.get(i).fire();
  //  lasers.get(i).display();
  //  if (lasers.get(i).reachedTop()) {
  //    lasers.remove(i);
  //  }
  //}
  //    // Render Rocks
  //for (int i = rocks.size()-1; i>=0; i--) {
  //for (int i=0; i<rocks.size(); i++) {
  //  Rock rock = (Rock) rocks.get(i);
  //  rock.move();
  //  rock.display();
  //  if (rock.reachedBottom()) {
  //    rocks.remove(rock);
  //  }
  //}
  //  // collision detection
  //  for (int j=0; j<lasers.size(); j++) {
  //    if (dist(lasers.get(j).x, lasers.get(j).y, rocks.get(i).x, rocks.get(i).y)<rocks.get(i).r) {
  //      score+= 100;
  //      println(score);
  //      rocks.get(i).health -= 10;
  //      if (rocks.get(i).health < 1) {
  //        rocks.remove(rocks.get(i));
  //      }
  //      lasers.remove(lasers.get(j));
  //    }// Detect an intesection
  //  }
  //}
  //s1.display(mouseX, mouseY);
  //updateDisplay();
}

//void updateDisplay() {
//  fill(200, 125);
//  rect(0, 0, width, 88);
//  textSize(20);
//  fill(0);
//  text("Score:\n " + score, 100, 30);
//  text("Health:\n" + s1.health, 425, 30);
//}


//void mousePressed() {
//  lasers.add(new Laser(mouseX, mouseY, color (255, 0, 0)));
//  laser.play();
//}

//void keyPressed() {
//  if (key == ' ') {
//    lasers.add(new Laser(mouseX, mouseY, color (255, 0, 0)));
//    laser.play();
//  }
//}
