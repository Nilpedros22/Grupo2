class Boton {
  float xPos;
  float yPos;
  color c;
  float widthB;
  float heightB;
  int pantallaActual;
  int pantallaDestino;
  PFont fondoBoton;
  boolean pulsar;
  String texto;
  
  Boton(float x, float y, color col, float w, float h, int i, int d, String t){
    xPos = x;
    yPos = y;
    c = col;
    widthB = w;
    heightB = h;
    pantallaActual = i;
    pantallaDestino = d;
    texto = t;
    pulsar = false;
  }
  void dibujar(){
    fondoBoton = createFont("Georgia", 20);
    textFont(fondoBoton);
    fill(c, 100);
    rect(xPos, yPos, widthB, heightB, 5);
    fill(255);
    text(texto, xPos + 10, yPos + 30);
  }
  
  void pulsar(){
    if ((xPos <= mouseX && mouseX <= xPos + widthB) && (yPos <= mouseY && mouseY <= yPos + heightB) && pantalla == pantallaActual){
      pulsar = true;
      pantalla = pantallaDestino;
      println("Hola");
    }
  }

  void cambioPantalla(int pantallai, int pantallad){ 
    pantallaActual = pantallai;
    pantallaDestino = pantallad;
  }

  void cambioPantalla(int p){ 
    pantalla=p;
  }
  void setTexto(String t){
    texto = t;
  }  
}
