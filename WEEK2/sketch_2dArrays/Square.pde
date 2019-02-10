class Square {
  
  PVector pos; //position
  color col; //color
  boolean actv; //boolean to determine if it is active or not
  
  int cellSize;
  
  Square (PVector sqPos, color sqCol, boolean sqActv, int sqCellSize) {
    pos = sqPos;
    col = sqCol;
    actv = sqActv;
    cellSize = sqCellSize;
  }
  
  void display () {
    fill(col);
    rect(pos.x, pos.y, cellSize, cellSize);
    
  }
  
}
