// map the fill value of the ellipse so that the closer the mouse is to the
// center, the brighter it is. the fill value should be black if the mouse is 
// outside the ellipse.

int x;
int y;
int sz = 300;
float distance;


void setup() {
  size(400, 400);
}

void draw() {
  x = width/2;
  y = height/2;
  
  background(150, 200, 200);
  
  distance = dist(x,y,mouseX,mouseY);
  
  if (distance < sz/2) {
    fill(map(distance, 0, mouseX, 255, 0));
  } else {
    fill(0);
  }
  
  ellipse(x, y, sz, sz);
}
