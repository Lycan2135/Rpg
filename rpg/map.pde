class Map extends Sprite {
  boolean haut, bas, droite, gauche;
  boolean murTouche;
  float lastX, lastY;

  Map(String costumeName, int costumeNumb) {
    super(costumeName, costumeNumb);
    changerTaille(120);
    fixerRotation = true;
    detecterCouleur = false;
  }

  void draw() {
    background(0);
    montrer();
    allerA(faux.x, faux.y);
  }
}
