class Aya {
  float x;
  float y;
  float z;
  
  color c;
  
  Aya() {
    x = random(-2000, 2000);
    y = random(-2000, 2000);
    z = random(0, 2000);
    
  }
  
  void update() {
    z-=10;        // Move sphere closer to viewport
    if (z <= 0.0) // Reset star if it passes viewport
      reset();
    
  }
  
  void reset() {
    x = random(-2000, 2000);
    y = random(-2000, 2000);
    z = 2000.0; 
    c = color(random(180,255),random(180,255),random(180,255),random(180,230));
  }
  
  void draw(float lowMod) {
    
    float offsetX = 100.0*(x/z);
    float offsetY = 100.0*(y/z);
    float scaleZ = 0.0001*(2000.0-z);
    

    pushMatrix();
    translate(offsetX, offsetY);
    scale(scaleZ * lowMod);
    //translate(width/2, height/2, -200);
    rotateY(radians(frameCount * 0.5));
    rotateX(radians(frameCount * 0.3));
    rotateZ(radians(frameCount * 0.1));
    fill(c);
    stroke(0,230,250);
    strokeWeight(.5);
    sphere(180);
    sphereDetail(int(map(mouseX, 0, width, 0,10)));
    popMatrix();
 
  }
  
}
