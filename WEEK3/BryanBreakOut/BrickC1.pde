class BrickC1 extends Brick {
  BrickC1(float x, float y, float w, float h){
    super(x,y,w,h);
    active = true;
  }
  void display() {
    rectMode(CORNER);
    noStroke();
    fill(100,100,255);
    rect(x, y, w, h);
  }
}
