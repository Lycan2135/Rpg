class Dragon extends Sprite {
float vie;

  Dragon(String costumeName, int costumeNumb) {
    super(costumeName, costumeNumb);
    changerTaille(150);
    allerA(faux.x +1000, faux.y + 1000);
    vie = 10;
  }

  void draw() {
    allerA(faux.x +1120, faux.y + 850);
    if (vie > 0) montrer();
    if (touche(gobelin.x, gobelin.y, 50, 50)&& gobelin.costumeActuel > 4){
      if(frameCount% 10 ==0){
      vie -= 1;
      }
    }
    
  }
}
