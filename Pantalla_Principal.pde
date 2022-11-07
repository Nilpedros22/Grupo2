PImage menu, carrera, instrucciones;
Boton b1, b2, b3;
int pantalla;

void setup(){
  size(1374, 765);
  menu = loadImage("menu.png");
  carrera = loadImage("circuito.png");
  instrucciones = loadImage("instrucciones.png");
  b1 = new Boton(455, 200, color(255, 0, 255), 455, 80, 0, 1);
  b2 = new Boton(455, 350, color(255, 0, 255), 455, 80, 0, 2);
  b3 = new Boton(455, 500, color(255, 0, 255), 455, 80, 0, 3);
}

void draw(){
  image(menu, 0, 0);
  println(mouseX + ":" + mouseY);
  switch(pantalla){
    case 1:
      Carrera();
      break;
      
    case 2: 
      Instrucciones();
      break;
      
    case 3: 
      Salir();
      break;
  }
}

void mousePressed(){
  b1.pulsar();
  b2.pulsar();
  b3.pulsar();
}
