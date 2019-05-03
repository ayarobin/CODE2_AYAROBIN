// bryan ma for code 2 sp 19

ArrayList<Branch> branches = new ArrayList<Branch>();
PImage bg;

void setup() {
  size(600, 400);
  createBranch(new PVector(width/2, height), -PI/2, 50);
  bg = loadImage("https://thecozyapron.com/wp-content/uploads/2018/07/cajun-shrimp-pasta_thecozyapron_1.jpg");
}

void draw() {
  background(bg);
  for (Branch branch : branches) {
    branch.display();
  }
  
}

void createBranch(PVector start, float angle, float len) {
  branches.add(new Branch(start.copy(), angle, len));
  PVector fromAngle = PVector.fromAngle(angle);
  fromAngle.mult(len);
  PVector end = PVector.add(start, fromAngle);
  len *= random(0.6, 0.8);
  if (len > 2) {
    createBranch(end, angle - PI/random(5,20), len);
    createBranch(end, angle + PI/random(5,20), len);
  }
}
