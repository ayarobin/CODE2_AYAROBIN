class Paddle {

  float posX;
  float posY;
  int rectW;
  int rectH;
  
  Paddle (float xPos, float yPos, int widthR, int heightR ){
    posX = xPos;
    posY = yPos;
    rectW = widthR;
    rectH = heightR;
    
  }
  
  
  void update() {
    
    //pos = new PVector (width/2,height/2);
    
    //if (right && pos.x > 5) {
    //  pos.x -= 5;
    //}
    //if (left && pos.x + rectW < width - 5) {
    //  pos.x += 5;
    //}
  }
  
  
  void display () {
    rectMode (CORNER);
    rect(posX,posY,rectW,rectH);
  }
  
}
