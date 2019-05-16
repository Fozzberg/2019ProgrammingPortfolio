Button[] numBtns = new Button [10];
Button[] opBtns = new Button [11];

String displayVal, leftVal, rightVal;
char opVal;
float result;
boolean firstNum, dec;
//Button btn0;

void setup() {
  size (620, 820);
  numBtns[0] = new Button (220, 700, 175, 85, color(100, 196, 10)).asNumber(0);
  numBtns[1] = new Button (175, 610, 85, 85, color(100, 196, 10)).asNumber(1);
  numBtns[2] = new Button (265, 610, 85, 85, color(100, 196, 10)).asNumber(2);
  numBtns[3] = new Button (355, 610, 85, 85, color(100, 196, 10)).asNumber(3);
  numBtns[4] = new Button (175, 520, 85, 85, color(100, 196, 10)).asNumber(4);
  numBtns[5] = new Button (265, 520, 85, 85, color(100, 196, 10)).asNumber(5);
  numBtns[6] = new Button (355, 520, 85, 85, color(100, 196, 10)).asNumber(6);
  numBtns[7] = new Button (175, 430, 85, 85, color(100, 196, 10)).asNumber(7);
  numBtns[8] = new Button (265, 430, 85, 85, color(100, 196, 10)).asNumber(8);
  numBtns[9] = new Button (355, 430, 85, 85, color(100, 196, 10)).asNumber(9);

  opBtns[0] = new Button (445, 250, 85, 85, color(153, 255, 90)).asOperator("≈");
  opBtns[1] = new Button (445, 700, 85, 85, color(153, 255, 90)).asOperator("=");
  opBtns[2] = new Button (175, 250, 85, 85, color(153, 255, 90)).asOperator("C");
  opBtns[3] = new Button (355, 340, 85, 85, color(153, 255, 90)).asOperator("x^2");
  opBtns[4] = new Button (355, 700, 85, 85, color(153, 255, 90)).asOperator(".");
  opBtns[5] = new Button (445, 430, 85, 85, color(153, 255, 90)).asOperator("*");
  opBtns[6] = new Button (175, 340, 85, 85, color(153, 255, 90)).asOperator("√");
  opBtns[7] = new Button (445, 520, 85, 85, color(153, 255, 90)).asOperator("-");
  opBtns[8] = new Button (445, 610, 85, 85, color(153, 255, 90)).asOperator("+");
  opBtns[9] = new Button (445, 340, 85, 85, color(153, 255, 90)).asOperator("/");
  opBtns[10] = new Button (265, 340, 85, 85, color(153, 255, 90)).asOperator("±");

  displayVal = "";
  leftVal= "";
  rightVal = "";
  opVal = ' ';
  result = 0.0;
  firstNum = true;
  dec = false;
}


void draw() {
  background (100, 10, 90);
  for (int i=0; i<numBtns. length; i++) {
    numBtns[i].display();
    numBtns[i].hover();
  }
  for (int i=0; i<opBtns.length; i++) {
    opBtns[i].display();
    opBtns[i].hover();
  }
  updateDisplay();
}


void updateDisplay() {
  rectMode(CENTER);
  fill(200);
  rect(310, 100, 400, 60);
  textSize(30);
  textAlign(RIGHT);
  fill(0);
  text(displayVal, 310, 120);
}


