
class Rect {
  float x;
  float y;
  float angle = 0;
  
  Rect(float xPos, float yPos) {
    x = xPos;
    y = yPos;
  }
  
  void update() {
   angle = (angle + 3) % 360;
  }
  
  void display() {
    
    background(100);
    translate(x, y);
    rectMode(CENTER);
    noStroke();
    fill(map(angle, 0, 360, 0, 255));
    rotate(radians(angle));
    rect(0, 0, 100, 20);
  }
  
}
