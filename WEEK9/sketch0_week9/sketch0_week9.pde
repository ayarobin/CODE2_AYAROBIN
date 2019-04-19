ArrayList<Ryan> ryan = new ArrayList<Ryan>();
Table table;
PImage smile;

int state = 0;


void setup (){
  size(1000,1000, P3D);
  smile = loadImage("smile.png");
  
   table = loadTable("mass.csv", "header");
 
   for (TableRow row: table.rows()){
     int m = row.getInt("mass");
     ryan.add(new Ryan(m));
 }
}


void draw () {
  background (255);
  
  if (state ==0) {
     for (Ryan c : ryan) {
      c.update();
      c.display();
     }
     pushMatrix();
    smile.resize(100,0);
    noStroke();
    beginShape();
    texture(smile);
    
    translate(width/2, height/2, 0);
    vertex(10, 20, 0, 0);
    vertex(80, 5, 100, 0);
    vertex(95, 90, 100, 100);
    vertex(40, 95, 0, 100);
    endShape();
    popMatrix();
  }
  
  if (state == 1) {
    PVector ryanPos = new PVector(mouseX - 55, mouseY - 55, 0);
    pushMatrix();
    smile.resize(100,0);
    noStroke();
    beginShape();
    texture(smile);
    
    translate(ryanPos.x, ryanPos.y, ryanPos.z);
    vertex(10, 20, 0, 0);
    vertex(80, 5, 100, 0);
    vertex(95, 90, 100, 100);
    vertex(40, 95, 0, 100);
    endShape();
    popMatrix();
    
     for (Ryan c : ryan) {
      //Jerry j = jerry.get(0);
      //j.pos = new PVector(mouseX, mouseY);
      ryanPos.sub(c.pos);
      ryanPos.normalize();
      ryanPos.mult(0.1);
      c.applyForce(ryanPos);
      c.update();
      c.display();
     }
   }
}


void keyPressed () {
  if(key == ' ' && state == 0) {
    state = 1;
  }
}
