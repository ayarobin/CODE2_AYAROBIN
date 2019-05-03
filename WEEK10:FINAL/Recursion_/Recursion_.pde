float theta = 0;

void setup () {
  size(700,800);
  noLoop();
}

void draw () {
  background(255);
  theta = map (mouseX, 0, width, 0, PI/2);
  strokeWeight(1);
  translate(width/2, height);
  branch(200);
}


void branch(float len) {
  line(0,0,0,-len);
  theta = random(5,40);
  translate(0, -len);
  len *= random(0.5,0.7);
  
  if (len > 2) {
    int r = int(random(2));
    if (r == 1) {
    pushMatrix();
    rotate(radians(theta));
    branch(len);
    popMatrix();
    }
    pushMatrix();
    rotate(radians(-theta));
    branch(len);
    popMatrix();
    
  }
  

}
