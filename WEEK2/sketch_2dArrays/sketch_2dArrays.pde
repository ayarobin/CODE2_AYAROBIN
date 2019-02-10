
// code 2 sp 19, bryan ma

//Square square1;
ArrayList<Square> cells = new ArrayList<Square>(); //this declares the collection of arrays

// create two constant integers to store how many columns and rows the grid will have
final int COLS = 25;
final int ROWS = 25;

// create 2d arrays to store positions, a visibility boolean, and colors for each cell in the grid
//PVector[][] positions = new PVector[COLS][ROWS];
//boolean[][] isActive = new boolean[COLS][ROWS];
//color[][] colors = new color[COLS][ROWS];

// create but don't assign a cellsize variable, we'll do that in setup()
int cellSize;

void setup() {
  size(600, 600);
  background(255);
  noStroke();
  
  // set the size to create evenly spaced cells in the grid
  cellSize = width/COLS;

  // loop through the arrays to assign initial values
  // creates all of the rows and cols
  for (int i = 0; i < COLS; i++) {
    for (int j = 0; j < ROWS; j++) {
      //positions[i][j] = new PVector(i * cellSize, j * cellSize);
      //isActive[i][j] = false;
      //colors[i][j] = color(random(255), random(255), random(255));
      
      //Objects in the array list
      cells.add(new Square( new PVector(i * cellSize, j * cellSize),
        color(random(255), random(255), random(255)), false, cellSize));
    } 
  }
}

void draw() {
  // once per frame, loop through all the arrays.
  // if the isActive boolean is true, then fill() with that cell's color and draw a rectangle.
  // if the isActive boolean is false, then check the position against the mouse.
  // if the mouse is inside the cell, then change the isActive boolean to true.
  //for (int i = 0; i < COLS; i++) {
  //  for (int j = 0; j < ROWS; j++) {
  //    if (isActive[i][j]) {
  //      fill(colors[i][j]);
  //      rect(positions[i][j].x, positions[i][j].y, cellSize, cellSize);
  //    } else {
  //      if (mouseX > positions[i][j].x && mouseX < positions[i][j].x + cellSize && 
  //        mouseY > positions[i][j].y && mouseY < positions[i][j].y + cellSize) {
  //        isActive[i][j] = true;
  //      }
  //    }
  //  }
  //}
  
  for (int i = 0; i < cells.size(); i++) {
    Square cell = cells.get(i);
    if (cell.actv) {
      fill(cell.col);
      rect(cell.pos.x, cell.pos.y, cell.cellSize, cell.cellSize);
    } else {
      if (mouseX > cell.pos.x && mouseX < cell.pos.x + cell.cellSize &&
          mouseY > cell.pos.y && mouseY < cell.pos.y + cell.cellSize) {
            cell.actv = true;
      }
    }
  }
  
  //square1.display();
}
