int gamestate = 0;
int level = 0;
boolean leftMouseButtonClicked= false;


void setup () {
  size(800, 600);
  myPlayer = new Player(width/2, 500, 50, 50, 15, 0, 9, true, false, false, false, false);
  level1Floors[0] = new Floor(0, 525, width);
  level1Floors[1] = new Floor(width, 380, width/2);
  startButton = loadImage("playButton.png");
  startButtonHover = loadImage("playButtonHover.png");
  star = loadImage("Star.png");
  starUnlit = loadImage("StarUnlit.png");
  
  int selX = 110;
  int selY = 210;
  int k = 0;
  for (int i = 0; i < 2; i++) {
    for(int j = 0; j < 5; j++) {
      levelSelectorLvl1[k] = new Selector(k + 1, selX + j * 145, selY + i * 180);
      k++;
    }
  }
  
  /* levelSelector1 = new Selector(1, 110, 210);
  levelSelector2 = new Selector(2, 255, 210);
  levelSelector3 = new Selector(3, 400, 210);
  levelSelector4 = new Selector(4, 545, 210);
  levelSelector5 = new Selector(5, 690, 210);
  levelSelector6 = new Selector(6, 110, 390);
  levelSelector7 = new Selector(7, 255, 390);
  levelSelector8 = new Selector(8, 400, 390);
  levelSelector9 = new Selector(9, 545, 390);
  levelSelector10 = new Selector(10, 690, 390); */
}

void draw () {
  switch (gamestate) {
  case 0:
    startScreen();
    break;
  case 1:
    levelSelection();
    for (int i = 0; i < 10; i++){
      levelSelectorLvl1[i].displaySelector();
    }
    break;
  case 2:
    switch(level) {
    case 1:
      level1();
      break;
    default:
      gamestate = 1;
    }
  }

  leftMouseButtonClicked = false;
  
}

void keyPressed () {
  if (key == ' ' && !myPlayer.flag && gamestate == 2) {
    myPlayer.isJump = true;
  }
  if (key == 'a' && myPlayer.left == false && gamestate == 2) {
    myPlayer.left = true;
  }
  if (key == 'd' && myPlayer.right == false && gamestate == 2) {
    myPlayer.right = true;
  }
  if (key == 'g') {
    exit();
  }
}
void keyReleased () {
  if (key == ' ') {
    myPlayer.isJump = false;
  }
  if (key == 'a') {
    myPlayer.left = false;
  }
  if (key == 'd') {
    myPlayer.right = false;
  }
}

void mouseClicked () {
  if (mouseButton == LEFT) {
    leftMouseButtonClicked = true;
  }
}
