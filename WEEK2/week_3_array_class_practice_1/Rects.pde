class Rects {
  float x; //position
  color c; //color
  float h = random(100,300); //height
  
  Rects(int i ){
    x = map(i,0, NUM_SHAPES, 30, width);
    c = color(map(i,0,NUM_SHAPES, 0, 255));
    
  }
  
  void display() {
    
      rectMode(CENTER);
      fill(c);
      rect(x, height/2, 20,h);
    
  }
}


//float[] pos = new float[NUM_SHAPES];
//color[] colors = new color[NUM_SHAPES];
//float[] heights = new float[NUM_SHAPES];
