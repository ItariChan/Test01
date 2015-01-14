/***********************************************
 * Basic Calculator: Sonia Liu | 2014           *
 ************************************************/
// Instantiate each of the classification of buttons
Button[] numButtons = new Button[10];
Button[] opButtons = new Button[12];
Button[] spButtons = new Button [1];

// Global variables
String displayValue = "0";
String valueToCompute = "";
String valueToCompute2 = "";
float valueToComputeI = 0;
float valueToComputeI2 = 0;
float result = 0;
char opValue; //one character
boolean firstNum;

void setup() {
  size(350, 320);
  background(0);

  //Populate number buttons
  numButtons[0] = new Button(60, 260).asNumber(0, 40, 40);
  numButtons[1] = new Button(10, 210).asNumber(1, 40, 40);
  numButtons[2] = new Button (60, 210).asNumber(2, 40, 40);
  numButtons[3] = new Button (110, 210).asNumber(3, 40, 40);
  numButtons[4] = new Button (10, 160).asNumber(4, 40, 40);
  numButtons[5] = new Button (60, 160).asNumber(5, 40, 40);
  numButtons[6] = new Button (110, 160).asNumber(6, 40, 40);
  numButtons[7] = new Button (10, 110).asNumber(7, 40, 40);
  numButtons[8] = new Button (60, 110).asNumber(8, 40, 40);
  numButtons[9] = new Button (110, 110).asNumber(9, 40, 40);

  opButtons [0] = new Button (160, 160).asOperator ("-", 40, 40);
  opButtons [1] = new Button (160, 110).asOperator ("+", 40, 40);
  opButtons [2] = new Button (160, 210).asOperator ("=", 40, 90);
  opButtons [3] = new Button (210, 110).asOperator ("*", 40, 40);
  opButtons [4] = new Button (210, 160).asOperator ("/", 40, 40);
  opButtons [5] = new Button (210, 80).asOperator ("C", 40, 20);
  opButtons [6] = new Button (110, 260).asOperator ("+/-", 40, 40);
  opButtons [7] = new Button (210, 260).asOperator ("sqrt", 40, 40);
  opButtons [8] = new Button (210, 210).asOperator ("pow", 40, 40);
  opButtons [9] = new Button (30, 80).asOperator ("cos", 40, 20);
  opButtons [10] = new Button (90, 80).asOperator ("sin", 40, 20);
  opButtons [11] = new Button (150, 80).asOperator ("tan", 40, 20);



  spButtons[0] = new Button (10, 260).asSpecial (".");
  //set the inital value of first num to true
  firstNum = true;
}

void draw() {
  //draw number buttons
  for (int i=0; i<numButtons.length; i++) {
    Button inumButton = numButtons [i];
    inumButton.display();
  } 
  for (int i=0; i<opButtons.length; i++) {
    Button iopButton = opButtons [i];
    iopButton.display();
  }
  for (int i=0; i<spButtons.length; i++) {
    Button ispButton = spButtons [i];
    ispButton.display ();
  }
  updateDisplay();
}

