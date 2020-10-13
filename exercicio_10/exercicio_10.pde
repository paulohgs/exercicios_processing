void setup () {
  size(800,600);
  noStroke();
  background(0);
  rectMode(CENTER);  
}

void draw () {
  desenho(width,height, mouseX);
}

void desenho (float x, float y, float l){
  background(0);
  fill(255);
  rect(x/2, y/2, (l/3)*3,(l/4)*3);
  fill(200);
  ellipse((x/2)*1.2,y/2,l/3,l/3);
}
