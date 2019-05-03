class Branch {
  PVector start, end, line;
  float angle;
  float strokeWeight;

  Branch(PVector startPoint, float angle, float len) {
    start = startPoint.copy();
    line = PVector.fromAngle(angle);
    line.mult(len);
    strokeWeight = map(len, 10, 150, 1, 10);
  }

  void display() {
    pushMatrix();
    translate(start.x, start.y);
    strokeWeight(strokeWeight);
    stroke(0,200,50);
    line(0, 0, line.x, line.y);
    ellipse(0,0, line.x,line.y);
    fill(10,150,30);
    
    popMatrix();
  }
}
