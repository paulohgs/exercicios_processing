int tam, x, y, mat1, mat2, mat3, mat4, sat, bri;

void setup() {
  
  size(600, 600);
  noStroke();
  ellipseMode(CORNER);
  colorMode(HSB, 360, 100, 100);
  tam = width/10;
  x = (int) random(0, 10);
  y = (int) random(0, 10);
  mat1 = 0;
  mat2 = 90;
  mat3 = 180;
  mat4 = 270;
  sat = 50;
  bri = 100;

}
void draw() {

  //Verificação para saber se o alguma tecla está sendo pressionada e o mouse não está sendo utilizado
  if (keyPressed && !(mousePressed)) {
    x = (int) random(0, 10);
    y = (int) random(0, 10);
    fill(mat3, sat, bri);

    //Verificação para saber se a posição é par para pintar de uma cor, ou impar para outra cor
    if ((x%2) == 0 && (y%2) == 0) {
      fill(mat4, 50, 100);
    } else if ((x%2) != 0 && (y%2) != 0) { //verificar se é impar
      fill(mat1, sat, bri);
    }

    //Verificação da posição para saber se está nas bordas
    if (x*tam == 0 || y*tam == 0 || x*tam == (width/10)*9 || y*tam == (width/10)*9) {
      fill(mat2, sat, bri);
    } 
  
    ellipse(x*tam, y*tam, tam, tam);
  
  }

}

//limpar a tela depois de tudo preenchido
void mousePressed() {
  background(#cccccc);

  mat1 = mat1 + 90;
  mat2 = mat2 + 90;
  mat3 = mat3 + 90;
  mat4 = mat4 + 90;

  //Verificações para saber a volta do circulo cromático
  if (mat1 > 360) {
    mat1 = mat1 - 360;
  }
  if (mat2 > 360) {
    mat2 = mat2 - 360;
  }
  if (mat3 > 360) {
    mat3 = mat3 - 360;
  }
  if (mat4 > 360) {
    mat4 = mat4 - 360;
  }
}