void keyPressed () {
  if (key == '1') {
    if (firstNum) {
      valueToCompute += int(1);
      displayValue = valueToCompute;
    } else {
      valueToCompute2 += int(1);
      displayValue = valueToCompute2;
    }
  } else if (key == '2') {
    if (firstNum) {
      valueToCompute += int(2);
      displayValue = valueToCompute;
    } else {
      valueToCompute2 += int(2);
      displayValue = valueToCompute2;
    }
  } else if (key == '3') {
    if (firstNum) {
      valueToCompute += int(3);
      displayValue = valueToCompute;
    } else {
      valueToCompute2 += int(3);
      displayValue = valueToCompute2;
    }
  } else if (key == '4') {
    if (firstNum) {
      valueToCompute += int(4);
      displayValue = valueToCompute;
    } else {
      valueToCompute2 += int(4);
      displayValue = valueToCompute2;
    }
  } else if (key == '5') {
    if (firstNum) {
      valueToCompute += int(5);
      displayValue = valueToCompute;
    } else {
      valueToCompute2 += int(5);
      displayValue = valueToCompute2;
    }
  } else if (key == '6') {
    if (firstNum) {
      valueToCompute += int(6);
      displayValue = valueToCompute;
    } else {
      valueToCompute2 += int(6);
      displayValue = valueToCompute2;
    }
  } else if (key == '7') {
    if (firstNum) {
      valueToCompute += int(7);
      displayValue = valueToCompute;
    } else {
      valueToCompute2 += int(7);
      displayValue = valueToCompute2;
    }
  } else if (key == '8') {
    if (firstNum) {
      valueToCompute += int(8);
      displayValue = valueToCompute;
    } else {
      valueToCompute2 += int(8);
      displayValue = valueToCompute2;
    }
  } else if (key == '9') {
    if (firstNum) {
      valueToCompute += int(9);
      displayValue = valueToCompute;
    } else {
      valueToCompute2 += int(9);
      displayValue = valueToCompute2;
    }
  } else if (key == '0') {
    if (firstNum) {
      valueToCompute += int(0);
      displayValue = valueToCompute;
    } else {
      valueToCompute2 += int(0);
      displayValue = valueToCompute2;
    }
  } else if (key == '+') {
    if (result !=0) {
      opValue = '+';
      valueToCompute2 = "";
      firstNum = true;
      displayValue = "+";
    } else {
      opValue = '+';
      firstNum = false;
      displayValue = "+";
    }
  } else if (key == '-') {
    if (result !=0) {
      opValue = '-';
      valueToCompute2 = "";
      firstNum = true;
      displayValue = "-";
    } else {
      opValue = '-';
      firstNum = false;
      displayValue = "-";
    }
  } else if (key == '*') {
    if (result !=0) {
      opValue = '*';
      valueToCompute2 = "";
      firstNum = true;
      displayValue = "*";
    } else {
      opValue = '*';
      firstNum = false;
      displayValue = "*";
    }
  } else if (key == '/') {
    if (result !=0) {
      opValue = '/';
      valueToCompute2 = "";
      firstNum = true;
      displayValue = "/";
    } else {
      opValue = '/';
      firstNum = false;
      displayValue = "/";
    }
  } else if (key == ENTER || key == '=') {
    //perform calculation
    firstNum = true;
    performCalculation();
  } else if (key == '.') {
    if (firstNum) {
      valueToCompute += '.';
      displayValue = valueToCompute;
    } else {
      valueToCompute2 += '.';
      displayValue = valueToCompute2;
    }
  }
}

