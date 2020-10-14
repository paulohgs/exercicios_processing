int jogo [][] = new int [10][10];//Definição de variavéis globais
int jogada;

void setup () { //montagem de tabuleiro e chamada da jogada
  size(400, 400);
  montarBotao();
  montarMatriz();
  fazerJogada();
}
void draw () { //atualização de tela e permite interação
}
void mousePressed () { //receber clique e realizar chamada da função de jogada
  proximaJogada();
}

void montarBotao() { //desenhar botão no centro da aplicação junto do texto
  noStroke();
  textAlign(CENTER);
  textSize(14);
  rectMode(CENTER);
  background(120);
  fill(255);
  rect(width/2, height/2, 250, 50);
  fill(0);
  text("Clique aqui para próxima jogada", width/2, height/2);
}

void montarMatriz() { //Monta a matriz que forma o tabuleiro
  for (int i = 0; i < jogo.length; i++) {
    for (int j = 0; j < jogo[0].length; j++) {
      jogo[i][j] = (int) random(0, 2);
      print(jogo[i][j], " ");
    }
    println();
  }
}

void fazerJogada() { //realiza uma jogada e faz a chamada da função que determina se a jogada foi acerto ou erro
  int posi1 = (int)random(0, 10);
  int posi2 = (int)random(0, 10);
  jogada = jogo[posi1][posi2];
  println("Sua jogada foi na posição: ", posi1, ",", posi2);
  if (teste(jogada)) {
    println("GAME OVER! Usted perdeu minamigo");
  } else {
    println("Vc escapou dessa vez! Dá uma olhada nos teus vizinhos pra saber se tinha bomba: ");
    vizinhos8(posi1, posi2);
  }
}

void proximaJogada() {
  if (mouseX > 125 && mouseX < 325 && mouseY > 150 && mouseY < 250) {
    if (mousePressed == true) {
      montarMatriz();
      fazerJogada();
    }
  }
}

boolean teste (int jogada) { //realiza o teste lógico da jogada para saber se a jogada foi acerto ou erro
  boolean resultado;
  if (jogada == 1) {
    resultado = true;
  } else {
    resultado = false;
  }
  return resultado;
}
void vizinhos8 (int i, int j) {
  //posição anterior
  if (jogo[i][j-1] == 0) {
    println("A posição ", i, j-1, " está livre de bombas");
  } else {
    println("A posição ", i, ',', j-1, " tem bomba no caminho!");
  }
  //posição posterior
  if (jogo[i][j-1] == 0) {
    println("A posição ", i, j+1, " está livre de bombas");
  } else {
    println("A posição ", i, ',', j+1, " tem bomba no caminho!");
  }
  //posição acima
  if (jogo[i][j-1] == 0) {
    println("A posição ", i-1, j, " está livre de bombas");
  } else {
    println("A posição ", i-1, ',', j, " tem bomba no caminho!");
  }
  //posição abaixo
  if (jogo[i][j-1] == 0) {
    println("A posição ", i+1, j, " está livre de bombas");
  } else {
    println("A posição ", i+1, ',', j, " tem bomba no caminho!");
  }
  //posição diagonal acima esquerda
  if (jogo[i][j-1] == 0) {
    println("A posição ", i-1, j-1, " está livre de bombas");
  } else {
    println("A posição ", i-1, ',', j-1, " tem bomba no caminho!");
  }
  //posição diagonal abaixo direita
  if (jogo[i][j-1] == 0) {
    println("A posição ", i+1, j+1, " está livre de bombas");
  } else {
    println("A posição ", i+1, ',', j+1, " tem bomba no caminho!");
  }
  //posição diagonal acima direita
  if (jogo[i][j-1] == 0) {
    println("A posição ", i-1, j+1, " está livre de bombas");
  } else {
    println("A posição ", i-1, ',', j+1, " tem bomba no caminho!");
  }
  //posição diagonal abaixo esquerda
  if (jogo[i][j-1] == 0) {
    println("A posição ", i+1, j-1, " está livre de bombas");
  } else {
    println("A posição ", i+1, ',', j-1, " tem bomba no caminho!");
  }
}
