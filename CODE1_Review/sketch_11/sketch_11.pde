// take your class from sketch_10 and create an array of them.
// loop through the array and instantiate different objects at random positions in setup()
// then draw all of them in the draw() method by looping through the array again.



int numShapes = 10; //number of slots/rects in array
int j;

Rect rect0; //initiating class rect0
Rect[] rect = new Rect[numShapes]; //initiating array rect

void setup() {
  size(500, 500);

  for (int i = 0; i < rect.length ; i++) {
    rect[i] = new Rect(int(random(20,480)),int(random(20,480)));
  }

}

void draw() {
  for (int i = 0; i < rect.length ; i++) {
     rect[i].update();
     rect[i].display(); 
  }
    
}
