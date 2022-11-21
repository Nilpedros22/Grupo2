PImage menu, carrera, instrucciones, azul, rojo, azul2, Amov1, Amov2, Amov3, Amov4, AverticalB, AverticalA, RverticalA, RverticalB, rojo2, Rmov1, Rmov2, Rmov3, Rmov4;
Boton b1, b2, b3, b4, ins;
int pantalla = 1;
float posAzulX = 320, posAzulY = 835;
float posRojoX = 320, posRojoY = 738;

void setup(){
  size(1374, 765);
  surface.setResizable(true);
  menu = loadImage("menu.png");
  carrera = loadImage("circuito.png");
  instrucciones = loadImage("instrucciones.png");
  azul = loadImage("azul.png");
  rojo = loadImage("rojo.png");
  Amov1 = loadImage("Amov1.png");
  Amov2 = loadImage("Amov2.png");
  Amov3 = loadImage("Amov3.png");
  Amov4 = loadImage("Amov4.png");
  Rmov1 = loadImage("Rmov1.png");
  Rmov2 = loadImage("Rmov2.png");
  Rmov3 = loadImage("Rmov3.png");
  Rmov4 = loadImage("Rmov4.png");
  azul2 = loadImage("azul2.png");
  AverticalB = loadImage("AverticalB.png");
  AverticalA = loadImage("AverticalA.png");
  RverticalB = loadImage("RverticalB.png");
  RverticalA = loadImage("RverticalA.png");
  rojo2 = loadImage("rojo2.png");
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
