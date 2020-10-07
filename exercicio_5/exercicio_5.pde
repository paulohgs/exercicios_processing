void setup () {
  size(500, 500);
  noStroke();
  background(#12376B);
  rectMode(CENTER);
  for (int y = 0; y < 10; y++) {
    for (int x = 0; x < 10; x++) {
      desenho(x*50, y*50, 50);
    }
  }
}

void desenho(int x, int y, int l) {
  fill(#1D58AB);
  ellipse(x+25,y+25,l,l);
  fill(#246CD1);
  quad(x+25,y,x,y+25,x+25,y+50,x+50,y+25);
  fill(#2A80F7);
  rect(x+25,y+25,l/2,l/2);
}
