class Button {
  int posX;
  int posY;
  color bg;
  String txt;


  Button (int xPos, int yPos, color bgColor, String Txt) {
    posX = xPos;
    posY = yPos;
    bg = bgColor;
    txt = Txt;
  }
  
  void display () {
    
    if (dist(mouseX, mouseY, posX, posY) < buttonSize/2 && mousePressed) {
      textToShow = txt;
      bgColor = bg;
      fill(0);
    } else {
      fill(255);
    }
    ellipse(posX, posY, buttonSize, buttonSize);
    
    fill(0);
    textAlign(CENTER);
    textSize(28);
    text(textToShow, width/2, 400);
  }
  
}
