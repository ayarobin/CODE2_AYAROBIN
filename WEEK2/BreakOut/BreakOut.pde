Paddle paddle1; 
Ball ball1;
Brick brick1; // make into 2d array

boolean right;
boolean left;

float paddleSpeed = 30;

void keyPressed() {
  if (keyCode == LEFT ) {
    paddle1.posX -= paddleSpeed;
  }
  if (keyCode == RIGHT ) {
    paddle1.posX += paddleSpeed;
  }
  
  if (paddle1.posX < 0) {
    paddle1.posX = 0; //makes it stay on the screen to the left
  }
  
  if (paddle1.posX + paddle1.rectW> width) {
    paddle1.posX = width - paddle1.rectW;
  }
}


void keyReleased () {
  if (keyCode == LEFT ) {
    left = false;
  }
  if (keyCode == RIGHT ) {
    right = false;
  }
}

//void ballDirection () {
//  // need if statements to check x and y of ball and paddle, then change direction to -x or -y depending on where the ball hits 
//}


void setup () {
  size (600,600);
  paddle1 = new Paddle(width/2,500,70,20);
  ball1 = new Ball(0,0, 2,2, 10,10);
  brick1 = new Brick(5,5,50,30);
}

void draw () {
  // 2D array for bricks
  
  background (0);
  paddle1.update();
  paddle1.display();
  
  ball1.update();
  ball1.display();
  ball1.checkCollision();
  
  brick1.update();
  brick1.display();
  
}
