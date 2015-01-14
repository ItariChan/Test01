Lines[] myLines = new Lines[10];

void setup() {
  background(255);
  size(500, 500);
  for (int i=0; i<myLines.length; i++) {
    myLines [i] = new Lines (random(width), random(height), random(1,5), random(1,20));
  }
}

void draw() {
  if (frameCount == 500) {
    frameCount = 0;
    background(255);
  } else {
    for (int i=0; i<myLines.length; i++) {
      Lines iLines = myLines [i];
      iLines.display();
    }
  }
}

class Lines {
  float xpos;
  float ypos;
  float strokeW;
  float lineLength;

  Lines( float tempX, float tempY, float tempStroke, float tempLength) {
    xpos = tempX;
    ypos = tempY;
    lineLength = tempLength;
  }
  void display () {
    strokeW = random (1, 2);
    lineLength = random (1, 50);
    stroke (random(200), random(10), random(200));
    if (xpos > width || xpos<0 || ypos>height ||ypos<0) {
      xpos = random(width);
      ypos = random(height);
    } else {
      if (random(80)>70) {
        moveLeft(xpos, ypos, lineLength);
      } else if (random(80)>60) {
        moveRight (xpos, ypos, lineLength);
      } else if (random(80)>50) {
        moveUp (xpos, ypos, lineLength);
      } else if (random(80)>40) {
        moveDown (xpos, ypos, lineLength);
      } else if (random(80)>30) {
        moveUpRight(xpos, ypos, lineLength);
      } else if (random(80)>20) {
        moveUpLeft(xpos, ypos, lineLength);
      } else if (random(80)>10) {
        moveDownRight(xpos, ypos,lineLength);
      } else if (random(80)>0) {
        moveDownLeft(xpos, ypos, lineLength);
      }
    }
  }
    void moveRight(float startX, float startY, float moveCount) {
      for (float i=0; i<moveCount; i++) {
        point(startX+i, startY);
        xpos = startX+i;
        ypos = startY;
      }
    }
    void moveLeft(float startX, float startY, float moveCount) {
      for (float i=0; i<moveCount; i++) {
        point(startX-i, startY);
        xpos = startX-i;
        ypos = startY;
      }
    }
    void moveUp(float startX, float startY, float moveCount) {
      for (float i=0; i<moveCount; i++) {
        point(startX, startY-i);
        xpos = startX;
        ypos = startY-i;
      }
    }
    void moveDown(float startX, float startY, float moveCount) {
      for (float i=0; i<moveCount; i++) {
        point(startX, startY+i);
        xpos = startX;
        ypos = startY+i;
      }
    }
    void moveUpRight(float startX, float startY, float moveCount) {
      for (float i=0; i<moveCount; i++) {
        point(startX+i, startY-i);
        xpos = startX+i;
        ypos = startY-i;
      }
    }
    void moveUpLeft(float startX, float startY, float moveCount) {
      for (float i=0; i<moveCount; i++) {
        point(startX-i, startY-i);
        xpos = startX-i;
        ypos = startY-i;
      }
    }

    void moveDownRight(float startX, float startY, float moveCount) {
      for (float i=0; i<moveCount; i++) {
        point(startX+i, startY+i);
        xpos = startX+i;
        ypos = startY+i;
      }
    }

    void moveDownLeft(float startX, float startY, float moveCount) {
      for (float i=0; i<moveCount; i++) {
        point(startX-i, startY+i);
        xpos = startX-i;
        ypos = startY+i;
      }
    }
  }



