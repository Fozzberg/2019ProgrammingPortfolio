class Lines {
  //variables
  float xpos;
  float ypos;
  float strokeW;
  float lineLength;

  //constructor
  Lines(float tempX, float tempY, float tempStroke, float tempLength) {
    xpos = tempX;
    ypos = tempY;
    strokeW = tempStroke;
    lineLength = tempLength;
  }


  //display
  void display () {
    stroke (200,150,20);
    if (xpos > width || xpos < 0 || ypos > height || ypos < 0) {
      xpos = random(width);
      ypos = random(height);
    } else {
      if (random(100)>75) {
        strokeWeight(strokeW);
        moveLeft(xpos, ypos, lineLength);
      } else if (random(100)>70) {
        strokeWeight(strokeW);
        moveUp(xpos, ypos, lineLength);
      } else if (random(100)>55) {
        strokeWeight(strokeW);
        moveDown(xpos, ypos, lineLength);
      } else {
        strokeWeight(strokeW);
        moveRight(xpos, ypos, lineLength);
      }
    }
  }

  void moveRight(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX+i, startY);
      xpos = startX + i;
      ypos = startY;
    }
  }
  void moveLeft(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX-i, startY);
      xpos = startX - i;
      ypos = startY;
    }
  }
  void moveUp(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY-i);
      xpos = startX;
      ypos = startY - i;
    }
  }
  void moveDown(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY+i);
      xpos = startX;
      ypos = startY + i;
    }
  }
  //void moveURight(float startX, float startY, float moveCount) {
  //  for (float i=0; i<moveCount; i++) {
  //    point(startX+i, startY-i);
  //    xpos = startX + i;
  //    ypos = startY - i;
  //  }
  //}
  //void moveULeft(float startX, float startY, float moveCount) {
  //  for (float i=0; i<moveCount; i++) {
  //    point(startX-i, startY - i);
  //    xpos = startX - i;
  //    ypos = startY - i;
  //  }
  //}
  //void moveDRight(float startX, float startY, float moveCount) {
  //  for (float i=0; i<moveCount; i++) {
  //    point(startX+i, startY+i);
  //    xpos = startX + i;
  //    ypos = startY + i;
  //  }
  //}
  //void moveDLeft(float startX, float startY, float moveCount) {
  //  for (float i=0; i<moveCount; i++) {
  //    point(startX-i, startY+i);
  //    xpos = startX - i;
  //    ypos = startY + i;
  //  }
  //}
}
