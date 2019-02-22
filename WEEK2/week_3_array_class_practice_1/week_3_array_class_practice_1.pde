
// we want to create random height rectangles lined up parallel to each other
//we need positions, height, color
//we would make them arrays positions[], height[], color[]
//using a class Vert {
  //pos
  //height
  //col
//}
final int NUM_SHAPES = 15;

Rects[] rects = new Rects[NUM_SHAPES];

void setup () {
  size (600,600);
  
  for (int i = 0; i < NUM_SHAPES ; i++) {
    rects[i] = new Rects (i);
    
    //pos[i] = map(i,0,NUM_SHAPES,30,width);
    //colors[i] = color(map(i,0,NUM_SHAPES,0,255));
    //heights[i] = random(100,300);
  }
}

void draw () {
  for (int i = 0; i < NUM_SHAPES ; i++) {
     rects[i].display();
     
  }
}
