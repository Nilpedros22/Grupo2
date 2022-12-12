class Temps {
  int enrera;
  int principi;
  Temps() {
    principi = millis();
<<<<<<< Updated upstream
    enrera = 3000 + principi;
=======
    enrera = 30000 + principi;
>>>>>>> Stashed changes
  }

  void reiniciaEnrera(int segons) {
    enrera = millis() + segons * 500;
  }
  int segons() {
    return (int)((millis() - principi)/ 10000)%60;
  }
  int minuts() {
    return (int)((millis() - principi)/ 60000);
  }

  int minutsEnrera() {
    int resultat = (int)((enrera-millis())/ 60000);
    if (resultat < 0) {
      resultat = 0;
    }
    return resultat;
  }

  int segonsEnrera() {
    int resultat = (int)((enrera-millis())/ 1000)%60;
    if (resultat < 0) {
      resultat = 0;
    }
    return resultat;
  }

  boolean fiEnrera() {
    return minutsEnrera() == 0 && segonsEnrera() == 0;
  }

  void dibuixaComptaEnrere() {
    fill(255);
    text(minutsEnrera()+":"+segonsEnrera(), 240, 260);
  }
  void reinicia() {
    enrera = millis();
  }
}
