int altura;
void setup () {
  size(800, 600);
  noStroke();
  rectMode(CENTER);
  background(0);
  altura = height/6;
  textSize(32);
  textAlign(CENTER);
  fill(220);
  text("Clique em um botão!", width/2, altura*1);
  fill(120);
  for (int x = 0; x <= 2; x++) {
    rect(x*250+150, altura*5, 200, 50);
  }
}

void draw () {
  //botao 1
  if (mouseX > 50 && mouseX < 200 && mouseY > 500 && mouseY < 550) {
    if (mousePressed) {
      desenhoPequeno(width/2, height/2, 50);
    }
  }
  //botao 2
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 550) {
    if (mousePressed) {
      desenhoMedio(width, height, 50);
    }
  }
  //botao 3
  if (mouseX > 550 && mouseX < 750 && mouseY > 500 && mouseY < 550) {
    if (mousePressed) {
      desenhoGrande(width, height, 50);
    }
  }
}

void desenhoPequeno(float x, float y, float l) {
  background(0);
  fill(220);
  text("Clique em um botão!", width/2, altura*1);
  fill(120);
  for (int i = 0; i <= 2; i++) {
    rect(i*250+150, altura*5, 200, 50);
  }
  fill(255);
  rect(x/2, y/2, l*3, l*3);
  //fill(160);
  //rect((x/6.5)*2.8, (y/5)*2.2, l/2, l);
  //rect((x/6.5)*3.2, (y/5)*2.2, l/2, l);
  //rect((x/6.5)*3.2, (y/5)*3, l*2, l/2);
}
void desenhoMedio(int x, int y, int l) {
  background(0);
  fill(220);
  text("Clique em um botão!", width/2, altura*1);
  fill(120);
  for (int i = 0; i <= 2; i++) {
    rect(i*250+150, altura*5, 200, 50);
  }
  fill(255);
  rect(x/2, y/2, l*3, l*3);
  fill(160);
  rect((x/6.5)*2.8, (y/5)*2.2, l/2, l);
  rect((x/6.5)*3.2, (y/5)*2.2, l/2, l);
  rect((x/6.5)*3.2, (y/5)*3, l*2, l/2);
}
void desenhoGrande(int x, int y, int l) {
  background(0);
  fill(220);
  text("Clique em um botão!", width/2, altura*1);
  fill(120);
  for (int i = 0; i <= 2; i++) {
    rect(i*250+150, altura*5, 200, 50);
  }
  fill(255);
  rect(x, y, l*5, l*5);
}
