//Imagens
PImage imgParado, imgMartelando;

//Configuracao inicial
void setup(){
  size(600,600);
  imgParado = loadImage("parado.png");
  imgMartelando = loadImage("martelando.png");
}

//Loop Principal
void draw(){
  mostraMario(estadoMario);
  MEF();
  println(estadoMario);
}

//Representacao Grafica
void mostraMario(int estado){
  background(255);
  if (estado == PARADO) {
    image(imgParado, 150, 150);
  }else if (estado == MARTELANDO){
    image(imgMartelando, 150, 150);
  }
}

//Estados Possiveis
final int PARADO = 0;
final int MARTELANDO = 1;

//Estado Inicial
int estadoMario = PARADO;

////Maquina de Estados Finitos
void MEF(){
  if(keyPressed == true){
    if(key == ' '){
      estadoMario = MARTELANDO;
    }
  }else if (keyPressed == false){
    estadoMario = PARADO;
  }
}
