class Bar {
  
  float nPar;
  float oPar;
  int yPos;
  int i;
  
  String s;
  //float h = random(100, 300);
  
  Bar(float normParameter, float orgParameter, int yPosition, String st) {
    //x = map(i, 0, temp, 30, width);
    yPos = yPosition;
    nPar = normParameter;
    oPar = orgParameter;
    s = st;
  }
  
  void display() {
    fill(237, 227, 215);
    noStroke();
    rect(60,yPos,nPar,20);
    
    fill(255);
    //String s = "TEMPERATURE";
    textSize(13);
    text(s, 10, yPos);
    
    //_______data number text
    fill(0, 255, 8);
    textSize(12);
    text(oPar, nPar + 70, yPos + 10);
      
  }
}










//class Circle {
//  float x;
//  color c;
//  //float h = random(100, 300);
  
//  Circle(int i, float temp) {
//    x = map(i, 0, temp, 30, width);
//    c = color(map(i, 0, temp, 0, 100), map(i, 0, temp, 0, 150), map(i, 0, temp, 0, 200));
//  }
  
//  void display() {
//    fill(c);
//    ellipse(x, height/2, 50, 50);
//  }
//}
