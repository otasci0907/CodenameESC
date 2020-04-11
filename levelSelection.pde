PImage star;
PImage starUnlit;
int starSize = 75;
Selector[] levelSelectorLvl1 = new Selector[10];

void levelSelection () {
  background(130);
}

class Selector {
  int value;
  int x;
  int y;
  int sizeX;
  int sizeY;
  int radius;
  int fillValue;
  int strokeValue;
  
  Selector(int tempVal, int tempX, int tempY) {
    value = tempVal;
    x = tempX;
    y = tempY;
    sizeX = 120;
    sizeY = 120;
    radius = 20;
    fillValue = 70;
    strokeValue = 55;
  }
  
  void displaySelector () {
    fill(fillValue);
    stroke(strokeValue);
    strokeWeight(6);
    rectMode(CENTER);
    rect(x, y, sizeX, sizeY, radius);
    fill(255);
    textSize(40);
    textAlign(CENTER,CENTER);
    text(value, x, (y-20));
    imageMode(CENTER);
    image(starUnlit, (x - 30), (y + 20), starSize, starSize);
    image(starUnlit, x, (y + 30), starSize, starSize);
    image(starUnlit, (x + 30), (y + 20), starSize, starSize);
    
    if (mouseX > (x - 60) && mouseX < (x + 60) && mouseY > (y - 60) && mouseY < (y + 60)) {
      sizeX = 130;
      sizeY = 130;
      fillValue = 90;
      strokeValue = 75;
    }else {
      sizeX = 120;
      sizeY = 120;
      fillValue = 70;
      strokeValue = 55;
    }
    
    if (mouseX > (x - 60) && mouseX < (x + 60) && mouseY > (y - 60) && mouseY < (y + 60) && leftMouseButtonClicked) {
      gamestate = 2;
      level = value;
    }
  }
}
