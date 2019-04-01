// Aya Nakamura

// setting array size, determines number 
// of rectangles we will draw 
final int NUM_SHAPES = 20;

// array verts[] will hold the x position 
// of each rectangle
// array heights[] will hold the height of
// each rectangle
// both verts[] and heights[] have a 
// size of 20 because that is our number 
// of rectangles
int [] verts = new int [NUM_SHAPES];
float [] heights = new float [NUM_SHAPES];
//color [] rectColor = new color [NUM_SHAPES];

color c;

void setup() {
  size(800, 800);
  background (0);
  
  // for loop goes through array verts[]
  // adds the x position for each rectangle
  for (int i = 0; i < NUM_SHAPES; i++) {
      verts[i] = (int)map(i, 0, NUM_SHAPES, 30, width);
    }
    
   // for loop goes through array heights[]
  // adds the height for each rectangle (randomized)
  for (int i = 0; i < NUM_SHAPES; i++) {
      heights[i] = random(100, 800);
    }

  //for (int i = 0; i < NUM_SHAPES; i++) {
  //      rectColor[i] = color(random(255), random(255), random(255));
  //    }
  }

void draw () {
  // for loop goes through each rectangle to
  // determine each x position and color
  // assignes values to each rectangle and draws
  // them accordingly
   for (int i = 0; i < NUM_SHAPES; i++) {
     rectMode(CENTER);
     noStroke();
     //fill(rectColor[i]);
     c = color(random(255), random(255), random(255));
     fill (c);
     rect(verts[i], height/2, 20, heights[i]);
     delay (10);
   }
}
