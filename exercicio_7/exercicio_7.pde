void setup () {
  size(500, 500);
  noStroke();
  background(255);
  rectMode(CENTER);
  for (int y = 0; y < 10; y++) {
    for (int x = 0; x < 10; x++) {
      desenho(x*50+25, y*50+25);
    }
  }
}
void desenho(int x, int y) {
  fill(0);
  quad(x,y-25,x-25,y,x,y+25,x+25,y);
  
}
