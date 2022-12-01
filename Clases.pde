class Temps {
  int enrera;
  int principi;
  Temps() {
    principi = millis();
    enrera = 10000 + principi;
  }

  void reiniciaEnrera(int segons) {
    enrera = millis() + segons * 1000;
  }
  int segons() {
    return (int)((millis() - principi)/ 1000)%60;
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
    fill(0);
    text(minutsEnrera()+":"+segonsEnrera(), 10, 100);
  }
  void reinicia() {
    enrera = millis();
  }
}
