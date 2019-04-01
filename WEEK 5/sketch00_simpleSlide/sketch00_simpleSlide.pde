
int slide = 0;

color[] slideColors = {
  color(100, 120, 180),
  color(180, 120, 100),
  color(120, 100, 180),
  color(150, 100, 120)
};

String [] slideText ={
  "first frame",
  "second frame",
  "third frame",
  "fourth frame"
};


void setup() {
  size(600, 600);
}

void draw() {
  background(slideColors[slide]);
  text(slideText[slide], 50,50);
  //println(slide);
}

void keyPressed() {
  if ( keyCode == RIGHT ) {
    switch (slide) {
      case 0:
        advance();
        break;
      case 1:
        advance();
        break;
      case 2:
        advance();
        break;
      case 3:
        slide = 0;
        break;
      default:
        break;
    }
  } 
  if (keyCode == LEFT) {
     switch (slide) {
      case 0:
        slide = 3;
        break;
      case 1:
        back();
        break;
      case 2:
        back();
        break;
      case 3:
        back();
        break;
      default:
        break;
    }
  }
}

void advance() {
  println(slide);
  slide++;
  
}

void back() {
  slide--;
}
