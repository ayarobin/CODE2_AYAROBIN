class Ball {
  float posX;
  float posY;
  
  float speedX;
  float speedY;
  
  int rectW;
  int rectH;
  
  Ball (float xPos, float yPos, float xSpeed, float ySpeed, int widthB, int heightB) { //assigning the variables
    posX = xPos;
    posY = yPos;
    
    speedX = xSpeed;
    speedY = ySpeed;
    
    rectW = widthB;
    rectH = heightB;
    
  }
  
  void update () { //usually there shouldnt be anything here in unpdate and display)
    posX += speedX;
    posY += speedY; //same function as above, just diff syntax
    
    if ( posX >= width || posX <= 0) {
      speedX *= -1;
    }
    
    if ( posY >= height || posY <= 0) {
      speedY *= -1;
    }
  }
  
  void display () { //usually there shouldnt be anything here in unpdate and display) 
    rect (posX,posY,rectW, rectH);
  }
  
  void checkCollision () { //makes ball go other direction when it collides with paddle
    if (posX < paddle1.posX + paddle1.rectW &&
        posX > paddle1.posX &&
        posY + rectH < paddle1.posY) {
          speedY *= -1;
          //speedX *= -1; //dont need because ball will 'bounce' in wrong direction
        }
  }
}
