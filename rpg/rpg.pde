Map map;
Scene scene;
Joueur gobelin;
FauxFond faux;
Dragon dragon;
BouleDeFeu bdf;

void setup() { // --- quand le programme démarre
  size(800, 600); // la taille de l'écran de jeu (largeur hauteur)

  //-----initialiser les sprites
  scene = new Scene("fond", 1);  // scène, peut recevoir une image.
  gobelin = new Joueur("gobelin", 8);
  map = new Map("fond", 1);
  faux = new FauxFond("fauxFond", 1);
  dragon = new Dragon("dragon", 3);
  bdf = new BouleDeFeu("bouledefeu", 1);
}



void draw () {//-----programme répété indéfiniment-----
  scene.arrierePlan();
  faux.draw();
  gobelin.draw(true);
  map.draw();
  gobelin.draw(false);
  dragon.draw();
  bdf.draw();
  //println(mouseX, mouseY);
  //selectionerCouleur();
}//----fin de la répétition infinie -----


void keyPressed() { // ---quand une touche du clavier est pressée---
  gobelin.keyPressed();
  faux.keyPressed();
} // ----fin de  : quand une touche du clavier est pressée---


void keyReleased() { // ---quand une touche du clavier est relachée---
  gobelin.keyReleased();
  faux.keyReleased();
}// ----fin de  : quand une touche du clavier est relachée---


void mousePressed() { // ---quand la souris est pressée---
}// ----fin de  : quand la souris  est pressée---

void mouseReleased() { // ---quand la souris est relachée---
} // ----fin de  : quand la souris  est relachée---


void mouseMoved() { // ---quand la souris est bougée---
}// ----fin de  : quand la souris  est bougée---
