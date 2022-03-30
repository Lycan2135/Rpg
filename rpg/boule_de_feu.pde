class BouleDeFeu extends Sprite {

  int distanceBoule;

  BouleDeFeu(String costumeName, int costumeNumb) {
    super(costumeName, costumeNumb);
    changerTaille(80);
    allerA(dragon.x, dragon.y);
    orienterVers(gobelin.x, gobelin.y);
    distanceBoule = 0;
  }

  void draw() {
    if (dragon.vie >0)   montrer();
    if (distanceBoule < 60) {
      distanceBoule++;
      avancer(5);
      ajouterX(faux.decaleX);
      ajouterY(faux.decaleY);
    } else {
      allerA(dragon.x, dragon.y);
      orienterVers(gobelin.x, gobelin.y);
      distanceBoule = 0;
    }
  }
}
