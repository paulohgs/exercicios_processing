void setup() {
  size(500, 500);
  noStroke();
  background(255);
  rectMode(CENTER);
  for (int y = 0; y < 10; y++) {
    for (int x = 0; x < 10; x++) {
      desenho(x*50+25, y*50+25, 50);
    }
  }
}
void desenho(int x, int y, int l) {
  for (int i = 10; i >= 1; i--) {
    fill(i*25);
    rect(x, y, i*5, i*5);
  }
  
}
