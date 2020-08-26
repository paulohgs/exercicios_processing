int jogadaMaquina, jogadaUsuario;
float halfHeight;

void setup() {
  
  size(740, 370);
  textSize(16);
  rectMode(CENTER);
  textAlign(CENTER,CENTER);
  halfHeight = height/2;
  noStroke();
  //criacao da interface
  background(#c6c6c6);
  fill(#60FCC4);
  rect(70, halfHeight, 100, 100);
  rect(220, halfHeight, 100, 100);
  rect(370, halfHeight, 100, 100);
  rect(520, halfHeight, 100, 100);
  rect(670, halfHeight, 100, 100);
  fill(#000000);
  text("Este é um jogo de pedra, papel, tesoura, spock e lagarto!", width/2,(height/10)*1);
  text("Tesoura",70,halfHeight);
  text("Papel",220,halfHeight);
  text("Pedra",370,halfHeight);
  text("Lagartixa",520,halfHeight);
  text("Spock",670,halfHeight);
  
}

void draw() {
}

void mousePressed() {

  //Verificar e realizar escolha para a jogada
  if (mousePressed) {

    if ((mouseX > 20 && mouseX < 120) && (mouseY > 135 && mouseY < 235)) {
      jogadaUsuario = 1; //tesoura
      jogadaMaquina = int(random(1, 6));
    }
    if ((mouseX > 170 && mouseX < 270) && (mouseY > 135 && mouseY < 235)) {
      jogadaUsuario = 2;//papel
      jogadaMaquina = (int) random(1, 6);
    }
    if ((mouseX > 320 && mouseX < 420) && (mouseY > 135 && mouseY < 235)) {
      jogadaUsuario = 3;//pedra
      jogadaMaquina = (int) random(1, 6);
    }
    if ((mouseX > 470 && mouseX < 570) && (mouseY > 135 && mouseY < 235)) {
      jogadaUsuario = 4;//lagarto
      jogadaMaquina = (int) random(1, 6);
    }
    if ((mouseX > 620 && mouseX < 720) && (mouseY > 135 && mouseY < 235)) {
      jogadaUsuario = 5;//spock
      jogadaMaquina = (int) random(1, 6);
    }
    resultado();
  }
}

void resultado() {
  switch(jogadaUsuario) {
  case 1:
    println("Você escolheu Tesoura!");
    personagemMaquina();
    if (jogadaMaquina == 2 || jogadaMaquina == 4) {
      println("Você venceu!\n");
    } else if (jogadaMaquina == jogadaUsuario) {
      println("Empate\n");
    } else {
      println("Você perdeu!\n");
    }
    break;
  case 2:
  println("Você escolheu Papel!");
    personagemMaquina();
    if (jogadaMaquina == 3 || jogadaMaquina == 5) {
      println("Você venceu!\n");
    } else if (jogadaMaquina == jogadaUsuario) {
      println("Empate\n");
    } else {
      println("Você perdeu\n");
    }
    break;
  case 3:
  println("Você escolheu Pedra!");
    personagemMaquina();
    if (jogadaMaquina == 4 || jogadaMaquina == 1) {
      println("Você venceu!\n");
    } else if (jogadaMaquina == jogadaUsuario) {
      println("Empate\n");
    } else {
      println("Você perdeu\n");
    }
    break;
  case 4:
  println("Você escolheu Lagartixa!");
    personagemMaquina();
    if (jogadaMaquina == 5 || jogadaMaquina == 2) {
      println("Você venceu!\n");
    } else if (jogadaMaquina == jogadaUsuario) {
      println("Empate\n");
    } else {
      println("Você perdeu\n");
    }
    break;
  case 5:
  println("Você escolheu Spock!");
    personagemMaquina();
    if (jogadaMaquina == 1 || jogadaMaquina == 3) {
      println("Você venceu!\n");
    } else if (jogadaMaquina == jogadaUsuario) {
      println("Empate\n");
    } else {
      println("Você perdeu\n");
    }
    break;
  default:
    println("Faça sua jogada!\n");
}
fim();
}
void personagemMaquina() {
  switch(jogadaMaquina) {
  case 1:
    println("A máquina escolheu Tesoura!\n");
    break;
  case 2:
    println("A máquina escolheu Papel!\n");
    break;
  case 3:
    println("A máquina escolheu Pedra!\n");
    break;
  case 4:
    println("A máquina escolheu Lagartixa!\n");
    break;
  case 5:
    println("A máquina escolheu Spock!\n");
    break;
  }
}
void fim(){
  jogadaUsuario = 0;
  jogadaMaquina = 0;
}
