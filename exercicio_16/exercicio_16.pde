void setup() {
  size(800, 600);
  rectMode(CENTER);
  ellipseMode(CORNER);
  noStroke();
}

void draw() {
  float posiY, posiX;
  posiY = map(mouseY, 0, 600, 75, 475);
  posiX = map(mouseX, 0, 800, 0, 750);
  background(255);
  fill(0);
  rect(width/2, height/2, 800, height*0.75);
  fill(255);
  ellipse(posiX, posiY, 50, 50);
}
