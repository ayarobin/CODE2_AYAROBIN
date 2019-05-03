

void setup () {
  size(600,600, P3D);
  
}

void draw () {
  background(0);
  lights();
  ambientLight(0,0,255);
  
  pushMatrix();
  translate(width/2, height/2, -200);
  rotateY(radians(frameCount * 0.5));
  rotateX(radians(frameCount * 0.3));
  rotateZ(radians(frameCount * 0.1));
  fill(255);
  stroke(0,230,250);
  sphere(180);
  popMatrix();
 



}
