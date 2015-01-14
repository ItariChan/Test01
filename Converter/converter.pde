void setup () {
  size(950, 300);
}

void draw() {

  background(0);
  fill(255);
  text("Converter", 100, 50);
  text("Sonia Liu", 120, 80);  
  text("Use the slider below to convert centimeters into inches",100,110);
  drawReference(100, 150);
  if (mouseX>100 && mouseX<851 && mouseY>125 && mouseY<175) {
    fill(mouseX, 0, mouseX);
    rect(100, 150, mouseX-100, 15);
    //+ shows text does't end
    fill(mouseX+75, 0, mouseX+50);
    text("centimeters:" + int(mouseX-100), 50, 200);
    text("inches: " + converter(mouseX-100), 50, 230);
    text("feet: " + converter2(mouseX-100), 50, 260);
  } else if (mouseX>850 &&mouseY>125 && mouseY<175) {
    fill(255,0,255);
    text ("centimeters: 750", 50, 200);
    text("inches: " + converter(750), 50, 230);
    text("feet: " + converter2(750), 50, 260);
    rect(100,150,750,15);
  }
}

float converter (float cm) {
  float in = (cm*.39370);
  return in;
}

float converter2 (float cm) {
  float ft = (cm*.39370)/12;
  return ft;
}

void drawReference(int xpos, int ypos) {
  stroke(200);
  line(xpos, ypos, 850, ypos);
  for (int i=0; i<800; i+=50) {
    fill(255);
    text(i, xpos+i-8, ypos);
    line(xpos+i, ypos, xpos+i, ypos+5);
  }
}


