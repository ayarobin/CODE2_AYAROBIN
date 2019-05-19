// set the background color using a mapped value of mouseX -
// when the mouse is at the left, the background color should be black.
// when the mouse is at the right, the background color should be white.

// map the x position of the ellipse to be at the left when the mouse is at
// the right, and the right when the mouse is at the left.

void setup() {
  size(800, 200);
  stroke(255);
  fill(0);
}

void draw() {
  background(map(mouseX, 0, 800, 0, 255));
  ellipse(map(mouseX, 0, 800, 800, 0), height/2, 50, 50);
}
