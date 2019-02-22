class BrickC2 extends Brick {
  BrickC2(float x, float y, float w, float h){
    super(x,y,w,h);
    active = true;
  }
  void display() {
    rectMode(CORNER);
    noStroke();
    fill(50,50,200);
    rect(x, y, w, h);
  }
}
