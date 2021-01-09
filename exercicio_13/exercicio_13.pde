float dist2D(float Px, float Py, float Qx, float Qy) {
  float resposta;
  resposta = sqrt(pow(abs(Px - Qx), 2)+pow(abs(Py - Qy), 2));
  return resposta;
}

void setup() {
  size(500, 500);
}

void draw() {
}

void mousePressed() {
  println(dist2D(0, 0, mouseX, mouseY)); //Ordem de envio dos parametros(Px, Py, Qx, Qy)
}
