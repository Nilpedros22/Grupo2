void Carrera(){
  surface.setSize(877, 877);
  image(carrera, 0, 0);
  image(azul, posAzulX, posAzulY, 65, 35);
  
  if (posAzulX >= 800){
    posAzulY--;
  }else{
    posAzulX++;
  }
  image(rojo, 280, 725, 65, 35);
}
