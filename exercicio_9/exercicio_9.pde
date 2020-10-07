void setup () {
  size(500, 500);
  noStroke();
  background(0);
  for (int y = 0; y < 10; y++) {
    for (int x = 0; x < 10; x++) {
      desenho(x*50+25, y*50+25);
    }
  }
}
void desenho(int x, int y) {
  for (int i = 10; i > 0; i--) {
    fill(255-i*25);
    ellipse(x, y, i*5, i*5);
  }
}
