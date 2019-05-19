// change the sketch so that each rectangle rotates on its own axis, 
// instead of from the origin point of the sketch. make each rectangle 
// rotate at a different speed.

float rect1Angle = 1;
float rect2Angle = 1;
float rect3Angle = 1;

void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  background(100);
  
  pushMatrix();
  translate(width/4, height/2);
  rotate(radians(rect1Angle));
  rect1Angle = rect1Angle + .25;
  rect(0, 0, 50, 100);
  popMatrix();
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(rect2Angle));
  rect2Angle++;
  rect(0, 0, 50, 100);
  popMatrix();
  
  pushMatrix();
  translate(width*.75, height/2);
  rotate(radians(rect3Angle));
  rect3Angle = rect3Angle + 2;
  rect(0, 0, 50, 100);
  popMatrix();
  
}
