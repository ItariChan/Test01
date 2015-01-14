int x, y;

void setup() {
  size(500, 500);
  frameRate(10);
  background(150);
  //set start coord
  x=width/2;
  y=height/2;
}

//method to draw right line
void moveRight(int rep) {
  for (int i=0; i<rep*10; i++) {
    point (x+i, y);
  }
  x=x+(10*rep);
}

void moveLeft(int rep) {
  for (int i=0; i<rep*10; i++) {
    point (x-i, y);
  }
  x=x-(10*rep);
}

void moveUp(int rep) {
  for (int i=0; i<rep*10; i++) {
    point (x, y-i);
  }
  y=y-(10*rep);
}

void moveDown(int rep) {
  for (int i=0; i<rep*10; i++) {
    point (x, y+i);
  }
  y=y+(10*rep);
}

void moveDownRight(int rep) {
  for (int i=0; i<rep*10; i++) {
    point (x+(i/2), y+i);
  }
  y=y+(10*rep);
  x=x+(10*rep)/2;
}
void moveUpLeft(int rep) {
  for (int i=0; i<rep*10; i++) {
    point (x-(i/2), y-i);
  }
  y=y-(10*rep);
  x=x-(10*rep)/2;
}
void moveDownLeft(int rep) {
  for (int i=0; i<rep*10; i++) {
    point (x-(i/2), y+i);
  }
  y=y+(10*rep);
  x=x-(10*rep)/2;
}
void moveUpRight(int rep) {
  for (int i=0; i<rep*10; i++) {
    point (x+(i/2), y-i);
  }
  y=y-(10*rep);
  x=x+(10*rep)/2;
}

void draw() {
  if (keyPressed) {
    if (key == 'a' || key == '4') {
      moveLeft(1);
    } else if (key == 'd' || key == '6') {
      moveRight(1);
    } else if (key == 's' || key == '5') {
      moveDown(1);
    } else if (key == 'w' || key == '8') {
      moveUp(1);
    } else if (key == 'e' || key == '9') {
      moveUpRight(1);
    } else if (key == 'q' || key == '7') {
      moveUpLeft(1);
    } else if (key == 'c' || key == '3') {
      moveDownRight(1);
    } else if (key == 'z' || key == '1') {
      moveDownLeft(1);
    } else if (key == 'b' || key == '2') {
      background(150);
    }
  }
}
void mouseClicked() {
  saveFrame("line-#####.png");
}