void mousePressed() {
  for (int i=0; i<numButtons.length; i++) {
    Button inumButton = numButtons[i];
    inumButton.click();
    if (inumButton.on) {
      if (firstNum) {
        valueToCompute += int(inumButton.numButtonValue);
        displayValue = valueToCompute;
      } else {
        valueToCompute2 += int(inumButton.numButtonValue);
        displayValue = valueToCompute2;
      }
    }
  }
  for (int i=0; i<spButtons.length; i++) {
    Button ispButton = spButtons [i];
    ispButton.click();
    if (ispButton.on) {
      if (ispButton.spButtonValue == ".") {
        //concantenate the values clicked on
        if (ispButton.on && firstNum == true) {
          valueToCompute += ispButton.spButtonValue;
          displayValue = valueToCompute;
        } else if (ispButton.on && firstNum == false) {
          valueToCompute2 += ispButton.spButtonValue;
          displayValue = valueToCompute2;
        }
      }
    }
  }
  for (int i=0; i<opButtons.length; i++) {
    Button iopButton = opButtons[i];
    iopButton.click();
    if (iopButton.on) {
      if (iopButton.opButtonValue == "+") {
        if (result !=0) {
          opValue = '+';
          valueToCompute2 = "";
          firstNum = true;
          displayValue = "+";
        } else {
          opValue = '+';
          firstNum = false;
          displayValue = "+";
        }
      } else if (iopButton.opButtonValue == "-") {
        if (result !=0) {
          opValue = '-';
          valueToCompute2 = "";
          firstNum = true;
          displayValue = "-";
        } else {
          opValue = '-';
          firstNum = false;
          displayValue = "-";
        }
      } else if (iopButton.opButtonValue == "*") {
        if (result !=0) {
          opValue = '*';
          valueToCompute2 = "";
          firstNum = true;
          displayValue = "*";
        } else {
          opValue = '*';
          firstNum = false;
          displayValue = "*";
        }
      } else if (iopButton.opButtonValue == "/") {
        if (result !=0) {
          opValue = '/';
          valueToCompute2 = "";
          firstNum = true;
          displayValue = "/";
        } else {
          opValue = '/';
          firstNum = false;
          displayValue = "/";
        }
      } else if (iopButton.opButtonValue == "pow") {
        if (result !=0) {
          opValue = 'p';
          valueToCompute2 = "";
          firstNum = true;
          displayValue = "^";
        } else {
          opValue = 'p';
          firstNum = false;
          displayValue = "^";
        }
      } else if (iopButton.opButtonValue == "C") {
        displayValue = "0";
        opValue = 'C';
        valueToCompute = "";
        valueToCompute2 = "";
        valueToComputeI = 0;
        valueToComputeI2 = 0;
        result = 0;
        firstNum = true;
      } else if (iopButton.opButtonValue == "sqrt") {
        if (result !=0) {
          opValue = 'r';
          valueToCompute2 = "";
          firstNum = true;
          performCalculation();
        } else {
          opValue = 'r';
          firstNum = false;
          performCalculation ();
        }
      } else if (iopButton.opButtonValue == "cos") {
        if (result !=0) {
          opValue = 'c';
          valueToCompute2 = "";
          firstNum = true;
          performCalculation();
        } else {
          opValue = 'c';
          firstNum = false;
          performCalculation ();
        }
      } else if (iopButton.opButtonValue == "sin") {
        if (result !=0) {
          opValue = 's';
          valueToCompute2 = "";
          firstNum = true;
          performCalculation();
        } else {
          opValue = 's';
          firstNum = false;
          performCalculation ();
        }
      } else if (iopButton.opButtonValue == "tan") {
        if (result !=0) {
          opValue = 't';
          valueToCompute2 = "";
          firstNum = true;
          performCalculation();
        } else {
          opValue = 't';
          firstNum = false;
          performCalculation ();
        }
      } else if (iopButton.opButtonValue == "=") {
        //perform calculation
        firstNum = true;
        performCalculation();
      } else if (iopButton.opButtonValue == "+/-") {
        opValue = 'n';
        performCalculation ();
      }
    }
  }
}
void performCalculation () {
  //set string values to integers
  valueToComputeI = float(valueToCompute);
  valueToComputeI2 = float(valueToCompute2);

  //perform calculation based on appropriate operator
  if (opValue == '+') {
    result = valueToComputeI + valueToComputeI2;
    displayValue = str(result);
  } else if (opValue == '-') {
    result = valueToComputeI - valueToComputeI2;
    displayValue = str(result);
  } else if (opValue == '*') {
    result = valueToComputeI * valueToComputeI2;
    displayValue = str(result);
  } else if (opValue == 'r') {
    result = sqrt(valueToComputeI);
    displayValue = str(result);
  } else if (opValue == 'p') {
    result = pow(valueToComputeI, float(valueToCompute2));
    displayValue = str(result);
  } else if (opValue == 'c') {
    result = cos(radians(valueToComputeI));
    displayValue = str(result);
  } else if (opValue == 's') {
    result = sin(radians(valueToComputeI));
    displayValue = str(result);
  } else if (opValue == 't') {
    result = tan(radians(valueToComputeI));
    displayValue = str(result);
  } else if (opValue == '/') {
    result = valueToComputeI / valueToComputeI2;
    displayValue = str(result);
  } else if (opValue == 'n') {
    if (firstNum) {
      valueToComputeI = valueToComputeI*-1;
      displayValue = str(valueToComputeI);
    } else {
      valueToComputeI2 = valueToComputeI2*-1;
      displayValue = str (valueToComputeI2);
    }
  }
  if (firstNum) {
    valueToCompute = displayValue;
  } else {
    valueToCompute = displayValue;
    valueToCompute2 = "";
  }
} 

void updateDisplay () {
  fill(200, 200, 150);
  rect(10, 10, 240, 50, 10);
  fill(0);
  textSize(24);
  text(displayValue, 20, 37);

  fill (50, 55, 50);
  noStroke();
  rect(255, 230, 100, 75);
  fill(255);
  textSize(10);
  text("Val 1: " + valueToCompute, 260, 240);
  text("Val 2: " + valueToCompute2, 260, 250);
  text("result: " + result, 260, 260);
  text("Operator: " + opValue, 260, 270);
}