void mouseReleased() {
  for (int i=0; i<numBtns.length; i++) {
    if (numBtns[i].hov) {
      if (firstNum) {
        leftVal += str(numBtns[i].v);
        displayVal = leftVal;
      } else {
        rightVal += str(numBtns[i].v);
        displayVal = rightVal;
      }
    }
  }

  for (int i=0; i<opBtns.length; i++) {
    if (opBtns[i].hov) {
      if (opBtns[i].op == "+") {
        opVal = '+';
        firstNum = false;
      } else if (opBtns[i].op == "-") {
        opVal = '-';
        firstNum = false;
      } else if (opBtns[i].op == "*") {
        opVal = '*';
        firstNum = false;
      } else if (opBtns[i].op == "/") {
        opVal = '/';
        firstNum = false;
      } else if (opBtns[i].op== "=") {
        preformCalc();
      } else if (opBtns [i].op == "C") {
        clearButton();
      } else if (opBtns[i].op == ".") {
        if (!dec) {
          if (firstNum) {
            leftVal += opBtns[i].op;
            displayVal = leftVal;
            dec = true;
          } else {
            rightVal += opBtns[i].op;
            displayVal = rightVal;
            dec = true;
          }
        }
      } else if (opBtns[i].op == "±") {
        if (firstNum) {
          leftVal = str(float(leftVal) *-1);
          displayVal = leftVal;
        } else {
          rightVal = str(float(rightVal) *-1);
          displayVal = rightVal;
        }
      } else if (opBtns[i].op == "√") {
        if (firstNum) {
          leftVal = str(sqrt(float(leftVal)));
          displayVal = leftVal;
        } else {
          rightVal = str(sqrt(float(rightVal)));
          displayVal = rightVal;
        }
        } else if (opBtns[i].op == "x^2") {
          if (firstNum) {
            leftVal = str(sq(float(leftVal)));
            displayVal = leftVal;
          } else {
            rightVal = str(sq(float(rightVal)));
            displayVal = rightVal;
           }
      } else if (opBtns[i].op == "≈") {
        if (firstNum) {
          leftVal = str(round(float(leftVal)));
          displayVal = leftVal;
        } else {
          rightVal = str(round(float(rightVal)));
          displayVal = rightVal;
        }
        }
      }
    }
  }

  void keyPressed () {
    if (key == '1') {
      handleKeyPress(true, "1");
    } else if (key == '2') {
      handleKeyPress(true, "2");
    } else if (key == '3') {
      handleKeyPress(true, "3");
    } else if (key == '0') {
      handleKeyPress(true, "4");
    } else if (key == '5') {
      handleKeyPress(true, "5");
    } else if (key == '6') {
      handleKeyPress(true, "6");
    } else if (key == '7') {
      handleKeyPress(true, "7");
    } else if (key == '8') {
      handleKeyPress(true, "8");
    } else if (key == '9') {
      handleKeyPress(true, "9");
    } else if (key == '.') {
      handleKeyPress(false, ".");
    } else if (key == '.') {
      handleKeyPress(false, "/");
    } else if (key == '.') {
      handleKeyPress(false, "*");
    } else if (key == '.') {
      handleKeyPress(false, "-");
    } else if (key == '.') {
      handleKeyPress(false, "+");
    } else if (key == '=') {
      handleKeyPress(false, "=");
    } else if (key == 'C') {
      handleKeyPress(false, "C");
    }
  }
  void handleKeyPress(boolean num, String val) {
    if (num) {
      if (firstNum) {
        leftVal += val;
        displayVal = leftVal;
      } else {
        rightVal += val;
        displayVal = rightVal;
      }
    } else {
      if (val == "+") {
        opVal = '+';
        firstNum = false;
        dec = false;
      } else if (val == "+") {
        opVal = '+';
        firstNum = false;
        dec = false;
      } else if (val == "+") {
        opVal = '+';
        firstNum = false;
        dec = false;
      } else if (val == "+") {
        opVal = '+';
        firstNum = false;
        dec = false;
      }
    }
  }
  void preformCalc() {
    if (opVal == '+') {
      result = float (leftVal) + float(rightVal);
      displayVal = str (result);
    } else if (opVal == '-') {
      result = float (rightVal) - float(rightVal);
      displayVal = str (result);
    } else if (opVal == '*') {
      result = float (rightVal) * float(rightVal);
      displayVal = str (result);
    } else if (opVal == '/') {
      result = float (leftVal) / float(rightVal);
      displayVal = str (result);
    } 
    leftVal = displayVal;
    firstNum = true;
    dec = false;
  }
  void clearButton() {
    displayVal = "";
    leftVal= "";
    rightVal = "";
    opVal = ' ';
    result = 0.0;
    firstNum = true;
    dec = false;
  }
