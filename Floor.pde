

class Floor {
  int x1;
  int y;
  int x2;

  Floor (int tempX1, int tempY, int tempX2) {
    x1 = tempX1;
    y = tempY;
    x2 = tempX2;
  }

  void display () {
    strokeWeight(3);
    line(x1, y, x2, y);
  }
  void collision () {
    int trueY = myPlayer.y + myPlayer.Offset;
    int trueX = myPlayer.x + myPlayer.Offset;
    int trueXAlt = myPlayer.x - myPlayer.Offset;
    if (trueY > this.y ) {
      myPlayer.y = this.y - myPlayer.Offset;
      myPlayer.yvel = 0;
      myPlayer.flag = false;
    } else {
      myPlayer.yvel++;
    }
  }
}
