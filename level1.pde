Floor[] level1Floors = new Floor[5];

void level1  () {
  background(54);
  myPlayer.display();
  level1Floors[0].display();
  level1Floors[1].display();
  collision();
  myPlayer.jump();
}

void collision () {
 int trueY = myPlayer.y + myPlayer.Offset;
 if (trueY > level1Floors[0].y) {
   myPlayer.y = level1Floors[0].y - myPlayer.Offset;
   myPlayer.yvel = 0;
   myPlayer.flag = false;
 }else {
   myPlayer.yvel++;
 }
}
