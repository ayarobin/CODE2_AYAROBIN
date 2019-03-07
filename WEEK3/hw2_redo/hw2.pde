// bryan ma for code 2 sp 19
// Aya Nakamura

// choosing number of rectangles
// we will have. number can only be changed
// here.
final int NUM_SHAPES = 20;

// initializing our array:
// create 20 empy spaces in our array
// called verts[]
Vert[] verts = new Vert[NUM_SHAPES];

void setup() {
  size(800, 800);
  background (0);
  // going through the array and adding 20 instances of class Vert
  // to fill the 20 spaces in our array verts[]
  // every instance of class Vert has its own x, c, h value
  for (int i = 0; i < NUM_SHAPES; i++) {
    verts[i] = new Vert(i);
  }
}


void draw() {
  // for each object in array verts[] we are
  // calling .display() and .update() methods
  for (int i = 0; i < NUM_SHAPES; i++) {
    verts[i].display();
    verts[i].update();
  }
  
}
