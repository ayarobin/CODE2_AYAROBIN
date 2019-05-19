// recreate this sketch by encapsulating the rotating rectangle in a class.
// the draw() loop should only contain the display() and update() methods of the object.

Rect rect;

void setup() {
  size(500, 500);
  rect = new Rect(width/2, height/2);
}

void draw() {
  rect.display();
  rect.update();
}
