void rectCian() {
  fill(#00ffff);
  rect(0, 0, width, height*0.2);
}

void rectMagenta () {
  fill(#ff00ff);
  rect(0, height*0.9, width, height*0.9);
}

void rectAmarelo() {
  fill(#ffff00);
  rect(0, height*0.2, width*0.3, height*0.7);
}

void rectPreto() {
  fill(0);
  rect(width*0.3, height*0.2, width*0.7, height*0.7);
}


void setup() {
  size(1280, 720);
  noStroke();
}

void draw() {
  rectCian();
  rectMagenta();
  rectAmarelo();
  rectPreto();
  noLoop();
}
