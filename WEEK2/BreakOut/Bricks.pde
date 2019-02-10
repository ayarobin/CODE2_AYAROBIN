class Brick {
  int brPosX;
  int brPosY;
  
  int brW;
  int brH;
  
  Brick (int xPos, int yPos, int widthBr, int heightBr) {
    brPosX = xPos;
    brPosY = yPos;
    
    brW = widthBr;
    brH = heightBr;
  }
  
  void update () {
    
  }
  
  void display () {
    rect (brPosX, brPosY, brW, brH);
    
    if (ball1.posX == brick1.brPosX && ball1.posY == brick1.brPosY) {
      fill (0);
    }
  }
  
}
