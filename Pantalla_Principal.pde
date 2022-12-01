PImage menu, carrera, instrucciones, azul, rojo, azul2, Amov1, Amov2, Amov3, Amov4, AverticalB, AverticalA, RverticalA, RverticalB, rojo2, Rmov1, Rmov2, Rmov3, Rmov4;
Boton b1, b2, b3, b4, ins, p1, r1, r2, r3;
int pantalla = 1;
float vel = 1;
float posAzulX = 320, posAzulY = 835;
float posRojoX = 320, posRojoY = 738;
String[][] respuestas = {{"1200cm", "120cm", "12000cm"}, {"60dm", "60000dm", "0.6dm"}, {"600cm", "6000cm", "60cm"}, {"30000dm", "30dm", "3000000dm"}, {"800m", "8000m", "80m"}, {"3200000", "320000", "32000"}};
String[] preguntas = {"Convierte 12 metros a centimetros", "Convierte 6 metros a decimetros", "Convierte 6000 milimetros a centimetros", "Convierte 3 kilometros a decimetros", "Convierte 0.8 kilometros a metros", "Convierte 32 kilometros a centimetros"};
int[] posiciones;
int pregunta = 0;
String solucion;
boolean controladorRespuestas = true;
boolean controladorPreguntas = true;
Temps cronometre;

void setup() {
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
  b1 = new Boton(455, 200, color(255, 0, 255), 455, 80, 0, 1, "");
  b2 = new Boton(455, 350, color(255, 0, 255), 455, 80, 0, 2, "");
  b3 = new Boton(455, 500, color(255, 0, 255), 455, 80, 0, 3, "");
  ins = new Boton(515, 565, color(255, 0, 255), 148, 60, 2, 0, "");
  r1 = new Boton(253, 480, color(100, 149, 237), 125, 45, 1, 1, "");
  r2 = new Boton(408, 480, color(100, 149, 237), 125, 45, 1, 1, "");
  r3 = new Boton(563, 480, color(100, 149, 237), 125, 45, 1, 1, "");
  solucion = "";
  posiciones = new int[3];
  b1 = new Boton(455, 200, color(255, 0, 255), 455, 80, 0, 1, "");
  b2 = new Boton(455, 350, color(255, 0, 255), 455, 80, 0, 2, "");
  b3 = new Boton(455, 500, color(255, 0, 255), 455, 80, 0, 3, "");
  ins = new Boton(515, 565, color(255, 0, 255), 148, 60, 2, 0, "");
  cronometre = new Temps();
}

void draw() {
  //println(mouseX + ":" + mouseY);
  switch(pantalla) {
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

void mousePressed() {
  b1.pulsar();
  b2.pulsar();
  b3.pulsar();
  ins.pulsar();
  r1.pulsar();
  r2.pulsar();
  r3.pulsar();
  cronometre.reiniciaEnrera(60);
}
