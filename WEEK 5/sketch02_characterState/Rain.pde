class Rain {
  int posX;
  int posY;
  
  int state; 
  
  float gravity;
  float size;
  
  Rain (int xPos, int yPos) {
    posX = xPos;
    posY = yPos;
    
    gravity = random(3,7);
    size = random(3,5);
    
  }
  
  
  void display () {
    switch(state){
    case 0:
    break;
    case 1:
    fill(30,30,255,200);
    ellipse(posX, posY, size, size);
    break;
    default:
    break;
    }
    
  }
  
  
  void update () {
    switch(state){
    case 0:
    break;
    case 1:
    posY += gravity;
    //state = 0;
    break;
    default:
    break;
    }
    
    
  }
  
  void handleInput(char k) {
    println(k);
    switch (state) {
      case 0:
        if (k == ' ') {
          state = 1;
        }
        break;
      case 1:
        break;
      default:
        break;
    }
  }
  
}
