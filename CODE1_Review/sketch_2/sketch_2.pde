// replace the individual stroke() and line() calls with 
// a loop that creates the same result.

void setup() {
  size(500, 255);
}

void draw() {
  background(250);
  
  for (int y = 0; y < 255; y = y + 10) {
    stroke(y);
    line(0, y, width, y);
  }
 
}
