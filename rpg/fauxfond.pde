/*
krydtcvbilknfg,
 
 */


class FauxFond extends Sprite {
  boolean haut, bas, droite, gauche;
  boolean murTouche;
  float lastX, lastY;
  float decaleX, decaleY;

  FauxFond(String costumeName, int costumeNumb) {
    super(costumeName, costumeNumb);
    changerTaille(300);
    fixerRotation = true;
    detecterCouleur = false;
    allerA(1350, 700);
  }

  void draw() {


    montrer();

    if (murTouche == true) {
      allerA(lastX, lastY);
    } else {
      lastX = x;
      lastY = y;
    }
    decaleY =0;
    decaleX = 0;

    if (haut == true ) {
      decaleY = 5;
      ajouterY(5);
    } else
      if (bas == true) {
        ajouterY(-5);
        decaleY = -5;
      } else
        if (droite == true) {
          ajouterX(-5);
          decaleX = -5;
        } else
          if (gauche == true) {
            ajouterX(5);
            decaleX = 5;
          }
  }

  void keyPressed() {
    if (key == 'z' || keyCode == UP) {
      haut = true;
    }
    if (key == 'q' || keyCode == LEFT) {
      gauche = true;
    }
    if (key == 's' || keyCode == DOWN) {
      bas = true;
    }
    if (key == 'd' || keyCode == RIGHT) {
      droite = true;
    }
  }

  void keyReleased() {
    if (key == 'z' || keyCode == UP) {
      haut = false;
    }
    if (key == 'q' || keyCode == LEFT) {
      gauche = false;
    }
    if (key == 's' || keyCode == DOWN) {
      bas = false;
    }
    if (key == 'd' || keyCode == RIGHT) {
      droite = false;
    }
  }
}
