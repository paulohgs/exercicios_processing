int jogadaMaquina;
int jogada2;
void setup() {
  size(600, 600);
  print("Este é um jogo de pedra, papel, tesoura, spock e lagarto\n");
}
void draw() {
}
void mousePressed() {
  //I.A. para jogadas da máquina de forma bem básica
  jogadaMaquina = (int) random(1, 6);
  println(jogadaMaquina);
  switch(jogadaMaquina) {
  case 1:
    if (jogada2 == 2 || jogada2 == 4) {
      println("vitória");
    } else if (jogada2 == 1) {
      println("Empate");
    } else {
      println("Derrota");
    }
  break;
  case 2:
    if (jogada2 == 2 || jogada2 == 4) {
      println("vitória");
    } else if (jogada2 == 1) {
      println("Empate");
    } else {
      println("Derrota");
    }
  break;
  
  
  
  
  
  
  
  }
}
void keyPressed() {
  if (keyPressed) {
    if (keyCode == UP) {
      jogada2 = (int) random(1, 6);
      println(jogada2);
    }
  }
}
