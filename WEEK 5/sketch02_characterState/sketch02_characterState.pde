// bryan ma for code 2 sp 19

Character c;

float floor;

void setup() {
  size(800, 800);
  floor = (height*2)/3;
  c = new Character();
  textSize(20);
  textAlign(CENTER);
  //strokeWeight(3);
}

void draw() {
  background(250);
  stroke(0);
  fill(100);
  rect(0, (height*2)/3, width, height);

  fill(0);
  text("Press space to jump (i.e. change states)", width/2, 100);

  text("state: " + c.state, 450, floor - 50);

  c.update();
  c.display();
}

void keyPressed() {
  c.handleInput(key);
}
