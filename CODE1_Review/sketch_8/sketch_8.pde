// add a series of conditionals to check if the mouse is inside either rectangle,
// and if they are, change the background color. otherwise, keep it grey.

void setup() {
  size(600, 500);
}

void draw() {
  background(200);  
  
  if (mouseX > 150 && mouseX < 250 && mouseY > 200 && mouseY < 300) { 
    background(255,200,200);
  }
  
  if(mouseX > 350 && mouseX < 450 && mouseY > 200 && mouseY < 300) {
    background(200,255,200);
  }
  
  rect(150, 200, 100, 100);
  rect(350, 200, 100, 100);
  
}
