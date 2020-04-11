Player myPlayer;

class Player {
  int x;
  int y;
  int vSide;
  int hSide;
  int Offset;
  int speed;
  int yvel;
  int xvel;
  boolean isCollide;
  boolean isJump;
  boolean right;
  boolean left;
  boolean flag;
  
  Player (int tempX, int tempY, int tempVSide, int tempHSide, int tempSpeed, int tempyvel, int tempxvel, boolean tempIsCollide, boolean tempIsJump, boolean tempRight, boolean tempLeft, boolean tempFlag) {
    x = tempX;
    y = tempY;
    vSide = tempVSide;
    hSide = tempHSide;
    speed = tempSpeed;
    yvel = tempyvel;
    xvel = tempxvel;
    isCollide = tempIsCollide;
    isJump = tempIsJump;
    right = tempRight;
    left = tempLeft;
    flag = tempFlag;
    Offset = 25;
  }
  
  void display() {
    fill(0);
    strokeWeight(2);
    stroke(255);
    rectMode(CENTER);
    rect(x, y, hSide, vSide);
    
    y += yvel;
  }
  
  void jump () {
    if (isJump) {
      y -= 20;
      flag = true;
    }
    if (left && x >= 25) {
      x -= xvel;
    }
    if (right && x <= (width - 25)) {
      x += xvel;
    }
  }
}
