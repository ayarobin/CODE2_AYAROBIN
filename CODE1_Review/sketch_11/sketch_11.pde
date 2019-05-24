// take your class from sketch_10 and create an array of them.
// loop through the array and instantiate different objects at random positions in setup()
// then draw all of them in the draw() method by looping through the array again.

int numShapes = 500;
int j;

Rect rect0;
Rect[] rect = new Rect[numShapes];

void setup() {
  size(500, 500);
  
  
  for (int i = 0; i < numShapes ; i++) {
    rect[i] = new Rect(i,j);
    j = int(random(20,480));
  }
  
}

void draw() {
  //for (int i = 0; i < numShapes ; i++) {
  //   rect[i].display();
     
  //}
     
  j++;
     rect[j].display();
     rect[j].update();
    
}
