class Vert {
  // initializing variables
  float x;
  color c;
  float h;
  
  // creating a function that assigns
  // random values to the variables
  // defined above
  // this allows each rectangle to have 
  // its unique x, c, h values
  Vert(int i) {
    x = map(i, 0, NUM_SHAPES, 30, width);
    c = color(random(255), random(255), random(255));
    h  = random(100, 800);
  }
  
  // this method shows each 
  // rectangle we created when
  // we call the .display() method
  // for each object in our verts[] array
  void display() {
      rectMode(CENTER);
      fill(c);
      noStroke();
      rect(x, height/2, 20, h);
  }
  
  // this method refreshes the
  // color for every rectangle it 
  // is called on.
  
  // we go through our verts[] array
  // and call .update() on each one to 
  // constantly change each color
  void update() {
     //x = random (0,800);
     //h = random (0,800);
     c = color(random(255), random(255), random(255));
     delay (10);
  }
}
