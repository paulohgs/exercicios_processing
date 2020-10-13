void setup () {
  size(400, 400);
  colorMode(HSB, 360, 100, 100);
  rectMode(CENTER);
  noStroke();
}
void draw() {
}
void keyPressed() {
  if (keyCode == DOWN || keyCode == UP) {
    int mat, sat, bri;
    int [][] M = new int [1][3];
    print("Números escolhidos foram: ");
    for (int i = 0; i < M.length; i++) {
      for (int j = 0; j < M[0].length; j++) {
        M[i][j] = (int) random(0, 360);
        print(M[i][j], "");
      }
      println();
    }
    mat = M[0][0];
    println("Matriz: ", mat);
    sat = (M[0][1] > 100) ? abs(M[0][1]-160) : M[0][1];
    println("Saturação: ", sat);
    bri = (M[0][2] > 100) ? abs(M[0][1]-100) : M[0][1];
    println("Brilho: ", bri);
    fill(mat, sat, bri);
    rect(width/2, height/2, 200, 200);
  }
}
