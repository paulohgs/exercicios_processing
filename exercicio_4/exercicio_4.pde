int x, y, a, b, mat1, mat2, mat3, sat, bri; //definindo variáveis //<>//
void setup() {
  //configuração de ambiente
  size(600, 500);
  noStroke();
  colorMode(HSB, 360, 100, 100);
  fill(0, 0, 0);
  //definir valores das variáveis
  x = 0;
  y = 0;
  a = 0;
  b = 0;
  mat1 = 30;
  mat2 = 210;
  mat3 = 120;
  sat = 50;
  bri = 80;
  background(mat3, 50, 80);
  fill(mat1, sat, bri);
  //criando padrão do quadro
  while (y <= height) {
    while (x <= width) {
      quad(x, y, x+30, y+50, x+60, y+50, x+30, y);
      quad(a+30, b+50, a, b+100, a+30, b+100, a+60, b+50);
      x = x + 60;
      a = a + 60;
    }

    y = y + 100;
    b = b + 100;
    a = 0;
    x = 0;
  }
}
void draw() {
}
void mousePressed() {
  mat1 = mat1 + 90;
  mat2 = mat1 + 180;
  mat3 = mat1+90;

  if (mat1 > 360) {
    mat1 = mat1 - 360;
  }
  if (mat2 > 360) {
    mat1 = mat1 - 360;
  }
  if (mat3 > 360) {
    mat1 = mat1 - 360;
  }
}
