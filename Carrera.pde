int[] numerosAleatoriosSinRepetir() {
  int n = 3;
  int k = n;
  int[] numeros = new int[n];
  int[] resultado = new int[n];
  int res;

  for (int i = 0; i < n; i++) {
    numeros[i] = i + 1;
  }

  for (int i = 0; i < n; i++) {
    res = (int)random(0, k);
    resultado[i]=numeros[res];
    numeros[res]=numeros[k-1];
    k--;
  }
  return resultado;
}

int generarAleatorio(int k) {
  return (int)random(0, k);
}

void Carrera() {
  surface.setSize(946, 946);
  image(carrera, 0, 0);
  //println(posAzulX + " " + posAzulY);

  //Movimiento coche Azul
  if (posAzulX >= 710 && posAzulY >= 716) {
    image(Amov1, posAzulX, posAzulY, 130, 70);
    posAzulY-=vel;
    posAzulX+=vel;
  } else if (posAzulX >= 800 && posAzulY <= 716 && posAzulY >= 120) {
    image(AverticalA, posAzulX, posAzulY, 70, 130);
    posAzulY-=vel;
  } else if (posAzulX >= 760 && posAzulY <= 120) {
    image(Amov2, posAzulX, posAzulY, 70, 130);
    posAzulY-=vel;
    posAzulX-=vel;
  } else if (posAzulX <= 760 && posAzulY <= 120 && posAzulX >= 110) {
    image(azul2, posAzulX, posAzulY, 130, 70);
    posAzulX-=vel;
  } else if (posAzulX <= 110 && posAzulY >= 20 && posAzulX >= 45 && posAzulY <= 200) {
    image(Amov3, posAzulX, posAzulY, 130, 70);
    posAzulY+=vel;
    posAzulX-=vel;
  } else if (posAzulX <= 45 && posAzulY >= 20 && posAzulY <= 716) {
    image(AverticalB, posAzulX, posAzulY, 70, 130);
    posAzulY+=vel;
  } else if (posAzulX >= 20 && posAzulX <= 160 && posAzulY >= 716) {
    image(Amov4, posAzulX, posAzulY, 70, 130);
    posAzulY+=vel;
    posAzulX+=vel;
  } else {
    image(azul, posAzulX, posAzulY, 130, 70);
    posAzulX+=vel;
  }

  //Movimiento coche Rojo
  if (posRojoX >= 680 && posRojoY >= 682) {
    image(Rmov1, posRojoX, posRojoY, 130, 70);
    posRojoY-=0.5;
    posRojoX+=0.5;
  } else if (posRojoX >= 710 && posRojoY <= 682 && posRojoY >= 180) {
    image(RverticalA, posRojoX, posRojoY, 70, 130);
    posRojoY--;
  } else if (posRojoX >= 700 && posRojoY <= 180) {
    image(Rmov2, posRojoX, posRojoY, 70, 130);
    posRojoY-=0.5;
    posRojoX-=0.5;
  } else if (posRojoX <= 700 && posRojoY <= 220 && posRojoX >= 180) {
    image(rojo2, posRojoX, posRojoY, 130, 70);
    posRojoX--;
  } else if (posRojoX <= 180 && posRojoY >= 20 && posRojoX >= 140 && posRojoY <= 200) {
    image(Rmov3, posRojoX, posRojoY, 130, 70);
    posRojoY+=0.5;
    posRojoX-=0.5;
  } else if (posRojoX <= 230 && posRojoY >= 20 && posRojoY <= 660) {
    image(RverticalB, posRojoX, posRojoY, 70, 130);
    posRojoY++;
  } else if (posRojoX >= 20 && posRojoX <= 215 && posRojoY >= 660) {
    image(Rmov4, posRojoX, posRojoY, 70, 130);
    posRojoY+=0.5;
    posRojoX+=0.5;
  } else {
    image(rojo, posRojoX, posRojoY, 130, 70);
    posRojoX++;
  }

  //Preguntas
  if (controladorPreguntas == true) {
    pregunta = generarAleatorio(preguntas.length);
    controladorPreguntas = false;
  }
  fill(255);
  textSize(20);
  text(preguntas[pregunta], 280, 420);
  text("Vueltas Rojo: " + vueltasRojo, 568, 260);
  text("Vueltas Azul: " + vueltasAzul, 570, 285);

  if (controladorRespuestas == true) {
    posiciones = numerosAleatoriosSinRepetir();
    controladorRespuestas = false;
  }
  r1.setTexto(respuestas[pregunta][posiciones[0]-1]);
  r1.dibujar();
  r2.setTexto(respuestas[pregunta][posiciones[1]-1]);
  r2.dibujar();
  r3.setTexto(respuestas[pregunta][posiciones[2]-1]);
  r3.dibujar();

  if (r1.pulsar == true) {
    if (r1.texto.equals(respuestas[pregunta][0])) {
      solucion = "Correcto, aumentando la velocidad";
      vel = vel + 0.25;
    } else {
      solucion = "Incorrecto, disminuyendo la velocidad";
      vel = vel - 0.25;
    }
    controladorPreguntas = true;
    controladorRespuestas = true;
    r1.pulsar = false;
    r2.pulsar = false;
    r3.pulsar = false;
  }

  if (r2.pulsar == true) {
    if (r2.texto.equals(respuestas[pregunta][0])) {
      solucion = "Correcto, aumentando la velocidad";
      vel = vel + 0.25;
    } else {
      solucion = "Incorrecto, disminuyendo la velocidad";
      vel = vel - 0.25;
    }
    controladorPreguntas = true;
    controladorRespuestas = true;
    r1.pulsar = false;
    r2.pulsar = false;
    r3.pulsar = false;
  }

  if (r3.pulsar == true) {
    if (r3.texto.equals(respuestas[pregunta][0])) {
      solucion = "Correcto, aumentando la velocidad";
      vel = vel + 0.25;
    } else {
      solucion = "Incorrecto, disminuyendo la velocidad";
      vel = vel - 0.25;
    }
    controladorPreguntas = true;
    controladorRespuestas = true;
    r1.pulsar = false;
    r2.pulsar = false;
    r3.pulsar = false;
  }
  println(solucion);

  if (posAzulX > 319 && posAzulY > 700 && posAzulY < 940 && posAzulX < 321) {
    vueltasAzul = vueltasAzul + 1;
  }

  if (posRojoX > 320 && posRojoY > 700 && posRojoY < 940 && posRojoX < 321) {
    vueltasRojo = vueltasRojo + 1;
  }

  if (vueltasAzul == 2 && vueltasRojo < 2) {
    Ganador();
  }

  if (vueltasRojo == 2 && vueltasAzul < 2) {
    Perdedor();
  }

  cronometre.dibuixaComptaEnrere();
  if (cronometre.fiEnrera()) {
  }
}
