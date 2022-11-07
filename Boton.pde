class Boton {
  float xPos;
  float yPos;
  color c;
  float widthB;
  float heightB;
  int pantallaActual;
  int pantallaDestino;
  
  Boton(float x, float y, color col, float w, float h, int i, int d){
    xPos = x;
    yPos = y;
    c = col;
    widthB = w;
    heightB = h;
    pantallaActual = i;
    pantallaDestino = d;
  }
  
  void pulsar(){
    if ((xPos <= mouseX && mouseX <= xPos + widthB) && (yPos <= mouseY && mouseY <= yPos + heightB) && pantalla == pantallaActual){
      pantalla = pantallaDestino;
    }
  }

  void cambioPantalla(int pantallai, int pantallad){ 
    pantallaActual = pantallai;
    pantallaDestino = pantallad;

  }

  void cambioPantalla(int p){ 
    pantalla=p;
  }
}
