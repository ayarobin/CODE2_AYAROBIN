
int COLS = 25;
int ROWS = 25;
PVector pos;

float [][] size = new float[COLS][ROWS];
color [][] col = new color[COLS][ROWS];
float [][] rotate = new float [COLS][ROWS];

void setup () {
  size(600,600);
  background (0);
  
  for (int i = 0; i < COLS; i++) {
    for (int j = 0; j < ROWS; j++) {
      pos = new PVector (i,j); 
    }
  }
}

void draw () {
  for (int i = 0; i < COLS; i++) {
    for (int j = 0; j < ROWS; j++) {
      col [i][j]= color(random(255),random(255),random(255));
      float r = map(size[i][j], 0, mouseX, 0, 100);
      fill(col[i][j]);
      //ellipse(i,j, r,r);
    }
  }
}
