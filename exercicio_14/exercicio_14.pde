float dist2D(float Px, float Py, float Qx, float Qy) {
  float resposta;
  resposta = sqrt(pow(abs(Px - Qx), 2)+pow(abs(Py - Qy), 2));
  return resposta;
}

void distCursor() {
  background(#c5c5c5);
  float dist2D = dist2D(width/2, height/2, mouseX, mouseY); 
  println(dist2D); //Ordem de envio dos parametros(Px, Py, Qx, Qy)
  line(width/2, height/2, mouseX, mouseY);
  text(dist2D, mouseX, mouseY);
}

void setup() {
  size(500, 500);
  textSize(12);
}

void draw() {
  distCursor();
}
