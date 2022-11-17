PImage menu, carrera, instrucciones, azul, rojo;
Boton b1, b2, b3, b4, ins;
int pantalla = 0;
float posAzulX = 280, posAzulY=775;

void setup(){
  size(1374, 765);
  surface.setResizable(true);
  menu = loadImage("menu.png");
  carrera = loadImage("circuito.png");
  instrucciones = loadImage("instrucciones.png");
  azul = loadImage("azul.png");
  rojo = loadImage("rojo.png");
  b1 = new Boton(455, 200, color(255, 0, 255), 455, 80, 0, 1);
  b2 = new Boton(455, 350, color(255, 0, 255), 455, 80, 0, 2);
  b3 = new Boton(455, 500, color(255, 0, 255), 455, 80, 0, 3);
  ins = new Boton(515, 565, color(255, 0, 255), 148, 60, 2, 0);
  
}

void draw(){
  println(mouseX + ":" + mouseY);
  switch(pantalla){
    case 0:
      Menu();
      break;
    case 1:
      Carrera();
      break;
      
    case 2: 
      Instrucciones();
      break;
      
    case 3: 
      exit();
      break;
  }
}

void mousePressed(){
  b1.pulsar();
  b2.pulsar();
  b3.pulsar();
  ins.pulsar();
}
