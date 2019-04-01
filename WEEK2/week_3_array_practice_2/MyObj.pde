class MyObj {
  
  PVector pos;//position
  color col;//color
  float size = random(50,100);//size
  String text; //string for name
  
  MyObj (int i) {
    col = color(25,70,35);
    pos = new PVector(width/2,height/2);
  }
  
  void display () {
    ellipse( pos.x,pos.y, size,size);
  }
}