class Button {
  //Class variables
  boolean isNumber;
  boolean isSpecial;
  boolean isOperator;
  float numButtonValue; //number buttons
  String opButtonValue;
  String spButtonValue;
  float x;
  float y;
  int w = 40;
  int h = 40;
  boolean on = false;
 
  Button (float tempXpos, float tempYpos) {
    x = tempXpos;
    y = tempYpos;
    //println(numButtonCalue);
  }
  //Constructor for number buttons
  Button asNumber(float tempNumButtonValue, int tempW, int tempH) {
    isNumber = true;
    numButtonValue = tempNumButtonValue;
    w = tempW;
    h = tempH;
    return this;
  }
  //Constructor for operator buttons
  Button asOperator (String tempOpButtonValue, int tempW, int tempH) {
    isOperator = true;
    opButtonValue = tempOpButtonValue;
    w = tempW;
    h = tempH;
    return this;
  }
  //Constructor for special buttons
  Button asSpecial (String buttonValue) {
    isSpecial = true;
    spButtonValue = buttonValue;
    return this;
  }
  //Draw the button on the canvas
  void display() {
    //Draw rounded edged button on canvas
    if (isNumber) {
      fill(177);
      stroke(255);
      strokeWeight(1);
      fill(#1800FC);
      rect(x, y, w, h, 10);
      fill(0);
      textSize(18);
      text(int(numButtonValue), x+13, y+27);
    } else if (opButtonValue == "=" ) {
      fill(177);
      stroke(255);
      strokeWeight(1);
      fill(#11AA17);
      rect(x, y, w, h, 10);
      fill(0);
      textSize(18);
      text(opButtonValue, x+13, y+45);
    } else if (opButtonValue == "+" ) {
      fill(177);
      stroke(255);
      strokeWeight(1);
      fill(#11AA17);
      rect(x, y, w, h, 10);
      fill(0);
      textSize(18);
      text(opButtonValue, x+13, y+27);
    } else if (opButtonValue == "/") {
      fill (177);
      stroke(255);
      strokeWeight(1);
      fill(#11AA17);
      rect(x,y,w,h,10);
      fill(0);
      textSize(18);
      text("÷", x+13, y+27);
    } else if (opButtonValue == "*") {
      fill (177);
      stroke(255);
      strokeWeight(1);
      fill(#11AA17);
      rect(x,y,w,h,10);
      fill(0);
      textSize(18);
      text("×", x+13, y+27);
    } else if (opButtonValue == "C") {
      fill (177);
      stroke(255);
      strokeWeight(1);
      fill(#B915B9);
      rect(x,y,w,h,10);
      fill(0);
      textSize(12);
      text("clear", x+5, y+15);
    } else if (opButtonValue == "+/-") {
      fill (177);
      stroke(255);
      strokeWeight(1);
      fill(#1800FC);
      rect(x,y,w,h,10);
      fill(0);
      textSize(18);
      text("±", x+13, y+25);
    } else if (opButtonValue == "sqrt") {
      fill (177);
      stroke(255);
      strokeWeight(1);
      fill(#11AA17);
      rect(x,y,w,h,10);
      fill(0);
      textSize(18);
      text("√", x+13, y+25);
    } else if (opButtonValue == "pow") {
      fill (177);
      stroke(255);
      strokeWeight(1);
      fill(#11AA17);
      rect(x,y,w,h,10);
      fill(0);
      textSize(18);
      text("^", x+15, y+27);
    }else if (opButtonValue == "-") {
      fill (177);
      stroke(255);
      strokeWeight(1);
      fill(#11AA17);
      rect(x,y,w,h,10);
      fill(0);
      textSize(18);
      text(opButtonValue, x+15, y+27);
    } else if (isOperator) {
      fill (177);
      stroke(255);
      strokeWeight(1);
      fill(#B915B9);
      rect(x,y,w,h,10);
      fill(0);
      textSize(14);
      text(opButtonValue, x+7, y+15);
    } else if (isSpecial) {
      fill(177);
      stroke(255);
      strokeWeight(1);
      fill(#1800FC);
      rect(x, y, w, h, 10);
      fill(0);
      textSize(20);
      text(spButtonValue, x+17, y+27);
    }
  }

//Handle mouse actions
  void click () {
    on = mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h;
  }
}



