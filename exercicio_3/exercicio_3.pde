size(540, 540); //<>//
noStroke();
background(255);
fill(0);
for (int y = 0; y <= 9; y++) {
  for (int x = 0; x <= 9; x++) {
    if (y%2 == 0 && x%2 == 0 ) {
      triangle(x*60, y*60, x*60, y*60+60, x*60+60, y*60+60);
    } else if (y%2 == 0 && x%2 != 0) {
      triangle(x*60, y*60, x*60, y*60+60, x*60+60, y*60);
    } else if (y%2 !=0 && x%2 != 0) {
      triangle(x*60, y*60, x*60+60, y*60, x*60+60, y*60+60);
    } else if (y%2 !=0 && x%2 == 0) {
      triangle(x*60+60, y*60, x*60+60, y*60+60, x*60, y*60+60);
    }
  }
}
