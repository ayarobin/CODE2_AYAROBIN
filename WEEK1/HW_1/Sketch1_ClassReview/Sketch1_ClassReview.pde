//we want to store positions, colors, active

final int COLS = 40; //x dimention //final makes it so that you cant change the value ever
final int ROWS = 40; //y dimention //''

int w = 800;
int h = 800;
final int CELLSIZE = w/COLS;

PVector [][] pos = new PVector[COLS][ROWS];
color[][] colors = new color[COLS][ROWS];
boolean[][] isActive = new boolean[COLS][ROWS];


void setup () {
  size(800,800);
  for (int i = 0; i < COLS; i++) {
    for (int j = 0; j < ROWS; j++) {
      pos[i][j] = new PVector(i*CELLSIZE,j*CELLSIZE);
      colors[i][j] = color(random(255),random(255),random(255));
      isActive[1][j] = false;
    }
  }
  noStroke();
}


void draw () {
  for (int i = 0; i < COLS; i++) {
    for (int j = 0; j < ROWS; j++) {
      if (mouseX > pos[i][j].x //rest in photo
      
      
      if (isActive [i][j]){
        fill(colors[i][j]);
        rect(pos[i][j].x, pos[i][j].y, CELLSIZE,CELLSIZE);
      }
    }
  }
}
