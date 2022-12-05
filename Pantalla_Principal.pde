PImage menu, carrera, instrucciones, azul, rojo, azul2, Amov1, Amov2, Amov3, Amov4, AverticalB, AverticalA, RverticalA, RverticalB, rojo2, Rmov1, Rmov2, Rmov3, Rmov4, ganador, perdedor;
Boton b1, b2, b3, b4, ins, p1, r1, r2, r3;
int pantalla = 1;
float vel = 1;
float posAzulX = 320, posAzulY = 835;
float posRojoX = 320, posRojoY = 738;
String[][] respuestas = {{"1200cm", "120cm", "12000cm"}, {"60dm", "60000dm", "0.6dm"}, {"600cm", "6000cm", "60cm"}, {"30000dm", "30dm", "3000000dm"}, {"800m", "8000m", "80m"}, {"3200000m", "320000m", "32000m"}, {"165dm", "1650dm", "1.65dm"}, {"1900m", "190m", "19000m"}, {"6000mm", "60mm", "60000mm"}, {"7000000cm", "70000cm", "7000cm"}, {"0.0012km", "0.12km", "1.2km"}, {"200mm", "2000mm", "20mm"}};
String[] preguntas = {"Convierte 12 metros a centimetros", "Convierte 6 metros a decimetros", "Convierte 6000 milimetros a centimetros", "Convierte 3 kilometros a decimetros", "Convierte 0.8 kilometros a metros", "Convierte 32 kilometros a centimetros", "Convierte 1650 centimetros a decimetros", "Convierte 1.9 kilometros a metros", "Convierte 60 decimetros a milimetros", "Convierte 7 kilometros a centimetros", "Convierte 12 decimetros a kilometros", "Convierte 0.2 metros a milimetros"};
int[] posiciones;
int pregunta = 0;
String solucion;
boolean controladorRespuestas = true;
boolean controladorPreguntas = true;
Temps cronometre;
int vueltasAzul = 0;
int vueltasRojo = 0;

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
  ganador = loadImage("ganador.png");
  perdedor = loadImage("perdedor.png");
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
  println(mouseX + ":" + mouseY);
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
