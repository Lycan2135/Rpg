class Joueur extends Sprite {
  boolean haut, bas, droite, gauche, espace;

  Joueur(String costumeName, int costumeNumb) {
    super(costumeName, costumeNumb);
    changerTaille(50);
    //fixerRotation = true;
  }

  void draw(boolean murDetect) {
    montrer();

    if (murDetect) {
      if (toucheCouleur (-6855171)) {
        faux.murTouche = true;
      } else {
        faux.murTouche = false;
      }
    }
    if (!murDetect) {
      if (espace == true) {
        attaque();
      } else {
        if (haut == true) {
          orienter(-90);
          animationMarche(0);
        } else
          if (bas == true) {
            animationMarche(0);
            orienter(90);
          } else
            if (droite == true) {
              animationMarche(0);
              orienter(0);
            } else
              if (gauche == true) {
                animationMarche(0);
                orienter(180);
              }
      }
    }
  }


  void attaque() {
    if (frameCount%5 == 0) {
      costumeMarche ++;
      costumeMarche = costumeMarche %5;

      if (costumeMarche == 4) {
        costume(3);
        espace = false;
        costumeMarche = 0;
      }
      costume(costumeMarche + 4);
    }
  }


  int costumeMarche;

  void animationMarche(int c) {

    if (frameCount%10 == 0) {
      costumeMarche ++;
      costumeMarche = costumeMarche %4;
      costume(costumeMarche + c);
    }
  }

  void keyPressed() {
    if (key ==' ') {
      espace = true;
    }
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
