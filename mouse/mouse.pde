//colors
color lightblue = #ADD8E6;
color lightgreen = #00FF00;
color yellow = #FFE600;
color white = #FFFFFF;
color brown = #964B00;
color darkbrown = #4E3524;
color grey = #808080;
color darkblue = #00008B;
color black = #000000;
color cream = #fefae0;
color bkg = cream;

void setup() {
  size(800, 600);
}

void draw() {
  background(bkg);

  fill(grey);
  strokeWeight(5);

  //touching buttons
  if (rectbuttons(100, 100, 200, 100) == true) {
    stroke(lightblue);
  } else {
    stroke(black);
  }

  rect(100, 100, 200, 100);

  if (circlebuttons(400, 300, 50) == true) {
    stroke(lightgreen);
  } else {
    stroke(yellow);
  }

  circle(400, 300, 100);
}

//pressing buttons
void mousePressed() {
  if (rectbuttons(100, 100, 200, 100) == true) {
    bkg = brown;
  }

  if (circlebuttons(400, 300, 50) == true) {
    bkg = lightgreen;
  }
}

boolean rectbuttons(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    return true;
  } else {
    return false;
  }
}

boolean circlebuttons(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    return true;
  } else {
    return false;
  }
}
