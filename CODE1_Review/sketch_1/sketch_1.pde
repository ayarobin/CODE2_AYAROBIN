// change the number of ellipses to 100.
// make sure they are mapped to the screen height.
// change the value going into sin() to make a moving wave over time.
// change the amplitude of the wave to fit the whole screen

// having a hard time understanding how sin() works

float pos = 0;
void setup() {
  size(500, 500);
}

void draw() {
  background(200);
  for (float i = 0; i <= 100; i++) {
    ellipse(width/2 + sin(i/20) * 200, map(i, 0, 100, 0, height + pos) , 20, 20);
  }
  
  pos ++;
  
}
