class Bar {
  
  int nPar; //normalized parameters, so that the bars fit in the canvas
  int oPar; //original parameters, for the data display 
  int yPos;
  int i;
  color col;
  
  String s;
  //float h = random(100, 300);
  
  Bar(int normParameter, int orgParameter, int yPosition, String st, color c) {
    //x = map(i, 0, temp, 30, width);
    yPos = yPosition;
    nPar = normParameter;
    oPar = orgParameter;
    s = st;
    col = c;
  }
  
  void display() {
    
    //data bars
    fill(col);
    noStroke();
    rect(60,yPos,nPar,20);
    
    
    //temp, pressure, humidity labels
    fill(255, 0, 242);
    textSize(13);
    text(s, 10, yPos);
    
    //data number text
    fill(255, 0, 242);
    textSize(12);
    text(oPar, nPar + 70, yPos + 10);
      
  }
}
