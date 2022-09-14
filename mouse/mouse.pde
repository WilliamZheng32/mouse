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

void setup() {
  size(800, 600);
}

void draw() {
  background(white);
  fill(darkblue);
  strokeWeight(5);
  circle(400, 300, 100);

  fill(
  rect(100, 100, 200, 100);

  if (dist(400, 300, mouseX, mouseY) < 50) {
    stroke(lightblue);
  } else {
    stroke(brown);
  }

  if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 200) {
    stroke(lightgreen);
  } else {
    stroke(yellow);
  }
}
