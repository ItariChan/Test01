void setup() {
  //set the size of the window
  size (500, 500);
}

void draw() {
  //draw a white background
  background (0);

  //Set CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);

  //Zoog's boat sail
  fill(100, 63, 23);
  rect(250, 250, 5, 120);
  fill(255);
  noStroke();
  triangle(252.5, 190, 270, 205, 252.5, 220);

  zoog(mouseX+75, mouseY);
  zoog(mouseX-75, mouseY);
  zoog(mouseX, mouseY);

  //Zoog's boat
  fill(100, 63, 23);
  stroke(255);
  arc(250, 300, 250, 200, 0, PI, CHORD);
}

void zoog(int xpos, int ypos) {
  //Draw Zoog's body
  stroke (255);
  fill(0, 255, 134);
  rect (xpos, ypos, 20, 100);

  //Draw Zoog's head
  stroke(255);
  fill(0, 255, 0);
  ellipse(xpos, ypos-30, 60, 60);

  //Draw Zoog's eyes
  fill (0);
  ellipse (xpos-19, ypos-30, 16, 32);
  ellipse (xpos+19, ypos-30, 16, 32);

  //Draw Zoog's legs
  stroke (255);
  line (xpos-10, ypos+50, xpos-20, ypos+60);
  line (xpos+10, ypos+50, xpos+20, ypos+60);

  //Zoog's fish
  stroke(255);
  fill(255, 153, 0);
  bezier(xpos+45, ypos-25, xpos+60, ypos-25, xpos+60, ypos-15, xpos+45, ypos-15);
  line(xpos+45, ypos-25, xpos+25, ypos-15);
  line(xpos+25, ypos-25, xpos+45, ypos-15);

  //Zoog's arms
  stroke(255);
  line(xpos+10, ypos, xpos+45, ypos-20);
  line(xpos-10, ypos, xpos-30, ypos+25);
}


