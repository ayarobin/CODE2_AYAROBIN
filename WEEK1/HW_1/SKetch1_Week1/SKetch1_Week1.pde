
boolean[][] squares = new boolean[20][20];
color[][] squareColor = new color[20][20];



int x;
int y;


void setup () {
  //GOALS
  //1.SET EVERY SQUARE TO FLASE
  //2.SET EVERY SQUARECOLOR TO 200
  
  
  size(600, 600);
  x = width/20;
  y = height/20;

  for (int i = 0; i<squares.length; i++) {
    for (int j = 0; j<squares.length; j++) {
      squares[i][j]=false;
      squareColor[i][j] = color(200); 
    }
  }
}




void draw () {
  //GOAL: DRAW THE PRESSED SQUARE WITH THAT RANDOM COLOR
  stroke(0);
  for (int i = 0; i<squares.length; i++) {
    for (int j = 0; j<squares.length; j++) {
      fill(squareColor[i][j]);
      rect (i*x, j*y, x, y);
    }
  }
}



void mousePressed () {
    //GOALS
    //1.TO CHECH IF MY MOUSE IN ON THIS SQUARE (squares[i][j]), THAN I KNOW THIS IS 'THIS' SQUARE
    //2.SET EVERY PRESSED SQUARE TO TRUE
    //3.SET EVERY PRESSED SQUARECOLOR TO A RANDOM COLOR

  for (int i = 0; i<squares.length; i++) {
    for (int j = 0; j<squares.length; j++) {
      if (squares[i][j]==false && mouseX>i*x && mouseX<i*x+x && mouseY>j*y && mouseY<j*y+y) {
        squares[i][j]=true;
          squareColor[i][j] = color(int(random(255)), int(random(255)), int(random(255)));
        print("true");
      }
    }
  }

}
