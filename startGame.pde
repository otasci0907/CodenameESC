PImage startButton;
PImage startButtonHover;
int startButtonx = 400;
int startButtony = 350;

void startScreen () {
  background(130);
  imageMode(CENTER);
  image(startButton, startButtonx, startButtony, 100, 100);
  textAlign(CENTER,CENTER);
  textSize(60);
  text("OBJECTIVE: BREAK OUT", width/2, height/6);
  
  if (dist(mouseX, mouseY, startButtonx, startButtony) < 43) {
    imageMode(CENTER);
    image(startButtonHover, startButtonx, startButtony, 110, 110);
  }
  if (dist(mouseX, mouseY, startButtonx, startButtony) < 43 && leftMouseButtonClicked) {
    gamestate = 1;
  }
}
