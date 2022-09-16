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
color red = #ff0000;
color blue = #0000FF;
color green = #00FF00;

void setup() {
  size(800, 600);
}

void draw() {
  background(bkg);

  tactileRect(100, 50, 100, 50, brown);
  tactileRect(100, 150, 100, 50, yellow);

  tactileCircle(150, 250, 50, red);
  tactileCircle(150, 350, 50, green);
  tactileCircle(150, 450, 50, blue);
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

void tactileRect(int x, int y, int w, int h, color f) {
  fill(f);
  strokeWeight(5);

  if (rectbuttons(x, y, w, h)) {
    stroke(white);
  } else {
    stroke(black);
  }

  if (mousePressed) {
    if (rectbuttons(x, y, w, h)) {
      bkg = f;
    }
  }
  rect(x, y, w, h);
}

void tactileCircle(int x, int y, int d, color f) {
  fill(f);
  strokeWeight(5);

  if (circlebuttons(x, y, d/2)) {
    stroke(white);
  } else {
    stroke(black);
  }

  if (mousePressed) {
    if (circlebuttons(x, y, d/2)) {
      bkg = f;
    }
  }
  circle(x, y, d);
}
